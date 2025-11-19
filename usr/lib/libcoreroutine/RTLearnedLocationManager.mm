@interface RTLearnedLocationManager
+ (double)distanceThresholdFromUncertainty:(double)a3 otherUncertainty:(double)a4;
+ (double)maxDistanceFromInterval:(double)a3 velocity:(double)a4;
+ (id)migrateLegacyMapItemWithGeoMapItem:(id)a3 geoMapItemHandle:(id)a4 source:(unint64_t)a5 mapServiceManager:(id)a6 error:(id *)a7;
+ (id)modeToString:(int64_t)a3;
+ (id)vendedClasses;
- (BOOL)_matchLocation:(id)a3 locationOfInterest:(id)a4 minCircleOverlapThreshold:(double)a5 error:(id *)a6;
- (BOOL)validateUpdatedMapItem:(id)a3 locationOfInterest:(id)a4 error:(id *)a5;
- (RTLearnedLocationManager)initWithQueue:(id)a3 contactsManager:(id)a4 distanceCalculator:(id)a5 learnedLocationStore:(id)a6 learnedPlaceTypeInferenceStore:(id)a7 mapServiceManager:(id)a8;
- (double)_estimateFamiliarityIndexForAreaWithGeohash:(id)a3 familiarPlaces:(id)a4 visitedLearnedLOI:(id)a5 statsVisits:(id)a6;
- (double)_estimateFamiliarityIndexForLearnedLOI:(id)a3 statsLOIVisits:(id)a4;
- (double)_estimateFamiliarityIndexReferenceLocationSummary:(id)a3 dwellTimePerAreas:(id)a4;
- (double)_weeksInLearnedLocationsOfInterestModel;
- (id)_checkFamiliarityIndexResultsForErrors:(id)a3;
- (id)_combineFamiliarityIndexRetrieveError:(id)a3 resultsError:(id)a4;
- (id)_getAreasGeohashesFamiliarPlacesWithGranularity:(unint64_t)a3 outError:(id *)a4;
- (id)_getDateOnlyFromLearnedVisitDate:(id)a3;
- (id)_getFamiliarityIndexResultAreaLevelForLearnedVisit:(id)a3 learnedLOI:(id)a4 geohash:(id)a5 familiarPlaces:(id)a6 statsVisits:(id)a7;
- (id)_getFamiliarityIndexResultForLearnedVisit:(id)a3 learnedLOI:(id)a4 statsLOIVisits:(id)a5;
- (id)_getFamiliarityIndexResultsAreaLevelForLearnedLOIs:(id)a3 options:(id)a4 familiarPlaces:(id)a5 outError:(id *)a6;
- (id)_getFamiliarityIndexResultsLOILevelForLOIs:(id)a3 options:(id)a4 outError:(id *)a5;
- (id)_getLearnedVisits:(id)a3 dateInterval:(id)a4;
- (id)_getLocationOfInterestAtLocation:(id)a3 fromLocationsOfInterest:(id)a4 error:(id *)a5;
- (id)_getLocationOfInterestAtLocation:(id)a3 fromLocationsOfInterest:(id)a4 minCircleOverlapThreshold:(double)a5 dwellTimePercentageThreshold:(double)a6 error:(id *)a7;
- (id)_getLocationsOfInterestVisitedBeforeDate:(id)a3 fromLocationsOfInterest:(id)a4 error:(id *)a5;
- (id)_getLocationsOfInterestWithinDistance:(double)a3 ofLocation:(id)a4 fromLocationsOfInterest:(id)a5 error:(id *)a6;
- (id)_getMatchingLocationsOfIntrestWithLocation:(id)a3 locationsOfInterest:(id)a4 minCircleOverlapThreshold:(double)a5;
- (id)_latitudeLongitudeToGeohashHelperForLatitude:(double)a3 longitude:(double)a4 hashLength:(unint64_t)a5;
- (id)_selectLocationOfInterestWithLargestDwellTimeFromLocationsOfInterest:(id)a3 dwellTimePercentageThreshold:(double)a4;
- (id)_updateContactsWithLearnedPlace:(id)a3 originalLearnedPlace:(id)a4 error:(id *)a5;
- (id)availabilityError;
- (id)createAndStoreNewPlaceWithMapItem:(id)a3 customLabel:(id)a4 mapItemSource:(unint64_t)a5 outError:(id *)a6;
- (unint64_t)_getGeohashLengthForSpatialGranularity:(unint64_t)a3;
- (unint64_t)_getTotalVisitCountForPreviousDatesFromDictGeohashToDates:(id)a3 referenceDate:(id)a4;
- (unint64_t)_getTotalVisitsCountForLOI:(id)a3 dateInterval:(id)a4 outError:(id *)a5;
- (void)_addLocationOfInterest:(id)a3 handler:(id)a4;
- (void)_addLocationOfInterestWithType:(unint64_t)a3 mapItem:(id)a4 customLabel:(id)a5 handler:(id)a6;
- (void)_addVisit:(id)a3 finerGranularityInferredMapItem:(id)a4 locationOfInterest:(id)a5 handler:(id)a6;
- (void)_applyUserCuration:(id)a3 harvestCuration:(BOOL)a4 handler:(id)a5;
- (void)_classifyPlaceTypesWithHandler:(id)a3;
- (void)_computeFamiliarityIndexResultsForLearnedLocationsWithVisits:(id)a3 options:(id)a4 familiarPlaces:(id)a5 error:(id)a6 handler:(id)a7;
- (void)_extendLifetimeOfVisitsWithIdentifiers:(id)a3 handler:(id)a4;
- (void)_fetchAllLocationsOfInterestWithHandler:(id)a3;
- (void)_fetchDedupedLocationOfInterestIdentifiersWithIdentifier:(id)a3 handler:(id)a4;
- (void)_fetchFamiliarityIndexResultsWithOptions:(id)a3 handler:(id)a4;
- (void)_fetchFinerGranularityInferredMapItemWithVisitIdentifier:(id)a3 handler:(id)a4;
- (void)_fetchFusionCandidatesForVisitIdentifier:(id)a3 handler:(id)a4;
- (void)_fetchHindsightVisitsBetweenStartDate:(id)a3 endDate:(id)a4 ascending:(BOOL)a5 handler:(id)a6;
- (void)_fetchInferredMapItemForVisitIdentifier:(id)a3 handler:(id)a4;
- (void)_fetchLocationOfInterestAtLocation:(id)a3 handler:(id)a4;
- (void)_fetchLocationOfInterestForRegion:(id)a3 handler:(id)a4;
- (void)_fetchLocationOfInterestWithIdentifier:(id)a3 handler:(id)a4;
- (void)_fetchLocationOfInterestWithMapItem:(id)a3 handler:(id)a4;
- (void)_fetchLocationsOfInterestVisitedBetweenStartDate:(id)a3 endDate:(id)a4 handler:(id)a5;
- (void)_fetchLocationsOfInterestVisitedBetweenStartDate:(id)a3 endDate:(id)a4 includePlaceholders:(BOOL)a5 includeVisits:(BOOL)a6 includeTransitions:(BOOL)a7 handler:(id)a8;
- (void)_fetchLocationsOfInterestVisitedSinceDate:(id)a3 handler:(id)a4;
- (void)_fetchLocationsOfInterestWithPlaceType:(unint64_t)a3 handler:(id)a4;
- (void)_fetchLocationsOfInterestWithinDistance:(double)a3 ofLocation:(id)a4 handler:(id)a5;
- (void)_fetchModeAtLocation:(id)a3 handler:(id)a4;
- (void)_fetchRecentLocationsOfInterestWithHandler:(id)a3;
- (void)_fetchTransitionsBetweenStartDate:(id)a3 endDate:(id)a4 handler:(id)a5;
- (void)_fetchVisitIdentifiersIn:(id)a3 handler:(id)a4;
- (void)_forceRelabeling:(id)a3;
- (void)_logLearnedState;
- (void)_migrateLegacyMapItems:(id)a3;
- (void)_migrateStateModelLegacy:(id)a3;
- (void)_onLearnedLocationStoreNotification:(id)a3;
- (void)_performLegacyMigrations:(id)a3;
- (void)_queryProvider:(id)a3 options:(id)a4 handler:(id)a5;
- (void)_reconcileLearnedLocationsWithHandler:(id)a3;
- (void)_reconstructTransitionsWithHandler:(id)a3;
- (void)_removeAllLocationsOfInterestWithHandler:(id)a3;
- (void)_removeLocationOfInterestWithIdentifier:(id)a3 handler:(id)a4;
- (void)_removeVisitWithIdentifier:(id)a3 handler:(id)a4;
- (void)_setup;
- (void)_shutdownWithHandler:(id)a3;
- (void)_trainForReason:(unint64_t)a3 mode:(unint64_t)a4 handler:(id)a5;
- (void)_trainLocationsOfInterestModelWithHandler:(id)a3;
- (void)_updateLocationOfInterestWithIdentifier:(id)a3 customLabel:(id)a4 handler:(id)a5;
- (void)_updateLocationOfInterestWithIdentifier:(id)a3 mapItem:(id)a4 mapItemSource:(unint64_t)a5 handler:(id)a6;
- (void)_updateLocationOfInterestWithIdentifier:(id)a3 type:(unint64_t)a4 customLabel:(id)a5 handler:(id)a6;
- (void)_updateLocationOfInterestWithIdentifier:(id)a3 type:(unint64_t)a4 handler:(id)a5;
- (void)_updateLocationOfInterestWithIdentifier:(id)a3 type:(unint64_t)a4 mapItem:(id)a5 mapItemSource:(unint64_t)a6 customLabel:(id)a7 handler:(id)a8;
- (void)_visitFromLearnedVisit:(id)a3 learnedLOI:(id)a4 handler:(id)a5;
- (void)addLocationOfInterest:(id)a3 handler:(id)a4;
- (void)addLocationOfInterestWithType:(unint64_t)a3 mapItem:(id)a4 customLabel:(id)a5 handler:(id)a6;
- (void)addVisit:(id)a3 finerGranularityInferredMapItem:(id)a4 locationOfInterest:(id)a5 handler:(id)a6;
- (void)applyUserCuration:(id)a3 harvestCuration:(BOOL)a4 handler:(id)a5;
- (void)classifyPlaceTypesWithHandler:(id)a3;
- (void)extendLifetimeOfVisitsWithIdentifiers:(id)a3 handler:(id)a4;
- (void)fetchAllLocationsOfInterestWithHandler:(id)a3;
- (void)fetchDedupedLocationOfInterestIdentifiersWithIdentifier:(id)a3 handler:(id)a4;
- (void)fetchEnumerableObjectsWithOptions:(id)a3 offset:(unint64_t)a4 handler:(id)a5;
- (void)fetchFamiliarityIndexResultsWithOptions:(id)a3 handler:(id)a4;
- (void)fetchFinerGranularityInferredMapItemWithVisitIdentifier:(id)a3 handler:(id)a4;
- (void)fetchFusionCandidatesForVisitIdentifier:(id)a3 handler:(id)a4;
- (void)fetchHindsightVisitsBetweenStartDate:(id)a3 endDate:(id)a4 ascending:(BOOL)a5 handler:(id)a6;
- (void)fetchInferredMapItemForVisitIdentifier:(id)a3 handler:(id)a4;
- (void)fetchLocationOfInterestAtLocation:(id)a3 handler:(id)a4;
- (void)fetchLocationOfInterestForRegion:(id)a3 handler:(id)a4;
- (void)fetchLocationOfInterestWithIdentifier:(id)a3 handler:(id)a4;
- (void)fetchLocationOfInterestWithMapItem:(id)a3 handler:(id)a4;
- (void)fetchLocationsOfInterestVisitedBetweenStartDate:(id)a3 endDate:(id)a4 handler:(id)a5;
- (void)fetchLocationsOfInterestVisitedBetweenStartDate:(id)a3 endDate:(id)a4 includePlaceholders:(BOOL)a5 includeVisits:(BOOL)a6 includeTransitions:(BOOL)a7 handler:(id)a8;
- (void)fetchLocationsOfInterestVisitedSinceDate:(id)a3 handler:(id)a4;
- (void)fetchLocationsOfInterestWithIdentifiers:(id)a3 handler:(id)a4;
- (void)fetchLocationsOfInterestWithPlaceType:(unint64_t)a3 handler:(id)a4;
- (void)fetchLocationsOfInterestWithinDistance:(double)a3 ofLocation:(id)a4 handler:(id)a5;
- (void)fetchModeAtLocation:(id)a3 handler:(id)a4;
- (void)fetchRecentLocationsOfInterestWithHandler:(id)a3;
- (void)fetchTransitionsBetweenStartDate:(id)a3 endDate:(id)a4 handler:(id)a5;
- (void)fetchVisitIdentifiersIn:(id)a3 handler:(id)a4;
- (void)flushToCacheWithOptions:(id)a3 handler:(id)a4;
- (void)forceRelabeling:(id)a3;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)learnedLocationEngineDidClear:(id)a3;
- (void)learnedLocationEngineDidFinishTraining:(id)a3;
- (void)learnedLocationEngineDidUpdate:(id)a3 intervalSinceLastUpdate:(double)a4 trainMode:(unint64_t)a5 trainResult:(unint64_t)a6;
- (void)learnedLocationEngineWillBeginTraining:(id)a3;
- (void)logDatabasesWithHandler:(id)a3;
- (void)onLearnedLocationStoreNotification:(id)a3;
- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
- (void)queryProvider:(id)a3 options:(id)a4 handler:(id)a5;
- (void)reconcileLearnedLocationsWithHandler:(id)a3;
- (void)reconstructTransitionsWithHandler:(id)a3;
- (void)removeAllLocationsOfInterestWithHandler:(id)a3;
- (void)removeLocationOfInterestWithIdentifier:(id)a3 handler:(id)a4;
- (void)removeVisitWithIdentifier:(id)a3 handler:(id)a4;
- (void)setAvailable:(BOOL)a3;
- (void)trainForReason:(unint64_t)a3 mode:(unint64_t)a4 handler:(id)a5;
- (void)trainLocationsOfInterestModelWithHandler:(id)a3;
- (void)updateLocationOfInterestWithIdentifier:(id)a3 customLabel:(id)a4 handler:(id)a5;
- (void)updateLocationOfInterestWithIdentifier:(id)a3 mapItem:(id)a4 mapItemSource:(unint64_t)a5 handler:(id)a6;
- (void)updateLocationOfInterestWithIdentifier:(id)a3 type:(unint64_t)a4 customLabel:(id)a5 handler:(id)a6;
- (void)updateLocationOfInterestWithIdentifier:(id)a3 type:(unint64_t)a4 handler:(id)a5;
- (void)updateLocationOfInterestWithIdentifier:(id)a3 type:(unint64_t)a4 mapItem:(id)a5 mapItemSource:(unint64_t)a6 customLabel:(id)a7 handler:(id)a8;
- (void)updateTransitionWithIdentifier:(id)a3 motionActivityType:(unint64_t)a4 handler:(id)a5;
@end

@implementation RTLearnedLocationManager

+ (id)vendedClasses
{
  v2 = vendedClasses_vendedClasses;
  if (!vendedClasses_vendedClasses)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB98]);
    v4 = objc_opt_class();
    v5 = [v3 initWithObjects:{v4, objc_opt_class(), 0}];
    v6 = vendedClasses_vendedClasses;
    vendedClasses_vendedClasses = v5;

    v2 = vendedClasses_vendedClasses;
  }

  return v2;
}

- (double)_weeksInLearnedLocationsOfInterestModel
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__19;
  v32 = __Block_byref_object_dispose__19;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__19;
  v26 = __Block_byref_object_dispose__19;
  v27 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = [(RTLearnedLocationManager *)self learnedLocationStore];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__RTLearnedLocationManager__weeksInLearnedLocationsOfInterestModel__block_invoke;
  v19[3] = &unk_2788C6490;
  v21 = &v28;
  v5 = v3;
  v20 = v5;
  [v4 fetchLocationOfInterestVisitedFirstWithHandler:v19];

  dispatch_group_enter(v5);
  v6 = [(RTLearnedLocationManager *)self learnedLocationStore];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __67__RTLearnedLocationManager__weeksInLearnedLocationsOfInterestModel__block_invoke_2;
  v16 = &unk_2788C6490;
  v18 = &v22;
  v7 = v5;
  v17 = v7;
  [v6 fetchLocationOfInterestVisitedLastWithHandler:&v13];

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = [v23[5] exitDate];
  v9 = [v29[5] entryDate];
  [v8 timeIntervalSinceDate:v9];
  v11 = v10 / 604800.0;

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v11;
}

void __67__RTLearnedLocationManager__weeksInLearnedLocationsOfInterestModel__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 visits];
  v4 = [v3 firstObject];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  dispatch_group_leave(v7);
}

void __67__RTLearnedLocationManager__weeksInLearnedLocationsOfInterestModel__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 visits];
  v4 = [v3 lastObject];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  dispatch_group_leave(v7);
}

+ (id)modeToString:(int64_t)a3
{
  v3 = @"unknown";
  if (a3 == 1)
  {
    v3 = @"local";
  }

  if (a3 == 2)
  {
    return @"tourist";
  }

  else
  {
    return v3;
  }
}

- (RTLearnedLocationManager)initWithQueue:(id)a3 contactsManager:(id)a4 distanceCalculator:(id)a5 learnedLocationStore:(id)a6 learnedPlaceTypeInferenceStore:(id)a7 mapServiceManager:(id)a8
{
  v26 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v25 = v18;
  if (!v14)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: contactsManager";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    goto LABEL_20;
  }

  if (!v15)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_19;
  }

  if (!v16)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: learnedLocationStore";
    goto LABEL_19;
  }

  if (!v17)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: learnedPlaceTypeInferenceStore";
    goto LABEL_19;
  }

  if (!v18)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "Invalid parameter not satisfying: mapServiceManager";
      goto LABEL_19;
    }

LABEL_20:

    v21 = 0;
    goto LABEL_21;
  }

  v27.receiver = self;
  v27.super_class = RTLearnedLocationManager;
  v19 = [(RTNotifier *)&v27 initWithQueue:v26, v18];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_contactsManager, a4);
    objc_storeStrong(&v20->_distanceCalculator, a5);
    objc_storeStrong(&v20->_learnedLocationStore, a6);
    objc_storeStrong(&v20->_learnedPlaceTypeInferenceStore, a7);
    objc_storeStrong(&v20->_mapServiceManager, a8);
    v20->_available = 0;
    v20->_training = 0;
    v20->_migrationComplete = 0;
    [(RTService *)v20 setup];
  }

  self = v20;
  v21 = self;
LABEL_21:

  return v21;
}

- (void)_logLearnedState
{
  v48 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__19;
  v44 = __Block_byref_object_dispose__19;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__19;
  v38 = __Block_byref_object_dispose__19;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__19;
  v32 = __Block_byref_object_dispose__19;
  v33 = 0;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = [(RTLearnedLocationManager *)self learnedLocationStore];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __44__RTLearnedLocationManager__logLearnedState__block_invoke;
  v25[3] = &unk_2788C45F0;
  v27 = &v40;
  v5 = v3;
  v26 = v5;
  [v4 fetchPlacesWithHandler:v25];

  dispatch_group_enter(v5);
  v6 = [(RTLearnedLocationManager *)self learnedLocationStore];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __44__RTLearnedLocationManager__logLearnedState__block_invoke_2;
  v22[3] = &unk_2788C45F0;
  v24 = &v34;
  v7 = v5;
  v23 = v7;
  [v6 fetchVisitsWithHandler:v22];

  dispatch_group_enter(v7);
  v8 = [(RTLearnedLocationManager *)self learnedLocationStore];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __44__RTLearnedLocationManager__logLearnedState__block_invoke_3;
  v19 = &unk_2788C45F0;
  v21 = &v28;
  v9 = v7;
  v20 = v9;
  [v8 fetchTransitionsWithHandler:&v16];

  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v41[5] count];
      *buf = 134217984;
      v47 = v11;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%lu places", buf, 0xCu);
    }
  }

  [v41[5] enumerateObjectsUsingBlock:{&__block_literal_global_16, v16, v17, v18, v19}];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v35[5] count];
      *buf = 134217984;
      v47 = v13;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%lu visits", buf, 0xCu);
    }
  }

  [v35[5] enumerateObjectsUsingBlock:&__block_literal_global_95];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v29[5] count];
      *buf = 134217984;
      v47 = v15;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%lu transitions", buf, 0xCu);
    }
  }

  [v29[5] enumerateObjectsUsingBlock:&__block_literal_global_99];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
}

void __44__RTLearnedLocationManager__logLearnedState__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __44__RTLearnedLocationManager__logLearnedState__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __44__RTLearnedLocationManager__logLearnedState__block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __44__RTLearnedLocationManager__logLearnedState__block_invoke_90(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218243;
      v7 = a3 + 1;
      v8 = 2117;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "place %lu, %{sensitive}@", &v6, 0x16u);
    }
  }
}

void __44__RTLearnedLocationManager__logLearnedState__block_invoke_92(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218243;
      v7 = a3 + 1;
      v8 = 2117;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "visit %lu, %{sensitive}@", &v6, 0x16u);
    }
  }
}

void __44__RTLearnedLocationManager__logLearnedState__block_invoke_96(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218243;
      v7 = a3 + 1;
      v8 = 2117;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "transition %lu, %{sensitive}@", &v6, 0x16u);
    }
  }
}

- (void)_performLegacyMigrations:(id)a3
{
  v120 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (self->_migrationComplete)
  {
    (*(v5 + 2))(v5, 0);
    goto LABEL_39;
  }

  v82 = v5;
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = NSStringFromSelector(a2);
  v11 = [v7 stringWithFormat:@"%@-%@", v9, v10];
  [v11 UTF8String];
  v81 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v75 = objc_opt_class();
      v76 = NSStringFromClass(v75);
      v77 = NSStringFromSelector(a2);
      *v114 = 138412546;
      *&v114[4] = v76;
      *&v114[12] = 2112;
      *&v114[14] = v77;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", v114, 0x16u);
    }
  }

  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  *v114 = 0;
  *&v114[8] = v114;
  *&v114[16] = 0x3032000000;
  v115 = __Block_byref_object_copy__19;
  v116 = __Block_byref_object_dispose__19;
  v117 = 0;
  v13 = dispatch_semaphore_create(0);
  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = __53__RTLearnedLocationManager__performLegacyMigrations___block_invoke;
  v94[3] = &unk_2788C6148;
  v96 = &v98;
  v97 = v114;
  v14 = v13;
  v95 = v14;
  [(RTLearnedLocationManager *)self _migrateStateModelLegacy:v94];
  v15 = v14;
  v16 = [MEMORY[0x277CBEAA8] now];
  v17 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v15, v17))
  {
    v29 = 0;
LABEL_13:
    v31 = 1;
    goto LABEL_14;
  }

  v18 = [MEMORY[0x277CBEAA8] now];
  [v18 timeIntervalSinceDate:v16];
  v20 = v19;
  v21 = objc_opt_new();
  v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_619];
  v23 = [MEMORY[0x277CCACC8] callStackSymbols];
  v24 = [v23 filteredArrayUsingPredicate:v22];
  v25 = [v24 firstObject];

  [v21 submitToCoreAnalytics:v25 type:1 duration:v20];
  v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
  }

  v27 = MEMORY[0x277CCA9B8];
  *v102 = *MEMORY[0x277CCA450];
  *buf = @"semaphore wait timeout";
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v102 count:1];
  v29 = [v27 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v28];

  if (!v29)
  {
    goto LABEL_13;
  }

  v30 = v29;

  v31 = 0;
LABEL_14:

  v32 = v29;
  if ((v31 & 1) == 0)
  {
    objc_storeStrong((*&v114[8] + 40), v29);
  }

  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  *buf = 0;
  v109 = buf;
  v110 = 0x3032000000;
  v111 = __Block_byref_object_copy__19;
  v112 = __Block_byref_object_dispose__19;
  v113 = 0;
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __53__RTLearnedLocationManager__performLegacyMigrations___block_invoke_2;
  v86[3] = &unk_2788C4528;
  v88 = &v90;
  v89 = buf;
  v33 = v15;
  v87 = v33;
  [(RTLearnedLocationManager *)self _migrateLegacyMapItems:v86];
  v34 = v33;
  v35 = [MEMORY[0x277CBEAA8] now];
  v36 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v34, v36))
  {
    goto LABEL_21;
  }

  v37 = [MEMORY[0x277CBEAA8] now];
  [v37 timeIntervalSinceDate:v35];
  v39 = v38;
  v40 = objc_opt_new();
  v41 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_619];
  v42 = [MEMORY[0x277CCACC8] callStackSymbols];
  v43 = [v42 filteredArrayUsingPredicate:v41];
  v44 = [v43 firstObject];

  [v40 submitToCoreAnalytics:v44 type:1 duration:v39];
  v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
  {
    *v102 = 0;
    _os_log_fault_impl(&dword_2304B3000, v45, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v102, 2u);
  }

  v46 = MEMORY[0x277CCA9B8];
  *v119 = *MEMORY[0x277CCA450];
  *v102 = @"semaphore wait timeout";
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v119 count:1];
  v48 = [v46 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v47];

  if (v48)
  {
    v49 = v48;

    v50 = 0;
  }

  else
  {
LABEL_21:
    v50 = 1;
    v48 = v32;
  }

  v51 = v48;
  if ((v50 & 1) == 0)
  {
    objc_storeStrong(v109 + 5, v48);
  }

  v78 = *(*&v114[8] + 40);
  v52 = _RTSafeArray();
  v53 = _RTMultiErrorCreate();

  v54 = (v91[3] || *(v99 + 24) == 1) && v53 == 0;
  *v102 = 0;
  v103 = v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy__19;
  v106 = __Block_byref_object_dispose__19;
  v107 = 0;
  if (v54)
  {
    v55 = [(RTLearnedLocationManager *)self learnedLocationEngine:v78];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __53__RTLearnedLocationManager__performLegacyMigrations___block_invoke_3;
    v83[3] = &unk_2788C4618;
    v85 = v102;
    v56 = v34;
    v84 = v56;
    [v55 trainLocationsOfInterestModelWithHandler:v83];

    v57 = v56;
    v80 = [MEMORY[0x277CBEAA8] now];
    v58 = dispatch_time(0, 3600000000000);
    v59 = v51;
    if (dispatch_semaphore_wait(v57, v58))
    {
      v79 = [MEMORY[0x277CBEAA8] now];
      [v79 timeIntervalSinceDate:v80];
      v61 = v60;
      v62 = objc_opt_new();
      v63 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_619];
      v64 = [MEMORY[0x277CCACC8] callStackSymbols];
      v65 = [v64 filteredArrayUsingPredicate:v63];
      v66 = [v65 firstObject];

      [v62 submitToCoreAnalytics:v66 type:1 duration:v61];
      v67 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
      {
        *v119 = 0;
        _os_log_fault_impl(&dword_2304B3000, v67, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v119, 2u);
      }

      v68 = MEMORY[0x277CCA9B8];
      v118 = *MEMORY[0x277CCA450];
      *v119 = @"semaphore wait timeout";
      v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:&v118 count:1];
      v70 = [v68 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v69];

      v59 = v51;
      if (v70)
      {
        v71 = v70;

        v59 = v70;
      }
    }

    v72 = v59;
    v51 = v72;
  }

  v73 = _RTSafeArray();
  v74 = _RTMultiErrorCreate();

  if (!v74)
  {
    self->_migrationComplete = 1;
  }

  if (v82)
  {
    v82[2](v82, v74);
  }

  _Block_object_dispose(v102, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(v114, 8);

  _Block_object_dispose(&v98, 8);
  v6 = v82;
LABEL_39:
}

void __53__RTLearnedLocationManager__performLegacyMigrations___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __53__RTLearnedLocationManager__performLegacyMigrations___block_invoke_2(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __53__RTLearnedLocationManager__performLegacyMigrations___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "trained locationsOfInterest model after migration, error, %@", &v8, 0xCu);
    }
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)migrateLegacyMapItemWithGeoMapItem:(id)a3 geoMapItemHandle:(id)a4 source:(unint64_t)a5 mapServiceManager:(id)a6 error:(id *)a7
{
  v72[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v12)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "+[RTLearnedLocationManager migrateLegacyMapItemWithGeoMapItem:geoMapItemHandle:source:mapServiceManager:error:]";
      *&buf[12] = 1024;
      *&buf[14] = 323;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapServiceManager (in %s:%d)", buf, 0x12u);
    }

    if (v10 | v11)
    {
      if (a7)
      {
        v68 = *MEMORY[0x277CCA450];
        v69 = @"A valid instance of RTMapSericeManager is required.";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        *a7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v20];
      }

      goto LABEL_14;
    }

LABEL_10:
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "+[RTLearnedLocationManager migrateLegacyMapItemWithGeoMapItem:geoMapItemHandle:source:mapServiceManager:error:]";
      *&buf[12] = 1024;
      *&buf[14] = 324;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: geoMapItem || geoMapItemHandle (in %s:%d)", buf, 0x12u);
    }

    if (a7)
    {
      v70 = *MEMORY[0x277CCA450];
      v71 = @"requires a valid geoMapItem or geoMapItemHandle.";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      *a7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v22];
    }

LABEL_14:
    v23 = 0;
    goto LABEL_37;
  }

  if (!(v10 | v11))
  {
    goto LABEL_10;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v65 = __Block_byref_object_copy__19;
  v66 = __Block_byref_object_dispose__19;
  v67 = 0;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3032000000;
  v59[3] = __Block_byref_object_copy__19;
  v59[4] = __Block_byref_object_dispose__19;
  v60 = 0;
  if (v10)
  {
    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [MEMORY[0x277CBEAA8] date];
    v58 = 0;
    v15 = [v12 mapItemWithIdentifier:v13 geoMapItem:v10 source:a5 creationDate:v14 error:&v58];
    v16 = v58;
    v17 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v15;

    v18 = *(*&buf[8] + 40);
  }

  else
  {
    v18 = 0;
    v16 = 0;
  }

  if (v18)
  {
    v24 = v16 == 0;
  }

  else
  {
    v24 = 0;
  }

  v25 = !v24;
  if (v11 && v25)
  {
    v26 = dispatch_semaphore_create(0);
    v27 = objc_alloc(MEMORY[0x277D011B0]);
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v51 = [v27 initWithUseBackgroundTraits:1 analyticsIdentifier:v29];

    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __111__RTLearnedLocationManager_migrateLegacyMapItemWithGeoMapItem_geoMapItemHandle_source_mapServiceManager_error___block_invoke;
    v53[3] = &unk_2788C6170;
    v55 = buf;
    v56 = v59;
    v57 = a5;
    v30 = v26;
    v54 = v30;
    [v12 fetchMapItemFromHandle:v11 options:v51 handler:v53];
    v31 = v30;
    v50 = [MEMORY[0x277CBEAA8] now];
    v32 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v31, v32))
    {
      v33 = [MEMORY[0x277CBEAA8] now];
      [v33 timeIntervalSinceDate:v50];
      v35 = v34;
      v49 = objc_opt_new();
      v36 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_619];
      v37 = [MEMORY[0x277CCACC8] callStackSymbols];
      v38 = [v37 filteredArrayUsingPredicate:v36];
      v39 = [v38 firstObject];

      [v49 submitToCoreAnalytics:v39 type:1 duration:v35];
      v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        *v61 = 0;
        _os_log_fault_impl(&dword_2304B3000, v40, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v61, 2u);
      }

      v41 = MEMORY[0x277CCA9B8];
      v72[0] = *MEMORY[0x277CCA450];
      *v61 = @"semaphore wait timeout";
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v72 count:1];
      v43 = [v41 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v42];

      if (v43)
      {
        v44 = v43;
      }
    }

    v18 = *(*&buf[8] + 40);
  }

  if (!v18)
  {
    v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *v61 = 136315394;
      *&v61[4] = "+[RTLearnedLocationManager migrateLegacyMapItemWithGeoMapItem:geoMapItemHandle:source:mapServiceManager:error:]";
      v62 = 1024;
      v63 = 377;
      _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "Attempting to migrate a learned place with a nil map item and nil map item handle. (in %s:%d)", v61, 0x12u);
    }
  }

  v46 = v16;
  if (a7)
  {
    v47 = _RTSafeArray();
    *a7 = _RTMultiErrorCreate();
  }

  v23 = *(*&buf[8] + 40);
  _Block_object_dispose(v59, 8);

  _Block_object_dispose(buf, 8);
LABEL_37:

  return v23;
}

void __111__RTLearnedLocationManager_migrateLegacyMapItemWithGeoMapItem_geoMapItemHandle_source_mapServiceManager_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 appendSource:*(a1 + 56)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_migrateLegacyMapItems:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(RTLearnedLocationManager *)self mapServiceManager];
  v7 = [(RTLearnedLocationManager *)self learnedLocationStore];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__RTLearnedLocationManager__migrateLegacyMapItems___block_invoke;
  v14[3] = &unk_2788C6198;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v9 = v5;
  v16 = v9;
  v17 = &v18;
  v10 = [v7 migrateLegacyMapItemsWithEnumerationBlock:v14];

  v11 = v19[3];
  v12 = _RTSafeArray();
  v13 = _RTMultiErrorCreate();
  v4[2](v4, v11, v13);

  _Block_object_dispose(&v18, 8);
}

id __51__RTLearnedLocationManager__migrateLegacyMapItems___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(a1 + 40);
  v14 = 0;
  v11 = [v9 migrateLegacyMapItemWithGeoMapItem:v8 geoMapItemHandle:v7 source:a4 mapServiceManager:v10 error:&v14];

  v12 = v14;
  if (v12)
  {
    [*(a1 + 48) addObject:v12];
  }

  ++*(*(*(a1 + 56) + 8) + 24);

  return v11;
}

- (void)_migrateStateModelLegacy:(id)a3
{
  v67[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[RTStateModelLegacyController stateModelLegacyExists];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (v5)
      {
        v7 = @"YES";
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "stateModel legacy exists, %@", &buf, 0xCu);
    }
  }

  if (v5)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v63 = 0x3032000000;
    v64 = __Block_byref_object_copy__19;
    v65 = __Block_byref_object_dispose__19;
    v66 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v8 = dispatch_semaphore_create(0);
    v9 = [(RTLearnedLocationManager *)self learnedLocationStore];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __53__RTLearnedLocationManager__migrateStateModelLegacy___block_invoke;
    v51[3] = &unk_2788C61C0;
    p_buf = &buf;
    v54 = &v55;
    v10 = v8;
    v52 = v10;
    [v9 fetchLastVisitWithHandler:v51];

    v11 = v10;
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v11, v13))
    {
      v14 = [MEMORY[0x277CBEAA8] now];
      [v14 timeIntervalSinceDate:v12];
      v16 = v15;
      v17 = objc_opt_new();
      v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_619];
      v19 = [MEMORY[0x277CCACC8] callStackSymbols];
      v20 = [v19 filteredArrayUsingPredicate:v18];
      v21 = [v20 firstObject];

      [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
      v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *v59 = 0;
        _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v59, 2u);
      }

      v23 = MEMORY[0x277CCA9B8];
      v67[0] = *MEMORY[0x277CCA450];
      *v59 = @"semaphore wait timeout";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v67 count:1];
      v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

      if (v25)
      {
        v26 = v25;

        v27 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v25 = 0;
    }

    v27 = 1;
LABEL_17:

    v28 = v25;
    if ((v27 & 1) == 0)
    {
      objc_storeStrong((*(&buf + 1) + 40), v25);
    }

    if (*(*(&buf + 1) + 40))
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v47 = *(*(&buf + 1) + 40);
        *v59 = 138412290;
        *&v59[4] = v47;
        _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "failed to determine if locationsOfInterest model exists, %@", v59, 0xCu);
      }

      if (v4)
      {
        (*(v4 + 2))(v4, 0, 0);
      }

      goto LABEL_62;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        if (*(v56 + 24))
        {
          v31 = @"YES";
        }

        else
        {
          v31 = @"NO";
        }

        *v59 = 138412290;
        *&v59[4] = v31;
        _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "learned visit exists, %@", v59, 0xCu);
      }
    }

    v32 = [RTStateModelLegacyController alloc];
    v33 = [(RTLearnedLocationManager *)self learnedLocationStore];
    v34 = [(RTLearnedLocationManager *)self mapServiceManager];
    v35 = [(RTStateModelLegacyController *)v32 initWithLearnedLocationStore:v33 mapServiceManager:v34];

    if (*(v56 + 24) == 1)
    {
      if (v4)
      {
        (*(v4 + 2))(v4, 0, 0);
      }

      v50 = 0;
      v36 = [(RTStateModelLegacyController *)v35 removeStateModelLegacyWithError:&v50];
      v37 = v50;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_61;
      }

      v38 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = @"NO";
        if (v36)
        {
          v39 = @"YES";
        }

        *v59 = 138412546;
        *&v59[4] = v39;
        v60 = 2112;
        v61 = v37;
        _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "removed stateModel legacy, %@, error, %@", v59, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v40 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *v59 = 0;
          _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "migrating stateModel legacy", v59, 2u);
        }
      }

      v49 = 0;
      v41 = [(RTStateModelLegacyController *)v35 migrateStateModelLegacyWithError:&v49];
      v37 = v49;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v42 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = @"NO";
          if (v41)
          {
            v43 = @"YES";
          }

          *v59 = 138412546;
          *&v59[4] = v43;
          v60 = 2112;
          v61 = v37;
          _os_log_impl(&dword_2304B3000, v42, OS_LOG_TYPE_INFO, "migrated stateModel legacy, %@, error, %@", v59, 0x16u);
        }
      }

      [(RTLearnedLocationManager *)self _logLearnedState];
      if (!v41)
      {
        if (v4)
        {
          (*(v4 + 2))(v4, 0, v37);
        }

        goto LABEL_61;
      }

      v48 = 0;
      v44 = [(RTStateModelLegacyController *)v35 removeStateModelLegacyWithError:&v48];
      v38 = v48;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v45 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = @"NO";
          if (v44)
          {
            v46 = @"YES";
          }

          *v59 = 138412546;
          *&v59[4] = v46;
          v60 = 2112;
          v61 = v38;
          _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_INFO, "removed stateModel legacy, %@, error, %@", v59, 0x16u);
        }
      }

      if (v4)
      {
        (*(v4 + 2))(v4, 1, v38);
      }
    }

LABEL_61:
LABEL_62:

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&buf, 8);

    goto LABEL_63;
  }

  if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }

LABEL_63:
}

void __53__RTLearnedLocationManager__migrateStateModelLegacy___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_setup
{
  v3 = [(RTLearnedLocationManager *)self learnedLocationEngine];

  if (v3)
  {
    v4 = [(RTLearnedLocationManager *)self learnedLocationEngine];
    [v4 setDelegate:self];

    v7 = [(RTLearnedLocationManager *)self learnedLocationStore];
    v5 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
    [v7 addObserver:self selector:sel_onLearnedLocationStoreNotification_ name:v5];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: self.learnedLocationEngine", buf, 2u);
    }
  }
}

- (void)_shutdownWithHandler:(id)a3
{
  v12 = a3;
  contactsManager = self->_contactsManager;
  self->_contactsManager = 0;

  distanceCalculator = self->_distanceCalculator;
  self->_distanceCalculator = 0;

  v6 = [(RTLearnedLocationManager *)self learnedLocationEngine];
  [v6 shutdown];

  learnedLocationEngine = self->_learnedLocationEngine;
  self->_learnedLocationEngine = 0;

  v8 = [(RTLearnedLocationManager *)self learnedLocationStore];
  [v8 removeObserver:self];

  learnedLocationStore = self->_learnedLocationStore;
  self->_learnedLocationStore = 0;

  mapServiceManager = self->_mapServiceManager;
  self->_mapServiceManager = 0;

  v11 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, 0);
    v11 = v12;
  }
}

- (id)createAndStoreNewPlaceWithMapItem:(id)a3 customLabel:(id)a4 mapItemSource:(unint64_t)a5 outError:(id *)a6
{
  v119[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v101 = a4;
  v103 = v9;
  if (v9)
  {
    v64 = self;
    v65 = a5;
    v102 = [MEMORY[0x277CBEAA8] date];
    v66 = objc_alloc(MEMORY[0x277D01060]);
    v83 = [MEMORY[0x277CCAD78] UUID];
    v97 = [v9 address];
    v82 = [v97 geoAddressData];
    v95 = [v9 address];
    v80 = [v95 subPremises];
    v93 = [v9 address];
    v79 = [v93 subThoroughfare];
    v91 = [v9 address];
    v77 = [v91 thoroughfare];
    v89 = [v9 address];
    v76 = [v89 subLocality];
    v87 = [v9 address];
    v75 = [v87 locality];
    v86 = [v9 address];
    v74 = [v86 subAdministrativeArea];
    v85 = [v9 address];
    v73 = [v85 administrativeArea];
    v84 = [v9 address];
    v72 = [v84 administrativeAreaCode];
    v81 = [v9 address];
    v70 = [v81 postalCode];
    v78 = [v9 address];
    v63 = [v78 country];
    v10 = [v9 address];
    v62 = [v10 countryCode];
    v11 = [v9 address];
    v61 = [v11 inlandWater];
    v71 = [v9 address];
    v12 = [v71 ocean];
    v69 = [v9 address];
    v13 = [v69 areasOfInterest];
    v14 = [v9 address];
    v15 = [v14 isIsland];
    v16 = [v102 dateByAddingTimeInterval:4838400.0];
    v68 = [v103 address];
    v17 = [v68 iso3166CountryCode];
    v18 = [v103 address];
    v19 = [v18 iso3166SubdivisionCode];
    LOBYTE(v59) = v15;
    v67 = [v66 initWithIdentifier:v83 geoAddressData:v82 subPremises:v80 subThoroughfare:v79 thoroughfare:v77 subLocality:v76 locality:v75 subAdministrativeArea:v74 administrativeArea:v73 administrativeAreaCode:v72 postalCode:v70 country:v63 countryCode:v62 inlandWater:v61 ocean:v12 areasOfInterest:v13 isIsland:v59 creationDate:v102 expirationDate:v16 iso3166CountryCode:v17 iso3166SubdivisionCode:v19];

    v20 = objc_alloc(MEMORY[0x277D011A0]);
    v98 = [MEMORY[0x277CCAD78] UUID];
    v94 = [v103 name];
    v92 = [v103 category];
    v90 = [v103 categoryMUID];
    v88 = [v103 location];
    v21 = [v103 mapItemPlaceType];
    v22 = [v103 muid];
    v23 = [v103 resultProviderID];
    v24 = [v103 geoMapItemHandle];
    v25 = [v103 geoMapItemIdentifier];
    v26 = [v102 dateByAddingTimeInterval:4838400.0];
    v27 = [v103 extendedAttributes];
    v28 = [v103 displayLanguage];
    LOBYTE(v60) = [v103 disputed];
    v96 = [v20 initWithIdentifier:v98 name:v94 category:v92 categoryMUID:v90 address:v67 location:v88 source:v65 mapItemPlaceType:v21 muid:v22 resultProviderID:v23 geoMapItemHandle:v24 geoMapItemIdentifier:v25 creationDate:v102 expirationDate:v26 extendedAttributes:v27 displayLanguage:v28 disputed:v60];

    v29 = [RTLearnedPlace alloc];
    v30 = [MEMORY[0x277CCAD78] UUID];
    v31 = [v102 dateByAddingTimeInterval:4838400.0];
    v99 = [(RTLearnedPlace *)v29 initWithIdentifier:v30 type:0 typeSource:0 mapItem:v96 customLabel:v101 creationDate:v102 expirationDate:v31];

    *v107 = 0;
    v108 = v107;
    v109 = 0x3032000000;
    v110 = __Block_byref_object_copy__19;
    v111 = __Block_byref_object_dispose__19;
    v112 = 0;
    v32 = dispatch_semaphore_create(0);
    v33 = [(RTLearnedLocationManager *)v64 learnedLocationStore];
    v118 = v99;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v118 count:1];
    v104[0] = MEMORY[0x277D85DD0];
    v104[1] = 3221225472;
    v104[2] = __97__RTLearnedLocationManager_createAndStoreNewPlaceWithMapItem_customLabel_mapItemSource_outError___block_invoke;
    v104[3] = &unk_2788C4618;
    v106 = v107;
    v35 = v32;
    v105 = v35;
    [v33 storePlaces:v34 handler:v104];

    v36 = v35;
    v37 = [MEMORY[0x277CBEAA8] now];
    v38 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v36, v38))
    {
      v39 = [MEMORY[0x277CBEAA8] now];
      [v39 timeIntervalSinceDate:v37];
      v41 = v40;
      v42 = objc_opt_new();
      v43 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_619];
      v44 = [MEMORY[0x277CCACC8] callStackSymbols];
      v45 = [v44 filteredArrayUsingPredicate:v43];
      v46 = [v45 firstObject];

      [v42 submitToCoreAnalytics:v46 type:1 duration:v41];
      v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v47, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v48 = MEMORY[0x277CCA9B8];
      v119[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v119 count:1];
      v50 = [v48 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v49];

      if (v50)
      {
        v51 = v50;

        v52 = 0;
LABEL_13:

        v55 = v50;
        if ((v52 & 1) == 0)
        {
          objc_storeStrong(v108 + 5, v50);
        }

        if (*(v108 + 5))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v56 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              v57 = *(v108 + 5);
              *buf = 138740483;
              *&buf[4] = v99;
              v114 = 2117;
              v115 = v103;
              v116 = 2112;
              v117 = v57;
              _os_log_impl(&dword_2304B3000, v56, OS_LOG_TYPE_INFO, "failed to store place, %{sensitive}@, on current device for mapItem, %{sensitive}@, error, %@.", buf, 0x20u);
            }
          }

          v54 = 0;
          if (a6)
          {
            *a6 = *(v108 + 5);
          }
        }

        else
        {
          v54 = v99;
        }

        _Block_object_dispose(v107, 8);
        goto LABEL_24;
      }
    }

    else
    {
      v50 = 0;
    }

    v52 = 1;
    goto LABEL_13;
  }

  v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    *v107 = 0;
    _os_log_error_impl(&dword_2304B3000, v53, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapItem", v107, 2u);
  }

  if (a6)
  {
    _RTErrorInvalidParameterCreate(@"mapItem");
    *a6 = v54 = 0;
  }

  else
  {
    v54 = 0;
  }

LABEL_24:

  return v54;
}

void __97__RTLearnedLocationManager_createAndStoreNewPlaceWithMapItem_customLabel_mapItemSource_outError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)validateUpdatedMapItem:(id)a3 locationOfInterest:(id)a4 error:(id *)a5
{
  v81 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v55 = a4;
  if (v8)
  {
    v53 = a5;
    v67 = 0;
    v68 = &v67;
    v69 = 0x3032000000;
    v70 = __Block_byref_object_copy__19;
    v71 = __Block_byref_object_dispose__19;
    v72 = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = __Block_byref_object_copy__19;
    v65 = __Block_byref_object_dispose__19;
    v66 = 0;
    v9 = dispatch_semaphore_create(0);
    v10 = objc_alloc(MEMORY[0x277D011B0]);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v54 = [v10 initWithUseBackgroundTraits:1 analyticsIdentifier:v12];

    v13 = [(RTLearnedLocationManager *)self mapServiceManager];
    v14 = [v8 geoMapItemHandle];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __76__RTLearnedLocationManager_validateUpdatedMapItem_locationOfInterest_error___block_invoke;
    v57[3] = &unk_2788C61E8;
    v59 = &v67;
    v60 = &v61;
    v15 = v9;
    v58 = v15;
    [v13 fetchMapItemFromHandle:v14 options:v54 handler:v57];

    v16 = v15;
    v17 = [MEMORY[0x277CBEAA8] now];
    v18 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v16, v18))
    {
      v19 = [MEMORY[0x277CBEAA8] now];
      [v19 timeIntervalSinceDate:v17];
      v21 = v20;
      v22 = objc_opt_new();
      v23 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_619];
      v24 = [MEMORY[0x277CCACC8] callStackSymbols];
      v25 = [v24 filteredArrayUsingPredicate:v23];
      v26 = [v25 firstObject];

      [v22 submitToCoreAnalytics:v26 type:1 duration:v21];
      v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v27, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v28 = MEMORY[0x277CCA9B8];
      v79 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v79 count:1];
      v30 = [v28 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v29];

      if (v30)
      {
        v31 = v30;

        v32 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v30 = 0;
    }

    v32 = 1;
LABEL_12:

    v36 = v30;
    if ((v32 & 1) == 0)
    {
      objc_storeStrong(v68 + 5, v30);
    }

    if (!v68[5] && ([v8 isEqualToMapItem:v62[5]] & 1) != 0)
    {
      v37 = [(RTLearnedLocationManager *)self distanceCalculator];
      v38 = [v8 location];
      v39 = [v55 location];
      v40 = [v39 location];
      v56 = 0;
      [v37 distanceFromLocation:v38 toLocation:v40 error:&v56];
      v42 = v41;
      v43 = v56;

      if (v43)
      {
        if (v53)
        {
          v44 = v43;
          v35 = 0;
          *v53 = v43;
          goto LABEL_21;
        }
      }

      else
      {
        if (v42 <= 10000.0)
        {
          v43 = 0;
          v35 = 1;
          goto LABEL_21;
        }

        if (v53)
        {
          v47 = MEMORY[0x277CCACA8];
          v48 = [v55 place];
          v49 = [v48 identifier];
          v50 = [v47 stringWithFormat:@"The existing location of interest with identifier %@ is too far from the updated mapItem.", v49];

          v51 = MEMORY[0x277CCA9B8];
          v73 = *MEMORY[0x277CCA450];
          v74 = v50;
          v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
          *v53 = [v51 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v52];
        }

        v43 = 0;
      }

      v35 = 0;
      goto LABEL_21;
    }

    if (!v53)
    {
      v35 = 0;
      goto LABEL_23;
    }

    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"requires a valid geoMapItemHandle mapItem, %@, fetched mapItem from geoMapItemHandle, %@, error, %@", v8, v62[5], v68[5]];;
    v45 = MEMORY[0x277CCA9B8];
    v75 = *MEMORY[0x277CCA450];
    v76 = v37;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    [v45 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v43];
    *v53 = v35 = 0;
LABEL_21:

LABEL_23:
    _Block_object_dispose(&v61, 8);

    _Block_object_dispose(&v67, 8);
    goto LABEL_24;
  }

  if (a5)
  {
    v33 = MEMORY[0x277CCA9B8];
    v77 = *MEMORY[0x277CCA450];
    v78 = @"requires a valid mapItem.";
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    *a5 = [v33 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v34];
  }

  v35 = 0;
LABEL_24:

  return v35;
}

void __76__RTLearnedLocationManager_validateUpdatedMapItem_locationOfInterest_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_fetchRecentLocationsOfInterestWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(RTLearnedLocationManager *)self available])
    {
      v5 = [(RTLearnedLocationManager *)self learnedLocationStore];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __71__RTLearnedLocationManager__fetchRecentLocationsOfInterestWithHandler___block_invoke;
      v7[3] = &unk_2788C5558;
      v7[4] = self;
      v8 = v4;
      [v5 fetchRecentLocationsOfInterestWithHandler:v7];
    }

    else
    {
      v6 = [(RTLearnedLocationManager *)self availabilityError];
      (*(v4 + 2))(v4, 0, v6);
    }
  }
}

void __71__RTLearnedLocationManager__fetchRecentLocationsOfInterestWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTLearnedLocationManager__fetchRecentLocationsOfInterestWithHandler___block_invoke_2;
  block[3] = &unk_2788C6210;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchRecentLocationsOfInterestWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__RTLearnedLocationManager_fetchRecentLocationsOfInterestWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)_getLocationsOfInterestWithinDistance:(double)a3 ofLocation:(id)a4 fromLocationsOfInterest:(id)a5 error:(id *)a6
{
  v39[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v29 = a6;
    v31 = [MEMORY[0x277CBEB18] array];
    v12 = [(RTLearnedLocationManager *)self distanceCalculator];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = v11;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v33 + 1) + 8 * i);
          v19 = [v18 location];
          v20 = [v19 location];
          v32 = 0;
          [v12 distanceFromLocation:v10 toLocation:v20 error:&v32];
          v22 = v21;
          v23 = v32;

          if (v23)
          {
            if (v29)
            {
              v25 = v23;
              *v29 = v23;
            }

            v24 = 0;
            goto LABEL_16;
          }

          if (v22 <= a3)
          {
            [v31 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v24 = v31;
LABEL_16:
    v11 = v30;

    goto LABEL_19;
  }

  if (a6)
  {
    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277D01448];
    v38 = *MEMORY[0x277CCA450];
    v39[0] = @"requires a valid location.";
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    [v26 errorWithDomain:v27 code:0 userInfo:?];
    *a6 = v24 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v24 = 0;
LABEL_20:

  return v24;
}

- (id)_getLocationsOfInterestVisitedBeforeDate:(id)a3 fromLocationsOfInterest:(id)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY %K.%K <= %@", @"visits", @"entryDate", v7];
    a5 = [v8 filteredArrayUsingPredicate:v9];
  }

  else if (a5)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"requires a date date.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a5 = [v10 errorWithDomain:v11 code:0 userInfo:v12];

    a5 = 0;
  }

  return a5;
}

- (id)_getLearnedVisits:(id)a3 dateInterval:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA920];
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = a3;
  v9 = [v7 startDate];
  v10 = [v6 predicateWithFormat:@"%K >= %@", @"entryDate", v9];
  v18[0] = v10;
  v11 = MEMORY[0x277CCAC30];
  v12 = [v7 endDate];

  v13 = [v11 predicateWithFormat:@"%K <= %@", @"entryDate", v12];
  v18[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v15 = [v5 andPredicateWithSubpredicates:v14];

  v16 = [v8 filteredArrayUsingPredicate:v15];

  return v16;
}

- (void)_fetchLocationsOfInterestWithinDistance:(double)a3 ofLocation:(id)a4 handler:(id)a5
{
  v30[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if (!v8)
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D01448];
      v29 = *MEMORY[0x277CCA450];
      v30[0] = @"requires a valid location.";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v20 = [v18 errorWithDomain:v19 code:0 userInfo:v15];
      v9[2](v9, 0, v20);

      goto LABEL_6;
    }

    [v8 horizontalUncertainty];
    if (v10 > 250.0)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v27 = *MEMORY[0x277CCA450];
      v13 = MEMORY[0x277CCACA8];
      [v8 horizontalUncertainty];
      v15 = [v13 stringWithFormat:@"Horizontal Uncertainity, %.2f, is greater than the Threshold, %.2f, ", v14, 0x406F400000000000];
      v28 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v17 = [v11 errorWithDomain:v12 code:7 userInfo:v16];
      v9[2](v9, 0, v17);

LABEL_6:
      goto LABEL_7;
    }

    if ([(RTLearnedLocationManager *)self available])
    {
      v21 = [(RTLearnedLocationManager *)self learnedLocationStore];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __87__RTLearnedLocationManager__fetchLocationsOfInterestWithinDistance_ofLocation_handler___block_invoke;
      v23[3] = &unk_2788C6260;
      v23[4] = self;
      v25 = v9;
      v26 = a3;
      v24 = v8;
      [v21 fetchLocationsOfInterestWithinDistance:v24 location:v23 handler:a3];
    }

    else
    {
      v22 = [(RTLearnedLocationManager *)self availabilityError];
      v9[2](v9, 0, v22);
    }
  }

LABEL_7:
}

void __87__RTLearnedLocationManager__fetchLocationsOfInterestWithinDistance_ofLocation_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__RTLearnedLocationManager__fetchLocationsOfInterestWithinDistance_ofLocation_handler___block_invoke_2;
  v13[3] = &unk_2788C6238;
  v14 = v6;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v18 = v8;
  v15 = v9;
  v19 = *(a1 + 56);
  v16 = v10;
  v17 = v5;
  v11 = v5;
  v12 = v6;
  dispatch_async(v7, v13);
}

void __87__RTLearnedLocationManager__fetchLocationsOfInterestWithinDistance_ofLocation_handler___block_invoke_2(double *a1)
{
  if (*(a1 + 4))
  {
    v2 = *(*(a1 + 8) + 16);

    v2();
  }

  else
  {
    v3 = a1[9];
    v4 = *(a1 + 5);
    v5 = *(a1 + 6);
    v6 = *(a1 + 7);
    v9 = 0;
    v7 = [v4 _getLocationsOfInterestWithinDistance:v5 ofLocation:v6 fromLocationsOfInterest:&v9 error:v3];
    v8 = v9;
    (*(*(a1 + 8) + 16))();
  }
}

- (void)fetchLocationsOfInterestWithinDistance:(double)a3 ofLocation:(id)a4 handler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__RTLearnedLocationManager_fetchLocationsOfInterestWithinDistance_ofLocation_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)fetchFusionCandidatesForVisitIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__RTLearnedLocationManager_fetchFusionCandidatesForVisitIdentifier_handler___block_invoke;
    block[3] = &unk_2788C4500;
    block[4] = self;
    v11 = v6;
    v12 = v7;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

- (void)_fetchFusionCandidatesForVisitIdentifier:(id)a3 handler:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

    goto LABEL_8;
  }

  if (![(RTLearnedLocationManager *)self available])
  {
    v9 = [(RTLearnedLocationManager *)self availabilityError];
    v7[2](v7, 0, v9);
LABEL_8:

    goto LABEL_9;
  }

  if (v6)
  {
    v8 = [(RTLearnedLocationManager *)self learnedLocationStore];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__RTLearnedLocationManager__fetchFusionCandidatesForVisitIdentifier_handler___block_invoke;
    v14[3] = &unk_2788C6288;
    v14[4] = self;
    v15 = v7;
    [v8 fetchVisitWithIdentifier:v6 handler:v14];
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"requires a non-nil identifier.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v10 errorWithDomain:v11 code:5 userInfo:v12];
    v7[2](v7, 0, v13);
  }

LABEL_9:
}

void __77__RTLearnedLocationManager__fetchFusionCandidatesForVisitIdentifier_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__RTLearnedLocationManager__fetchFusionCandidatesForVisitIdentifier_handler___block_invoke_2;
    block[3] = &unk_2788C4500;
    block[4] = *(a1 + 32);
    v8 = v5;
    v9 = *(a1 + 40);
    dispatch_async(v6, block);
  }
}

void __77__RTLearnedLocationManager__fetchFusionCandidatesForVisitIdentifier_handler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) learnedLocationEngine];
  [v2 fetchFusionCandidatesForVisit:*(a1 + 40) handler:*(a1 + 48)];
}

- (void)fetchInferredMapItemForVisitIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__RTLearnedLocationManager_fetchInferredMapItemForVisitIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchInferredMapItemForVisitIdentifier:(id)a3 handler:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

    goto LABEL_8;
  }

  if (![(RTLearnedLocationManager *)self available])
  {
    v9 = [(RTLearnedLocationManager *)self availabilityError];
    v7[2](v7, 0, v9);
LABEL_8:

    goto LABEL_9;
  }

  if (v6)
  {
    v8 = [(RTLearnedLocationManager *)self learnedLocationStore];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__RTLearnedLocationManager__fetchInferredMapItemForVisitIdentifier_handler___block_invoke;
    v14[3] = &unk_2788C62B0;
    v15 = v7;
    [v8 fetchInferredMapItemForVisitIdentifier:v6 handler:v14];
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"requires a non-nil identifier.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v10 errorWithDomain:v11 code:7 userInfo:v12];
    v7[2](v7, 0, v13);
  }

LABEL_9:
}

- (void)fetchFinerGranularityInferredMapItemWithVisitIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__RTLearnedLocationManager_fetchFinerGranularityInferredMapItemWithVisitIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchFinerGranularityInferredMapItemWithVisitIdentifier:(id)a3 handler:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

    goto LABEL_8;
  }

  if (![(RTLearnedLocationManager *)self available])
  {
    v9 = [(RTLearnedLocationManager *)self availabilityError];
    v7[2](v7, 0, v9);
LABEL_8:

    goto LABEL_9;
  }

  if (v6)
  {
    v8 = [(RTLearnedLocationManager *)self learnedLocationStore];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __93__RTLearnedLocationManager__fetchFinerGranularityInferredMapItemWithVisitIdentifier_handler___block_invoke;
    v14[3] = &unk_2788C62D8;
    v14[4] = self;
    v15 = v7;
    [v8 fetchFinerGranularityInferredMapItemWithVisitIdentifier:v6 handler:v14];
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"requires an indentifier.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v10 errorWithDomain:v11 code:7 userInfo:v12];
    v7[2](v7, 0, v13);
  }

LABEL_9:
}

void __93__RTLearnedLocationManager__fetchFinerGranularityInferredMapItemWithVisitIdentifier_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__RTLearnedLocationManager__fetchFinerGranularityInferredMapItemWithVisitIdentifier_handler___block_invoke_2;
  block[3] = &unk_2788C6210;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)queryProvider:(id)a3 options:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__RTLearnedLocationManager_queryProvider_options_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_queryProvider:(id)a3 options:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [(RTLearnedLocationManager *)self learnedLocationEngine];
    [v11 queryMapItemProvider:v8 options:v9 handler:v10];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", v12, 2u);
    }
  }
}

- (void)_fetchLocationsOfInterestWithPlaceType:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    if ([(RTLearnedLocationManager *)self available])
    {
      v7 = [(RTLearnedLocationManager *)self learnedLocationStore];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __75__RTLearnedLocationManager__fetchLocationsOfInterestWithPlaceType_handler___block_invoke;
      v9[3] = &unk_2788C5558;
      v9[4] = self;
      v10 = v6;
      [v7 fetchLocationsOfInterestWithPlaceType:a3 handler:v9];
    }

    else
    {
      v8 = [(RTLearnedLocationManager *)self availabilityError];
      (*(v6 + 2))(v6, 0, v8);
    }
  }
}

void __75__RTLearnedLocationManager__fetchLocationsOfInterestWithPlaceType_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__RTLearnedLocationManager__fetchLocationsOfInterestWithPlaceType_handler___block_invoke_2;
  block[3] = &unk_2788C6210;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchLocationsOfInterestWithPlaceType:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  v7 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__RTLearnedLocationManager_fetchLocationsOfInterestWithPlaceType_handler___block_invoke;
  block[3] = &unk_2788C6300;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)_fetchLocationsOfInterestVisitedSinceDate:(id)a3 handler:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      if ([(RTLearnedLocationManager *)self available])
      {
        v8 = [(RTLearnedLocationManager *)self learnedLocationStore];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __78__RTLearnedLocationManager__fetchLocationsOfInterestVisitedSinceDate_handler___block_invoke;
        v14[3] = &unk_2788C5558;
        v14[4] = self;
        v15 = v7;
        [v8 fetchLocationsOfInterestVisitedSinceDate:v6 handler:v14];
      }

      else
      {
        v13 = [(RTLearnedLocationManager *)self availabilityError];
        (*(v7 + 2))(v7, 0, v13);
      }
    }

    else
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277D01448];
      v16 = *MEMORY[0x277CCA450];
      v17[0] = @"requires a valid sinceDate.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v12 = [v9 errorWithDomain:v10 code:7 userInfo:v11];
      (*(v7 + 2))(v7, 0, v12);
    }
  }
}

void __78__RTLearnedLocationManager__fetchLocationsOfInterestVisitedSinceDate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__RTLearnedLocationManager__fetchLocationsOfInterestVisitedSinceDate_handler___block_invoke_2;
  block[3] = &unk_2788C6210;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchLocationsOfInterestVisitedSinceDate:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__RTLearnedLocationManager_fetchLocationsOfInterestVisitedSinceDate_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchLocationsOfInterestVisitedBetweenStartDate:(id)a3 endDate:(id)a4 handler:(id)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8)
    {
      if (v9)
      {
        if ([(RTLearnedLocationManager *)self available])
        {
          v11 = [(RTLearnedLocationManager *)self learnedLocationStore];
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __93__RTLearnedLocationManager__fetchLocationsOfInterestVisitedBetweenStartDate_endDate_handler___block_invoke;
          v20[3] = &unk_2788C5558;
          v20[4] = self;
          v21 = v10;
          [v11 fetchLocationsOfInterestVisitedBetweenStartDate:v8 endDate:v9 handler:v20];
        }

        else
        {
          v19 = [(RTLearnedLocationManager *)self availabilityError];
          (*(v10 + 2))(v10, 0, v19);
        }

        goto LABEL_10;
      }

      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v22 = *MEMORY[0x277CCA450];
      v23 = @"requires a valid endDate.";
      v14 = MEMORY[0x277CBEAC0];
      v15 = &v23;
      v16 = &v22;
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v24 = *MEMORY[0x277CCA450];
      v25[0] = @"requires a valid startDate.";
      v14 = MEMORY[0x277CBEAC0];
      v15 = v25;
      v16 = &v24;
    }

    v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    v18 = [v12 errorWithDomain:v13 code:0 userInfo:v17];
    (*(v10 + 2))(v10, 0, v18);
  }

LABEL_10:
}

void __93__RTLearnedLocationManager__fetchLocationsOfInterestVisitedBetweenStartDate_endDate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__RTLearnedLocationManager__fetchLocationsOfInterestVisitedBetweenStartDate_endDate_handler___block_invoke_2;
  block[3] = &unk_2788C6210;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)_fetchLocationsOfInterestVisitedBetweenStartDate:(id)a3 endDate:(id)a4 includePlaceholders:(BOOL)a5 includeVisits:(BOOL)a6 includeTransitions:(BOOL)a7 handler:(id)a8
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v31[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a8;
  if (v16)
  {
    if (v14)
    {
      if (v15)
      {
        if ([(RTLearnedLocationManager *)self available])
        {
          v17 = [(RTLearnedLocationManager *)self learnedLocationStore];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __146__RTLearnedLocationManager__fetchLocationsOfInterestVisitedBetweenStartDate_endDate_includePlaceholders_includeVisits_includeTransitions_handler___block_invoke;
          v26[3] = &unk_2788C5558;
          v26[4] = self;
          v27 = v16;
          [v17 fetchLocationsOfInterestVisitedBetweenStartDate:v14 endDate:v15 includePlaceholders:v11 includeVisits:v10 includeTransitions:v9 handler:v26];
        }

        else
        {
          v25 = [(RTLearnedLocationManager *)self availabilityError];
          (*(v16 + 2))(v16, 0, v25);
        }

        goto LABEL_10;
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D01448];
      v28 = *MEMORY[0x277CCA450];
      v29 = @"requires a valid endDate.";
      v20 = MEMORY[0x277CBEAC0];
      v21 = &v29;
      v22 = &v28;
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D01448];
      v30 = *MEMORY[0x277CCA450];
      v31[0] = @"requires a valid startDate.";
      v20 = MEMORY[0x277CBEAC0];
      v21 = v31;
      v22 = &v30;
    }

    v23 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
    v24 = [v18 errorWithDomain:v19 code:0 userInfo:v23];
    (*(v16 + 2))(v16, 0, v24);
  }

LABEL_10:
}

void __146__RTLearnedLocationManager__fetchLocationsOfInterestVisitedBetweenStartDate_endDate_includePlaceholders_includeVisits_includeTransitions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __146__RTLearnedLocationManager__fetchLocationsOfInterestVisitedBetweenStartDate_endDate_includePlaceholders_includeVisits_includeTransitions_handler___block_invoke_2;
  block[3] = &unk_2788C6210;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchLocationsOfInterestVisitedBetweenStartDate:(id)a3 endDate:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__RTLearnedLocationManager_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)fetchLocationsOfInterestVisitedBetweenStartDate:(id)a3 endDate:(id)a4 includePlaceholders:(BOOL)a5 includeVisits:(BOOL)a6 includeTransitions:(BOOL)a7 handler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __145__RTLearnedLocationManager_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_includePlaceholders_includeVisits_includeTransitions_handler___block_invoke;
  block[3] = &unk_2788C6328;
  block[4] = self;
  v22 = v14;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v23 = v15;
  v24 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  dispatch_async(v17, block);
}

- (void)fetchLocationsOfInterestWithIdentifiers:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__RTLearnedLocationManager_fetchLocationsOfInterestWithIdentifiers_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __76__RTLearnedLocationManager_fetchLocationsOfInterestWithIdentifiers_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) learnedLocationStore];
  [v2 fetchLocationsOfInterestWithIdentifiers:*(a1 + 40) handler:*(a1 + 48)];
}

- (void)_visitFromLearnedVisit:(id)a3 learnedLOI:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_initWeak(&location, self);
  v12 = [(RTLearnedLocationManager *)self learnedLocationStore];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__RTLearnedLocationManager__visitFromLearnedVisit_learnedLOI_handler___block_invoke;
  v16[3] = &unk_2788C6378;
  objc_copyWeak(v20, &location);
  v13 = v11;
  v19 = v13;
  v14 = v9;
  v17 = v14;
  v15 = v10;
  v18 = v15;
  v20[1] = a2;
  [v12 fetchFinerGranularityInferredMapItemForVisit:v14 handler:v16];

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

void __70__RTLearnedLocationManager__visitFromLearnedVisit_learnedLOI_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__RTLearnedLocationManager__visitFromLearnedVisit_learnedLOI_handler___block_invoke_2;
    v17[3] = &unk_2788C6350;
    objc_copyWeak(v23, (a1 + 56));
    v22 = *(a1 + 48);
    v18 = v6;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v10 = v5;
    v11 = *(a1 + 64);
    v21 = v10;
    v23[1] = v11;
    dispatch_async(v9, v17);

    objc_destroyWeak(v23);
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D01448];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"swelf is nil";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v16 = [v13 errorWithDomain:v14 code:0 userInfo:v15];
    (*(v12 + 16))(v12, 0, v16);
  }
}

void __70__RTLearnedLocationManager__visitFromLearnedVisit_learnedLOI_handler___block_invoke_2(uint64_t a1)
{
  v58[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v41 = *(a1 + 32);
        v42 = *(a1 + 40);
        *buf = 138412547;
        v52 = v41;
        v53 = 2117;
        v54 = v42;
        _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "An error, %@, has occurred when fetching the fetchFinerGranularityInferredMapItem for visit, %{sensitive}@", buf, 0x16u);
      }
    }

    v4 = [*(a1 + 48) place];
    v5 = +[RTPlaceInferenceManager userSpecificPlaceTypeFromLearnedPlaceType:](RTPlaceInferenceManager, "userSpecificPlaceTypeFromLearnedPlaceType:", [v4 type]);

    v6 = MEMORY[0x277D011D8];
    v7 = [*(a1 + 48) place];
    v8 = [v7 mapItem];
    v49 = [v6 placeInferencePlaceTypeFromMapItem:v8 userType:v5 source:{objc_msgSend(*(a1 + 40), "placeSource")}];

    v9 = [*(a1 + 48) place];
    v10 = [v9 mapItem];
    v11 = [v10 copy];

    if (v11)
    {
      [v11 setSource:{objc_msgSend(*(a1 + 40), "placeSource")}];
    }

    v48 = WeakRetained;
    v12 = [*(a1 + 56) mapItem];
    v13 = [v12 copy];

    if (v13)
    {
      [v13 setSource:{objc_msgSend(*(a1 + 56), "source")}];
    }

    v14 = objc_alloc(MEMORY[0x277D011D8]);
    v15 = [*(a1 + 48) place];
    v16 = +[RTPlaceInferenceManager userSpecificPlaceTypeSourceFromLearnedPlaceTypeSource:](RTPlaceInferenceManager, "userSpecificPlaceTypeSourceFromLearnedPlaceTypeSource:", [v15 typeSource]);
    v17 = [*(a1 + 40) location];
    v18 = [v17 location];
    [*(a1 + 40) placeConfidence];
    v20 = v19;
    [*(a1 + 56) confidence];
    v22 = v21;
    v23 = [*(a1 + 48) identifier];
    v46 = v13;
    v47 = v11;
    v50 = [v14 initWithMapItem:v11 finerGranularityMapItem:v13 userType:v5 userTypeSource:v16 placeType:v49 referenceLocation:v18 confidence:v20 finerGranularityMapItemConfidence:v22 loiIdentifier:v23];

    v24 = objc_alloc(MEMORY[0x277D01428]);
    v25 = [*(a1 + 40) creationDate];
    v26 = [*(a1 + 40) location];
    v27 = [v26 location];
    v28 = [*(a1 + 40) entryDate];
    v29 = [*(a1 + 40) exitDate];
    v30 = [*(a1 + 40) location];
    v31 = [v30 dataPointCount];
    v32 = *MEMORY[0x277D01470];
    v33 = [*(a1 + 40) identifier];
    v34 = [v24 initWithDate:v25 type:3 location:v27 entry:v28 exit:v29 dataPointCount:v31 confidence:v32 placeInference:v50 source:3 identifier:v33];

    WeakRetained = v48;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v35 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        v45 = NSStringFromSelector(*(a1 + 80));
        *buf = 138412803;
        v52 = v44;
        v53 = 2112;
        v54 = v45;
        v55 = 2117;
        v56 = v34;
        _os_log_debug_impl(&dword_2304B3000, v35, OS_LOG_TYPE_DEBUG, "%@, %@, fetched hindsight visit, %{sensitive}@", buf, 0x20u);
      }
    }

    (*(*(a1 + 64) + 16))();

    v37 = v46;
    v36 = v47;
  }

  else
  {
    v38 = *(a1 + 64);
    v39 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277D01448];
    v57 = *MEMORY[0x277CCA450];
    v58[0] = @"anotherSwelf is nil";
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    v37 = [v39 errorWithDomain:v40 code:0 userInfo:v36];
    (*(v38 + 16))(v38, 0, v37);
  }
}

- (void)_fetchHindsightVisitsBetweenStartDate:(id)a3 endDate:(id)a4 ascending:(BOOL)a5 handler:(id)a6
{
  v33[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v13)
  {
    if (v11)
    {
      if (v12)
      {
        if ([(RTLearnedLocationManager *)self available])
        {
          objc_initWeak(&location, self);
          v14 = [(RTLearnedLocationManager *)self learnedLocationStore];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __92__RTLearnedLocationManager__fetchHindsightVisitsBetweenStartDate_endDate_ascending_handler___block_invoke;
          v23[3] = &unk_2788C6418;
          objc_copyWeak(v27, &location);
          v26 = v13;
          v24 = v11;
          v15 = v12;
          v28 = a5;
          v25 = v15;
          v27[1] = a2;
          [v14 fetchLocationsOfInterestVisitedBetweenStartDate:v24 endDate:v15 handler:v23];

          objc_destroyWeak(v27);
          objc_destroyWeak(&location);
        }

        else
        {
          v22 = [(RTLearnedLocationManager *)self availabilityError];
          (*(v13 + 2))(v13, 0, v22);
        }
      }

      else
      {
        v19 = MEMORY[0x277CCA9B8];
        v30 = *MEMORY[0x277CCA450];
        v31 = @"requires a valid endDate.";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v20];
        (*(v13 + 2))(v13, 0, v21);
      }
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      v33[0] = @"requires a valid startDate.";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v18 = [v16 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v17];
      (*(v13 + 2))(v13, 0, v18);
    }
  }
}

void __92__RTLearnedLocationManager__fetchHindsightVisitsBetweenStartDate_endDate_ascending_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __92__RTLearnedLocationManager__fetchHindsightVisitsBetweenStartDate_endDate_ascending_handler___block_invoke_2;
    v17[3] = &unk_2788C63F0;
    objc_copyWeak(v23, (a1 + 56));
    v17[4] = v8;
    v22 = *(a1 + 48);
    v18 = v5;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v10 = v6;
    v24 = *(a1 + 72);
    v11 = *(a1 + 64);
    v21 = v10;
    v23[1] = v11;
    dispatch_async(v9, v17);

    objc_destroyWeak(v23);
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D01448];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"swelf is nil";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v16 = [v13 errorWithDomain:v14 code:0 userInfo:v15];
    (*(v12 + 16))(v12, 0, v16);
  }
}

void __92__RTLearnedLocationManager__fetchHindsightVisitsBetweenStartDate_endDate_ascending_handler___block_invoke_2(uint64_t a1)
{
  v72[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    v41 = WeakRetained;
    v40 = objc_opt_new();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [*(a1 + 40) count];
        v6 = *(a1 + 48);
        v7 = *(a1 + 56);
        v8 = *(a1 + 64);
        *buf = 134218754;
        v64 = v5;
        v65 = 2112;
        v66 = v6;
        v67 = 2112;
        v68 = v7;
        v69 = 2112;
        v70 = v8;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "fetched %lu LOIs for visits between start date, %@, end date, %@, error, %@", buf, 0x2Au);
      }
    }

    v9 = MEMORY[0x277CCA920];
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", @"entryDate", *(a1 + 48)];
    v62[0] = v10;
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@", @"entryDate", *(a1 + 56)];
    v62[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
    v13 = [v9 andPredicateWithSubpredicates:v12];

    v14 = dispatch_group_create();
    v39 = [MEMORY[0x277CBEB18] array];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v15 = a1;
    obj = *(a1 + 40);
    v36 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v36)
    {
      v34 = *v57;
      v35 = v13;
      do
      {
        v16 = 0;
        do
        {
          if (*v57 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v38 = v16;
          v17 = *(*(&v56 + 1) + 8 * v16);
          context = objc_autoreleasePoolPush();
          v18 = [v17 visits];
          v19 = [v18 filteredArrayUsingPredicate:v13];

          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v20 = v19;
          v21 = [v20 countByEnumeratingWithState:&v52 objects:v60 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v53;
            do
            {
              v24 = 0;
              do
              {
                if (*v53 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v52 + 1) + 8 * v24);
                v26 = objc_autoreleasePoolPush();
                dispatch_group_enter(v14);
                v47[0] = MEMORY[0x277D85DD0];
                v47[1] = 3221225472;
                v47[2] = __92__RTLearnedLocationManager__fetchHindsightVisitsBetweenStartDate_endDate_ascending_handler___block_invoke_193;
                v47[3] = &unk_2788C63A0;
                v48 = *(v15 + 64);
                v49 = v39;
                v50 = v40;
                v51 = v14;
                [v41 _visitFromLearnedVisit:v25 learnedLOI:v17 handler:v47];

                objc_autoreleasePoolPop(v26);
                ++v24;
              }

              while (v22 != v24);
              v22 = [v20 countByEnumeratingWithState:&v52 objects:v60 count:16];
            }

            while (v22);
          }

          objc_autoreleasePoolPop(context);
          v16 = v38 + 1;
          v13 = v35;
        }

        while (v38 + 1 != v36);
        v36 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v36);
    }

    v3 = v41;
    v27 = [v41 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__RTLearnedLocationManager__fetchHindsightVisitsBetweenStartDate_endDate_ascending_handler___block_invoke_2_195;
    block[3] = &unk_2788C63C8;
    objc_copyWeak(v45, (v15 + 80));
    v28 = *(v15 + 72);
    v46 = *(v15 + 96);
    v43 = v40;
    v44 = v28;
    v45[1] = *(v15 + 88);
    v29 = v40;
    dispatch_group_notify(v14, v27, block);

    objc_destroyWeak(v45);
  }

  else
  {
    v30 = *(a1 + 72);
    v31 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277D01448];
    v71 = *MEMORY[0x277CCA450];
    v72[0] = @"swelf is nil";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:&v71 count:1];
    v14 = [v31 errorWithDomain:v32 code:0 userInfo:v13];
    (*(v30 + 16))(v30, 0, v14);
  }
}

void __92__RTLearnedLocationManager__fetchHindsightVisitsBetweenStartDate_endDate_ascending_handler___block_invoke_193(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 32))
  {
    [*(a1 + 40) addObject:a3];
  }

  [*(a1 + 48) addObject:v5];
  dispatch_group_leave(*(a1 + 56));
}

void __92__RTLearnedLocationManager__fetchHindsightVisitsBetweenStartDate_endDate_ascending_handler___block_invoke_2_195(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entry" ascending:*(a1 + 64)];
    v4 = *(a1 + 32);
    v21 = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    v6 = [v4 sortedArrayUsingDescriptors:v5];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(*(a1 + 56));
        v15 = 138412802;
        v16 = v13;
        v17 = 2112;
        v18 = v14;
        v19 = 2048;
        v20 = [v6 count];
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, %@, fetched hindsight visits count, %lu", &v15, 0x20u);
      }
    }

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = @"yetAnotherSwelf is nil";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v6 = [v10 errorWithDomain:v11 code:0 userInfo:v3];
    v8 = *(v9 + 16);
  }

  v8();
}

- (void)fetchHindsightVisitsBetweenStartDate:(id)a3 endDate:(id)a4 ascending:(BOOL)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__RTLearnedLocationManager_fetchHindsightVisitsBetweenStartDate_endDate_ascending_handler___block_invoke;
  block[3] = &unk_2788C6440;
  block[4] = self;
  v18 = v10;
  v21 = a5;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

- (void)_fetchAllLocationsOfInterestWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(RTLearnedLocationManager *)self available])
    {
      v5 = [(RTLearnedLocationManager *)self learnedLocationStore];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __68__RTLearnedLocationManager__fetchAllLocationsOfInterestWithHandler___block_invoke;
      v7[3] = &unk_2788C5558;
      v7[4] = self;
      v8 = v4;
      [v5 fetchAllLocationsOfInterestWithHandler:v7];
    }

    else
    {
      v6 = [(RTLearnedLocationManager *)self availabilityError];
      (*(v4 + 2))(v4, 0, v6);
    }
  }
}

void __68__RTLearnedLocationManager__fetchAllLocationsOfInterestWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTLearnedLocationManager__fetchAllLocationsOfInterestWithHandler___block_invoke_2;
  block[3] = &unk_2788C6210;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchAllLocationsOfInterestWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__RTLearnedLocationManager_fetchAllLocationsOfInterestWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (double)distanceThresholdFromUncertainty:(double)a3 otherUncertainty:(double)a4
{
  v4 = a3 + a4;
  v5 = 250.0;
  if (v4 <= 250.0)
  {
    v5 = v4;
  }

  if (v4 >= 200.0)
  {
    return v5;
  }

  else
  {
    return 200.0;
  }
}

- (id)_getLocationOfInterestAtLocation:(id)a3 fromLocationsOfInterest:(id)a4 error:(id *)a5
{
  v43 = self;
  v52[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    if (a5)
    {
      v39 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277D01448];
      v51 = *MEMORY[0x277CCA450];
      v52[0] = @"requires a valid location.";
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      *a5 = [v39 errorWithDomain:v40 code:0 userInfo:v41];
    }

    goto LABEL_21;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (!v10)
  {
LABEL_21:
    v44 = 0;
    goto LABEL_22;
  }

  v11 = v10;
  v44 = 0;
  v12 = *v47;
  v13 = INFINITY;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v47 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v46 + 1) + 8 * i);
      [v7 longitude];
      v17 = v16;
      v18 = [v15 location];
      v19 = [v18 location];
      [v19 longitude];
      v21 = vabdd_f64(v17, v20);

      if (v21 >= 180.0)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          continue;
        }

        v38 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_2304B3000, v38, OS_LOG_TYPE_DEBUG, "Cluster aggregation falls into DateLine ", buf, 2u);
        }

        goto LABEL_14;
      }

      v22 = v9;
      v23 = objc_opt_class();
      [v7 horizontalUncertainty];
      v25 = v24;
      v26 = [v15 location];
      v27 = [v26 location];
      [v27 horizontalUncertainty];
      [v23 distanceThresholdFromUncertainty:v25 otherUncertainty:v28];
      v30 = v29;

      [v7 latitude];
      [v7 longitude];
      v31 = [v15 location];
      v32 = [v31 location];
      [v32 latitude];
      v33 = [v15 location];
      v34 = [v33 location];
      [v34 longitude];
      RTCommonCalculateDistanceHighPrecision();
      v36 = v35;

      if (v36 <= v30 && v36 < v13)
      {
        v37 = v15;
        v38 = v44;
        v13 = v36;
        v44 = v37;
        v9 = v22;
LABEL_14:

        continue;
      }

      v9 = v22;
    }

    v11 = [v9 countByEnumeratingWithState:&v46 objects:v50 count:16];
  }

  while (v11);
LABEL_22:

  return v44;
}

- (void)_fetchLocationOfInterestAtLocation:(id)a3 handler:(id)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      [v6 horizontalUncertainty];
      if (v8 <= 250.0)
      {
        [v6 horizontalUncertainty];
        v20 = v19 + 1000.0;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __71__RTLearnedLocationManager__fetchLocationOfInterestAtLocation_handler___block_invoke;
        v21[3] = &unk_2788C6468;
        v23 = v7;
        v21[4] = self;
        v22 = v6;
        [(RTLearnedLocationManager *)self _fetchLocationsOfInterestWithinDistance:v22 ofLocation:v21 handler:v20];

        v13 = v23;
      }

      else
      {
        v9 = MEMORY[0x277CCA9B8];
        v10 = *MEMORY[0x277D01448];
        v24 = *MEMORY[0x277CCA450];
        v11 = MEMORY[0x277CCACA8];
        [v6 horizontalUncertainty];
        v13 = [v11 stringWithFormat:@"Horizontal Uncertainity, %.2f, is greater than the Threshold, %.2f", v12, 0x406F400000000000];
        v25 = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v15 = [v9 errorWithDomain:v10 code:7 userInfo:v14];
        (*(v7 + 2))(v7, 0, v15);
      }
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D01448];
      v26 = *MEMORY[0x277CCA450];
      v27[0] = @"requires a valid location.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v18 = [v16 errorWithDomain:v17 code:0 userInfo:v13];
      (*(v7 + 2))(v7, 0, v18);
    }
  }
}

void __71__RTLearnedLocationManager__fetchLocationOfInterestAtLocation_handler___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1[6] + 16);

    v4();
  }

  else
  {
    v5 = a1[4];
    v6 = a1[5];
    v9 = 0;
    v7 = [v5 _getLocationOfInterestAtLocation:v6 fromLocationsOfInterest:a2 error:&v9];
    v8 = v9;
    (*(a1[6] + 16))();
  }
}

- (BOOL)_matchLocation:(id)a3 locationOfInterest:(id)a4 minCircleOverlapThreshold:(double)a5 error:(id *)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  distanceCalculator = self->_distanceCalculator;
  v13 = [v11 location];
  v14 = [v13 location];
  v35 = 0;
  [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:v10 toLocation:v14 error:&v35];
  v16 = v15;
  v17 = v35;

  if (v17)
  {
    if (a6)
    {
      v18 = v17;
      *a6 = v17;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138740227;
        v37 = v11;
        v38 = 2112;
        v39 = *&v17;
        v20 = "Matching candidate, %{sensitive}@, rejected because of a distance computation error, %@";
        v21 = v19;
        v22 = 22;
LABEL_11:
        _os_log_debug_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEBUG, v20, buf, v22);
        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  else
  {
    [(__CFString *)v10 horizontalUncertainty];
    if (v16 <= v23)
    {
      v26 = self->_distanceCalculator;
      v27 = [v11 location];
      v28 = [v27 location];
      v34 = 0;
      v25 = [(RTDistanceCalculator *)v26 checkFractionAreaOverlapBetweenLocation:v10 otherLocation:v28 largerThanThreshold:&v34 error:a5];
      v19 = v34;

      if (!v19)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v31 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v32 = @"NO";
            if (v25)
            {
              v32 = @"YES";
            }

            *buf = 138740739;
            v37 = v11;
            v38 = 2112;
            v39 = *&v32;
            v33 = @"larger";
            if (!v25)
            {
              v33 = @"less";
            }

            v40 = 2112;
            v41 = v33;
            v42 = 2048;
            v43 = a5;
            _os_log_debug_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEBUG, "Matching candidate, %{sensitive}@, selected?, %@, because of the overlap percentage is %@ than threshold, %.2f", buf, 0x2Au);
          }
        }

        v19 = 0;
        goto LABEL_17;
      }

      if (a6)
      {
        v29 = v19;
        LOBYTE(v25) = 0;
        *a6 = v19;
LABEL_17:

        goto LABEL_18;
      }

      goto LABEL_16;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [(__CFString *)v10 horizontalUncertainty];
        *buf = 138740739;
        v37 = v11;
        v38 = 2048;
        v39 = v16;
        v40 = 2117;
        v41 = v10;
        v42 = 2048;
        v43 = v24;
        v20 = "Matching candidate, %{sensitive}@, rejected because of the distance %.2f to region, %{sensitive}@, greater than region radius, %.2f";
        v21 = v19;
        v22 = 42;
        goto LABEL_11;
      }

LABEL_16:
      LOBYTE(v25) = 0;
      goto LABEL_17;
    }
  }

  LOBYTE(v25) = 0;
LABEL_18:

  return v25;
}

- (id)_getMatchingLocationsOfIntrestWithLocation:(id)a3 locationsOfInterest:(id)a4 minCircleOverlapThreshold:(double)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v25;
    *&v13 = 138412803;
    v22 = v13;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v24 + 1) + 8 * v16);
        v23 = 0;
        v18 = [(RTLearnedLocationManager *)self _matchLocation:v8 locationOfInterest:v17 minCircleOverlapThreshold:&v23 error:a5, v22];
        v19 = v23;
        if (v18)
        {
          [v10 addObject:v17];
        }

        if (v19 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v20 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = v22;
            v29 = v19;
            v30 = 2117;
            v31 = v8;
            v32 = 2117;
            v33 = v17;
            _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "an error, %@, has occurred matching location, %{sensitive}@, with location of interest, %{sensitive}@", buf, 0x20u);
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v14);
  }

  return v10;
}

- (id)_selectLocationOfInterestWithLargestDwellTimeFromLocationsOfInterest:(id)a3 dwellTimePercentageThreshold:(double)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = v5;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v35 objects:v46 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v36;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v35 + 1) + 8 * i) dwellTime];
          v10 = v10 + v12;
        }

        v8 = [v6 countByEnumeratingWithState:&v35 objects:v46 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 0.0;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v13 = 0;
      v17 = *v32;
      v18 = -1.0;
      v19 = MEMORY[0x277D86220];
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v31 + 1) + 8 * j);
          [v21 dwellTime];
          v23 = v22;
          v24 = v22 / v10;
          if (v22 / v10 > a4 && v22 > v18)
          {
            v26 = v21;

            v18 = v23;
            v13 = v26;
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v27 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v40 = v21;
              v41 = 2048;
              v42 = v23;
              v43 = 2048;
              v44 = v24;
              _os_log_debug_impl(&dword_2304B3000, v27, OS_LOG_TYPE_DEBUG, "Selection candidate, %@, dwell time, %.2f, percentage dwell time, %.2f", buf, 0x20u);
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v31 objects:v45 count:16];
      }

      while (v16);
    }

    else
    {
      v13 = 0;
      v18 = -1.0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      v5 = v30;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v40 = v13;
        v41 = 2048;
        v42 = v18;
        v43 = 2048;
        v44 = v18 / v10;
        _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "Selection, %@, max dwell time, %.2f, percentage dwell time, %.2f", buf, 0x20u);
      }
    }

    else
    {
      v5 = v30;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_getLocationOfInterestAtLocation:(id)a3 fromLocationsOfInterest:(id)a4 minCircleOverlapThreshold:(double)a5 dwellTimePercentageThreshold:(double)a6 error:(id *)a7
{
  v25[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  if (v12)
  {
    v14 = [(RTLearnedLocationManager *)self _getMatchingLocationsOfIntrestWithLocation:v12 locationsOfInterest:v13 minCircleOverlapThreshold:a5];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v20 = 134218243;
        v21 = [v13 count];
        v22 = 2117;
        v23 = v12;
        _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "Matched, %lu, locations of interest in region, %{sensitive}@", &v20, 0x16u);
      }
    }

    v16 = [(RTLearnedLocationManager *)self _selectLocationOfInterestWithLargestDwellTimeFromLocationsOfInterest:v14 dwellTimePercentageThreshold:a6];
    goto LABEL_9;
  }

  if (a7)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277D01448];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"requires a valid location.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [v17 errorWithDomain:v18 code:0 userInfo:v14];
    *a7 = v16 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v16 = 0;
LABEL_10:

  return v16;
}

- (void)_fetchLocationOfInterestForRegion:(id)a3 handler:(id)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 138739971;
          v28 = v6;
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Fetching location of interest for region, %{sensitive}@", buf, 0xCu);
        }
      }

      [v6 horizontalUncertainty];
      if (v9 <= 400.0)
      {
        [v6 horizontalUncertainty];
        v21 = v20;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __70__RTLearnedLocationManager__fetchLocationOfInterestForRegion_handler___block_invoke;
        v22[3] = &unk_2788C6468;
        v24 = v7;
        v22[4] = self;
        v23 = v6;
        [(RTLearnedLocationManager *)self _fetchLocationsOfInterestWithinDistance:v23 ofLocation:v22 handler:v21];

        v14 = v24;
      }

      else
      {
        v10 = MEMORY[0x277CCA9B8];
        v11 = *MEMORY[0x277D01448];
        v25 = *MEMORY[0x277CCA450];
        v12 = MEMORY[0x277CCACA8];
        [v6 horizontalUncertainty];
        v14 = [v12 stringWithFormat:@"Region radius, %.2f, is greater than the threshold, %.2f", v13, 0x4079000000000000];
        v26 = v14;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v16 = [v10 errorWithDomain:v11 code:7 userInfo:v15];
        (*(v7 + 2))(v7, 0, v16);
      }
    }

    else
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277D01448];
      v29 = *MEMORY[0x277CCA450];
      v30[0] = @"requires a valid location.";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v19 = [v17 errorWithDomain:v18 code:0 userInfo:v14];
      (*(v7 + 2))(v7, 0, v19);
    }
  }
}

void __70__RTLearnedLocationManager__fetchLocationOfInterestForRegion_handler___block_invoke(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(a1[6] + 16))();
    [RTRegionToLocationOfInterestMatchingMetrics submitMetricsWithDistanceCalculator:*(a1[4] + 48) region:a1[5] locationOfInterest:0 matchingError:v6 numberOfMatches:0];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v5 count];
        v9 = a1[5];
        *buf = 134218243;
        v18 = v8;
        v19 = 2117;
        v20 = v9;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "Found, %lu, locations of interest in region, %{sensitive}@", buf, 0x16u);
      }
    }

    v10 = a1[4];
    v11 = a1[5];
    v16 = 0;
    v12 = [v10 _getLocationOfInterestAtLocation:v11 fromLocationsOfInterest:v5 minCircleOverlapThreshold:&v16 dwellTimePercentageThreshold:0.9 error:0.6667];
    v13 = v16;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = a1[5];
        *buf = 138740227;
        v18 = v12;
        v19 = 2117;
        v20 = v15;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "Fetched location of interest, %{sensitive}@, for region, %{sensitive}@", buf, 0x16u);
      }
    }

    (*(a1[6] + 16))();
    +[RTRegionToLocationOfInterestMatchingMetrics submitMetricsWithDistanceCalculator:region:locationOfInterest:matchingError:numberOfMatches:](RTRegionToLocationOfInterestMatchingMetrics, "submitMetricsWithDistanceCalculator:region:locationOfInterest:matchingError:numberOfMatches:", *(a1[4] + 48), a1[5], v12, v13, [v5 count]);
  }
}

- (void)fetchLocationOfInterestAtLocation:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTLearnedLocationManager_fetchLocationOfInterestAtLocation_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)fetchLocationOfInterestForRegion:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RTLearnedLocationManager_fetchLocationOfInterestForRegion_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

+ (double)maxDistanceFromInterval:(double)a3 velocity:(double)a4
{
  v4 = a4 <= 0.0 || a3 <= 0.0;
  result = a3 * a4;
  if (v4)
  {
    return 288000.0;
  }

  return result;
}

- (void)_fetchModeAtLocation:(id)a3 handler:(id)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D01448];
      v30 = *MEMORY[0x277CCA450];
      v31[0] = @"requires a valid location.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v18 = [v16 errorWithDomain:v17 code:0 userInfo:v13];
      v7[2](v7, 0, v18);

      goto LABEL_6;
    }

    [v6 horizontalUncertainty];
    if (v8 > 250.0)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277D01448];
      v28 = *MEMORY[0x277CCA450];
      v11 = MEMORY[0x277CCACA8];
      [v6 horizontalUncertainty];
      v13 = [v11 stringWithFormat:@"Horizontal Uncertainity, %.2f, is greater than the Threshold, %.2f, ", v12, 0x406F400000000000];
      v29 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v15 = [v9 errorWithDomain:v10 code:7 userInfo:v14];
      v7[2](v7, 0, v15);

LABEL_6:
      goto LABEL_7;
    }

    if ([(RTLearnedLocationManager *)self available])
    {
      [(RTLearnedLocationManager *)self _weeksInLearnedLocationsOfInterestModel];
      if (v19 >= 2.0)
      {
        [objc_opt_class() maxDistanceFromInterval:5400.0 velocity:20.0];
        v22 = v21;
        v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1209600.0];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __57__RTLearnedLocationManager__fetchModeAtLocation_handler___block_invoke;
        v25[3] = &unk_2788C6468;
        v26 = v23;
        v27 = v7;
        v25[4] = self;
        v24 = v23;
        [(RTLearnedLocationManager *)self _fetchLocationsOfInterestWithinDistance:v6 ofLocation:v25 handler:v22];
      }

      else
      {
        v7[2](v7, 0, 0);
      }
    }

    else
    {
      v20 = [(RTLearnedLocationManager *)self availabilityError];
      v7[2](v7, 0, v20);
    }
  }

LABEL_7:
}

void __57__RTLearnedLocationManager__fetchModeAtLocation_handler___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1[6] + 16);

    v4();
  }

  else
  {
    v5 = a1[4];
    v6 = a1[5];
    v11 = 0;
    v7 = [v5 _getLocationsOfInterestVisitedBeforeDate:v6 fromLocationsOfInterest:a2 error:&v11];
    v8 = v11;
    v9 = a1[6];
    if ([v7 count])
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    (*(v9 + 16))(v9, v10, v8);
  }
}

- (void)fetchModeAtLocation:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RTLearnedLocationManager_fetchModeAtLocation_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchLocationOfInterestWithIdentifier:(id)a3 handler:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      if ([(RTLearnedLocationManager *)self available])
      {
        v8 = [(RTLearnedLocationManager *)self learnedLocationStore];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __75__RTLearnedLocationManager__fetchLocationOfInterestWithIdentifier_handler___block_invoke;
        v14[3] = &unk_2788C64B8;
        v15 = v7;
        [v8 fetchLocationOfInterestWithIdentifier:v6 handler:v14];
      }

      else
      {
        v13 = [(RTLearnedLocationManager *)self availabilityError];
        (*(v7 + 2))(v7, 0, v13);
      }
    }

    else
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277D01448];
      v16 = *MEMORY[0x277CCA450];
      v17[0] = @"requires a valid identifier.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v12 = [v9 errorWithDomain:v10 code:0 userInfo:v11];
      (*(v7 + 2))(v7, 0, v12);
    }
  }
}

uint64_t __75__RTLearnedLocationManager__fetchLocationOfInterestWithIdentifier_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchLocationOfInterestWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__RTLearnedLocationManager_fetchLocationOfInterestWithIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchVisitIdentifiersIn:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([(RTLearnedLocationManager *)self available])
    {
      v8 = [(RTLearnedLocationManager *)self learnedLocationStore];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __61__RTLearnedLocationManager__fetchVisitIdentifiersIn_handler___block_invoke;
      v10[3] = &unk_2788C5558;
      v10[4] = self;
      v11 = v7;
      [v8 fetchVisitIdentifiersIn:v6 handler:v10];
    }

    else
    {
      v9 = [(RTLearnedLocationManager *)self availabilityError];
      (*(v7 + 2))(v7, 0, v9);
    }
  }
}

void __61__RTLearnedLocationManager__fetchVisitIdentifiersIn_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTLearnedLocationManager__fetchVisitIdentifiersIn_handler___block_invoke_2;
  block[3] = &unk_2788C6210;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchLocationOfInterestWithMapItem:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTLearnedLocationManager_fetchLocationOfInterestWithMapItem_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchLocationOfInterestWithMapItem:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RTLearnedLocationManager *)self learnedLocationStore];
  [v8 fetchLocationOfInterestWithMapItem:v7 handler:v6];
}

- (void)fetchVisitIdentifiersIn:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RTLearnedLocationManager_fetchVisitIdentifiersIn_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchTransitionsBetweenStartDate:(id)a3 endDate:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if ([(RTLearnedLocationManager *)self available])
    {
      v11 = [(RTLearnedLocationManager *)self learnedLocationStore];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __78__RTLearnedLocationManager__fetchTransitionsBetweenStartDate_endDate_handler___block_invoke;
      v13[3] = &unk_2788C5558;
      v13[4] = self;
      v14 = v10;
      [v11 fetchLocationOfInterestTransitionsBetweenStartDate:v8 endDate:v9 handler:v13];
    }

    else
    {
      v12 = [(RTLearnedLocationManager *)self availabilityError];
      (*(v10 + 2))(v10, 0, v12);
    }
  }
}

void __78__RTLearnedLocationManager__fetchTransitionsBetweenStartDate_endDate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__RTLearnedLocationManager__fetchTransitionsBetweenStartDate_endDate_handler___block_invoke_2;
  block[3] = &unk_2788C6210;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchTransitionsBetweenStartDate:(id)a3 endDate:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__RTLearnedLocationManager_fetchTransitionsBetweenStartDate_endDate_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_addLocationOfInterestWithType:(unint64_t)a3 mapItem:(id)a4 customLabel:(id)a5 handler:(id)a6
{
  v26[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v10)
  {
    v14 = [(RTLearnedLocationManager *)self learnedLocationStore];
    v15 = [v14 predicateForObjectsFromCurrentDevice];

    v16 = [(RTLearnedLocationManager *)self learnedLocationStore];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __87__RTLearnedLocationManager__addLocationOfInterestWithType_mapItem_customLabel_handler___block_invoke;
    v20[3] = &unk_2788C65A8;
    v20[4] = self;
    v23 = v13;
    v21 = v10;
    v22 = v11;
    v24 = a3;
    [v16 fetchPlaceWithMapItem:v21 predicate:v15 handler:v20];

LABEL_5:
    goto LABEL_6;
  }

  if (v12)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277D01448];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"requires a valid mapItem.";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v19 = [v17 errorWithDomain:v18 code:0 userInfo:v15];
    (v13)[2](v13, 0, v19);

    goto LABEL_5;
  }

LABEL_6:
}

void __87__RTLearnedLocationManager__addLocationOfInterestWithType_mapItem_customLabel_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__RTLearnedLocationManager__addLocationOfInterestWithType_mapItem_customLabel_handler___block_invoke_2;
  block[3] = &unk_2788C6580;
  v16 = v6;
  v8 = *(a1 + 56);
  v17 = v5;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  *&v11 = *(a1 + 32);
  *(&v11 + 1) = v8;
  v20 = *(a1 + 64);
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v18 = v12;
  v19 = v11;
  v13 = v5;
  v14 = v6;
  dispatch_async(v7, block);
}

void __87__RTLearnedLocationManager__addLocationOfInterestWithType_mapItem_customLabel_handler___block_invoke_2(uint64_t a1)
{
  v117[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }

    return;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    v17 = [MEMORY[0x277CBEAA8] date];
    v107 = objc_alloc(MEMORY[0x277D01060]);
    v104 = [MEMORY[0x277CCAD78] UUID];
    v84 = [*(a1 + 48) address];
    v101 = [v84 geoAddressData];
    v83 = [*(a1 + 48) address];
    v98 = [v83 subPremises];
    v82 = [*(a1 + 48) address];
    v96 = [v82 subThoroughfare];
    v81 = [*(a1 + 48) address];
    v94 = [v81 thoroughfare];
    v80 = [*(a1 + 48) address];
    v92 = [v80 subLocality];
    v79 = [*(a1 + 48) address];
    v90 = [v79 locality];
    v78 = [*(a1 + 48) address];
    v88 = [v78 subAdministrativeArea];
    v77 = [*(a1 + 48) address];
    v86 = [v77 administrativeArea];
    v76 = [*(a1 + 48) address];
    v85 = [v76 administrativeAreaCode];
    v75 = [*(a1 + 48) address];
    v70 = [v75 postalCode];
    v74 = [*(a1 + 48) address];
    v68 = [v74 country];
    v73 = [*(a1 + 48) address];
    v65 = [v73 countryCode];
    v72 = [*(a1 + 48) address];
    v66 = [v72 inlandWater];
    v71 = [*(a1 + 48) address];
    v64 = [v71 ocean];
    v69 = [*(a1 + 48) address];
    v63 = [v69 areasOfInterest];
    v67 = [*(a1 + 48) address];
    v18 = [v67 isIsland];
    v109 = v17;
    v19 = [v17 dateByAddingTimeInterval:4838400.0];
    v20 = [*(a1 + 48) address];
    v21 = [v20 iso3166CountryCode];
    v22 = [*(a1 + 48) address];
    v23 = [v22 iso3166SubdivisionCode];
    LOBYTE(v61) = v18;
    v108 = [v107 initWithIdentifier:v104 geoAddressData:v101 subPremises:v98 subThoroughfare:v96 thoroughfare:v94 subLocality:v92 locality:v90 subAdministrativeArea:v88 administrativeArea:v86 administrativeAreaCode:v85 postalCode:v70 country:v68 countryCode:v65 inlandWater:v66 ocean:v64 areasOfInterest:v63 isIsland:v61 creationDate:v17 expirationDate:v19 iso3166CountryCode:v21 iso3166SubdivisionCode:v23];

    v95 = objc_alloc(MEMORY[0x277D011A0]);
    v91 = [MEMORY[0x277CCAD78] UUID];
    v105 = [*(a1 + 48) name];
    v102 = [*(a1 + 48) category];
    v99 = [*(a1 + 48) categoryMUID];
    v97 = [*(a1 + 48) location];
    v93 = [*(a1 + 48) source];
    v24 = [*(a1 + 48) mapItemPlaceType];
    v25 = [*(a1 + 48) muid];
    v26 = [*(a1 + 48) resultProviderID];
    v89 = [*(a1 + 48) geoMapItemHandle];
    v87 = [*(a1 + 48) geoMapItemIdentifier];
    v27 = [v17 dateByAddingTimeInterval:4838400.0];
    v28 = [*(a1 + 48) extendedAttributes];
    v29 = [*(a1 + 48) displayLanguage];
    LOBYTE(v62) = [*(a1 + 48) disputed];
    v30 = [v95 initWithIdentifier:v91 name:v105 category:v102 categoryMUID:v99 address:v108 location:v97 source:v93 mapItemPlaceType:v24 muid:v25 resultProviderID:v26 geoMapItemHandle:v89 geoMapItemIdentifier:v87 creationDate:v17 expirationDate:v27 extendedAttributes:v28 displayLanguage:v29 disputed:v62];

    v31 = v30;
    v32 = v17;

    v33 = [RTLearnedPlace alloc];
    v34 = [MEMORY[0x277CCAD78] UUID];
    v35 = *(a1 + 56);
    v36 = [v32 dateByAddingTimeInterval:4838400.0];
    v37 = [(RTLearnedPlace *)v33 initWithIdentifier:v34 type:0 typeSource:0 mapItem:v31 customLabel:v35 creationDate:v32 expirationDate:v36];

    v38 = [(RTLearnedPlace *)v37 mapItem];
    if (v38)
    {
      v39 = *(a1 + 80);
      if ((v39 - 1) < 2)
      {

        goto LABEL_13;
      }

      if (v39 == 3)
      {
LABEL_13:
        v106 = v31;
        v40 = v37;
        v41 = [RTLearnedPlace alloc];
        v42 = [MEMORY[0x277CCAD78] UUID];
        v43 = *(a1 + 80);
        v44 = [(RTLearnedPlace *)v40 mapItem];
        v45 = [(RTLearnedPlace *)v40 customLabel];
        v46 = [(RTLearnedPlace *)v40 creationDate];
        v47 = [(RTLearnedPlace *)v40 expirationDate];
        v48 = [(RTLearnedPlace *)v41 initWithIdentifier:v42 type:v43 typeSource:4 mapItem:v44 customLabel:v45 creationDate:v46 expirationDate:v47];

        v49 = *(a1 + 64);
        v114 = 0;
        v50 = [v49 _updateContactsWithLearnedPlace:v48 originalLearnedPlace:v40 error:&v114];
        v51 = v114;
        v52 = v51;
        v37 = v40;
        if (v50)
        {
          v37 = v40;
          if (!v51)
          {
            v100 = [RTLearnedPlace alloc];
            v103 = [v50 identifier];
            v53 = [v50 mapItem];
            v54 = [v50 customLabel];
            v55 = [v50 creationDate];
            v56 = [v50 expirationDate];
            v37 = [(RTLearnedPlace *)v100 initWithIdentifier:v103 type:0 typeSource:0 mapItem:v53 customLabel:v54 creationDate:v55 expirationDate:v56];
          }
        }

        v32 = v109;
        v31 = v106;
      }
    }

    v57 = [*(a1 + 64) learnedLocationStore];
    v115 = v37;
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v115 count:1];
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __87__RTLearnedLocationManager__addLocationOfInterestWithType_mapItem_customLabel_handler___block_invoke_3;
    v110[3] = &unk_2788C6558;
    v59 = *(a1 + 72);
    v110[4] = *(a1 + 64);
    v111 = v37;
    v112 = v59;
    v113 = *(a1 + 80);
    v60 = v37;
    [v57 storePlaces:v58 handler:v110];

    return;
  }

  if (*(a1 + 72))
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [v4 identifier];
    v7 = [v6 UUIDString];
    v8 = [v5 stringWithFormat:@"locationOfInterest, %@, with this mapItem, %@, already exists, ", v7, *(a1 + 48)];

    v9 = *(a1 + 72);
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v12 = *MEMORY[0x277CCA450];
    v117[0] = v8;
    v13 = *MEMORY[0x277D01438];
    v116[0] = v12;
    v116[1] = v13;
    v14 = [*(a1 + 40) identifier];
    v117[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:2];
    v16 = [v10 errorWithDomain:v11 code:11 userInfo:v15];
    (*(v9 + 16))(v9, 0, v16);
  }
}

void __87__RTLearnedLocationManager__addLocationOfInterestWithType_mapItem_customLabel_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__RTLearnedLocationManager__addLocationOfInterestWithType_mapItem_customLabel_handler___block_invoke_4;
  block[3] = &unk_2788C6530;
  v9 = v3;
  v12 = *(a1 + 48);
  v5 = *(a1 + 40);
  v13 = *(a1 + 56);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __87__RTLearnedLocationManager__addLocationOfInterestWithType_mapItem_customLabel_handler___block_invoke_4(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }
  }

  else
  {
    v4 = [RTLearnedPlace alloc];
    v5 = [*(a1 + 40) identifier];
    v6 = *(a1 + 64);
    v7 = [*(a1 + 40) mapItem];
    v8 = [*(a1 + 40) customLabel];
    v9 = [*(a1 + 40) creationDate];
    v10 = [*(a1 + 40) expirationDate];
    v11 = [(RTLearnedPlace *)v4 initWithIdentifier:v5 type:v6 typeSource:4 mapItem:v7 customLabel:v8 creationDate:v9 expirationDate:v10];

    v12 = [RTLearnedLocation alloc];
    v13 = [*(a1 + 40) mapItem];
    v14 = [v13 location];
    v15 = [(RTLearnedLocation *)v12 initWithLocation:v14 dataPointCount:0 type:2];

    v16 = [RTLearnedLocationOfInterest alloc];
    v17 = [(RTLearnedPlace *)v11 identifier];
    v18 = [(RTLearnedLocationOfInterest *)v16 initWithIdentifier:v17 location:v15 place:v11 visits:0 transitions:0];

    v19 = [*(a1 + 48) learnedLocationStore];
    v25[0] = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __87__RTLearnedLocationManager__addLocationOfInterestWithType_mapItem_customLabel_handler___block_invoke_5;
    v22[3] = &unk_2788C6508;
    v21 = *(a1 + 56);
    v22[4] = *(a1 + 48);
    v24 = v21;
    v23 = *(a1 + 40);
    [v19 storeLocationsOfInterest:v20 handler:v22];
  }
}

void __87__RTLearnedLocationManager__addLocationOfInterestWithType_mapItem_customLabel_handler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__RTLearnedLocationManager__addLocationOfInterestWithType_mapItem_customLabel_handler___block_invoke_6;
  v9[3] = &unk_2788C64E0;
  v10 = v3;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = v5;
  v11 = v6;
  v12 = v7;
  v8 = v3;
  dispatch_async(v4, v9);
}

void __87__RTLearnedLocationManager__addLocationOfInterestWithType_mapItem_customLabel_handler___block_invoke_6(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }
  }

  else
  {
    v4 = [*(a1 + 40) learnedLocationStore];
    v5 = [*(a1 + 48) identifier];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __87__RTLearnedLocationManager__addLocationOfInterestWithType_mapItem_customLabel_handler___block_invoke_7;
    v6[3] = &unk_2788C64B8;
    v7 = *(a1 + 56);
    [v4 fetchLocationOfInterestWithIdentifier:v5 handler:v6];
  }
}

uint64_t __87__RTLearnedLocationManager__addLocationOfInterestWithType_mapItem_customLabel_handler___block_invoke_7(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addLocationOfInterestWithType:(unint64_t)a3 mapItem:(id)a4 customLabel:(id)a5 handler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__RTLearnedLocationManager_addLocationOfInterestWithType_mapItem_customLabel_handler___block_invoke;
  block[3] = &unk_2788C5110;
  v20 = v12;
  v21 = a3;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

- (id)_updateContactsWithLearnedPlace:(id)a3 originalLearnedPlace:(id)a4 error:(id *)a5
{
  v106[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"place required"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v96 = v13;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    if (a5)
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277D01448];
      v105 = *MEMORY[0x277CCA450];
      v106[0] = v13;
      v19 = MEMORY[0x277CBEAC0];
      v20 = v106;
      v21 = &v105;
LABEL_18:
      v14 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
      [v17 errorWithDomain:v18 code:0 userInfo:v14];
      *a5 = v15 = 0;
      goto LABEL_100;
    }

LABEL_19:
    v15 = 0;
    goto LABEL_101;
  }

  if (!v9)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"originalPlace required"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v96 = v13;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    if (a5)
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277D01448];
      v103 = *MEMORY[0x277CCA450];
      v104 = v13;
      v19 = MEMORY[0x277CBEAC0];
      v20 = &v104;
      v21 = &v103;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v11 = [v8 type];
  v12 = [v10 type];
  v13 = [v8 mapItem];
  v14 = [v10 mapItem];
  if (![v13 isEqual:v14] || v11 != v12)
  {
    contactsManager = self->_contactsManager;
    v94 = 0;
    v89 = [(RTContactsManager *)contactsManager addressIdentifierOfMeCardWithAddressFromMapItem:v14 error:&v94];
    v24 = v94;
    v88 = v24;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138740227;
        v96 = v89;
        v97 = 2112;
        v98 = v88;
        _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "address identifier of meCard with address of mapItem, %{sensitive}@, error, %@", buf, 0x16u);
      }

      v24 = v88;
    }

    if (v24)
    {
      [v24 domain];
      v27 = v26 = v24;
      if ([v27 isEqualToString:@"RTContactsManagerErrorDomain"])
      {
        v28 = [v26 code];

        if (v28 == 1)
        {
          v15 = v8;
          goto LABEL_97;
        }
      }

      else
      {
      }

      if (a5)
      {
        v24 = v88;
        v32 = v88;
        v15 = 0;
        *a5 = v88;
LABEL_98:

        goto LABEL_99;
      }

      v15 = 0;
LABEL_97:
      v24 = v88;
      goto LABEL_98;
    }

    switch(v11)
    {
      case 3:
        v31 = 0;
        v29 = 0;
        v30 = 1;
        break;
      case 2:
        v31 = 0;
        v30 = 0;
        v29 = 1;
        break;
      case 1:
        v29 = 0;
        v30 = 0;
        v31 = 1;
        break;
      default:
        v31 = 0;
        v29 = 0;
        v30 = 0;
        v33 = 0;
LABEL_40:
        v84 = v31;
        v82 = v29;
        v80 = v30;
        if (v89)
        {
          if (v13 != v14)
          {
            v79 = v33;
            v34 = self->_contactsManager;
            v93 = 0;
            [(RTContactsManager *)v34 updateAddressOfMeCardWithAddressIdentifier:v89 toAddressFromMapItem:v13 error:&v93];
            v35 = v93;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              log = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
              {
                *buf = 138412803;
                v96 = v89;
                v97 = 2117;
                v98 = v13;
                v99 = 2112;
                v100 = v35;
                _os_log_impl(&dword_2304B3000, log, OS_LOG_TYPE_INFO, "updated address of meCard with address identifier, %@ to address from mapItem, %{sensitive}@, error, %@", buf, 0x20u);
              }
            }

            v31 = v84;
            v29 = v82;
            v30 = v80;
            v33 = v79;
            if (v35)
            {
LABEL_47:
              v36 = [v35 domain];
              if ([v36 isEqualToString:@"RTContactsManagerErrorDomain"])
              {
                v37 = [v35 code];

                if (v37 == 1)
                {
                  v15 = v8;
LABEL_88:

                  goto LABEL_97;
                }
              }

              else
              {
              }

              if (a5)
              {
                v60 = v35;
                v15 = 0;
                *a5 = v35;
              }

              else
              {
                v15 = 0;
              }

              goto LABEL_88;
            }
          }

          if (v11 == v12)
          {
LABEL_51:
            v38 = [v8 mapItem];
            v39 = [v38 source];

            if (v11 != v12)
            {
              if ((v84 | v82 | v80) == 1)
              {
                v85 = objc_alloc(MEMORY[0x277D011A8]);
                v40 = [v13 extendedAttributes];
                v41 = [v40 identifier];
                v42 = v41;
                if (!v41)
                {
                  v42 = [MEMORY[0x277CCAD78] UUID];
                }

                v43 = [v13 extendedAttributes];
                [v43 wifiConfidence];
                v45 = v44;
                v46 = [v13 extendedAttributes];
                v47 = [v46 wifiFingerprintLabelType];
                v48 = v85;
                v86 = v42;
                v49 = [v48 initWithIdentifier:v42 addressIdentifier:v89 isMe:1 wifiConfidence:v47 wifiFingerprintLabelType:v45];
                [v13 setExtendedAttributes:v49];

                if (!v41)
                {
                }

                v39 |= 4uLL;
              }

              else
              {
                [v13 setExtendedAttributes:0];
                v39 &= ~4uLL;
              }
            }

            if (v13 != v14)
            {
              v63 = objc_alloc(MEMORY[0x277D011A8]);
              v64 = [v13 extendedAttributes];
              v65 = [v64 identifier];
              v66 = v65;
              if (!v65)
              {
                v66 = [MEMORY[0x277CCAD78] UUID];
              }

              v67 = [v13 extendedAttributes];
              [v67 wifiConfidence];
              v69 = v68;
              v70 = [v13 extendedAttributes];
              v71 = [v63 initWithIdentifier:v66 addressIdentifier:v89 isMe:1 wifiConfidence:objc_msgSend(v70 wifiFingerprintLabelType:{"wifiFingerprintLabelType"), v69}];
              [v13 setExtendedAttributes:v71];

              if (!v65)
              {
              }

              v39 = 4;
            }

            v72 = v13;
            [v72 setSource:v39];
            v87 = [RTLearnedPlace alloc];
            v83 = [v8 identifier];
            v81 = [v8 type];
            v73 = [v8 typeSource];
            v74 = [v8 customLabel];
            v75 = [v8 creationDate];
            v76 = [v10 expirationDate];
            v15 = [(RTLearnedPlace *)v87 initWithIdentifier:v83 type:v81 typeSource:v73 mapItem:v72 customLabel:v74 creationDate:v75 expirationDate:v76];

            goto LABEL_97;
          }

          v55 = self->_contactsManager;
          if ((v31 | v29 | v30) != 1)
          {
            v91 = 0;
            [(RTContactsManager *)v55 removeAddressOfMeCardWithAddressIdentifier:v89 error:&v91];
            v35 = v91;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v61 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v96 = v89;
                v97 = 2112;
                v98 = v35;
                _os_log_impl(&dword_2304B3000, v61, OS_LOG_TYPE_INFO, "removed address of meCard with address identifier, %@, error, %@", buf, 0x16u);
              }
            }

            if (v35)
            {
              goto LABEL_47;
            }

            goto LABEL_51;
          }

          v92 = 0;
          [(RTContactsManager *)v55 updateAddressLabelTypeOfMeCardWithAddressIdentifier:v89 toAddressLabelType:v33 error:&v92];
          v52 = v92;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v56 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              v57 = [RTLearnedPlace placeTypeToString:v11];
              *buf = 138412802;
              v96 = v89;
              v97 = 2112;
              v98 = v57;
              v99 = 2112;
              v100 = v52;
              _os_log_impl(&dword_2304B3000, v56, OS_LOG_TYPE_INFO, "updated address label type of meCard with address identifier, %@, to, %@, error, %@", buf, 0x20u);
            }
          }

          if (!v52)
          {
            goto LABEL_51;
          }

LABEL_72:
          v58 = [v52 domain];
          if ([v58 isEqualToString:@"RTContactsManagerErrorDomain"])
          {
            v59 = [v52 code];

            if (v59 == 1)
            {
              v15 = v8;
              v24 = v88;
LABEL_105:

              goto LABEL_98;
            }
          }

          else
          {
          }

          v24 = v88;
          if (a5)
          {
            v62 = v52;
            v15 = 0;
            *a5 = v52;
          }

          else
          {
            v15 = 0;
          }

          goto LABEL_105;
        }

        if ((v31 | v29 | v30) == 1)
        {
          v50 = self->_contactsManager;
          v90 = 0;
          v51 = v33;
          v89 = [(RTContactsManager *)v50 addAddressToMeCardWithAddressLabelType:v33 addressFromMapItem:v13 error:&v90];
          v52 = v90;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v53 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              v54 = [RTContactsManager addressLabelTypeToString:v51];
              *buf = 138413059;
              v96 = v54;
              v97 = 2117;
              v98 = v13;
              v99 = 2112;
              v100 = v89;
              v101 = 2112;
              v102 = v52;
              _os_log_impl(&dword_2304B3000, v53, OS_LOG_TYPE_INFO, "add address to meCard with address label type, %@, address from mapItem, %{sensitive}@, addressIdentifier, %@, error, %@", buf, 0x2Au);
            }

            v24 = v88;
          }

          if (v52)
          {
            goto LABEL_72;
          }

          if (v89)
          {
            goto LABEL_51;
          }
        }

        v15 = v8;

LABEL_99:
        goto LABEL_100;
    }

    v33 = v11;
    goto LABEL_40;
  }

  v15 = v8;
LABEL_100:

LABEL_101:

  return v15;
}

- (void)_updateLocationOfInterestWithIdentifier:(id)a3 type:(unint64_t)a4 mapItem:(id)a5 mapItemSource:(unint64_t)a6 customLabel:(id)a7 handler:(id)a8
{
  v37[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = v17;
  if (!v14)
  {
    if (!v17)
    {
      goto LABEL_9;
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D01448];
    v36 = *MEMORY[0x277CCA450];
    v37[0] = @"requires a valid identifier.";
    v22 = MEMORY[0x277CBEAC0];
    v23 = v37;
    v24 = &v36;
LABEL_8:
    v25 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
    v26 = [v20 errorWithDomain:v21 code:0 userInfo:v25];
    (v18)[2](v18, 0, v26);

    goto LABEL_9;
  }

  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_9;
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D01448];
    v34 = *MEMORY[0x277CCA450];
    v35 = @"requires a valid mapItem.";
    v22 = MEMORY[0x277CBEAC0];
    v23 = &v35;
    v24 = &v34;
    goto LABEL_8;
  }

  v19 = [(RTLearnedLocationManager *)self learnedLocationStore];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __115__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_mapItem_mapItemSource_customLabel_handler___block_invoke;
  v27[3] = &unk_2788C6620;
  v27[4] = self;
  v31 = v18;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v32 = a6;
  v33 = a4;
  [v19 fetchLocationOfInterestWithIdentifier:v28 handler:v27];

LABEL_9:
}

void __115__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_mapItem_mapItemSource_customLabel_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_mapItem_mapItemSource_customLabel_handler___block_invoke_2;
  block[3] = &unk_2788C65F8;
  v16 = v6;
  v17 = v5;
  v20 = *(a1 + 64);
  *&v8 = *(a1 + 40);
  *(&v8 + 1) = *(a1 + 32);
  v14 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v18 = v14;
  v19 = v11;
  v21 = *(a1 + 72);
  v12 = v5;
  v13 = v6;
  dispatch_async(v7, block);
}

void __115__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_mapItem_mapItemSource_customLabel_handler___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) || (v5 = *(a1 + 40)) == 0)
  {
    if (!*(a1 + 80))
    {
      return;
    }

    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"No location of interest exists with identifier %@.", *(a1 + 48)];
    v3 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v2;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "Unable to update location of interest. %@", buf, 0xCu);
    }

    v4 = *(a1 + 80);
    if (*(a1 + 32))
    {
      (*(v4 + 16))(*(a1 + 80), 0);
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277D01448];
      v26 = *MEMORY[0x277CCA450];
      v27 = v2;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v17 = [v14 errorWithDomain:v15 code:7 userInfo:v16];
      (*(v4 + 16))(v4, 0, v17);
    }
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v25 = 0;
    v8 = [v6 validateUpdatedMapItem:v7 locationOfInterest:v5 error:&v25];
    v2 = v25;
    if (v8)
    {
      v9 = [*(a1 + 56) learnedLocationStore];
      v10 = [v9 predicateForObjectsFromCurrentDevice];

      v11 = [*(a1 + 56) learnedLocationStore];
      v12 = [*(a1 + 40) place];
      v13 = [v12 mapItem];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __115__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_mapItem_mapItemSource_customLabel_handler___block_invoke_237;
      v19[3] = &unk_2788C65D0;
      v19[4] = *(a1 + 56);
      v23 = *(a1 + 80);
      v20 = *(a1 + 40);
      v21 = *(a1 + 64);
      v22 = *(a1 + 72);
      v24 = *(a1 + 88);
      [v11 fetchPlaceWithMapItem:v13 predicate:v10 handler:v19];
    }

    else
    {
      v18 = *(a1 + 80);
      if (v18)
      {
        (*(v18 + 16))(v18, 0, v2);
      }
    }
  }
}

void __115__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_mapItem_mapItemSource_customLabel_handler___block_invoke_237(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_mapItem_mapItemSource_customLabel_handler___block_invoke_2_238;
  block[3] = &unk_2788C65F8;
  v11 = v6;
  v17 = *(a1 + 64);
  v12 = *(a1 + 40);
  v13 = v5;
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v18 = *(a1 + 72);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __115__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_mapItem_mapItemSource_customLabel_handler___block_invoke_2_238(uint64_t a1)
{
  v87 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    if (!*(a1 + 48))
    {
      v30 = *(a1 + 56);
      v31 = *(a1 + 64);
      v32 = *(a1 + 72);
      v33 = *(a1 + 88);
      v77 = 0;
      v34 = [v30 createAndStoreNewPlaceWithMapItem:v31 customLabel:v32 mapItemSource:v33 outError:&v77];
      v35 = v77;
      if (!v34)
      {
        v65 = *(a1 + 80);
        if (v65)
        {
          (*(v65 + 16))(v65, 0, v35);
        }

        v69 = 0;
        goto LABEL_30;
      }

      v36 = [RTLearnedPlace alloc];
      v37 = [v34 identifier];
      v38 = *(a1 + 96);
      v39 = [v34 mapItem];
      v40 = *(a1 + 72);
      v41 = [v34 creationDate];
      v42 = [v34 expirationDate];
      v69 = [(RTLearnedPlace *)v36 initWithIdentifier:v37 type:v38 typeSource:4 mapItem:v39 customLabel:v40 creationDate:v41 expirationDate:v42];

LABEL_23:
      v53 = *(a1 + 56);
      v54 = [*(a1 + 40) place];
      v73 = 0;
      v55 = [v53 _updateContactsWithLearnedPlace:v69 originalLearnedPlace:v54 error:&v73];
      v35 = v73;

      if (v35)
      {
        v56 = *(a1 + 80);
        if (v56)
        {
          (*(v56 + 16))(v56, 0, v35);
        }
      }

      else
      {
        v57 = [RTLearnedLocationOfInterest alloc];
        v58 = [*(a1 + 40) identifier];
        v59 = [*(a1 + 40) location];
        v60 = [*(a1 + 40) visits];
        v61 = [*(a1 + 40) transitions];
        v62 = [(RTLearnedLocationOfInterest *)v57 initWithIdentifier:v58 location:v59 place:v69 visits:v60 transitions:v61];

        v63 = [*(a1 + 56) learnedLocationStore];
        v78 = v62;
        v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __115__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_mapItem_mapItemSource_customLabel_handler___block_invoke_2_240;
        v70[3] = &unk_2788C6508;
        v70[4] = *(a1 + 56);
        v72 = *(a1 + 80);
        v71 = *(a1 + 64);
        [v63 updateLocationsOfInterest:v64 handler:v70];

        v35 = 0;
      }

LABEL_30:

LABEL_31:
      return;
    }

    v3 = [RTLearnedPlace alloc];
    v4 = [*(a1 + 48) identifier];
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = [*(a1 + 48) creationDate];
    v8 = [*(a1 + 48) expirationDate];
    v69 = [(RTLearnedPlace *)v3 initWithIdentifier:v4 type:0 typeSource:0 mapItem:v5 customLabel:v6 creationDate:v7 expirationDate:v8];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v81 = 0x3032000000;
    v82 = __Block_byref_object_copy__19;
    v83 = __Block_byref_object_dispose__19;
    v84 = 0;
    v9 = dispatch_semaphore_create(0);
    v10 = [*(a1 + 56) learnedLocationStore];
    v79 = v69;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __115__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_mapItem_mapItemSource_customLabel_handler___block_invoke_239;
    v74[3] = &unk_2788C4618;
    p_buf = &buf;
    v12 = v9;
    v75 = v12;
    [v10 updatePlaces:v11 handler:v74];

    v13 = v12;
    v14 = [MEMORY[0x277CBEAA8] now];
    v15 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v13, v15))
    {
      v16 = [MEMORY[0x277CBEAA8] now];
      [v16 timeIntervalSinceDate:v14];
      v18 = v17;
      v19 = objc_opt_new();
      v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_619];
      v21 = [MEMORY[0x277CCACC8] callStackSymbols];
      v22 = [v21 filteredArrayUsingPredicate:v20];
      v23 = [v22 firstObject];

      [v19 submitToCoreAnalytics:v23 type:1 duration:v18];
      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *v86 = 0;
        _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v86, 2u);
      }

      v25 = MEMORY[0x277CCA9B8];
      v85 = *MEMORY[0x277CCA450];
      *v86 = @"semaphore wait timeout";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:&v85 count:1];
      v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

      if (v27)
      {
        v28 = v27;

        v29 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v27 = 0;
    }

    v29 = 1;
LABEL_16:

    v43 = v27;
    if ((v29 & 1) == 0)
    {
      objc_storeStrong((*(&buf + 1) + 40), v27);
    }

    v44 = *(*(&buf + 1) + 40);
    if (v44)
    {
      v45 = *(a1 + 80);
      if (v45)
      {
        (*(v45 + 16))(v45, 0, *(*(&buf + 1) + 40));
      }
    }

    else
    {
      v68 = [RTLearnedPlace alloc];
      v46 = [*(a1 + 48) identifier];
      v47 = *(a1 + 96);
      v49 = *(a1 + 64);
      v48 = *(a1 + 72);
      v50 = [*(a1 + 48) creationDate];
      v51 = [*(a1 + 48) expirationDate];
      v52 = [(RTLearnedPlace *)v68 initWithIdentifier:v46 type:v47 typeSource:4 mapItem:v49 customLabel:v48 creationDate:v50 expirationDate:v51];

      v69 = v52;
    }

    _Block_object_dispose(&buf, 8);
    if (v44)
    {
      goto LABEL_31;
    }

    goto LABEL_23;
  }

  if (*(a1 + 80))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v66 = [*(a1 + 40) place];
      v67 = [v66 mapItem];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v67;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "Unable to fetch place from current device with mapItem. %@", &buf, 0xCu);
    }

    (*(*(a1 + 80) + 16))();
  }
}

void __115__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_mapItem_mapItemSource_customLabel_handler___block_invoke_239(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __115__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_mapItem_mapItemSource_customLabel_handler___block_invoke_2_240(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __115__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_mapItem_mapItemSource_customLabel_handler___block_invoke_3;
  v9[3] = &unk_2788C64E0;
  v10 = v3;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13 = v5;
  v11 = v6;
  v12 = v7;
  v8 = v3;
  dispatch_async(v4, v9);
}

void __115__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_mapItem_mapItemSource_customLabel_handler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }
  }

  else
  {
    v4 = [*(a1 + 40) learnedLocationStore];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __115__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_mapItem_mapItemSource_customLabel_handler___block_invoke_4;
    v6[3] = &unk_2788C64B8;
    v5 = *(a1 + 48);
    v7 = *(a1 + 56);
    [v4 fetchLocationOfInterestWithMapItem:v5 handler:v6];
  }
}

uint64_t __115__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_mapItem_mapItemSource_customLabel_handler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateLocationOfInterestWithIdentifier:(id)a3 type:(unint64_t)a4 mapItem:(id)a5 mapItemSource:(unint64_t)a6 customLabel:(id)a7 handler:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__RTLearnedLocationManager_updateLocationOfInterestWithIdentifier_type_mapItem_mapItemSource_customLabel_handler___block_invoke;
  block[3] = &unk_2788C5958;
  block[4] = self;
  v24 = v14;
  v28 = a4;
  v29 = a6;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  dispatch_async(v18, block);
}

- (void)_updateLocationOfInterestWithIdentifier:(id)a3 mapItem:(id)a4 mapItemSource:(unint64_t)a5 handler:(id)a6
{
  v30[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (!v10)
  {
    if (!v12)
    {
      goto LABEL_9;
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D01448];
    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"requires a valid identifier.";
    v17 = MEMORY[0x277CBEAC0];
    v18 = v30;
    v19 = &v29;
LABEL_8:
    v20 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
    v21 = [v15 errorWithDomain:v16 code:0 userInfo:v20];
    (v13)[2](v13, 0, v21);

    goto LABEL_9;
  }

  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_9;
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D01448];
    v27 = *MEMORY[0x277CCA450];
    v28 = @"requires a valid mapItem.";
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v28;
    v19 = &v27;
    goto LABEL_8;
  }

  v14 = [(RTLearnedLocationManager *)self learnedLocationStore];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __98__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_mapItem_mapItemSource_handler___block_invoke;
  v22[3] = &unk_2788C6670;
  v22[4] = self;
  v25 = v13;
  v23 = v10;
  v24 = v11;
  v26 = a5;
  [v14 fetchLocationOfInterestWithIdentifier:v23 handler:v22];

LABEL_9:
}

void __98__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_mapItem_mapItemSource_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_mapItem_mapItemSource_handler___block_invoke_2;
  block[3] = &unk_2788C6648;
  v15 = v6;
  v16 = v5;
  v8 = *(a1 + 56);
  *&v9 = *(a1 + 40);
  *(&v9 + 1) = *(a1 + 32);
  v13 = v9;
  *&v10 = *(a1 + 48);
  *(&v10 + 1) = v8;
  v17 = v13;
  v18 = v10;
  v19 = *(a1 + 64);
  v11 = v5;
  v12 = v6;
  dispatch_async(v7, block);
}

void __98__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_mapItem_mapItemSource_handler___block_invoke_2(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a1[4])
  {
    v5 = a1[5];
    if (v5)
    {
      v6 = a1[7];
      v7 = a1[8];
      v21 = 0;
      v8 = [v6 validateUpdatedMapItem:v7 locationOfInterest:v5 error:&v21];
      v2 = v21;
      if ((v8 & 1) == 0)
      {
        v20 = a1[9];
        if (v20)
        {
          (*(v20 + 16))(v20, 0, v2);
        }

        goto LABEL_12;
      }

      v10 = a1[6];
      v9 = a1[7];
      v11 = [a1[5] place];
      v12 = [v11 type];
      v13 = a1[8];
      v14 = a1[10];
      v15 = [a1[5] place];
      v16 = [v15 customLabel];
      [v9 _updateLocationOfInterestWithIdentifier:v10 type:v12 mapItem:v13 mapItemSource:v14 customLabel:v16 handler:a1[9]];

      goto LABEL_11;
    }
  }

  if (!a1[9])
  {
    return;
  }

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"No location of interest exists with identifier %@.", a1[6]];
  v3 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v25 = v2;
    _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "Unable to update location of interest. %@", buf, 0xCu);
  }

  v4 = a1[9];
  if (!a1[4])
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277D01448];
    v22 = *MEMORY[0x277CCA450];
    v23 = v2;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v19 = [v17 errorWithDomain:v18 code:7 userInfo:v11];
    (*(v4 + 16))(v4, 0, v19);

LABEL_11:
    goto LABEL_12;
  }

  (*(v4 + 16))(a1[9], 0);
LABEL_12:
}

- (void)updateLocationOfInterestWithIdentifier:(id)a3 mapItem:(id)a4 mapItemSource:(unint64_t)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__RTLearnedLocationManager_updateLocationOfInterestWithIdentifier_mapItem_mapItemSource_handler___block_invoke;
  block[3] = &unk_2788C5110;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a5;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

- (void)_updateLocationOfInterestWithIdentifier:(id)a3 type:(unint64_t)a4 handler:(id)a5
{
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    v11 = [(RTLearnedLocationManager *)self learnedLocationStore];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_handler___block_invoke;
    v16[3] = &unk_2788C6698;
    v16[4] = self;
    v18 = v10;
    v17 = v8;
    v19 = a4;
    [v11 fetchLocationOfInterestWithIdentifier:v17 handler:v16];
  }

  else if (v9)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D01448];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"requires a valid identifier.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v15 = [v12 errorWithDomain:v13 code:0 userInfo:v14];
    (v10)[2](v10, 0, v15);
  }
}

void __81__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_handler___block_invoke_2;
  v12[3] = &unk_2788C4CC0;
  v13 = v6;
  v14 = v5;
  v17 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v15 = v8;
  v16 = v9;
  v18 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __81__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_handler___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) || (v5 = *(a1 + 40)) == 0)
  {
    if (*(a1 + 64))
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"No location of interest exists with identifier %@.", *(a1 + 48)];
      v3 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = v2;
        _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "Unable to update location of interest. %@", buf, 0xCu);
      }

      v4 = *(a1 + 64);
      if (*(a1 + 32))
      {
        (*(v4 + 16))(*(a1 + 64), 0);
      }

      else
      {
        v15 = MEMORY[0x277CCA9B8];
        v16 = *MEMORY[0x277D01448];
        v20 = *MEMORY[0x277CCA450];
        v21 = v2;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v18 = [v15 errorWithDomain:v16 code:7 userInfo:v17];
        (*(v4 + 16))(v4, 0, v18);
      }
    }
  }

  else
  {
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = *(a1 + 72);
    v19 = [v5 place];
    v9 = [v19 mapItem];
    v10 = [*(a1 + 40) place];
    v11 = [v10 mapItem];
    v12 = [v11 source];
    v13 = [*(a1 + 40) place];
    v14 = [v13 customLabel];
    [v6 _updateLocationOfInterestWithIdentifier:v7 type:v8 mapItem:v9 mapItemSource:v12 customLabel:v14 handler:*(a1 + 64)];
  }
}

- (void)updateLocationOfInterestWithIdentifier:(id)a3 type:(unint64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__RTLearnedLocationManager_updateLocationOfInterestWithIdentifier_type_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)_updateLocationOfInterestWithIdentifier:(id)a3 customLabel:(id)a4 handler:(id)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v12 = [(RTLearnedLocationManager *)self learnedLocationStore];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_customLabel_handler___block_invoke;
    v17[3] = &unk_2788C6738;
    v17[4] = self;
    v20 = v11;
    v18 = v8;
    v19 = v9;
    [v12 fetchLocationOfInterestWithIdentifier:v18 handler:v17];
  }

  else if (v10)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D01448];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"requires a valid identifier.";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v16 = [v13 errorWithDomain:v14 code:0 userInfo:v15];
    (v11)[2](v11, 0, v16);
  }
}

void __88__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_customLabel_handler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_customLabel_handler___block_invoke_2;
  v15[3] = &unk_2788C66C0;
  v16 = v6;
  v17 = v5;
  v8 = a1[7];
  v9 = a1[5];
  v10 = a1[6];
  *&v11 = a1[4];
  *(&v11 + 1) = v8;
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v18 = v12;
  v19 = v11;
  v13 = v5;
  v14 = v6;
  dispatch_async(v7, v15);
}

void __88__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_customLabel_handler___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) || !*(a1 + 40))
  {
    if (!*(a1 + 72))
    {
      return;
    }

    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"No location of interest exists with identifier %@.", *(a1 + 48)];
    v3 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v2;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "Unable to update location of interest. %@", buf, 0xCu);
    }

    v4 = *(a1 + 72);
    if (*(a1 + 32))
    {
      (*(v4 + 16))(*(a1 + 72), 0);
    }

    else
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277D01448];
      v33 = *MEMORY[0x277CCA450];
      v34 = v2;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v22 = [v19 errorWithDomain:v20 code:7 userInfo:v21];
      (*(v4 + 16))(v4, 0, v22);
    }
  }

  else
  {
    v5 = [RTLearnedPlace alloc];
    v29 = [*(a1 + 40) place];
    v26 = [v29 identifier];
    v28 = [*(a1 + 40) place];
    v25 = [v28 type];
    v27 = [*(a1 + 40) place];
    v6 = [v27 typeSource];
    v7 = [*(a1 + 40) place];
    v8 = [v7 mapItem];
    v9 = *(a1 + 56);
    v10 = [*(a1 + 40) place];
    v11 = [v10 creationDate];
    v12 = [*(a1 + 40) place];
    v13 = [v12 expirationDate];
    v14 = [(RTLearnedPlace *)v5 initWithIdentifier:v26 type:v25 typeSource:v6 mapItem:v8 customLabel:v9 creationDate:v11 expirationDate:v13];

    v15 = *(a1 + 64);
    v16 = [*(a1 + 40) place];
    v32 = 0;
    v17 = [v15 _updateContactsWithLearnedPlace:v14 originalLearnedPlace:v16 error:&v32];
    v2 = v32;

    if (v2)
    {
      v18 = *(a1 + 72);
      if (v18)
      {
        (*(v18 + 16))(v18, 0, v2);
      }
    }

    else
    {
      v23 = [*(a1 + 64) learnedLocationStore];
      v24 = *(a1 + 48);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __88__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_customLabel_handler___block_invoke_241;
      v30[3] = &unk_2788C64B8;
      v31 = *(a1 + 72);
      [v23 updateLocationOfInterestWithIdentifier:v24 place:v17 handler:v30];
    }
  }
}

uint64_t __88__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_customLabel_handler___block_invoke_241(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateLocationOfInterestWithIdentifier:(id)a3 customLabel:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__RTLearnedLocationManager_updateLocationOfInterestWithIdentifier_customLabel_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_updateLocationOfInterestWithIdentifier:(id)a3 type:(unint64_t)a4 customLabel:(id)a5 handler:(id)a6
{
  v25[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v10)
  {
    v14 = [(RTLearnedLocationManager *)self learnedLocationStore];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __93__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_customLabel_handler___block_invoke;
    v19[3] = &unk_2788C6670;
    v19[4] = self;
    v22 = v13;
    v20 = v10;
    v23 = a4;
    v21 = v11;
    [v14 fetchLocationOfInterestWithIdentifier:v20 handler:v19];
  }

  else if (v12)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D01448];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"requires a valid identifier.";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v18 = [v15 errorWithDomain:v16 code:0 userInfo:v17];
    (v13)[2](v13, 0, v18);
  }
}

void __93__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_customLabel_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_customLabel_handler___block_invoke_2;
  block[3] = &unk_2788C6648;
  v16 = v6;
  v17 = v5;
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  v20 = *(a1 + 64);
  *&v10 = v9;
  *(&v10 + 1) = *(a1 + 32);
  v14 = v10;
  *&v11 = *(a1 + 48);
  *(&v11 + 1) = v8;
  v18 = v14;
  v19 = v11;
  v12 = v5;
  v13 = v6;
  dispatch_async(v7, block);
}

void __93__RTLearnedLocationManager__updateLocationOfInterestWithIdentifier_type_customLabel_handler___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) || (v5 = *(a1 + 40)) == 0)
  {
    if (*(a1 + 72))
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"No location of interest exists with identifier %@.", *(a1 + 48)];
      v3 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v2;
        _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "Unable to update location of interest. %@", buf, 0xCu);
      }

      v4 = *(a1 + 72);
      if (*(a1 + 32))
      {
        (*(v4 + 16))(*(a1 + 72), 0);
      }

      else
      {
        v12 = MEMORY[0x277CCA9B8];
        v13 = *MEMORY[0x277D01448];
        v17 = *MEMORY[0x277CCA450];
        v18 = v2;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        v15 = [v12 errorWithDomain:v13 code:7 userInfo:v14];
        (*(v4 + 16))(v4, 0, v15);
      }
    }
  }

  else
  {
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = *(a1 + 80);
    v16 = [v5 place];
    v9 = [v16 mapItem];
    v10 = [*(a1 + 40) place];
    v11 = [v10 mapItem];
    [v6 _updateLocationOfInterestWithIdentifier:v7 type:v8 mapItem:v9 mapItemSource:objc_msgSend(v11 customLabel:"source") handler:{*(a1 + 64), *(a1 + 72)}];
  }
}

- (void)updateLocationOfInterestWithIdentifier:(id)a3 type:(unint64_t)a4 customLabel:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__RTLearnedLocationManager_updateLocationOfInterestWithIdentifier_type_customLabel_handler___block_invoke;
  block[3] = &unk_2788C5110;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a4;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

- (void)_trainForReason:(unint64_t)a3 mode:(unint64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = [(RTLearnedLocationManager *)self learnedLocationEngine];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__RTLearnedLocationManager__trainForReason_mode_handler___block_invoke;
  v11[3] = &unk_2788C66E8;
  v12 = v8;
  v10 = v8;
  [v9 trainForReason:a3 mode:a4 handler:v11];
}

uint64_t __57__RTLearnedLocationManager__trainForReason_mode_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)trainForReason:(unint64_t)a3 mode:(unint64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = [(RTNotifier *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__RTLearnedLocationManager_trainForReason_mode_handler___block_invoke;
  v11[3] = &unk_2788C6710;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(v9, v11);
}

- (void)_forceRelabeling:(id)a3
{
  v4 = a3;
  v5 = [(RTLearnedLocationManager *)self learnedLocationEngine];
  [v5 relabelWithHandler:v4];
}

- (void)forceRelabeling:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__RTLearnedLocationManager_forceRelabeling___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_trainLocationsOfInterestModelWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTLearnedLocationManager *)self learnedLocationEngine];
  [v5 trainLocationsOfInterestModelWithHandler:v4];
}

- (void)trainLocationsOfInterestModelWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__RTLearnedLocationManager_trainLocationsOfInterestModelWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_reconcileLearnedLocationsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTLearnedLocationManager *)self learnedLocationEngine];
  [v5 reconcileLearnedLocationsWithHandler:v4];
}

- (void)reconcileLearnedLocationsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__RTLearnedLocationManager_reconcileLearnedLocationsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_classifyPlaceTypesWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTLearnedLocationManager *)self learnedLocationEngine];
  [v5 classifyPlaceTypesWithHandler:v4];
}

- (void)classifyPlaceTypesWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RTLearnedLocationManager_classifyPlaceTypesWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_addLocationOfInterest:(id)a3 handler:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = [(RTLearnedLocationManager *)self learnedLocationStore];
      v9 = [v8 predicateForObjectsFromCurrentDevice];

      v10 = [(RTLearnedLocationManager *)self learnedLocationStore];
      v11 = [v6 place];
      v12 = [v11 mapItem];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __59__RTLearnedLocationManager__addLocationOfInterest_handler___block_invoke;
      v16[3] = &unk_2788C6788;
      v18 = v7;
      v16[4] = self;
      v17 = v6;
      [v10 fetchPlaceWithMapItem:v12 predicate:v9 handler:v16];
    }

    else
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277D01448];
      v20 = *MEMORY[0x277CCA450];
      v21[0] = @"requires a non-nil location of interest.";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v15 = [v13 errorWithDomain:v14 code:0 userInfo:v9];
      (*(v7 + 2))(v7, v15);
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __59__RTLearnedLocationManager__addLocationOfInterest_handler___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(a1[6] + 2))();
  }

  else
  {
    v6 = [a1[4] queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__RTLearnedLocationManager__addLocationOfInterest_handler___block_invoke_2;
    v9[3] = &unk_2788C5530;
    v10 = v5;
    v7 = a1[5];
    v8 = a1[4];
    v11 = v7;
    v12 = v8;
    v13 = a1[6];
    dispatch_async(v6, v9);
  }
}

void __59__RTLearnedLocationManager__addLocationOfInterest_handler___block_invoke_2(id *a1)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy__19;
  v44[4] = __Block_byref_object_dispose__19;
  v45 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__19;
  v42[4] = __Block_byref_object_dispose__19;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__19;
  v40[4] = __Block_byref_object_dispose__19;
  v41 = 0;
  v3 = dispatch_group_create();
  if (!v2)
  {
    v21 = [RTLearnedPlace alloc];
    v26 = [a1[5] place];
    v22 = [v26 identifier];
    v25 = [a1[5] place];
    v20 = [v25 type];
    v24 = [a1[5] place];
    v4 = [v24 typeSource];
    v23 = [a1[5] place];
    v5 = [v23 mapItem];
    v6 = [a1[5] place];
    v7 = [v6 customLabel];
    v8 = [a1[5] place];
    v9 = [v8 creationDate];
    v10 = [a1[5] place];
    v11 = [v10 expirationDate];
    v2 = [(RTLearnedPlace *)v21 initWithIdentifier:v22 type:v20 typeSource:v4 mapItem:v5 customLabel:v7 creationDate:v9 expirationDate:v11];

    dispatch_group_enter(v3);
    v12 = [a1[6] learnedLocationStore];
    v46[0] = v2;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __59__RTLearnedLocationManager__addLocationOfInterest_handler___block_invoke_3;
    v37[3] = &unk_2788C4618;
    v39 = v40;
    v38 = v3;
    [v12 storePlaces:v13 handler:v37];
  }

  dispatch_group_enter(v3);
  v14 = [a1[6] learnedLocationStore];
  v15 = [a1[5] visits];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __59__RTLearnedLocationManager__addLocationOfInterest_handler___block_invoke_4;
  v34[3] = &unk_2788C4618;
  v36 = v42;
  v16 = v3;
  v35 = v16;
  [v14 storeVisits:v15 place:v2 handler:v34];

  v17 = [a1[6] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTLearnedLocationManager__addLocationOfInterest_handler___block_invoke_5;
  block[3] = &unk_2788C6760;
  v31 = v44;
  v32 = v40;
  v33 = v42;
  v30 = a1[7];
  v18 = a1[5];
  block[4] = a1[6];
  v28 = v2;
  v29 = v18;
  v19 = v2;
  dispatch_group_notify(v16, v17, block);

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v42, 8);

  _Block_object_dispose(v44, 8);
}

void __59__RTLearnedLocationManager__addLocationOfInterest_handler___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __59__RTLearnedLocationManager__addLocationOfInterest_handler___block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __59__RTLearnedLocationManager__addLocationOfInterest_handler___block_invoke_5(uint64_t a1)
{
  v13 = *(*(*(a1 + 80) + 8) + 40);
  v12 = *(*(*(a1 + 72) + 8) + 40);
  v2 = _RTSafeArray();
  v3 = _RTMultiErrorCreate();

  if (v3)
  {
    (*(*(a1 + 56) + 16))(*(a1 + 56), v3, v4);
  }

  else
  {
    v5 = [*(a1 + 32) learnedLocationStore];
    v6 = *(a1 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__RTLearnedLocationManager__addLocationOfInterest_handler___block_invoke_6;
    v14[3] = &unk_2788C6738;
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *&v10 = *(a1 + 32);
    *(&v10 + 1) = v7;
    *&v11 = v8;
    *(&v11 + 1) = v9;
    v15 = v11;
    v16 = v10;
    [v5 fetchLocationOfInterestWithPlace:v6 handler:v14];
  }
}

void __59__RTLearnedLocationManager__addLocationOfInterest_handler___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = [RTLearnedLocationOfInterest alloc];
    if (v5)
    {
      v8 = [v5 identifier];
      v9 = [v5 location];
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) visits];
      v12 = [*(a1 + 40) transitions];
      v13 = [(RTLearnedLocationOfInterest *)v7 initWithIdentifier:v8 location:v9 place:v10 visits:v11 transitions:v12];

      v14 = [*(a1 + 48) queue];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __59__RTLearnedLocationManager__addLocationOfInterest_handler___block_invoke_7;
      v28[3] = &unk_2788C4500;
      v28[4] = *(a1 + 48);
      v15 = &v29;
      v16 = v13;
      v29 = v16;
      v17 = &v30;
      v30 = *(a1 + 56);
      v18 = v28;
    }

    else
    {
      v19 = [*(a1 + 40) identifier];
      v20 = [*(a1 + 40) location];
      v21 = *(a1 + 32);
      v22 = [*(a1 + 40) visits];
      v23 = [*(a1 + 40) transitions];
      v24 = [(RTLearnedLocationOfInterest *)v7 initWithIdentifier:v19 location:v20 place:v21 visits:v22 transitions:v23];

      v14 = [*(a1 + 48) queue];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __59__RTLearnedLocationManager__addLocationOfInterest_handler___block_invoke_8;
      v25[3] = &unk_2788C4500;
      v25[4] = *(a1 + 48);
      v15 = &v26;
      v16 = v24;
      v26 = v16;
      v17 = &v27;
      v27 = *(a1 + 56);
      v18 = v25;
    }

    dispatch_async(v14, v18);
  }
}

void __59__RTLearnedLocationManager__addLocationOfInterest_handler___block_invoke_7(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) learnedLocationStore];
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 updateLocationsOfInterest:v3 handler:*(a1 + 48)];
}

void __59__RTLearnedLocationManager__addLocationOfInterest_handler___block_invoke_8(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) learnedLocationStore];
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 storeLocationsOfInterest:v3 handler:*(a1 + 48)];
}

- (void)addLocationOfInterest:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTLearnedLocationManager_addLocationOfInterest_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)removeLocationOfInterestWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__RTLearnedLocationManager_removeLocationOfInterestWithIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_removeLocationOfInterestWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    v8 = [(RTLearnedLocationManager *)self learnedLocationStore];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __76__RTLearnedLocationManager__removeLocationOfInterestWithIdentifier_handler___block_invoke;
    v9[3] = &unk_2788C51C8;
    v9[4] = self;
    v10 = v6;
    [v8 removeLocationOfInterestWithIdentifier:v7 handler:v9];
  }
}

void __76__RTLearnedLocationManager__removeLocationOfInterestWithIdentifier_handler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) learnedLocationEngine];
  [v2 requestTrainLocationsOfInterestModelWithHandler:&__block_literal_global_247];
}

void __76__RTLearnedLocationManager__removeLocationOfInterestWithIdentifier_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "error during requested re-train, %@", &v4, 0xCu);
    }
  }
}

- (void)_removeAllLocationsOfInterestWithHandler:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__19;
  v19[4] = __Block_byref_object_dispose__19;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__19;
  v17[4] = __Block_byref_object_dispose__19;
  v18 = 0;
  dispatch_group_enter(v5);
  v6 = [(RTLearnedLocationManager *)self learnedLocationStore];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__RTLearnedLocationManager__removeAllLocationsOfInterestWithHandler___block_invoke;
  v14[3] = &unk_2788C4618;
  v16 = v19;
  v7 = v5;
  v15 = v7;
  [v6 clearWithHandler:v14];

  v8 = [(RTNotifier *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__RTLearnedLocationManager__removeAllLocationsOfInterestWithHandler___block_invoke_2;
  v10[3] = &unk_2788C67B0;
  v12 = v19;
  v13 = v17;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  dispatch_group_notify(v7, v8, v10);

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

void __69__RTLearnedLocationManager__removeAllLocationsOfInterestWithHandler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __69__RTLearnedLocationManager__removeAllLocationsOfInterestWithHandler___block_invoke_2(uint64_t a1)
{
  v6 = *(*(*(a1 + 56) + 8) + 40);
  v2 = _RTSafeArray();
  v3 = _RTMultiErrorCreate();

  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }
  }

  else
  {
    v5 = [*(a1 + 32) learnedLocationEngine];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__RTLearnedLocationManager__removeAllLocationsOfInterestWithHandler___block_invoke_3;
    v7[3] = &unk_2788C48C0;
    v8 = *(a1 + 40);
    [v5 trainLocationsOfInterestModelWithHandler:v7];
  }
}

uint64_t __69__RTLearnedLocationManager__removeAllLocationsOfInterestWithHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeAllLocationsOfInterestWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__RTLearnedLocationManager_removeAllLocationsOfInterestWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_addVisit:(id)a3 finerGranularityInferredMapItem:(id)a4 locationOfInterest:(id)a5 handler:(id)a6
{
  v30[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    if (v10)
    {
      if (v12)
      {
        v14 = [(RTLearnedLocationManager *)self learnedLocationStore];
        v15 = [v12 identifier];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __97__RTLearnedLocationManager__addVisit_finerGranularityInferredMapItem_locationOfInterest_handler___block_invoke;
        v23[3] = &unk_2788C6738;
        v23[4] = self;
        v26 = v13;
        v24 = v11;
        v25 = v10;
        [v14 fetchLocationOfInterestWithIdentifier:v15 handler:v23];

        goto LABEL_8;
      }

      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D01448];
      v27 = *MEMORY[0x277CCA450];
      v28 = @"requires a valid location of interest.";
      v18 = MEMORY[0x277CBEAC0];
      v19 = &v28;
      v20 = &v27;
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D01448];
      v29 = *MEMORY[0x277CCA450];
      v30[0] = @"requires a valid visit.";
      v18 = MEMORY[0x277CBEAC0];
      v19 = v30;
      v20 = &v29;
    }

    v21 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:1];
    v22 = [v16 errorWithDomain:v17 code:0 userInfo:v21];
    (*(v13 + 2))(v13, v22);
  }

LABEL_8:
}

void __97__RTLearnedLocationManager__addVisit_finerGranularityInferredMapItem_locationOfInterest_handler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__RTLearnedLocationManager__addVisit_finerGranularityInferredMapItem_locationOfInterest_handler___block_invoke_2;
  v12[3] = &unk_2788C6800;
  v13 = v6;
  v18 = a1[7];
  v14 = a1[5];
  v8 = a1[6];
  v9 = a1[4];
  v15 = v8;
  v16 = v9;
  v17 = v5;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __97__RTLearnedLocationManager__addVisit_finerGranularityInferredMapItem_locationOfInterest_handler___block_invoke_2(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }
  }

  else
  {
    if (*(a1 + 40))
    {
      v4 = [*(a1 + 48) identifier];
      v5 = *(a1 + 40);
      v13 = v4;
      v14[0] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else
    {
      v6 = 0;
    }

    v7 = [*(a1 + 56) learnedLocationStore];
    v12 = *(a1 + 48);
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    v9 = [*(a1 + 64) place];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __97__RTLearnedLocationManager__addVisit_finerGranularityInferredMapItem_locationOfInterest_handler___block_invoke_3;
    v10[3] = &unk_2788C4F60;
    v10[4] = *(a1 + 56);
    v11 = *(a1 + 72);
    [v7 storeVisits:v8 finerGranularityInferredMapItems:v6 place:v9 handler:v10];
  }
}

void __97__RTLearnedLocationManager__addVisit_finerGranularityInferredMapItem_locationOfInterest_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__RTLearnedLocationManager__addVisit_finerGranularityInferredMapItem_locationOfInterest_handler___block_invoke_4;
  block[3] = &unk_2788C67D8;
  v8 = v3;
  v5 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void __97__RTLearnedLocationManager__addVisit_finerGranularityInferredMapItem_locationOfInterest_handler___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }
  }

  else
  {
    v4 = [*(a1 + 40) learnedLocationEngine];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __97__RTLearnedLocationManager__addVisit_finerGranularityInferredMapItem_locationOfInterest_handler___block_invoke_5;
    v5[3] = &unk_2788C48C0;
    v6 = *(a1 + 48);
    [v4 trainLocationsOfInterestModelWithHandler:v5];
  }
}

uint64_t __97__RTLearnedLocationManager__addVisit_finerGranularityInferredMapItem_locationOfInterest_handler___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addVisit:(id)a3 finerGranularityInferredMapItem:(id)a4 locationOfInterest:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__RTLearnedLocationManager_addVisit_finerGranularityInferredMapItem_locationOfInterest_handler___block_invoke;
  block[3] = &unk_2788C5580;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)removeVisitWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RTLearnedLocationManager_removeVisitWithIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_removeVisitWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RTLearnedLocationManager *)self learnedLocationStore];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__RTLearnedLocationManager__removeVisitWithIdentifier_handler___block_invoke;
  v10[3] = &unk_2788C51C8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 removeVisitWithIdentifier:v7 handler:v10];
}

void __63__RTLearnedLocationManager__removeVisitWithIdentifier_handler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) learnedLocationEngine];
  [v2 requestTrainLocationsOfInterestModelWithHandler:&__block_literal_global_255];
}

void __63__RTLearnedLocationManager__removeVisitWithIdentifier_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "error during requested re-train, %@", &v4, 0xCu);
    }
  }
}

- (void)_extendLifetimeOfVisitsWithIdentifiers:(id)a3 handler:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      if ([v6 count])
      {
        v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:4838400.0];
        v9 = [(RTLearnedLocationManager *)self learnedLocationStore];
        [v9 extendExpirationDateOfVisitsWithIdentifiers:v6 expirationDate:v8 handler:v7];
      }

      else
      {
        v7[2](v7, 0);
      }
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v16 = *MEMORY[0x277CCA450];
      v17[0] = @"visitIdentifiers is required";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v14 = [v11 errorWithDomain:v12 code:7 userInfo:v13];
      (v7)[2](v7, v14);
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", v15, 2u);
    }
  }
}

- (void)extendLifetimeOfVisitsWithIdentifiers:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__RTLearnedLocationManager_extendLifetimeOfVisitsWithIdentifiers_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchDedupedLocationOfInterestIdentifiersWithIdentifier:(id)a3 handler:(id)a4
{
  v101[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v65 = v6;
  if (!v6)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTLearnedLocationManager _fetchDedupedLocationOfInterestIdentifiersWithIdentifier:handler:]";
      *&buf[12] = 1024;
      *&buf[14] = 3139;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }
  }

  if (v7)
  {
    v9 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v98 = __Block_byref_object_copy__19;
    v99 = __Block_byref_object_dispose__19;
    v100 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x3032000000;
    v77 = __Block_byref_object_copy__19;
    v78 = __Block_byref_object_dispose__19;
    v79 = 0;
    v10 = [(RTLearnedLocationManager *)self learnedLocationStore];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __93__RTLearnedLocationManager__fetchDedupedLocationOfInterestIdentifiersWithIdentifier_handler___block_invoke;
    v70[3] = &unk_2788C4B58;
    v72 = buf;
    v73 = &v74;
    v11 = v9;
    v71 = v11;
    [v10 fetchLocationOfInterestWithIdentifier:v65 handler:v70];

    v12 = v11;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v12, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_619];
      v20 = [MEMORY[0x277CCACC8] callStackSymbols];
      v21 = [v20 filteredArrayUsingPredicate:v19];
      v22 = [v21 firstObject];

      [v18 submitToCoreAnalytics:v22 type:1 duration:v17];
      v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *v93 = 0;
        _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v93, 2u);
      }

      v24 = MEMORY[0x277CCA9B8];
      v87 = *MEMORY[0x277CCA450];
      *v93 = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:&v87 count:1];
      v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

      if (v26)
      {
        v27 = v26;

        v28 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = 1;
LABEL_15:

    oslog = v26;
    if ((v28 & 1) == 0)
    {
      objc_storeStrong(v75 + 5, v26);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = NSStringFromSelector(a2);
        v31 = *(*&buf[8] + 40);
        v32 = v75[5];
        *v93 = 138412803;
        *&v93[4] = v30;
        *&v93[12] = 2117;
        *&v93[14] = v31;
        *&v93[22] = 2112;
        v94 = v32;
        _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@, locationOfInterest, %{sensitive}@, error, %@", v93, 0x20u);
      }
    }

    if (!*(*&buf[8] + 40))
    {
      v7[2](v7, 0, v75[5]);
LABEL_37:

      _Block_object_dispose(&v74, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_38;
    }

    v33 = dispatch_semaphore_create(0);
    *v93 = 0;
    *&v93[8] = v93;
    *&v93[16] = 0x3032000000;
    v94 = __Block_byref_object_copy__19;
    v95 = __Block_byref_object_dispose__19;
    v96 = 0;
    v87 = 0;
    v88 = &v87;
    v89 = 0x3032000000;
    v90 = __Block_byref_object_copy__19;
    v91 = __Block_byref_object_dispose__19;
    v92 = 0;
    v34 = [(RTLearnedLocationManager *)self learnedLocationStore];
    v35 = [*(*&buf[8] + 40) place];
    v36 = [v35 mapItem];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __93__RTLearnedLocationManager__fetchDedupedLocationOfInterestIdentifiersWithIdentifier_handler___block_invoke_259;
    v66[3] = &unk_2788C4490;
    v68 = v93;
    v69 = &v87;
    v37 = v33;
    v67 = v37;
    [v34 fetchPlacesWithMapItem:v36 handler:v66];

    v38 = v37;
    v39 = [MEMORY[0x277CBEAA8] now];
    v40 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v38, v40))
    {
      v41 = [MEMORY[0x277CBEAA8] now];
      [v41 timeIntervalSinceDate:v39];
      v43 = v42;
      v44 = objc_opt_new();
      v45 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_619];
      v46 = [MEMORY[0x277CCACC8] callStackSymbols];
      v47 = [v46 filteredArrayUsingPredicate:v45];
      v48 = [v47 firstObject];

      [v44 submitToCoreAnalytics:v48 type:1 duration:v43];
      v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        *v80 = 0;
        _os_log_fault_impl(&dword_2304B3000, v49, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v80, 2u);
      }

      v50 = MEMORY[0x277CCA9B8];
      v101[0] = *MEMORY[0x277CCA450];
      *v80 = @"semaphore wait timeout";
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v101 count:1];
      v52 = [v50 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v51];

      if (v52)
      {
        v53 = v52;

        v54 = 0;
LABEL_30:

        v55 = v52;
        if ((v54 & 1) == 0)
        {
          objc_storeStrong(v88 + 5, v52);
        }

        v56 = [*(*&v93[8] + 40) valueForKey:@"identifier"];
        v57 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF != %@", v65];
        v58 = [v56 filteredArrayUsingPredicate:v57];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v59 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            v60 = NSStringFromSelector(a2);
            v61 = [v58 count];
            v62 = v88[5];
            *v80 = 138413058;
            *&v80[4] = v60;
            v81 = 2048;
            v82 = v61;
            v83 = 2112;
            v84 = v65;
            v85 = 2112;
            v86 = v62;
            _os_log_impl(&dword_2304B3000, v59, OS_LOG_TYPE_INFO, "%@, %lu deduped places to LOI with identifier, %@, error, %@", v80, 0x2Au);
          }
        }

        (v7)[2](v7, v58, v88[5]);

        _Block_object_dispose(&v87, 8);
        _Block_object_dispose(v93, 8);

        goto LABEL_37;
      }
    }

    else
    {
      v52 = 0;
    }

    v54 = 1;
    goto LABEL_30;
  }

  oslog = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
  }

LABEL_38:
}

void __93__RTLearnedLocationManager__fetchDedupedLocationOfInterestIdentifiersWithIdentifier_handler___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __93__RTLearnedLocationManager__fetchDedupedLocationOfInterestIdentifiersWithIdentifier_handler___block_invoke_259(uint64_t a1, void *a2, void *a3)
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

- (void)fetchDedupedLocationOfInterestIdentifiersWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__RTLearnedLocationManager_fetchDedupedLocationOfInterestIdentifiersWithIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)learnedLocationEngineDidUpdate:(id)a3 intervalSinceLastUpdate:(double)a4 trainMode:(unint64_t)a5 trainResult:(unint64_t)a6
{
  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__RTLearnedLocationManager_learnedLocationEngineDidUpdate_intervalSinceLastUpdate_trainMode_trainResult___block_invoke;
  block[3] = &unk_2788C6828;
  *&block[6] = a4;
  block[4] = self;
  block[5] = a6;
  block[7] = a5;
  block[8] = a2;
  dispatch_async(v11, block);
}

void __105__RTLearnedLocationManager_learnedLocationEngineDidUpdate_intervalSinceLastUpdate_trainMode_trainResult___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v2 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(&v2->super.super, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 64));
      v6 = [objc_opt_class() stringFromTrainResult:*(a1 + 40)];
      v11 = 138412802;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_2304B3000, &v2->super.super, OS_LOG_TYPE_INFO, "%@,%@ skipping RTLearnedLocationManagerNotificationDidUpdate, since trainResult, %@", &v11, 0x20u);
    }
  }

  else
  {
    v2 = [[RTLearnedLocationManagerNotificationDidUpdate alloc] initWithIntervalSinceLastUpdate:*(a1 + 56) trainMode:*(a1 + 40) trainResult:*(a1 + 48)];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(*(a1 + 64));
        v11 = 138412802;
        v12 = v9;
        v13 = 2112;
        v14 = v10;
        v15 = 2112;
        v16 = v2;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@,%@ posting RTLearnedLocationManagerNotificationDidUpdate, %@", &v11, 0x20u);
      }
    }

    [*(a1 + 32) postNotification:v2];
    notify_post([*MEMORY[0x277D01458] UTF8String]);
  }
}

- (void)learnedLocationEngineDidClear:(id)a3
{
  v4 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTLearnedLocationManager_learnedLocationEngineDidClear___block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __58__RTLearnedLocationManager_learnedLocationEngineDidClear___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  [v1 postNotification:v2];

  v3 = [*MEMORY[0x277D01460] UTF8String];

  return notify_post(v3);
}

- (void)learnedLocationEngineWillBeginTraining:(id)a3
{
  v4 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__RTLearnedLocationManager_learnedLocationEngineWillBeginTraining___block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __67__RTLearnedLocationManager_learnedLocationEngineWillBeginTraining___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAvailable:0];
  v2 = *(a1 + 32);

  return [v2 setTraining:1];
}

- (void)learnedLocationEngineDidFinishTraining:(id)a3
{
  v4 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__RTLearnedLocationManager_learnedLocationEngineDidFinishTraining___block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __67__RTLearnedLocationManager_learnedLocationEngineDidFinishTraining___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAvailable:1];
  v2 = *(a1 + 32);

  return [v2 setTraining:0];
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[(RTNotification *)RTLearnedLocationManagerNotificationAvailabilityDidChange];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [[RTLearnedLocationManagerNotificationAvailabilityDidChange alloc] initWithAvailability:[(RTLearnedLocationManager *)self available]];
    [(RTNotifier *)self postNotification:v10 toObserver:v6];
  }

  else
  {
    v11 = +[(RTNotification *)RTLearnedLocationManagerNotificationDidUpdate];
    v12 = [v7 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = v7;
        _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "unhandled notification %@", &v14, 0xCu);
      }
    }
  }
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = +[(RTNotification *)RTLearnedLocationManagerNotificationAvailabilityDidChange];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = +[(RTNotification *)RTLearnedLocationManagerNotificationDidUpdate];
    v8 = [v4 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unhandled notification %@", &v10, 0xCu);
      }
    }
  }
}

- (void)_onLearnedLocationStoreNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    if ([v4 availability] == 2)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __64__RTLearnedLocationManager__onLearnedLocationStoreNotification___block_invoke;
      v8[3] = &unk_2788C4730;
      v8[4] = self;
      [(RTLearnedLocationManager *)self _performLegacyMigrations:v8];
    }

    else
    {
      [(RTLearnedLocationManager *)self setAvailable:0];
    }
  }
}

void __64__RTLearnedLocationManager__onLearnedLocationStoreNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__RTLearnedLocationManager__onLearnedLocationStoreNotification___block_invoke_2;
  v7[3] = &unk_2788C4A70;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __64__RTLearnedLocationManager__onLearnedLocationStoreNotification___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "failed migrating legacy data, error, %@", &v6, 0xCu);
    }

    return [*(a1 + 40) setAvailable:0];
  }

  else
  {
    v4 = *(a1 + 40);

    return [v4 setAvailable:1];
  }
}

- (void)onLearnedLocationStoreNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__RTLearnedLocationManager_onLearnedLocationStoreNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setAvailable:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_available != a3)
  {
    self->_available = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = v6;
        if (self->_available)
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        v10 = 138412546;
        v11 = v6;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, available, %@", &v10, 0x16u);
      }
    }

    v9 = [[RTLearnedLocationManagerNotificationAvailabilityDidChange alloc] initWithAvailability:self->_available];
    [(RTNotifier *)self postNotification:v9];
  }
}

- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__RTLearnedLocationManager_performPurgeOfType_referenceDate_completion___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __72__RTLearnedLocationManager_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) learnedLocationEngine];

  if (v2)
  {
    v4 = [*(a1 + 32) learnedLocationEngine];
    [v4 performPurgeOfType:*(a1 + 56) referenceDate:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }
}

- (void)logDatabasesWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__RTLearnedLocationManager_logDatabasesWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __52__RTLearnedLocationManager_logDatabasesWithHandler___block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__19;
  v28[4] = __Block_byref_object_dispose__19;
  v29 = 0;
  dispatch_group_enter(v2);
  v3 = [*(a1 + 32) learnedLocationStore];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __52__RTLearnedLocationManager_logDatabasesWithHandler___block_invoke_2;
  v25[3] = &unk_2788C4618;
  v27 = v28;
  v4 = v2;
  v26 = v4;
  [v3 logCloudStoreWithReason:0 handler:v25];

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__19;
  v23[4] = __Block_byref_object_dispose__19;
  v24 = 0;
  dispatch_group_enter(v4);
  v5 = [*(a1 + 32) learnedLocationStore];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__RTLearnedLocationManager_logDatabasesWithHandler___block_invoke_3;
  v20[3] = &unk_2788C4618;
  v22 = v23;
  v6 = v4;
  v21 = v6;
  [v5 logLocalStoreWithReason:0 handler:v20];

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__19;
  v18[4] = __Block_byref_object_dispose__19;
  v19 = 0;
  dispatch_group_enter(v6);
  v7 = [*(a1 + 32) learnedPlaceTypeInferenceStore];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__RTLearnedLocationManager_logDatabasesWithHandler___block_invoke_4;
  v15[3] = &unk_2788C4618;
  v17 = v18;
  v8 = v6;
  v16 = v8;
  [v7 logCacheStoreWithReason:0 handler:v15];

  v9 = [*(a1 + 32) queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__RTLearnedLocationManager_logDatabasesWithHandler___block_invoke_5;
  v10[3] = &unk_2788C6850;
  v11 = *(a1 + 40);
  v12 = v28;
  v13 = v23;
  v14 = v18;
  dispatch_group_notify(v8, v9, v10);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v28, 8);
}

void __52__RTLearnedLocationManager_logDatabasesWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __52__RTLearnedLocationManager_logDatabasesWithHandler___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __52__RTLearnedLocationManager_logDatabasesWithHandler___block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __52__RTLearnedLocationManager_logDatabasesWithHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = _RTSafeArray();
    v2 = _RTMultiErrorCreate();
    (*(v1 + 16))(v1, v2);
  }
}

- (void)updateTransitionWithIdentifier:(id)a3 motionActivityType:(unint64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__RTLearnedLocationManager_updateTransitionWithIdentifier_motionActivityType_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __86__RTLearnedLocationManager_updateTransitionWithIdentifier_motionActivityType_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) learnedLocationStore];
  [v2 updateTransitionWithIdentifier:*(a1 + 40) motionActivityType:*(a1 + 56) handler:*(a1 + 48)];
}

- (void)_reconstructTransitionsWithHandler:(id)a3
{
  v141[1] = *MEMORY[0x277D85DE8];
  v94 = a3;
  v123 = 0;
  v124 = &v123;
  v125 = 0x3032000000;
  v126 = __Block_byref_object_copy__19;
  v127 = __Block_byref_object_dispose__19;
  v128 = 0;
  v117 = 0;
  v118 = &v117;
  v119 = 0x3032000000;
  v120 = __Block_byref_object_copy__19;
  v121 = __Block_byref_object_dispose__19;
  v122 = 0;
  v4 = dispatch_semaphore_create(0);
  v91 = self;
  v5 = [(RTLearnedLocationManager *)self learnedLocationStore];
  v93 = [v5 predicateForObjectsFromCurrentDevice];

  v6 = [(RTLearnedLocationManager *)v91 learnedLocationStore];
  v113[0] = MEMORY[0x277D85DD0];
  v113[1] = 3221225472;
  v113[2] = __63__RTLearnedLocationManager__reconstructTransitionsWithHandler___block_invoke;
  v113[3] = &unk_2788C4490;
  v115 = &v123;
  v116 = &v117;
  v7 = v4;
  v114 = v7;
  [v6 fetchVisitsWithPredicate:v93 handler:v113];

  dsema = v7;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_619];
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
    *v132 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v132 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;

      v23 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = 1;
LABEL_8:

  v24 = v21;
  if ((v23 & 1) == 0)
  {
    objc_storeStrong(v118 + 5, v21);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = NSStringFromSelector(a2);
      v27 = [v124[5] count];
      v28 = v118[5];
      *buf = 138412802;
      *&buf[4] = v26;
      *&buf[12] = 2048;
      *&buf[14] = v27;
      *&buf[22] = 2112;
      v138 = v28;
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, %lu visits on current device, error, %@", buf, 0x20u);
    }
  }

  if (!v118[5])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v138 = __Block_byref_object_copy__19;
    v139 = __Block_byref_object_dispose__19;
    v140 = 0;
    v29 = [(RTLearnedLocationManager *)v91 learnedLocationStore];
    v30 = v124[5];
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __63__RTLearnedLocationManager__reconstructTransitionsWithHandler___block_invoke_269;
    v110[3] = &unk_2788C4618;
    v112 = buf;
    v31 = dsema;
    v111 = v31;
    [v29 removeTransitionsReferencingVisits:v30 handler:v110];

    v90 = v31;
    v32 = [MEMORY[0x277CBEAA8] now];
    v33 = dispatch_time(0, 3600000000000);
    if (!dispatch_semaphore_wait(v90, v33))
    {
      goto LABEL_22;
    }

    v34 = [MEMORY[0x277CBEAA8] now];
    [v34 timeIntervalSinceDate:v32];
    v36 = v35;
    v37 = objc_opt_new();
    v38 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_619];
    v39 = [MEMORY[0x277CCACC8] callStackSymbols];
    v40 = [v39 filteredArrayUsingPredicate:v38];
    v41 = [v40 firstObject];

    [v37 submitToCoreAnalytics:v41 type:1 duration:v36];
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      *v132 = 0;
      _os_log_fault_impl(&dword_2304B3000, v42, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v132, 2u);
    }

    v43 = MEMORY[0x277CCA9B8];
    *v129 = *MEMORY[0x277CCA450];
    *v132 = @"semaphore wait timeout";
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v132 forKeys:v129 count:1];
    v45 = [v43 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v44];

    if (v45)
    {
      v46 = v45;

      v47 = 0;
    }

    else
    {
LABEL_22:
      v47 = 1;
      v45 = v24;
    }

    v89 = v45;
    if ((v47 & 1) == 0)
    {
      objc_storeStrong((*&buf[8] + 40), v45);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v48 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v49 = NSStringFromSelector(a2);
        v50 = *(*&buf[8] + 40);
        *v132 = 138412546;
        *&v132[4] = v49;
        *&v132[12] = 2112;
        *&v132[14] = v50;
        _os_log_impl(&dword_2304B3000, v48, OS_LOG_TYPE_INFO, "%@, removed existing transitions, error, %@", v132, 0x16u);
      }
    }

    if (*(*&buf[8] + 40))
    {
      if (v94)
      {
        v94[2]();
      }

LABEL_67:

      _Block_object_dispose(buf, 8);
      v24 = v89;
      goto LABEL_68;
    }

    v96 = objc_opt_new();
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    obj = v124[5];
    v51 = [obj countByEnumeratingWithState:&v106 objects:v136 count:16];
    if (!v51)
    {
      v100 = 0;
LABEL_50:

      *v132 = 0;
      *&v132[8] = v132;
      *&v132[16] = 0x3032000000;
      v133 = __Block_byref_object_copy__19;
      v134 = __Block_byref_object_dispose__19;
      v135 = 0;
      v65 = [(RTLearnedLocationManager *)v91 learnedLocationStore];
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __63__RTLearnedLocationManager__reconstructTransitionsWithHandler___block_invoke_271;
      v103[3] = &unk_2788C4618;
      v105 = v132;
      v66 = v90;
      v104 = v66;
      [v65 storeTransitions:v96 handler:v103];

      v67 = v66;
      v68 = [MEMORY[0x277CBEAA8] now];
      v69 = dispatch_time(0, 3600000000000);
      if (!dispatch_semaphore_wait(v67, v69))
      {
        goto LABEL_55;
      }

      v70 = [MEMORY[0x277CBEAA8] now];
      [v70 timeIntervalSinceDate:v68];
      v72 = v71;
      v73 = objc_opt_new();
      v74 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_619];
      v75 = [MEMORY[0x277CCACC8] callStackSymbols];
      v76 = [v75 filteredArrayUsingPredicate:v74];
      v77 = [v76 firstObject];

      [v73 submitToCoreAnalytics:v77 type:1 duration:v72];
      v78 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
      {
        *v129 = 0;
        _os_log_fault_impl(&dword_2304B3000, v78, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v129, 2u);
      }

      v79 = MEMORY[0x277CCA9B8];
      v141[0] = *MEMORY[0x277CCA450];
      *v129 = @"semaphore wait timeout";
      v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:v141 count:1];
      v81 = [v79 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v80];

      if (v81)
      {
        v82 = v81;

        v83 = 0;
      }

      else
      {
LABEL_55:
        v83 = 1;
        v81 = v89;
      }

      v84 = v81;
      if ((v83 & 1) == 0)
      {
        objc_storeStrong((*&v132[8] + 40), v81);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v85 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          v86 = [v96 count];
          v87 = *(*&v132[8] + 40);
          *v129 = 134218242;
          *&v129[4] = v86;
          v130 = 2112;
          v131 = v87;
          _os_log_impl(&dword_2304B3000, v85, OS_LOG_TYPE_INFO, "stored %lu transitions, error, %@", v129, 0x16u);
        }
      }

      if (*(*&v132[8] + 40))
      {
        if (v94)
        {
          v94[2]();
        }
      }

      else
      {
        v88 = [(RTLearnedLocationManager *)v91 learnedLocationEngine];
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = __63__RTLearnedLocationManager__reconstructTransitionsWithHandler___block_invoke_272;
        v101[3] = &unk_2788C48C0;
        v102 = v94;
        [v88 trainLocationsOfInterestModelWithHandler:v101];
      }

      _Block_object_dispose(v132, 8);
      v89 = v84;
      goto LABEL_67;
    }

    v100 = 0;
    v98 = *v107;
LABEL_34:
    v99 = v51;
    v52 = 0;
    while (1)
    {
      if (*v107 != v98)
      {
        objc_enumerationMutation(obj);
      }

      v53 = *(*(&v106 + 1) + 8 * v52);
      v54 = v100;
      if (v100)
      {
        v54 = [v100 exitDate];
        v55 = [v53 entryDate];
        if ([v55 isBeforeDate:v54])
        {
          v56 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v64 = NSStringFromSelector(a2);
            *v132 = 138412802;
            *&v132[4] = v64;
            *&v132[12] = 2112;
            *&v132[14] = v55;
            *&v132[22] = 2112;
            v133 = v54;
            _os_log_error_impl(&dword_2304B3000, v56, OS_LOG_TYPE_ERROR, "%@, next entry date, %@, predates previous exit date, %@", v132, 0x20u);
          }

          goto LABEL_46;
        }

        v57 = [RTLearnedTransition alloc];
        v58 = [MEMORY[0x277CCAD78] UUID];
        v59 = [v100 identifier];
        v60 = [v53 identifier];
        v61 = [MEMORY[0x277CBEAA8] date];
        v62 = [v53 expirationDate];
        v63 = [(RTLearnedTransition *)v57 initWithIdentifier:v58 startDate:v54 stopDate:v55 visitIdentifierOrigin:v59 visitIdentifierDestination:v60 creationDate:v61 expirationDate:v62 predominantMotionActivityType:0];

        if (v63)
        {
          [v96 addObject:v63];
        }

        v54 = v100;
      }

      v100 = v53;
LABEL_46:

      if (v99 == ++v52)
      {
        v51 = [obj countByEnumeratingWithState:&v106 objects:v136 count:16];
        if (!v51)
        {
          goto LABEL_50;
        }

        goto LABEL_34;
      }
    }
  }

  if (v94)
  {
    v94[2]();
  }

LABEL_68:

  _Block_object_dispose(&v117, 8);
  _Block_object_dispose(&v123, 8);
}

void __63__RTLearnedLocationManager__reconstructTransitionsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __63__RTLearnedLocationManager__reconstructTransitionsWithHandler___block_invoke_269(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __63__RTLearnedLocationManager__reconstructTransitionsWithHandler___block_invoke_271(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __63__RTLearnedLocationManager__reconstructTransitionsWithHandler___block_invoke_272(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)reconstructTransitionsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__RTLearnedLocationManager_reconstructTransitionsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)availabilityError
{
  if ([(RTLearnedLocationManager *)self available]|| ![(RTLearnedLocationManager *)self training])
  {
    if ([(RTLearnedLocationManager *)self available]|| [(RTLearnedLocationManager *)self training])
    {
      v4 = 0;
      goto LABEL_9;
    }

    v3 = @"resource temporarily unavailable, not training";
  }

  else
  {
    v3 = @"resource temporarily unavailable during training";
  }

  v4 = [MEMORY[0x277CCA9B8] rt_errorWithCode:5 description:v3];
LABEL_9:

  return v4;
}

- (void)fetchFamiliarityIndexResultsWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    *buf = 0;
    v11 = "Invalid parameter not satisfying: options";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v11, buf, 2u);
    goto LABEL_7;
  }

  if (!v7)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v11 = "Invalid parameter not satisfying: handler";
    goto LABEL_10;
  }

  v9 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__RTLearnedLocationManager_fetchFamiliarityIndexResultsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v13 = v6;
  v14 = v8;
  dispatch_async(v9, block);

LABEL_8:
}

- (void)_fetchFamiliarityIndexResultsWithOptions:(id)a3 handler:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v53 = 136315394;
      *&v53[4] = "[RTLearnedLocationManager _fetchFamiliarityIndexResultsWithOptions:handler:]";
      *&v53[12] = 1024;
      *&v53[14] = 3561;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", v53, 0x12u);
    }
  }

  *v53 = 0;
  *&v53[8] = v53;
  *&v53[16] = 0x3032000000;
  v54 = __Block_byref_object_copy__19;
  v55 = __Block_byref_object_dispose__19;
  v56 = 0;
  v10 = [MEMORY[0x277CBEAA8] date];
  [v7 lookbackInterval];
  v12 = [v10 dateByAddingTimeInterval:-v11];
  v13 = [v7 dateInterval];
  v14 = [v13 startDate];
  v15 = [v12 isAfterDate:v14];

  if (v15)
  {
    v16 = MEMORY[0x277CCA9B8];
    v51 = *MEMORY[0x277CCA450];
    v52 = @"options.lookbackWindow can not be set after the dateInterval.startDate";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v18 = [v16 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v17];

    v8[2](v8, 0, v18);
  }

  else if ([v7 referenceLocationSummary] && (objc_msgSend(v7, "referenceLocation"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 == 0, v19, v20))
  {
    v38 = MEMORY[0x277CCA9B8];
    v49 = *MEMORY[0x277CCA450];
    v50 = @"options.referenceLocationSummary can be set to YES only with a valid options.referencelocation";
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v18 = [v38 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v39];

    v8[2](v8, 0, v18);
  }

  else if (([v7 spatialGranularity] | 2) == 3)
  {
    v42 = 0;
    v21 = -[RTLearnedLocationManager _getAreasGeohashesFamiliarPlacesWithGranularity:outError:](self, "_getAreasGeohashesFamiliarPlacesWithGranularity:outError:", [v7 spatialGranularity], &v42);
    v18 = v42;
    v22 = *(*&v53[8] + 40);
    *(*&v53[8] + 40) = v21;

    v23 = [v7 dateInterval];
    v24 = [v23 startDate];

    v25 = [v7 dateInterval];
    v26 = [v25 endDate];

    v27 = [v7 referenceLocation];
    LODWORD(v25) = v27 == 0;

    if (v25)
    {
      v30 = [(RTLearnedLocationManager *)self learnedLocationStore];
      v31 = v41;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __77__RTLearnedLocationManager__fetchFamiliarityIndexResultsWithOptions_handler___block_invoke;
      v41[3] = &unk_2788C68A0;
      v41[4] = self;
      v41[5] = v7;
      v41[7] = v53;
      v41[6] = v8;
      [v30 fetchLocationsOfInterestVisitedBetweenStartDate:v24 endDate:v26 handler:v41];
    }

    else
    {
      [v7 distance];
      v29 = v28;
      v30 = [v7 referenceLocation];
      v31 = v40;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __77__RTLearnedLocationManager__fetchFamiliarityIndexResultsWithOptions_handler___block_invoke_3;
      v40[3] = &unk_2788C68A0;
      v40[4] = self;
      v40[5] = v7;
      v40[7] = v53;
      v40[6] = v8;
      [(RTLearnedLocationManager *)self _fetchLocationsOfInterestWithinDistance:v30 ofLocation:v40 handler:v29];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = NSStringFromSelector(a2);
        *buf = 138412546;
        v46 = v34;
        v47 = 2112;
        v48 = v35;
        _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@, %@, requires a valid spatial granularity", buf, 0x16u);
      }
    }

    v36 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA450];
    v44 = @"requires a valid spatial granularity;";
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v18 = [v36 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v37];

    v8[2](v8, 0, v18);
  }

  _Block_object_dispose(v53, 8);
}

void __77__RTLearnedLocationManager__fetchFamiliarityIndexResultsWithOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__RTLearnedLocationManager__fetchFamiliarityIndexResultsWithOptions_handler___block_invoke_2;
  block[3] = &unk_2788C6878;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v14 = v5;
  v15 = v8;
  v16 = v6;
  v12 = *(a1 + 48);
  v9 = v12;
  v17 = v12;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

- (void)_computeFamiliarityIndexResultsForLearnedLocationsWithVisits:(id)a3 options:(id)a4 familiarPlaces:(id)a5 error:(id)a6 handler:(id)a7
{
  v54 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v13 count];
      v20 = [v14 dateInterval];
      *buf = 134218754;
      v47 = v19;
      v48 = 2112;
      v49 = v20;
      v50 = 2112;
      v51 = self;
      v52 = 2112;
      v53 = v16;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "fetched %lu LOIs for visits in date interval, %@, for client, %@, error, %@", buf, 0x2Au);
    }
  }

  if (!v16)
  {
    if (!v13)
    {
      v24 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277D01448];
      v44 = *MEMORY[0x277CCA450];
      v45 = @"LOIs are nil; not able to estimate familiarityIndex.";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v27 = [v24 errorWithDomain:v25 code:0 userInfo:v26];

      v17[2](v17, 0, v27);
      goto LABEL_21;
    }

    v21 = [v14 spatialGranularity];
    if (v21 == 3)
    {
      v40 = 0;
      v22 = &v40;
      v23 = [(RTLearnedLocationManager *)self _getFamiliarityIndexResultsAreaLevelForLearnedLOIs:v13 options:v14 familiarPlaces:v15 outError:&v40];
    }

    else
    {
      if (v21 != 1)
      {
        v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          v39 = NSStringFromSelector(a2);
          *buf = 138412546;
          v47 = v38;
          v48 = 2112;
          v49 = v39;
          _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, %@, we should never reach this code path", buf, 0x16u);
        }

        v34 = MEMORY[0x277CCA9B8];
        v35 = *MEMORY[0x277D01450];
        v42 = *MEMORY[0x277CCA450];
        v43 = @"requires a valid spatial granularity;";
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v29 = [v34 errorWithDomain:v35 code:1 userInfo:v36];

        v17[2](v17, 0, v29);
        goto LABEL_20;
      }

      v41 = 0;
      v22 = &v41;
      v23 = [(RTLearnedLocationManager *)self _getFamiliarityIndexResultsLOILevelForLOIs:v13 options:v14 outError:&v41];
    }

    v28 = v23;
    v29 = *v22;
    v30 = [(RTLearnedLocationManager *)self _checkFamiliarityIndexResultsForErrors:v28];
    v31 = [(RTLearnedLocationManager *)self _combineFamiliarityIndexRetrieveError:v29 resultsError:v30];
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    (v17)[2](v17, v28, v32);

LABEL_20:
    goto LABEL_21;
  }

  v17[2](v17, 0, v16);
LABEL_21:
}

- (id)_getFamiliarityIndexResultsLOILevelForLOIs:(id)a3 options:(id)a4 outError:(id *)a5
{
  v84 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: lois", buf, 2u);
    }

    if (a5)
    {
      *a5 = _RTErrorInvalidParameterCreate(@"lois");
    }

    v43 = [MEMORY[0x277CBEA60] array];
    goto LABEL_43;
  }

  v55 = a5;
  v66 = objc_opt_new();
  v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v56 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = [MEMORY[0x277CBEAA8] date];
  [v8 lookbackInterval];
  v12 = [v10 dateByAddingTimeInterval:-v11];

  v13 = [v8 dateInterval];
  v14 = [v13 startDate];

  v52 = v14;
  v53 = v12;
  v61 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 endDate:v14];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v54 = v7;
  obj = v7;
  v60 = [obj countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (!v60)
  {
    v41 = 0;
    v15 = self;
    goto LABEL_35;
  }

  v58 = v9;
  v59 = *v76;
  v15 = self;
  v67 = v8;
  while (2)
  {
    for (i = 0; i != v60; ++i)
    {
      if (*v76 != v59)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v75 + 1) + 8 * i);
      v74 = 0;
      v18 = [(RTLearnedLocationManager *)v15 _getTotalVisitsCountForLOI:v17 dateInterval:v61 outError:&v74];
      v19 = v74;
      if (v19)
      {
        v41 = v19;
        *v55 = v19;
        goto LABEL_35;
      }

      v20 = [v17 visits];
      v65 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entryDate" ascending:1];
      v82 = v65;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
      v22 = [v20 sortedArrayUsingDescriptors:v21];

      v23 = [v8 dateInterval];
      v64 = v22;
      v24 = [(RTLearnedLocationManager *)v15 _getLearnedVisits:v22 dateInterval:v23];

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v70 objects:v81 count:16];
      if (!v26)
      {
        v28 = 0;
        v40 = v25;
        goto LABEL_22;
      }

      v27 = v26;
      v62 = v20;
      v63 = i;
      v28 = 0;
      v29 = *v71;
      v30 = 0.0;
      do
      {
        v31 = v25;
        for (j = 0; j != v27; ++j)
        {
          v33 = v28;
          if (*v71 != v29)
          {
            objc_enumerationMutation(v31);
          }

          v34 = *(*(&v70 + 1) + 8 * j);
          ++v18;
          v35 = [v34 exitDate];
          v36 = [v34 entryDate];
          [v35 timeIntervalSinceDate:v36];
          v38 = v37;

          v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
          [v68 setObject:v39 forKeyedSubscript:@"loiVisitCount"];

          v15 = self;
          v28 = [(RTLearnedLocationManager *)self _getFamiliarityIndexResultForLearnedVisit:v34 learnedLOI:v17 statsLOIVisits:v68];

          if (v28 && ([v67 referenceLocationSummary] & 1) == 0)
          {
            [v66 addObject:v28];
          }

          v30 = v30 + v38;
        }

        v25 = v31;
        v27 = [v31 countByEnumeratingWithState:&v70 objects:v81 count:16];
      }

      while (v27);

      i = v63;
      if (v28)
      {
        v8 = v67;
        v20 = v62;
        if ([v67 referenceLocationSummary])
        {
          v9 = v58;
          [v58 addObject:v28];
          v40 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
          [v56 addObject:v40];
LABEL_22:

          goto LABEL_25;
        }

        v9 = v58;
      }

      else
      {
        v8 = v67;
        v9 = v58;
        v20 = v62;
      }

LABEL_25:
    }

    v60 = [obj countByEnumeratingWithState:&v75 objects:v83 count:16];
    if (v60)
    {
      continue;
    }

    break;
  }

  v41 = 0;
LABEL_35:

  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v8 referenceLocationSummary])
  {
    if ([v9 count])
    {
      v44 = v15;
      v45 = objc_alloc(MEMORY[0x277D01100]);
      v46 = [v8 dateInterval];
      [(RTLearnedLocationManager *)v44 _estimateFamiliarityIndexReferenceLocationSummary:v9 dwellTimePerAreas:v56];
      v47 = [v45 initWithDateInterval:v46 familiarityIndex:?];

      [v43 addObject:v47];
      goto LABEL_39;
    }
  }

  else
  {
    v47 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"dateInterval" ascending:1];
    v80 = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
    v49 = [v66 sortedArrayUsingDescriptors:v48];

    v43 = v49;
LABEL_39:
  }

  if (v55)
  {
    v50 = v41;
    *v55 = v41;
  }

  v7 = v54;
LABEL_43:

  return v43;
}

- (double)_estimateFamiliarityIndexReferenceLocationSummary:(id)a3 dwellTimePerAreas:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v12 = -1.0;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: familiarityIndexResultsPerAreas";
LABEL_25:
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v35, buf, 2u);
    goto LABEL_34;
  }

  if (!v7)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v12 = -1.0;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v35 = "Invalid parameter not satisfying: areasDwellTimes";
    goto LABEL_25;
  }

  v9 = [v6 count];
  if (v9 == [v8 count])
  {
    if ([v6 count])
    {
      v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
      v11 = [v8 valueForKeyPath:@"@sum.self"];
      [v11 doubleValue];
      v12 = -1.0;
      if (v13 != 0.0)
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v38 = v8;
        v14 = v8;
        v15 = [v14 countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = 0;
          v18 = *v44;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v44 != v18)
              {
                objc_enumerationMutation(v14);
              }

              v20 = MEMORY[0x277CCABB0];
              [*(*(&v43 + 1) + 8 * i) doubleValue];
              v22 = v21;
              [v11 doubleValue];
              v24 = [v20 numberWithDouble:v22 / v23];
              [v10 insertObject:v24 atIndex:v17];

              ++v17;
            }

            v16 = [v14 countByEnumeratingWithState:&v43 objects:v48 count:16];
          }

          while (v16);
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v25 = v6;
        v26 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v40;
          v29 = 0.0;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v40 != v28)
              {
                objc_enumerationMutation(v25);
              }

              [*(*(&v39 + 1) + 8 * j) familiarityIndex];
              v32 = v31;
              v33 = [v10 objectAtIndex:0];
              [v33 doubleValue];
              v29 = v29 + v32 * v34;
            }

            v27 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
          }

          while (v27);
        }

        else
        {
          v29 = 0.0;
        }

        v12 = v29 / [v25 count];
        v8 = v38;
      }

      goto LABEL_33;
    }

    v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    v12 = -1.0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      *buf = 138412290;
      v50 = v11;
      v36 = "%@, length of familiarityIndexResultsPerAreas cannot be 0 ";
      goto LABEL_30;
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    v12 = -1.0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      *buf = 138412290;
      v50 = v11;
      v36 = "%@, length of familiarityIndexResultsPerAreas should be equal to areasDwellTimes ";
LABEL_30:
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v36, buf, 0xCu);
LABEL_33:
    }
  }

LABEL_34:

  return v12;
}

- (id)_getFamiliarityIndexResultsAreaLevelForLearnedLOIs:(id)a3 options:(id)a4 familiarPlaces:(id)a5 outError:(id *)a6
{
  v148 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = v10;
  v114 = v11;
  v115 = a5;
  if (!v10)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: lois", buf, 2u);
    }

    if (a6)
    {
      *a6 = _RTErrorInvalidParameterCreate(@"lois");
    }

    v40 = [MEMORY[0x277CBEA60] array];
    goto LABEL_61;
  }

  if (!a6)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v145 = "[RTLearnedLocationManager _getFamiliarityIndexResultsAreaLevelForLearnedLOIs:options:familiarPlaces:outError:]";
      v146 = 1024;
      v147 = 3818;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError (in %s:%d)", buf, 0x12u);
    }
  }

  v113 = objc_opt_new();
  v119 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = [MEMORY[0x277CBEAA8] date];
  [v114 lookbackInterval];
  v17 = [v15 dateByAddingTimeInterval:-v16];

  v18 = [v114 dateInterval];
  v19 = [v18 startDate];

  v99 = v19;
  v100 = v17;
  v101 = v12;
  v102 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v17 endDate:v19];
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  obj = v12;
  v20 = [obj countByEnumeratingWithState:&v135 objects:v143 count:16];
  v106 = v14;
  v120 = self;
  if (v20)
  {
    v21 = v20;
    v124 = a6;
    v22 = *v136;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v136 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v135 + 1) + 8 * i);
        v25 = [v24 location];
        v26 = [v25 location];
        [v26 latitude];
        v28 = v27;
        v29 = [v24 location];
        v30 = [v29 location];
        [v30 longitude];
        v32 = -[RTLearnedLocationManager _latitudeLongitudeToGeohashHelperForLatitude:longitude:hashLength:](v120, "_latitudeLongitudeToGeohashHelperForLatitude:longitude:hashLength:", -[RTLearnedLocationManager _getGeohashLengthForSpatialGranularity:](v120, "_getGeohashLengthForSpatialGranularity:", [v114 spatialGranularity]), v28, v31);

        v134 = 0;
        v33 = [(RTLearnedLocationManager *)v120 _getTotalVisitsCountForLOI:v24 dateInterval:v102 outError:&v134];
        v34 = v134;
        if (v34)
        {
          v98 = v34;
          *v124 = v98;

          v14 = v106;
          goto LABEL_19;
        }

        v14 = v106;
        v35 = [v106 objectForKey:v32];

        v36 = MEMORY[0x277CCABB0];
        if (v35)
        {
          v37 = [v106 objectForKeyedSubscript:v32];
          v38 = [v36 numberWithUnsignedInteger:{v33 + objc_msgSend(v37, "unsignedIntValue")}];
          [v106 setObject:v38 forKeyedSubscript:v32];
        }

        else
        {
          v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33];
          [v106 setObject:v37 forKeyedSubscript:v32];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v135 objects:v143 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }

    v98 = 0;
LABEL_19:
    self = v120;
  }

  else
  {
    v98 = 0;
  }

  v125 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v103 = objc_opt_new();
  v41 = objc_opt_new();
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v104 = obj;
  v108 = [v104 countByEnumeratingWithState:&v130 objects:v142 count:16];
  if (!v108)
  {
    goto LABEL_55;
  }

  v107 = *v131;
  v105 = v41;
  do
  {
    v42 = 0;
    do
    {
      if (*v131 != v107)
      {
        objc_enumerationMutation(v104);
      }

      v112 = v42;
      v43 = *(*(&v130 + 1) + 8 * v42);
      v44 = [v43 visits];
      v110 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entryDate" ascending:1];
      v141 = v110;
      v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v141 count:1];
      v111 = v44;
      v46 = [v44 sortedArrayUsingDescriptors:v45];

      v47 = [v114 dateInterval];
      v109 = v46;
      v48 = [(RTLearnedLocationManager *)v120 _getLearnedVisits:v46 dateInterval:v47];

      v49 = [v43 location];
      v50 = [v49 location];
      [v50 latitude];
      v52 = v51;
      v118 = v43;
      v53 = [v43 location];
      v54 = [v53 location];
      [v54 longitude];
      self = v120;
      v56 = -[RTLearnedLocationManager _latitudeLongitudeToGeohashHelperForLatitude:longitude:hashLength:](v120, "_latitudeLongitudeToGeohashHelperForLatitude:longitude:hashLength:", -[RTLearnedLocationManager _getGeohashLengthForSpatialGranularity:](v120, "_getGeohashLengthForSpatialGranularity:", [v114 spatialGranularity]), v52, v55);

      v57 = v56;
      v58 = [v125 objectForKey:v56];

      if (!v58)
      {
        v59 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v125 setObject:v59 forKeyedSubscript:v56];
      }

      v60 = [v14 objectForKeyedSubscript:v56];
      [v119 setObject:v60 forKeyedSubscript:@"totalVisitsAreaLevelBeforeStartDate"];

      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v61 = v48;
      v121 = [v61 countByEnumeratingWithState:&v126 objects:v140 count:16];
      if (!v121)
      {
        v63 = 0;
        v89 = v61;
        goto LABEL_50;
      }

      v62 = 0;
      v63 = 0;
      v116 = *v127;
      v117 = v61;
      v64 = 0.0;
      do
      {
        for (j = 0; j != v121; ++j)
        {
          v122 = v63;
          if (*v127 != v116)
          {
            objc_enumerationMutation(v61);
          }

          v66 = *(*(&v126 + 1) + 8 * j);
          v67 = [v66 exitDate];
          v68 = [v66 entryDate];
          [v67 timeIntervalSinceDate:v68];
          v70 = v69;

          v71 = [v66 entryDate];
          v72 = [(RTLearnedLocationManager *)self _getDateOnlyFromLearnedVisitDate:v71];

          v73 = [v125 objectForKeyedSubscript:v57];
          v74 = [v73 objectForKey:v72];

          v75 = MEMORY[0x277CCABB0];
          v76 = v57;
          v77 = [v125 objectForKeyedSubscript:v57];
          v78 = v77;
          if (v74)
          {
            v79 = [v77 objectForKeyedSubscript:v72];
            v80 = [v79 integerValue];
          }

          else
          {
            v79 = [v66 entryDate];
            v80 = [(RTLearnedLocationManager *)self _getTotalVisitCountForPreviousDatesFromDictGeohashToDates:v78 referenceDate:v79];
          }

          v81 = [v75 numberWithUnsignedInteger:v80 + v62 + 1];
          v82 = [v125 objectForKeyedSubscript:v76];
          [v82 setObject:v81 forKeyedSubscript:v72];

          v83 = MEMORY[0x277CCABB0];
          v84 = [v125 objectForKeyedSubscript:v76];
          v85 = [v84 objectForKeyedSubscript:v72];
          v86 = [v85 integerValue];
          v87 = [v119 objectForKeyedSubscript:@"totalVisitsAreaLevelBeforeStartDate"];
          v88 = [v83 numberWithInteger:{objc_msgSend(v87, "integerValue") + v86}];
          [v119 setObject:v88 forKeyedSubscript:@"areaLevelVisitCount"];

          v57 = v76;
          self = v120;
          v63 = [(RTLearnedLocationManager *)v120 _getFamiliarityIndexResultAreaLevelForLearnedVisit:v66 learnedLOI:v118 geohash:v76 familiarPlaces:v115 statsVisits:v119];

          if (v63 && ([v114 referenceLocationSummary] & 1) == 0)
          {
            [v113 addObject:v63];
          }

          v64 = v64 + v70;

          ++v62;
          v61 = v117;
        }

        v121 = [v117 countByEnumeratingWithState:&v126 objects:v140 count:16];
      }

      while (v121);

      if (v63)
      {
        v41 = v105;
        if ([v114 referenceLocationSummary])
        {
          [v105 addObject:v63];
          v89 = [MEMORY[0x277CCABB0] numberWithDouble:v64];
          [v103 addObject:v89];
          v14 = v106;
LABEL_50:

          goto LABEL_53;
        }

        v14 = v106;
      }

      else
      {
        v41 = v105;
        v14 = v106;
      }

LABEL_53:

      v42 = v112 + 1;
    }

    while (v112 + 1 != v108);
    v108 = [v104 countByEnumeratingWithState:&v130 objects:v142 count:16];
  }

  while (v108);
LABEL_55:

  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v114 referenceLocationSummary])
  {
    if ([v41 count])
    {
      v90 = objc_alloc(MEMORY[0x277D01100]);
      v91 = [v114 dateInterval];
      [(RTLearnedLocationManager *)self _estimateFamiliarityIndexReferenceLocationSummary:v41 dwellTimePerAreas:v103];
      v92 = [v90 initWithDateInterval:v91 familiarityIndex:?];

      [v40 addObject:v92];
      goto LABEL_59;
    }

    v95 = v100;
    v12 = v101;
    v96 = v99;
  }

  else
  {
    v92 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"dateInterval" ascending:1];
    v139 = v92;
    v93 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
    v94 = [v113 sortedArrayUsingDescriptors:v93];

    v40 = v94;
LABEL_59:
    v96 = v99;
    v95 = v100;

    v12 = v101;
  }

LABEL_61:

  return v40;
}

- (id)_getFamiliarityIndexResultAreaLevelForLearnedVisit:(id)a3 learnedLOI:(id)a4 geohash:(id)a5 familiarPlaces:(id)a6 statsVisits:(id)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (!v13)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v19 = 0;
LABEL_13:

      goto LABEL_14;
    }

    LOWORD(v28) = 0;
    v26 = "Invalid parameter not satisfying: learnedLOI";
LABEL_18:
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, v26, &v28, 2u);
    goto LABEL_12;
  }

  if (!v16)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v28) = 0;
    v26 = "Invalid parameter not satisfying: statsVisits";
    goto LABEL_18;
  }

  [(RTLearnedLocationManager *)self _estimateFamiliarityIndexForAreaWithGeohash:v14 familiarPlaces:v15 visitedLearnedLOI:v13 statsVisits:v16];
  v19 = 0;
  if (v18 >= 0.0)
  {
    v20 = v18;
    if (v18 <= 1.0)
    {
      v21 = objc_alloc(MEMORY[0x277CCA970]);
      v22 = [v12 entryDate];
      v23 = [v12 exitDate];
      v24 = [v21 initWithStartDate:v22 endDate:v23];

      v19 = [objc_alloc(MEMORY[0x277D01100]) initWithDateInterval:v24 familiarityIndex:v20];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v25 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v28 = 138412802;
          v29 = v14;
          v30 = 2112;
          v31 = v24;
          v32 = 2048;
          v33 = v20;
          _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "Area with geohash %@, for dateInterval %@, familiarityIndex %f", &v28, 0x20u);
        }
      }

      goto LABEL_13;
    }
  }

LABEL_14:

  return v19;
}

- (double)_estimateFamiliarityIndexForAreaWithGeohash:(id)a3 familiarPlaces:(id)a4 visitedLearnedLOI:(id)a5 statsVisits:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v12)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

LABEL_14:
      v18 = -1.0;
      goto LABEL_15;
    }

    LOWORD(v34) = 0;
    v28 = "Invalid parameter not satisfying: visitedLearnedLOI";
LABEL_17:
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, v28, &v34, 2u);
    goto LABEL_10;
  }

  if (!v13)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    LOWORD(v34) = 0;
    v28 = "Invalid parameter not satisfying: statsVisits";
    goto LABEL_17;
  }

  v15 = [v13 objectForKeyedSubscript:@"areaLevelVisitCount"];
  [v15 doubleValue];
  v17 = v16;

  if (v17 <= 0.0)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = NSStringFromSelector(a2);
      v34 = 138412546;
      v35 = v32;
      v36 = 2112;
      v37 = v33;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "%@, %@, Invalid data in the statsVisits dictionary", &v34, 0x16u);
    }

    goto LABEL_14;
  }

  v18 = 1.0;
  if (([v11 containsObject:v10] & 1) == 0)
  {
    v19 = [v14 objectForKeyedSubscript:@"areaLevelVisitCount"];
    [v19 doubleValue];
    v21 = v20;

    v18 = 0.0;
    if (v21 != 1.0)
    {
      v22 = [v14 objectForKeyedSubscript:@"areaLevelVisitCount"];
      [v22 doubleValue];
      v24 = v23;
      v25 = [v14 objectForKeyedSubscript:@"areaLevelVisitCount"];
      [v25 doubleValue];
      v18 = v24 / (v26 + 10.0);
    }
  }

LABEL_15:

  return v18;
}

- (id)_getFamiliarityIndexResultForLearnedVisit:(id)a3 learnedLOI:(id)a4 statsLOIVisits:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      v15 = 0;
      goto LABEL_12;
    }

    LOWORD(v25) = 0;
    v17 = "Invalid parameter not satisfying: learnedLOI";
LABEL_21:
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, v17, &v25, 2u);
    goto LABEL_11;
  }

  if (!v10)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v25) = 0;
    v17 = "Invalid parameter not satisfying: statsLOIVisits";
    goto LABEL_21;
  }

  [(RTLearnedLocationManager *)self _estimateFamiliarityIndexForLearnedLOI:v9 statsLOIVisits:v10];
  v13 = v12;
  if (v12 < 0.0 || v12 > 1.0)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v19 = objc_alloc(MEMORY[0x277CCA970]);
  v20 = [v8 entryDate];
  v21 = [v8 exitDate];
  v16 = [v19 initWithStartDate:v20 endDate:v21];

  v15 = [objc_alloc(MEMORY[0x277D01100]) initWithDateInterval:v16 familiarityIndex:v13];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v9 place];
      v24 = [v23 identifier];
      v25 = 138412546;
      v26 = v24;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "LOI %@ familiarityIndex %@", &v25, 0x16u);
    }
  }

LABEL_12:

LABEL_13:

  return v15;
}

- (double)_estimateFamiliarityIndexForLearnedLOI:(id)a3 statsLOIVisits:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      v11 = -1.0;
      goto LABEL_14;
    }

    v30 = 0;
    v16 = "Invalid parameter not satisfying: learnedLOI";
    v17 = &v30;
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, v17, 2u);
    goto LABEL_13;
  }

  if (!v6)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v29 = 0;
    v16 = "Invalid parameter not satisfying: statsLOIVisits";
    v17 = &v29;
    goto LABEL_19;
  }

  v8 = [v6 objectForKeyedSubscript:@"loiVisitCount"];
  [v8 doubleValue];
  v10 = v9;

  v11 = -1.0;
  if (v10 > 0.0)
  {
    v12 = [v5 place];
    if ([v12 type] == 1)
    {
LABEL_9:

      v11 = 1.0;
      goto LABEL_14;
    }

    v13 = [v5 place];
    if ([v13 type] == 2)
    {
LABEL_8:

      goto LABEL_9;
    }

    v14 = [v5 place];
    if ([v14 type] == 4)
    {

      goto LABEL_8;
    }

    v19 = [v5 place];
    v20 = [v19 type];

    v11 = 1.0;
    if (v20 != 3)
    {
      v21 = [v7 objectForKeyedSubscript:@"loiVisitCount"];
      [v21 doubleValue];
      v23 = v22;

      v11 = 0.0;
      if (v23 != 1.0)
      {
        v24 = [v7 objectForKeyedSubscript:@"loiVisitCount"];
        [v24 doubleValue];
        v26 = v25;
        v27 = [v7 objectForKeyedSubscript:@"loiVisitCount"];
        [v27 doubleValue];
        v11 = v26 / (v28 + 1.0);
      }
    }
  }

LABEL_14:

  return v11;
}

- (unint64_t)_getTotalVisitsCountForLOI:(id)a3 dateInterval:(id)a4 outError:(id *)a5
{
  aSelector = a2;
  v59[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v55 = 136315394;
      *&v55[4] = "[RTLearnedLocationManager _getTotalVisitsCountForLOI:dateInterval:outError:]";
      *&v55[12] = 1024;
      *&v55[14] = 4035;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: loi (in %s:%d)", v55, 0x12u);
    }
  }

  if (v7)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    *v55 = 0;
    *&v55[8] = v55;
    *&v55[16] = 0x3032000000;
    v56 = __Block_byref_object_copy__19;
    v57 = __Block_byref_object_dispose__19;
    v58 = 0;
    v9 = dispatch_semaphore_create(0);
    v10 = [(RTLearnedLocationManager *)self learnedLocationStore];
    v11 = [v6 identifier];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __77__RTLearnedLocationManager__getTotalVisitsCountForLOI_dateInterval_outError___block_invoke;
    v42[3] = &unk_2788C4528;
    v44 = &v46;
    v45 = v55;
    v12 = v9;
    v43 = v12;
    [v10 fetchCountOfVisitsToLocationOfInterestWithIdentifier:v11 dateInterval:v7 handler:v42];

    v13 = v12;
    v14 = [MEMORY[0x277CBEAA8] now];
    v15 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v13, v15))
    {
      v16 = [MEMORY[0x277CBEAA8] now];
      [v16 timeIntervalSinceDate:v14];
      v18 = v17;
      v19 = objc_opt_new();
      v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_619];
      v21 = [MEMORY[0x277CCACC8] callStackSymbols];
      v22 = [v21 filteredArrayUsingPredicate:v20];
      v23 = [v22 firstObject];

      [v19 submitToCoreAnalytics:v23 type:1 duration:v18];
      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v25 = MEMORY[0x277CCA9B8];
      v59[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v59 count:1];
      v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

      if (v27)
      {
        v28 = v27;

        v29 = 0;
LABEL_17:

        v32 = v27;
        if ((v29 & 1) == 0)
        {
          objc_storeStrong((*&v55[8] + 40), v27);
        }

        if (a5 && *(*&v55[8] + 40))
        {
          v33 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v35 = objc_opt_class();
            v36 = NSStringFromClass(v35);
            v37 = NSStringFromSelector(aSelector);
            v38 = *(*&v55[8] + 40);
            *buf = 138412802;
            *&buf[4] = v36;
            v51 = 2112;
            v52 = v37;
            v53 = 2112;
            v54 = v38;
            _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
          }

          v31 = 0;
          *a5 = *(*&v55[8] + 40);
        }

        else
        {
          v31 = v47[3];
        }

        _Block_object_dispose(v55, 8);
        _Block_object_dispose(&v46, 8);
        goto LABEL_26;
      }
    }

    else
    {
      v27 = 0;
    }

    v29 = 1;
    goto LABEL_17;
  }

  v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *v55 = 0;
    _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval", v55, 2u);
  }

  if (a5)
  {
    _RTErrorInvalidParameterCreate(@"dateInterval");
    *a5 = v31 = 0;
  }

  else
  {
    v31 = 0;
  }

LABEL_26:

  return v31;
}

void __77__RTLearnedLocationManager__getTotalVisitsCountForLOI_dateInterval_outError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (unint64_t)_getGeohashLengthForSpatialGranularity:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 3)
  {
    return 4;
  }

  if (a3 != 2)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(a2);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, %@,currently only LargeArea is supported, this code path shouldn't be reached", &v9, 0x16u);
    }
  }

  return 3;
}

- (id)_getAreasGeohashesFamiliarPlacesWithGranularity:(unint64_t)a3 outError:(id *)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v35 = [MEMORY[0x277CBEB18] array];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v41 = [&unk_2845A0A58 countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (v41)
  {
    v38 = *v65;
    v36 = *MEMORY[0x277D01448];
    v37 = *MEMORY[0x277CCA450];
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v65 != v38)
      {
        objc_enumerationMutation(&unk_2845A0A58);
      }

      v5 = *(*(&v64 + 1) + 8 * v4);
      v6 = dispatch_semaphore_create(0);
      v58 = 0;
      v59 = &v58;
      v60 = 0x3032000000;
      v61 = __Block_byref_object_copy__19;
      v62 = __Block_byref_object_dispose__19;
      v63 = [MEMORY[0x277CBEB18] array];
      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = __Block_byref_object_copy__19;
      v56 = __Block_byref_object_dispose__19;
      v57 = 0;
      v7 = [(RTLearnedLocationManager *)self learnedLocationStore];
      v8 = [v5 unsignedIntegerValue];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __85__RTLearnedLocationManager__getAreasGeohashesFamiliarPlacesWithGranularity_outError___block_invoke;
      v47[3] = &unk_2788C68F0;
      v47[4] = self;
      v49 = &v58;
      v50 = &v52;
      v51 = a2;
      v9 = v6;
      v48 = v9;
      [v7 fetchLocationsOfInterestWithPlaceType:v8 handler:v47];

      v10 = v9;
      v11 = [MEMORY[0x277CBEAA8] now];
      v12 = dispatch_time(0, 3600000000000);
      if (!dispatch_semaphore_wait(v10, v12))
      {
        break;
      }

      v13 = [MEMORY[0x277CBEAA8] now];
      [v13 timeIntervalSinceDate:v11];
      v15 = v14;
      v16 = objc_opt_new();
      v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_619];
      v18 = [MEMORY[0x277CCACC8] callStackSymbols];
      v19 = [v18 filteredArrayUsingPredicate:v17];
      v20 = [v19 firstObject];

      [v16 submitToCoreAnalytics:v20 type:1 duration:v15];
      v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v22 = MEMORY[0x277CCA9B8];
      v69 = v37;
      *buf = @"semaphore wait timeout";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v69 count:1];
      v24 = [v22 errorWithDomain:v36 code:15 userInfo:v23];

      if (!v24)
      {
        goto LABEL_12;
      }

      v25 = v24;

      v26 = 0;
LABEL_13:

      v27 = v24;
      if ((v26 & 1) == 0)
      {
        objc_storeStrong(v53 + 5, v24);
      }

      v28 = v53[5];
      if (v28)
      {
        if (a4)
        {
          v29 = v28;
          *a4 = v28;
        }
      }

      else if (v59[5])
      {
        [v35 addObjectsFromArray:?];
      }

      _Block_object_dispose(&v52, 8);
      _Block_object_dispose(&v58, 8);

      if (v28)
      {
        v31 = 0;
        goto LABEL_25;
      }

      if (v41 == ++v4)
      {
        v41 = [&unk_2845A0A58 countByEnumeratingWithState:&v64 objects:v68 count:16];
        if (v41)
        {
          goto LABEL_3;
        }

        goto LABEL_23;
      }
    }

    v24 = 0;
LABEL_12:
    v26 = 1;
    goto LABEL_13;
  }

LABEL_23:
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __85__RTLearnedLocationManager__getAreasGeohashesFamiliarPlacesWithGranularity_outError___block_invoke_312;
  v43[3] = &unk_2788C6918;
  v30 = v34;
  v44 = v30;
  v45 = self;
  v46 = a3;
  [v35 enumerateObjectsUsingBlock:v43];
  v31 = v30;

LABEL_25:

  return v31;
}

void __85__RTLearnedLocationManager__getAreasGeohashesFamiliarPlacesWithGranularity_outError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2048;
      v22 = [v5 count];
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, fetched %lu learned location of interest from learned location store", buf, 0x20u);
    }
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__RTLearnedLocationManager__getAreasGeohashesFamiliarPlacesWithGranularity_outError___block_invoke_310;
  v16[3] = &unk_2788C68C8;
  v11 = *(a1 + 64);
  v12 = *(a1 + 48);
  v16[4] = *(a1 + 32);
  v16[5] = v12;
  v16[6] = v11;
  [v5 enumerateObjectsUsingBlock:v16];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
  v15 = v6;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __85__RTLearnedLocationManager__getAreasGeohashesFamiliarPlacesWithGranularity_outError___block_invoke_310(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 48));
      v12 = 138413059;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2048;
      v17 = a3 + 1;
      v18 = 2117;
      v19 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, learned location of interest %lu, %{sensitive}@", &v12, 0x2Au);
    }
  }

  v10 = *(*(*(a1 + 40) + 8) + 40);
  v11 = [v5 place];
  [v10 addObject:v11];
}

void __85__RTLearnedLocationManager__getAreasGeohashesFamiliarPlacesWithGranularity_outError___block_invoke_312(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v13 = [v5 mapItem];
  v6 = [v13 location];
  [v6 latitude];
  v8 = v7;
  v9 = [v5 mapItem];

  v10 = [v9 location];
  [v10 longitude];
  v12 = [v4 _latitudeLongitudeToGeohashHelperForLatitude:objc_msgSend(*(a1 + 40) longitude:"_getGeohashLengthForSpatialGranularity:" hashLength:{*(a1 + 48)), v8, v11}];
  [v3 addObject:v12];
}

- (id)_getDateOnlyFromLearnedVisitDate:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = [v4 components:28 fromDate:v3];

    v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v6 setDay:{objc_msgSend(v5, "day")}];
    [v6 setMonth:{objc_msgSend(v5, "month")}];
    [v6 setYear:{objc_msgSend(v5, "year")}];
    v7 = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [v7 dateFromComponents:v6];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedVisitDate", v11, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)_checkFamiliarityIndexResultsForErrors:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v21 + 1) + 8 * i) familiarityIndex];
          if (v10 == -1.0)
          {
            ++v7;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    if (v7 == [v4 count])
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01450];
      v27 = *MEMORY[0x277CCA450];
      v28 = @"All familiarity index results are invalid and equal to -1;";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v14 = v11;
      v15 = v12;
      v16 = 2;
LABEL_18:
      v19 = [v14 errorWithDomain:v15 code:v16 userInfo:{v13, v21}];

      goto LABEL_20;
    }

    if (v7 && v7 < [v4 count])
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277D01450];
      v25 = *MEMORY[0x277CCA450];
      v26 = @"Some familiarity index results are invalid and equal to -1; others are valid";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v14 = v17;
      v15 = v18;
      v16 = 3;
      goto LABEL_18;
    }
  }

  v19 = 0;
LABEL_20:

  return v19;
}

- (id)_combineFamiliarityIndexRetrieveError:(id)a3 resultsError:(id)a4
{
  v19[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D01448];
    v10 = *MEMORY[0x277CCA450];
    v19[0] = @"Multiple errors occurred.";
    v11 = *MEMORY[0x277D01440];
    v18[0] = v10;
    v18[1] = v11;
    v17[0] = v5;
    v17[1] = v6;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v19[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v14 = [v8 errorWithDomain:v9 code:9 userInfo:v13];

    goto LABEL_9;
  }

  if (v6)
  {
    v15 = v6;
LABEL_8:
    v14 = v15;
    goto LABEL_9;
  }

  if (v5)
  {
    v15 = v5;
    goto LABEL_8;
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (unint64_t)_getTotalVisitCountForPreviousDatesFromDictGeohashToDates:(id)a3 referenceDate:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    v11 = INFINITY;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 isOnOrBefore:v6])
        {
          [v13 timeIntervalSinceDate:v6];
          if (v14 >= 0.0)
          {
            v15 = v14;
          }

          else
          {
            v15 = -v14;
          }

          if (v15 < v11)
          {
            v16 = [v5 objectForKeyedSubscript:v13];
            v9 = [v16 integerValue];

            v11 = v15;
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_latitudeLongitudeToGeohashHelperForLatitude:(double)a3 longitude:(double)a4 hashLength:(unint64_t)a5
{
  v5 = a5;
  v27 = *MEMORY[0x277D85DE8];
  if (a5 > 0xC)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v25 = 134217984;
      v26 = v5;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Geohash length is too big (%lu), maximum is 12", &v25, 0xCu);
    }

LABEL_25:
    v22 = 0;
    goto LABEL_26;
  }

  v7 = 0;
  v8 = 1 << (5 * a5 - 1);
  v9 = 180.0;
  v10 = -180.0;
  v11 = 90.0;
  v12 = -90.0;
  do
  {
    v13 = v10 + (v9 - v10) * 0.5;
    if (v13 <= a4)
    {
      v14 = v8;
    }

    else
    {
      v14 = 0;
    }

    v7 |= v14;
    if (v8 == 1)
    {
      break;
    }

    if (v13 > a4)
    {
      v9 = v10 + (v9 - v10) * 0.5;
    }

    else
    {
      v10 = v10 + (v9 - v10) * 0.5;
    }

    v15 = v8 >> 1;
    if (v12 + (v11 - v12) * 0.5 <= a3)
    {
      v12 = v12 + (v11 - v12) * 0.5;
    }

    else
    {
      v11 = v12 + (v11 - v12) * 0.5;
      v15 = 0;
    }

    v7 |= v15;
    v16 = v8 > 3;
    v8 >>= 2;
  }

  while (v16);
  v17 = a5 + 1;
  v18 = malloc_type_malloc(a5 + 1, 0x100004077774924uLL);
  if (!v18)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = 134217984;
      v26 = v17;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Failed to allocate %lu bytes for the geohash", &v25, 0xCu);
    }

    goto LABEL_25;
  }

  v19 = v18;
  bzero(v18, v5 + 1);
  if (v5)
  {
    v20 = 5 * v5 - 5;
    v21 = v19;
    do
    {
      *v21++ = a0123456789bcde[(v7 >> v20) & 0x1F];
      v20 -= 5;
      --v5;
    }

    while (v5);
  }

  v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v19 encoding:4];
  free(v19);
LABEL_26:

  return v22;
}

- (void)fetchEnumerableObjectsWithOptions:(id)a3 offset:(unint64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = [(RTNotifier *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __77__RTLearnedLocationManager_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke;
    v12[3] = &unk_2788C6940;
    v13 = v8;
    v14 = self;
    v15 = v9;
    v16 = a4;
    dispatch_async(v10, v12);

    v11 = v13;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __77__RTLearnedLocationManager_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D01448];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"options cannot be nil";
    v8 = MEMORY[0x277CBEAC0];
    v9 = v24;
    v10 = &v23;
LABEL_9:
    v11 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
    v12 = v6;
    v13 = v7;
    v14 = 7;
LABEL_11:
    v17 = [v12 errorWithDomain:v13 code:v14 userInfo:v11];

    (*(*(a1 + 48) + 16))();
    return;
  }

  v3 = [v2 enumeratedType];
  v4 = [objc_opt_class() vendedClasses];
  v5 = [v4 member:v3];

  if (!v5)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D01448];
    v21 = *MEMORY[0x277CCA450];
    v22 = @"the type specified by options is not vended by this manager";
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v22;
    v10 = &v21;
    goto LABEL_9;
  }

  if (([*(a1 + 40) available] & 1) == 0)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D01448];
    v19 = *MEMORY[0x277CCA450];
    v20 = @"store is not available";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v12 = v15;
    v13 = v16;
    v14 = 5;
    goto LABEL_11;
  }

  v18 = [*(a1 + 40) learnedLocationStore];
  [v18 fetchEnumerableObjectsWithOptions:*(a1 + 32) offset:*(a1 + 56) handler:*(a1 + 48)];
}

- (void)flushToCacheWithOptions:(id)a3 handler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      *buf = 138412802;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, options, %@", buf, 0x20u);
    }
  }

  if ([v7 hasMask:4])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__RTLearnedLocationManager_flushToCacheWithOptions_handler___block_invoke;
    v13[3] = &unk_2788C48C0;
    v14 = v8;
    [(RTLearnedLocationManager *)self trainForReason:3 mode:1 handler:v13];
  }

  else
  {
    (*(v8 + 2))(v8, 0);
  }
}

- (void)_applyUserCuration:(id)a3 harvestCuration:(BOOL)a4 handler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(RTLearnedLocationManager *)self learnedLocationEngine];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__RTLearnedLocationManager__applyUserCuration_harvestCuration_handler___block_invoke;
  v12[3] = &unk_2788C48C0;
  v13 = v8;
  v11 = v8;
  [v10 applyUserCuration:v9 harvestCuration:v5 handler:v12];
}

uint64_t __71__RTLearnedLocationManager__applyUserCuration_harvestCuration_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)applyUserCuration:(id)a3 harvestCuration:(BOOL)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__RTLearnedLocationManager_applyUserCuration_harvestCuration_handler___block_invoke;
  v13[3] = &unk_2788C4690;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

@end