@interface RTLearnedLocationStore
+ (id)filterLocationsOfInterests:(id)interests;
+ (id)filterPlaces:(id)places;
- (BOOL)_processDeletionRequestWithFetchRequest:(id)request context:(id)context error:(id *)error;
- (BOOL)_updateExpirationDateOfPlaceSubgraphWithVisitIdentifiers:(id)identifiers expirationDate:(id)date context:(id)context error:(id *)error;
- (BOOL)_updateExpirationDateOfVisitsAndTransitionsWithVisitIdentifiers:(id)identifiers expirationDate:(id)date context:(id)context visitsUpdated:(unint64_t *)updated error:(id *)error;
- (BOOL)cloudStoreChangedSinceDate:(id)date;
- (BOOL)deletePlacesWithinIdentifierSet:(id)set tombstoneContext:(id)context error:(id *)error;
- (BOOL)deletePlacesWithinIdentifierSetWithZeroVisits:(id)visits context:(id)context tombstoneContext:(id)tombstoneContext error:(id *)error;
- (BOOL)deleteTransitionsReferencingVisitIdentifiers:(id)identifiers context:(id)context tombstoneContext:(id)tombstoneContext error:(id *)error;
- (BOOL)deleteVisitsUsingCloudFetchRequest:(id)request localFetchRequest:(id)fetchRequest context:(id)context tombstoneContext:(id)tombstoneContext error:(id *)error;
- (BOOL)placeTypeForMapItem:(id)item placeType:(unint64_t *)type placeTypeSource:(unint64_t *)source error:(id *)error;
- (RTLearnedLocationStore)initWithDistanceCalculator:(id)calculator expirationEnforcer:(id)enforcer mirroringManager:(id)manager;
- (RTLearnedLocationStore)initWithDistanceCalculator:(id)calculator expirationEnforcer:(id)enforcer mirroringManager:(id)manager persistenceManager:(id)persistenceManager;
- (id)_learnedLocationsOfInterestFromLearnedLocationsOfInterestMO:(id)o context:(id)context includeVisits:(BOOL)visits includeTransitions:(BOOL)transitions;
- (id)_sortLocationsOfInterest:(id)interest;
- (id)_unionSetOfVisitIdentifiersOverlappingVisitIdentifiers:(id)identifiers allowThresholdBypass:(BOOL)bypass context:(id)context error:(id *)error;
- (id)bulkFetchMapItemMOsByIdentifiers:(id)identifiers context:(id)context error:(id *)error;
- (id)createFetchRequestForOverlappingVisits:(id)visits entityName:(id)name entryDatePropertyName:(id)propertyName exitDatePropertyName:(id)datePropertyName context:(id)context error:(id *)error;
- (id)fetchRequestFromLocationOfInterestOptions:(id)options;
- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error;
- (id)fetchVisitIdentifiersUsingFetchRequest:(id)request context:(id)context error:(id *)error;
- (id)groupCloudManagedObjectsByDeviceIdentifier:(id)identifier;
- (id)identifiersForPlacesThatDedupeToPlace:(id)place context:(id)context error:(id *)error;
- (id)identifiersForPlacesThatOwnVisitIdentifiers:(id)identifiers context:(id)context error:(id *)error;
- (id)migrateLegacyMapItemsWithEnumerationBlock:(id)block;
- (id)placeMapItemIdentifiersFromLearnedLocationsOfInterestMO:(id)o;
- (id)predicateForVisitsWithinDistance:(double)distance location:(id)location;
- (id)refreshMapItemsWithEnumerationBlock:(id)block;
- (void)__removeUnreferencedAddresses:(id)addresses;
- (void)__removeUnreferencedExtendedAttributes:(id)attributes;
- (void)__removeUnreferencedMapItems:(id)items;
- (void)_associatePlacesToVisits:(id)visits handler:(id)handler;
- (void)_clearWithHandler:(id)handler;
- (void)_expireLifetimeOfVisitsWithIdentifiers:(id)identifiers expirationDate:(id)date handler:(id)handler;
- (void)_extendExpirationDateOfVisitsWithIdentifiers:(id)identifiers expirationDate:(id)date handler:(id)handler;
- (void)_fetchCloudStorePersistentHistorySinceDate:(id)date earlyStop:(BOOL)stop handler:(id)handler;
- (void)_fetchCountOfVisitsToLocationOfInterestWithIdentifier:(id)identifier dateInterval:(id)interval handler:(id)handler;
- (void)_fetchCountOfVisitsToPlaceWithIdentifier:(id)identifier endDate:(id)date handler:(id)handler;
- (void)_fetchCountOfVisitsToPlaceWithIdentifier:(id)identifier handler:(id)handler;
- (void)_fetchCurrentDeviceWithHandler:(id)handler;
- (void)_fetchDevicesNotFromCurrentDeviceWithHandler:(id)handler;
- (void)_fetchEntityAsDictionaryWithEntityName:(id)name propertiesToFetch:(id)fetch handler:(id)handler;
- (void)_fetchFinerGranularityInferredMapItemWithVisitIdentifier:(id)identifier handler:(id)handler;
- (void)_fetchInferredMapItemForVisitIdentifier:(id)identifier handler:(id)handler;
- (void)_fetchLastVisitToPlaceWithIdentifier:(id)identifier handler:(id)handler;
- (void)_fetchLastVisitWithHandler:(id)handler;
- (void)_fetchLocationOfInterestTransitionsBetweenStartDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)_fetchLocationOfInterestVisitedFirstWithHandler:(id)handler;
- (void)_fetchLocationOfInterestVisitedLastWithHandler:(id)handler;
- (void)_fetchLocationOfInterestWithIdentifier:(id)identifier handler:(id)handler;
- (void)_fetchLocationOfInterestWithMapItem:(id)item handler:(id)handler;
- (void)_fetchLocationOfInterestWithPlace:(id)place handler:(id)handler;
- (void)_fetchLocationsOfInterestUUIDsVisitedWithHandler:(id)handler;
- (void)_fetchLocationsOfInterestVisitedBetweenStartDate:(id)date endDate:(id)endDate includePlaceholders:(BOOL)placeholders includeVisits:(BOOL)visits includeTransitions:(BOOL)transitions handler:(id)handler;
- (void)_fetchLocationsOfInterestWithIdentifiers:(id)identifiers handler:(id)handler;
- (void)_fetchLocationsOfInterestWithPlaceType:(unint64_t)type handler:(id)handler;
- (void)_fetchLocationsOfInterestWithVisitsWithinDistance:(double)distance location:(id)location handler:(id)handler;
- (void)_fetchLocationsOfInterestWithinDistance:(double)distance location:(id)location handler:(id)handler;
- (void)_fetchMapItemWithMuid:(unint64_t)muid predicate:(id)predicate handler:(id)handler;
- (void)_fetchMetricsWithHandler:(id)handler;
- (void)_fetchPlaceOfVisit:(id)visit handler:(id)handler;
- (void)_fetchPlaceWithMapItemIdentifier:(id)identifier handler:(id)handler;
- (void)_fetchPlacesWithIdentifiers:(id)identifiers handler:(id)handler;
- (void)_fetchPlacesWithMapItem:(id)item predicate:(id)predicate handler:(id)handler;
- (void)_fetchPlacesWithPredicate:(id)predicate handler:(id)handler;
- (void)_fetchPlacesWithType:(unint64_t)type predicate:(id)predicate handler:(id)handler;
- (void)_fetchPlacesWithinDistance:(double)distance location:(id)location predicate:(id)predicate handler:(id)handler;
- (void)_fetchStoredMapItemsWithMapItem:(id)item predicate:(id)predicate handler:(id)handler;
- (void)_fetchTransitionWithDestinationIdentifier:(id)identifier handler:(id)handler;
- (void)_fetchTransitionWithOriginIdentifier:(id)identifier handler:(id)handler;
- (void)_fetchTransitionsBetweenStartDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)_fetchVisitIdentifiersIn:(id)in handler:(id)handler;
- (void)_fetchVisitWithIdentifier:(id)identifier handler:(id)handler;
- (void)_fetchVisitsOverlappingDate:(id)date handler:(id)handler;
- (void)_fetchVisitsOverlappingDateInterval:(id)interval handler:(id)handler;
- (void)_fetchVisitsPredating:(id)predating handler:(id)handler;
- (void)_fetchVisitsToPlace:(id)place handler:(id)handler;
- (void)_fetchVisitsWithIncompletePlacesForCurrentDeviceWithHandler:(id)handler;
- (void)_fetchVisitsWithPredicate:(id)predicate ascending:(BOOL)ascending limit:(id)limit handler:(id)handler;
- (void)_fetchVisitsWithoutPlacesForCurrentDeviceWithHandler:(id)handler limit:(id)limit;
- (void)_logCloudStoreWithReason:(id)reason handler:(id)handler;
- (void)_logLocalStoreWithReason:(id)reason handler:(id)handler;
- (void)_migrateLegacyMapItemsWithEnumerationBlock:(id)block completionBlock:(id)completionBlock;
- (void)_moc_updateExpirationDateOfVisitSubgraphWithVisitIdentifiers:(id)identifiers expirationDate:(id)date allowThresholdBypass:(BOOL)bypass context:(id)context handler:(id)handler;
- (void)_refreshMapItemsWithEnumerationBlock:(id)block completionBlock:(id)completionBlock;
- (void)_removeAllMapItems:(id)items;
- (void)_removeLocationOfInterestWithIdentifier:(id)identifier handler:(id)handler;
- (void)_removeLocationsOfInterestWithHandler:(id)handler;
- (void)_removeOverlappingVisitsAndTransitionsForVisits:(id)visits handler:(id)handler;
- (void)_removePlace:(id)place handler:(id)handler;
- (void)_removePlacesForLocationOfInterest:(id)interest handler:(id)handler;
- (void)_removePlacesWithHandler:(id)handler;
- (void)_removeRecordsExpiredBeforeDate:(id)date handler:(id)handler;
- (void)_removeTransitionsReferencingVisits:(id)visits handler:(id)handler;
- (void)_removeTransitionsWithHandler:(id)handler;
- (void)_removeUnreferencedMapItems:(id)items;
- (void)_removeUnreferencedPlacesWithHandler:(id)handler;
- (void)_removeVisitWithIdentifier:(id)identifier handler:(id)handler;
- (void)_removeVisits:(id)visits handler:(id)handler;
- (void)_removeVisitsWithHandler:(id)handler;
- (void)_replaceWithLocationsOfInterest:(id)interest handler:(id)handler;
- (void)_storeVisits:(id)visits finerGranularityInferredMapItems:(id)items place:(id)place handler:(id)handler;
- (void)_updateExpirationDateOfVisitSubgraphWithVisitIdentifiers:(id)identifiers expirationDate:(id)date allowThresholdBypass:(BOOL)bypass handler:(id)handler;
- (void)_updateLocationOfInterestWithIdentifier:(id)identifier place:(id)place handler:(id)handler;
- (void)_updateTransitionWithIdentifier:(id)identifier motionActivityType:(unint64_t)type handler:(id)handler;
- (void)_updateVisits:(id)visits finerGranularityInferredMapItems:(id)items place:(id)place handler:(id)handler;
- (void)_verifyExpirationDatesOfVisitGraphWithHandler:(id)handler;
- (void)associatePlacesToVisits:(id)visits handler:(id)handler;
- (void)clearWithHandler:(id)handler;
- (void)enumerateStoredLocationsOfInterestWithOptions:(id)options enumerationBlock:(id)block;
- (void)expireLifetimeOfVisitsWithIdentifiers:(id)identifiers expirationDate:(id)date handler:(id)handler;
- (void)extendExpirationDateOfVisitsWithIdentifiers:(id)identifiers expirationDate:(id)date handler:(id)handler;
- (void)fetchAllLocationsOfInterestWithHandler:(id)handler;
- (void)fetchCloudStorePersistentHistorySinceDate:(id)date earlyStop:(BOOL)stop handler:(id)handler;
- (void)fetchCountOfVisitsToLocationOfInterestWithIdentifier:(id)identifier dateInterval:(id)interval handler:(id)handler;
- (void)fetchCountOfVisitsToPlaceWithIdentifier:(id)identifier endDate:(id)date handler:(id)handler;
- (void)fetchCountOfVisitsToPlaceWithIdentifier:(id)identifier handler:(id)handler;
- (void)fetchCurrentDeviceWithHandler:(id)handler;
- (void)fetchDevicesNotFromCurrentDeviceWithHandler:(id)handler;
- (void)fetchFinerGranularityInferredMapItemForVisit:(id)visit handler:(id)handler;
- (void)fetchFinerGranularityInferredMapItemWithVisitIdentifier:(id)identifier handler:(id)handler;
- (void)fetchInferredMapItemForVisitIdentifier:(id)identifier handler:(id)handler;
- (void)fetchLastVisitToPlaceWithIdentifier:(id)identifier handler:(id)handler;
- (void)fetchLastVisitWithHandler:(id)handler;
- (void)fetchLocationOfInterestTransitionsBetweenStartDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)fetchLocationOfInterestVisitedFirstWithHandler:(id)handler;
- (void)fetchLocationOfInterestVisitedLastWithHandler:(id)handler;
- (void)fetchLocationOfInterestWithIdentifier:(id)identifier handler:(id)handler;
- (void)fetchLocationOfInterestWithMapItem:(id)item handler:(id)handler;
- (void)fetchLocationOfInterestWithPlace:(id)place handler:(id)handler;
- (void)fetchLocationsOfInterestUUIDsVisitedWithHandler:(id)handler;
- (void)fetchLocationsOfInterestVisitedBetweenStartDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)fetchLocationsOfInterestVisitedBetweenStartDate:(id)date endDate:(id)endDate includePlaceholders:(BOOL)placeholders includeVisits:(BOOL)visits includeTransitions:(BOOL)transitions handler:(id)handler;
- (void)fetchLocationsOfInterestVisitedSinceDate:(id)date handler:(id)handler;
- (void)fetchLocationsOfInterestWithIdentifiers:(id)identifiers handler:(id)handler;
- (void)fetchLocationsOfInterestWithPlaceType:(unint64_t)type handler:(id)handler;
- (void)fetchLocationsOfInterestWithVisitsWithinDistance:(double)distance location:(id)location handler:(id)handler;
- (void)fetchLocationsOfInterestWithinDistance:(double)distance location:(id)location handler:(id)handler;
- (void)fetchMapItemWithMuid:(unint64_t)muid predicate:(id)predicate handler:(id)handler;
- (void)fetchMetricsWithHandler:(id)handler;
- (void)fetchPlaceOfVisit:(id)visit handler:(id)handler;
- (void)fetchPlaceWithMapItem:(id)item predicate:(id)predicate handler:(id)handler;
- (void)fetchPlaceWithMapItemIdentifier:(id)identifier handler:(id)handler;
- (void)fetchPlacesWithHandler:(id)handler;
- (void)fetchPlacesWithIdentifiers:(id)identifiers handler:(id)handler;
- (void)fetchPlacesWithMapItem:(id)item handler:(id)handler;
- (void)fetchPlacesWithMapItem:(id)item predicate:(id)predicate handler:(id)handler;
- (void)fetchPlacesWithPredicate:(id)predicate handler:(id)handler;
- (void)fetchPlacesWithType:(unint64_t)type handler:(id)handler;
- (void)fetchPlacesWithType:(unint64_t)type predicate:(id)predicate handler:(id)handler;
- (void)fetchPlacesWithinDistance:(double)distance location:(id)location handler:(id)handler;
- (void)fetchPlacesWithinDistance:(double)distance location:(id)location predicate:(id)predicate handler:(id)handler;
- (void)fetchRecentLocationsOfInterestWithHandler:(id)handler;
- (void)fetchStoredMapItemsWithMapItem:(id)item predicate:(id)predicate handler:(id)handler;
- (void)fetchTransitionWithDestinationIdentifier:(id)identifier handler:(id)handler;
- (void)fetchTransitionWithOriginIdentifier:(id)identifier handler:(id)handler;
- (void)fetchTransitionsBetweenStartDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)fetchTransitionsWithHandler:(id)handler;
- (void)fetchVisitIdentifiersIn:(id)in handler:(id)handler;
- (void)fetchVisitWithIdentifier:(id)identifier handler:(id)handler;
- (void)fetchVisitsOverlappingDate:(id)date handler:(id)handler;
- (void)fetchVisitsOverlappingDateInterval:(id)interval handler:(id)handler;
- (void)fetchVisitsPredating:(id)predating handler:(id)handler;
- (void)fetchVisitsToPlace:(id)place handler:(id)handler;
- (void)fetchVisitsWithDevice:(id)device dateInterval:(id)interval handler:(id)handler;
- (void)fetchVisitsWithHandler:(id)handler;
- (void)fetchVisitsWithIncompletePlacesForCurrentDeviceWithHandler:(id)handler;
- (void)fetchVisitsWithPredicate:(id)predicate ascending:(BOOL)ascending dateInterval:(id)interval limit:(id)limit handler:(id)handler;
- (void)fetchVisitsWithPredicate:(id)predicate handler:(id)handler;
- (void)fetchVisitsWithoutPlacesForCurrentDeviceWithHandler:(id)handler limit:(id)limit;
- (void)logCloudStoreWithReason:(id)reason handler:(id)handler;
- (void)logLocalStoreWithReason:(id)reason handler:(id)handler;
- (void)processExternalMapItem:(id)item handler:(id)handler;
- (void)removeAllMapItems:(id)items;
- (void)removeLocationOfInterestWithIdentifier:(id)identifier handler:(id)handler;
- (void)removeOverlappingVisitsAndTransitionsForVisits:(id)visits handler:(id)handler;
- (void)removePlace:(id)place handler:(id)handler;
- (void)removePlacesForLocationOfInterest:(id)interest handler:(id)handler;
- (void)removePlacesWithHandler:(id)handler;
- (void)removeRecordsExpiredBeforeDate:(id)date handler:(id)handler;
- (void)removeTransitionsReferencingVisits:(id)visits handler:(id)handler;
- (void)removeTransitionsWithHandler:(id)handler;
- (void)removeUnreferencedMapItems:(id)items;
- (void)removeUnreferencedPlacesWithHandler:(id)handler;
- (void)removeVisitWithIdentifier:(id)identifier handler:(id)handler;
- (void)removeVisits:(id)visits handler:(id)handler;
- (void)removeVisitsWithHandler:(id)handler;
- (void)replaceWithLocationsOfInterest:(id)interest handler:(id)handler;
- (void)storeLocationsOfInterest:(id)interest handler:(id)handler;
- (void)storePlaces:(id)places handler:(id)handler;
- (void)storeVisits:(id)visits finerGranularityInferredMapItems:(id)items place:(id)place handler:(id)handler;
- (void)storeVisits:(id)visits place:(id)place handler:(id)handler;
- (void)submitMetricsOnExtendingLifetimeOfObjectsWithIdentifiers:(id)identifiers context:(id)context;
- (void)updateExpirationDateOfVisitsWithIdentifiers:(id)identifiers expirationDate:(id)date allowThresholdBypass:(BOOL)bypass handler:(id)handler;
- (void)updateExpirationDateOfVisitsWithIdentifiers:(id)identifiers expirationDate:(id)date handler:(id)handler;
- (void)updateLocationOfInterestWithIdentifier:(id)identifier place:(id)place handler:(id)handler;
- (void)updateLocationsOfInterest:(id)interest handler:(id)handler;
- (void)updatePlaces:(id)places handler:(id)handler;
- (void)updateTransitionWithIdentifier:(id)identifier motionActivityType:(unint64_t)type handler:(id)handler;
- (void)updateVisits:(id)visits finerGranularityInferredMapItems:(id)items place:(id)place handler:(id)handler;
- (void)verifyExpirationDatesOfVisitGraphWithHandler:(id)handler;
@end

@implementation RTLearnedLocationStore

- (void)submitMetricsOnExtendingLifetimeOfObjectsWithIdentifiers:(id)identifiers context:(id)context
{
  identifiersCopy = identifiers;
  contextCopy = context;
  if (!contextCopy)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    goto LABEL_6;
  }

  if ([identifiersCopy count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __100__RTLearnedLocationStore_Metrics__submitMetricsOnExtendingLifetimeOfObjectsWithIdentifiers_context___block_invoke;
    v8[3] = &unk_2788C4EA0;
    v9 = contextCopy;
    [v9 performBlockAndWait:v8];
    v7 = v9;
LABEL_6:
  }
}

void __100__RTLearnedLocationStore_Metrics__submitMetricsOnExtendingLifetimeOfObjectsWithIdentifiers_context___block_invoke(uint64_t a1)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v2 = +[RTLearnedVisitMO fetchRequest];
  [v2 setResultType:2];
  v3 = [MEMORY[0x277CCA9C0] expressionWithFormat:@"%K", @"creationDate"];
  v4 = MEMORY[0x277CCA9C0];
  v40 = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObject:?];
  v6 = [v4 expressionForFunction:@"min:" arguments:v5];

  v7 = objc_opt_new();
  [v7 setName:@"oldestCreationDate"];
  v39 = v6;
  [v7 setExpression:v6];
  [v7 setExpressionResultType:900];
  v48[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
  [v2 setPropertiesToFetch:v8];

  v9 = *(a1 + 32);
  v43 = 0;
  v10 = [v9 executeFetchRequest:v2 error:&v43];
  v37 = v43;
  v38 = v10;
  v11 = [v10 firstObject];
  v12 = [v11 objectForKey:@"oldestCreationDate"];

  v13 = [MEMORY[0x277CBEAA8] date];
  v36 = v12;
  [v13 timeIntervalSinceDate:v12];
  v15 = v14;

  v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-4838400.0];
  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K < %@", @"creationDate", v16];
  v18 = +[RTLearnedVisitMO fetchRequest];
  [v18 setPredicate:v17];
  v19 = *(a1 + 32);
  v42 = 0;
  v20 = [v19 countForFetchRequest:v18 error:&v42];
  v21 = v42;
  v22 = +[RTLearnedVisitMO fetchRequest];
  v23 = *(a1 + 32);
  v41 = v21;
  v24 = [v23 countForFetchRequest:v22 error:&v41];
  v35 = v41;

  if (v24)
  {
    v25 = (v20 / v24) * 100.0;
  }

  else
  {
    v25 = 0.0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v45 = v25;
      v46 = 2048;
      v47 = v24;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "pinned visits percentage, %.2f, total visits, %lu", buf, 0x16u);
    }
  }

  v27 = objc_opt_new();
  *&v28 = v25;
  v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
  [v27 setObject:v29 forKeyedSubscript:@"pinnedVisitsPercentage"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
  [v27 setObject:v30 forKeyedSubscript:@"totalVisitCount"];

  v31 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
  [v27 setObject:v31 forKeyedSubscript:@"ageOfOldestVisit"];

  v32 = objc_alloc(MEMORY[0x277CCACA8]);
  v33 = [v32 initWithCString:RTAnalyticsEventVisitLifetimeExtension encoding:1];
  log_analytics_submission(v33, v27);
  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v33];
  AnalyticsSendEvent();
}

- (RTLearnedLocationStore)initWithDistanceCalculator:(id)calculator expirationEnforcer:(id)enforcer mirroringManager:(id)manager
{
  calculatorCopy = calculator;
  enforcerCopy = enforcer;
  managerCopy = manager;
  v11 = managerCopy;
  if (!calculatorCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v20 = 0;
    v15 = "Invalid parameter not satisfying: distanceCalculator";
    v16 = &v20;
LABEL_11:
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v15, v16, 2u);
    goto LABEL_12;
  }

  if (!enforcerCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v19 = 0;
    v15 = "Invalid parameter not satisfying: expirationEnforcer";
    v16 = &v19;
    goto LABEL_11;
  }

  if (!managerCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = 0;
      v15 = "Invalid parameter not satisfying: mirroringManager";
      v16 = &v18;
      goto LABEL_11;
    }

LABEL_12:

    selfCopy = 0;
    goto LABEL_13;
  }

  persistenceManager = [managerCopy persistenceManager];
  self = [(RTLearnedLocationStore *)self initWithDistanceCalculator:calculatorCopy expirationEnforcer:enforcerCopy mirroringManager:v11 persistenceManager:persistenceManager];

  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (RTLearnedLocationStore)initWithDistanceCalculator:(id)calculator expirationEnforcer:(id)enforcer mirroringManager:(id)manager persistenceManager:(id)persistenceManager
{
  calculatorCopy = calculator;
  enforcerCopy = enforcer;
  managerCopy = manager;
  if (persistenceManager)
  {
    v19.receiver = self;
    v19.super_class = RTLearnedLocationStore;
    v14 = [(RTStore *)&v19 initWithPersistenceManager:persistenceManager];
    p_isa = &v14->super.super.super.super.isa;
    if (v14)
    {
      objc_storeStrong(&v14->_distanceCalculator, calculator);
      objc_storeStrong(p_isa + 9, enforcer);
      objc_storeStrong(p_isa + 11, manager);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: persistenceManager", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)filterPlaces:(id)places
{
  v3 = MEMORY[0x277CCAC30];
  placesCopy = places;
  v5 = [v3 predicateWithBlock:&__block_literal_global_66];
  v6 = [placesCopy filteredArrayUsingPredicate:v5];

  return v6;
}

BOOL __39__RTLearnedLocationStore_filterPlaces___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 mapItem];

  if (!v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 138740483;
      v13 = v2;
      v14 = 2080;
      v15 = "+[RTLearnedLocationStore filterPlaces:]_block_invoke";
      v16 = 1024;
      v17 = 134;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "mapItem cannot be nil for place, %{sensitive}@. (in %s:%d)", &v12, 0x1Cu);
    }
  }

  v5 = [v2 mapItem];
  v6 = [v5 geoMapItemHandle];

  if (!v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138740483;
      v13 = v2;
      v14 = 2080;
      v15 = "+[RTLearnedLocationStore filterPlaces:]_block_invoke";
      v16 = 1024;
      v17 = 137;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "geoMapItemHandle cannot be nil for place, %{sensitive}@. (in %s:%d)", &v12, 0x1Cu);
    }
  }

  v8 = [v2 mapItem];
  v9 = [v8 geoMapItemHandle];
  v10 = v9 != 0;

  return v10;
}

+ (id)filterLocationsOfInterests:(id)interests
{
  v3 = MEMORY[0x277CCAC30];
  interestsCopy = interests;
  v5 = [v3 predicateWithBlock:&__block_literal_global_40];
  v6 = [interestsCopy filteredArrayUsingPredicate:v5];

  return v6;
}

BOOL __53__RTLearnedLocationStore_filterLocationsOfInterests___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 place];
  v4 = [v3 mapItem];

  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v15 = [v2 place];
      v17 = 138740483;
      v18 = v15;
      v19 = 2080;
      v20 = "+[RTLearnedLocationStore filterLocationsOfInterests:]_block_invoke";
      v21 = 1024;
      v22 = 153;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "mapItem cannot be nil for locationOfInterest, %{sensitive}@. (in %s:%d)", &v17, 0x1Cu);
    }
  }

  v6 = [v2 place];
  v7 = [v6 mapItem];
  v8 = [v7 geoMapItemHandle];

  if (!v8)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = [v2 place];
      v17 = 138740483;
      v18 = v16;
      v19 = 2080;
      v20 = "+[RTLearnedLocationStore filterLocationsOfInterests:]_block_invoke";
      v21 = 1024;
      v22 = 156;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "geoMapItemHandle cannot be nil for locationOfInterest, %{sensitive}@. (in %s:%d)", &v17, 0x1Cu);
    }
  }

  v10 = [v2 place];
  v11 = [v10 mapItem];
  v12 = [v11 geoMapItemHandle];
  v13 = v12 != 0;

  return v13;
}

- (void)storePlaces:(id)places handler:(id)handler
{
  handlerCopy = handler;
  placesCopy = places;
  v8 = [objc_opt_class() filterPlaces:placesCopy];

  [(RTStore *)self storeWritableObjects:v8 handler:handlerCopy];
}

- (void)storeLocationsOfInterest:(id)interest handler:(id)handler
{
  handlerCopy = handler;
  interestCopy = interest;
  v8 = [objc_opt_class() filterLocationsOfInterests:interestCopy];

  [(RTStore *)self storeWritableObjects:v8 handler:handlerCopy];
}

- (void)_storeVisits:(id)visits finerGranularityInferredMapItems:(id)items place:(id)place handler:(id)handler
{
  visitsCopy = visits;
  itemsCopy = items;
  placeCopy = place;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__RTLearnedLocationStore__storeVisits_finerGranularityInferredMapItems_place_handler___block_invoke;
  aBlock[3] = &unk_2788CB520;
  v21 = visitsCopy;
  v22 = itemsCopy;
  v24 = handlerCopy;
  v25 = a2;
  v23 = placeCopy;
  v15 = handlerCopy;
  v16 = placeCopy;
  v17 = itemsCopy;
  v18 = visitsCopy;
  v19 = _Block_copy(aBlock);
  [(RTStore *)self _performBlock:v19 contextType:2 errorHandler:v15];
}

void __86__RTLearnedLocationStore__storeVisits_finerGranularityInferredMapItems_place_handler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = *(a1 + 40);
        v11 = [v9 identifier];
        v12 = [v10 objectForKey:v11];

        v13 = [RTLearnedVisitMO managedObjectWithVisit:v9 finerGranularityInferredMapItem:v12 place:*(a1 + 48) inManagedObjectContext:v3];
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v6);
  }

  v19 = 0;
  v14 = [v3 save:&v19];
  v15 = v19;
  if ((v14 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412546;
      v25 = v18;
      v26 = 2112;
      v27 = v15;
      _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "%@, error, %@", buf, 0x16u);
    }
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    (*(v17 + 16))(v17, v15);
  }
}

- (void)storeVisits:(id)visits place:(id)place handler:(id)handler
{
  visitsCopy = visits;
  placeCopy = place;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__RTLearnedLocationStore_storeVisits_place_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = visitsCopy;
  v17 = placeCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = placeCopy;
  v14 = visitsCopy;
  dispatch_async(queue, v15);
}

- (void)storeVisits:(id)visits finerGranularityInferredMapItems:(id)items place:(id)place handler:(id)handler
{
  visitsCopy = visits;
  itemsCopy = items;
  placeCopy = place;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__RTLearnedLocationStore_storeVisits_finerGranularityInferredMapItems_place_handler___block_invoke;
  block[3] = &unk_2788C5580;
  block[4] = self;
  v20 = visitsCopy;
  v21 = itemsCopy;
  v22 = placeCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = placeCopy;
  v17 = itemsCopy;
  v18 = visitsCopy;
  dispatch_async(queue, block);
}

- (void)associatePlacesToVisits:(id)visits handler:(id)handler
{
  visitsCopy = visits;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTLearnedLocationStore_associatePlacesToVisits_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = visitsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = visitsCopy;
  dispatch_async(queue, block);
}

- (id)migrateLegacyMapItemsWithEnumerationBlock:(id)block
{
  v46 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    *v38 = 0;
    *&v38[8] = v38;
    *&v38[16] = 0x3032000000;
    v39 = __Block_byref_object_copy__82;
    v40 = __Block_byref_object_dispose__82;
    v41 = 0;
    v5 = dispatch_semaphore_create(0);
    queue = [(RTNotifier *)self queue];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __68__RTLearnedLocationStore_migrateLegacyMapItemsWithEnumerationBlock___block_invoke;
    v33 = &unk_2788CB548;
    selfCopy = self;
    v36 = blockCopy;
    v37 = v38;
    v7 = v5;
    v35 = v7;
    dispatch_async(queue, &v30);

    v8 = v7;
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v8, v10))
    {
      v11 = [MEMORY[0x277CBEAA8] now];
      [v11 timeIntervalSinceDate:v9];
      v13 = v12;
      v14 = objc_opt_new();
      v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_932];
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
      v44 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v44 count:1];
      v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

      if (v22)
      {
        v23 = v22;

        v24 = 0;
LABEL_12:

        v28 = v22;
        if ((v24 & 1) == 0)
        {
          objc_storeStrong((*&v38[8] + 40), v22);
        }

        v27 = *(*&v38[8] + 40);

        _Block_object_dispose(v38, 8);
        goto LABEL_15;
      }
    }

    else
    {
      v22 = 0;
    }

    v24 = 1;
    goto LABEL_12;
  }

  v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *v38 = 136315394;
    *&v38[4] = "[RTLearnedLocationStore migrateLegacyMapItemsWithEnumerationBlock:]";
    *&v38[12] = 1024;
    *&v38[14] = 275;
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: enumerationBlock (in %s:%d)", v38, 0x12u);
  }

  v42 = *MEMORY[0x277CCA450];
  v43 = @"A non-nil enumeration block is required.";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v26];

LABEL_15:

  return v27;
}

void __68__RTLearnedLocationStore_migrateLegacyMapItemsWithEnumerationBlock___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__RTLearnedLocationStore_migrateLegacyMapItemsWithEnumerationBlock___block_invoke_2;
  v3[3] = &unk_2788C4618;
  v1 = *(a1 + 48);
  v5 = *(a1 + 56);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 _migrateLegacyMapItemsWithEnumerationBlock:v1 completionBlock:v3];
}

void __68__RTLearnedLocationStore_migrateLegacyMapItemsWithEnumerationBlock___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_migrateLegacyMapItemsWithEnumerationBlock:(id)block completionBlock:(id)completionBlock
{
  v28 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v9 = completionBlockCopy;
  if (completionBlockCopy)
  {
    if (blockCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __85__RTLearnedLocationStore__migrateLegacyMapItemsWithEnumerationBlock_completionBlock___block_invoke;
      aBlock[3] = &unk_2788CB570;
      v10 = completionBlockCopy;
      v19 = v10;
      v20 = blockCopy;
      v21 = a2;
      v11 = _Block_copy(aBlock);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __85__RTLearnedLocationStore__migrateLegacyMapItemsWithEnumerationBlock_completionBlock___block_invoke_62;
      v16[3] = &unk_2788C48C0;
      v17 = v10;
      [(RTStore *)self _performBlock:v11 contextType:2 errorHandler:v16];

      v12 = v19;
LABEL_11:

      goto LABEL_12;
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTLearnedLocationStore _migrateLegacyMapItemsWithEnumerationBlock:completionBlock:]";
      v26 = 1024;
      v27 = 305;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completionBlock (in %s:%d)", buf, 0x12u);
    }

    if (blockCopy)
    {
      goto LABEL_12;
    }
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v25 = "[RTLearnedLocationStore _migrateLegacyMapItemsWithEnumerationBlock:completionBlock:]";
    v26 = 1024;
    v27 = 306;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: enumerationBlock (in %s:%d)", buf, 0x12u);
  }

  if (v9)
  {
    v22 = *MEMORY[0x277CCA450];
    v23 = @"A non-nil enumeration block is required.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v12];
    (v9)[2](v9, v15);

    goto LABEL_11;
  }

LABEL_12:
}

void __85__RTLearnedLocationStore__migrateLegacyMapItemsWithEnumerationBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedPlaceMO fetchRequest];
  [v4 setFetchBatchSize:1];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != nil || %K != nil", @"mapItemGeoMapItem", @"mapItemGeoMapItemHandle"];
  [v4 setPredicate:v5];

  v49 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v49];
  v33 = v49;
  if (v33)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v51 = v33;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "could not fetch a count of legacy map items to migrate, error, %@", buf, 0xCu);
    }

    v8 = v33;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if ([v6 count])
    {
      v32 = [v3 mergePolicy];
      [v3 setMergePolicy:*MEMORY[0x277CBE1C8]];
      [v3 setMirroringQualityOfService:3];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v6 count];
          *buf = 134217984;
          v51 = v10;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "migrating %lu legacy map items.", buf, 0xCu);
        }
      }

      v31 = v4;
      v48 = 0;
      v34 = objc_opt_new();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = v6;
      v37 = v3;
      v40 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
      if (v40)
      {
        v39 = *v45;
        v36 = a1;
        v38 = v6;
LABEL_12:
        v11 = 0;
        while (1)
        {
          if (*v45 != v39)
          {
            objc_enumerationMutation(obj);
          }

          if (v48)
          {
            break;
          }

          v12 = *(*(&v44 + 1) + 8 * v11);
          v41 = objc_autoreleasePoolPush();
          v13 = [v12 mapItemGeoMapItem];
          v14 = [v12 mapItemGeoMapItemHandle];
          v15 = [v12 mapItemSource];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v16 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138739971;
              v51 = v13;
              _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "Migrating map item, %{sensitive}@", buf, 0xCu);
            }
          }

          v17 = (*(*(a1 + 40) + 16))(*(a1 + 40), v13, v14, [v15 unsignedIntegerValue], 0, &v48);
          if (v17)
          {
            v18 = [RTMapItemMO managedObjectWithMapItem:v17 inManagedObjectContext:v3];
            v43 = 0;
            v19 = [v3 save:&v43];
            v20 = v43;
            if ((v19 & 1) == 0)
            {
              v21 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                v30 = NSStringFromSelector(*(v36 + 48));
                *buf = 138412546;
                v51 = v30;
                v52 = 2112;
                v53 = v20;
                _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
              }

              if (v20)
              {
                [v34 addObject:v20];
              }
            }

            [v12 setMapItemGeoMapItem:0];
            [v12 setMapItemGeoMapItemHandle:0];
            [v12 setMapItemSource:0];
            [v12 setMapItem:v18];
            v42 = v20;
            v22 = [v3 save:&v42];
            v23 = v42;

            if ((v22 & 1) == 0)
            {
              v24 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v25 = NSStringFromSelector(*(v36 + 48));
                *buf = 138412546;
                v51 = v25;
                v52 = 2112;
                v53 = v23;
                _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
              }

              if (v23)
              {
                [v34 addObject:v23];
              }
            }

            v3 = v37;
            [v37 refreshObject:v12 mergeChanges:0];

            a1 = v36;
          }

          else
          {
            v18 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "could not create new map item during migration of legacy map item", buf, 2u);
            }
          }

          objc_autoreleasePoolPop(v41);
          ++v11;
          v6 = v38;
          if (v40 == v11)
          {
            v40 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
            if (v40)
            {
              goto LABEL_12;
            }

            break;
          }
        }
      }

      [v3 setMergePolicy:v32];
      v26 = _RTSafeArray();
      v27 = _RTMultiErrorCreate();

      v4 = v31;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v28 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v51 = 0;
          _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "migrated %lu legacy map items.", buf, 0xCu);
        }
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32));

      v3 = v37;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "no legacy map items exist to migrate, returning.", buf, 2u);
        }
      }

      (*(*(a1 + 32) + 16))();
    }

    v8 = 0;
  }
}

uint64_t __85__RTLearnedLocationStore__migrateLegacyMapItemsWithEnumerationBlock_completionBlock___block_invoke_62(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)refreshMapItemsWithEnumerationBlock:(id)block
{
  v46 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    *v38 = 0;
    *&v38[8] = v38;
    *&v38[16] = 0x3032000000;
    v39 = __Block_byref_object_copy__82;
    v40 = __Block_byref_object_dispose__82;
    v41 = 0;
    v5 = dispatch_semaphore_create(0);
    queue = [(RTNotifier *)self queue];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __62__RTLearnedLocationStore_refreshMapItemsWithEnumerationBlock___block_invoke;
    v33 = &unk_2788CB548;
    selfCopy = self;
    v36 = blockCopy;
    v37 = v38;
    v7 = v5;
    v35 = v7;
    dispatch_async(queue, &v30);

    v8 = v7;
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v8, v10))
    {
      v11 = [MEMORY[0x277CBEAA8] now];
      [v11 timeIntervalSinceDate:v9];
      v13 = v12;
      v14 = objc_opt_new();
      v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_932];
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
      v44 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v44 count:1];
      v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

      if (v22)
      {
        v23 = v22;

        v24 = 0;
LABEL_12:

        v28 = v22;
        if ((v24 & 1) == 0)
        {
          objc_storeStrong((*&v38[8] + 40), v22);
        }

        v27 = *(*&v38[8] + 40);

        _Block_object_dispose(v38, 8);
        goto LABEL_15;
      }
    }

    else
    {
      v22 = 0;
    }

    v24 = 1;
    goto LABEL_12;
  }

  v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *v38 = 136315394;
    *&v38[4] = "[RTLearnedLocationStore refreshMapItemsWithEnumerationBlock:]";
    *&v38[12] = 1024;
    *&v38[14] = 439;
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: enumerationBlock (in %s:%d)", v38, 0x12u);
  }

  v42 = *MEMORY[0x277CCA450];
  v43 = @"A non-nil enumeration block is required.";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v26];

LABEL_15:

  return v27;
}

void __62__RTLearnedLocationStore_refreshMapItemsWithEnumerationBlock___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__RTLearnedLocationStore_refreshMapItemsWithEnumerationBlock___block_invoke_2;
  v3[3] = &unk_2788C4618;
  v1 = *(a1 + 48);
  v5 = *(a1 + 56);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 _refreshMapItemsWithEnumerationBlock:v1 completionBlock:v3];
}

void __62__RTLearnedLocationStore_refreshMapItemsWithEnumerationBlock___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_refreshMapItemsWithEnumerationBlock:(id)block completionBlock:(id)completionBlock
{
  v28 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v9 = completionBlockCopy;
  if (completionBlockCopy)
  {
    if (blockCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __79__RTLearnedLocationStore__refreshMapItemsWithEnumerationBlock_completionBlock___block_invoke;
      aBlock[3] = &unk_2788CB598;
      aBlock[4] = self;
      v21 = a2;
      v10 = completionBlockCopy;
      v19 = v10;
      v20 = blockCopy;
      v11 = _Block_copy(aBlock);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __79__RTLearnedLocationStore__refreshMapItemsWithEnumerationBlock_completionBlock___block_invoke_71;
      v16[3] = &unk_2788C48C0;
      v17 = v10;
      [(RTStore *)self _performBlock:v11 contextType:1 errorHandler:v16];

      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v25 = "[RTLearnedLocationStore _refreshMapItemsWithEnumerationBlock:completionBlock:]";
    v26 = 1024;
    v27 = 469;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completionBlock (in %s:%d)", buf, 0x12u);
  }

  if (!blockCopy)
  {
LABEL_7:
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTLearnedLocationStore _refreshMapItemsWithEnumerationBlock:completionBlock:]";
      v26 = 1024;
      v27 = 470;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: enumerationBlock (in %s:%d)", buf, 0x12u);
    }

    if (v9)
    {
      v22 = *MEMORY[0x277CCA450];
      v23 = @"A non-nil enumeration block is required.";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v14];
      (v9)[2](v9, v15);
    }
  }

LABEL_11:
}

void __79__RTLearnedLocationStore__refreshMapItemsWithEnumerationBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTMapItemMO fetchRequest];
  v58[0] = @"geoMapItemHandle";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
  [v4 setPropertiesToFetch:v5];

  v6 = [*(a1 + 32) predicateForObjectsFromCurrentDevice];
  [v4 setPredicate:v6];

  [v4 setFetchBatchSize:1];
  v47 = 0;
  v7 = [v3 executeFetchRequest:v4 error:&v47];
  v8 = v47;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v30 = NSStringFromSelector(*(a1 + 56));
      v31 = [v7 count];
      *buf = 138413058;
      v51 = v30;
      v52 = 2112;
      v53 = v4;
      v54 = 2048;
      v55 = v31;
      v56 = 2112;
      v57 = v8;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v8)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v51 = v8;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "could not fetch map items to refresh, error, %@", buf, 0xCu);
    }

    v11 = *(*(a1 + 40) + 16);
LABEL_9:
    v11();
    goto LABEL_35;
  }

  if (![v7 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "no map items exist to refresh, returning.", buf, 2u);
      }
    }

    v11 = *(*(a1 + 40) + 16);
    goto LABEL_9;
  }

  v34 = v4;
  v33 = [v3 mergePolicy];
  [v3 setMergePolicy:*MEMORY[0x277CBE1C8]];
  [v3 setMirroringQualityOfService:3];
  v46 = 0;
  v35 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v7;
  v40 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v40)
  {
    v39 = *v43;
    v12 = MEMORY[0x277D86220];
    v37 = v7;
    v38 = a1;
LABEL_13:
    v13 = 0;
    while (1)
    {
      if (*v43 != v39)
      {
        objc_enumerationMutation(obj);
      }

      if (v46)
      {
        break;
      }

      v14 = *(*(&v42 + 1) + 8 * v13);
      v15 = objc_autoreleasePoolPush();
      v16 = [MEMORY[0x277D011A0] createWithManagedObject:v14];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138739971;
          v51 = v16;
          _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "Refreshing map item, %{sensitive}@", buf, 0xCu);
        }
      }

      v18 = (*(*(a1 + 48) + 16))();
      if (v18)
      {
        v48 = @"identifier";
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
        v20 = [v16 mergeWithMapItem:v18 preservingProperties:v19];

        v21 = [RTMapItemMO managedObjectWithMapItem:v20 managedObject:v14 inManagedObjectContext:v3];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v22 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138739971;
            v51 = v18;
            _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "Refreshed map item, %{sensitive}@", buf, 0xCu);
          }
        }

        v41 = 0;
        v23 = v3;
        v24 = [v3 save:&v41];
        v25 = v41;
        if ((v24 & 1) == 0)
        {
          v26 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v32 = NSStringFromSelector(*(v38 + 56));
            *buf = 138412546;
            v51 = v32;
            v52 = 2112;
            v53 = v25;
            _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
          }

          if (v25)
          {
            [v35 addObject:v25];
          }
        }

        v3 = v23;
        [v23 refreshObject:v21 mergeChanges:0];

        v7 = v37;
        a1 = v38;
      }

      objc_autoreleasePoolPop(v15);
      if (v40 == ++v13)
      {
        v40 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
        if (v40)
        {
          goto LABEL_13;
        }

        break;
      }
    }
  }

  [v3 setMergePolicy:v33];
  v27 = _RTSafeArray();
  v28 = _RTMultiErrorCreate();

  (*(*(a1 + 40) + 16))(*(a1 + 40));
  v8 = 0;
  v4 = v34;
LABEL_35:
}

- (void)updatePlaces:(id)places handler:(id)handler
{
  handlerCopy = handler;
  placesCopy = places;
  v8 = [objc_opt_class() filterPlaces:placesCopy];

  [(RTStore *)self updateWritableObjects:v8 handler:handlerCopy];
}

- (void)updateLocationsOfInterest:(id)interest handler:(id)handler
{
  handlerCopy = handler;
  interestCopy = interest;
  v8 = [objc_opt_class() filterLocationsOfInterests:interestCopy];

  [(RTStore *)self updateWritableObjects:v8 handler:handlerCopy];
}

- (void)_updateLocationOfInterestWithIdentifier:(id)identifier place:(id)place handler:(id)handler
{
  identifierCopy = identifier;
  placeCopy = place;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__RTLearnedLocationStore__updateLocationOfInterestWithIdentifier_place_handler___block_invoke;
  aBlock[3] = &unk_2788C4910;
  v23 = a2;
  v20 = identifierCopy;
  v21 = placeCopy;
  v12 = handlerCopy;
  v22 = v12;
  v13 = placeCopy;
  v14 = identifierCopy;
  v15 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__RTLearnedLocationStore__updateLocationOfInterestWithIdentifier_place_handler___block_invoke_78;
  v17[3] = &unk_2788C48C0;
  v18 = v12;
  v16 = v12;
  [(RTStore *)self _performBlock:v15 contextType:2 errorHandler:v17];
}

void __80__RTLearnedLocationStore__updateLocationOfInterestWithIdentifier_place_handler___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 mergePolicy];
  [v3 setMergePolicy:*MEMORY[0x277CBE1C8]];
  v5 = +[RTLearnedLocationOfInterestMO fetchRequest];
  [v5 setFetchLimit:1];
  [v5 setReturnsObjectsAsFaults:0];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"identifier", *(a1 + 32)];
  [v5 setPredicate:v6];

  v41 = 0;
  v7 = [v5 execute:&v41];
  v8 = v41;
  v9 = [v7 firstObject];

  if (!v8 && v9)
  {
    v10 = [v9 placeIdentifier];

    if (v10)
    {
      v11 = +[RTLearnedPlaceMO fetchRequestSortedByCreation];
      [v11 setFetchLimit:1];
      [v11 setReturnsObjectsAsFaults:0];
      v12 = MEMORY[0x277CCAC30];
      v13 = [v9 placeIdentifier];
      v14 = [v12 predicateWithFormat:@"%K = %@", @"identifier", v13];
      [v11 setPredicate:v14];

      v40 = 0;
      v15 = [v11 execute:&v40];
      v8 = v40;
      v16 = [v15 firstObject];

      if (v8 || !v16)
      {
        goto LABEL_16;
      }

      v17 = [v9 placeIdentifier];
      v18 = [*(a1 + 40) identifier];
      v19 = [v17 isEqual:v18];

      if ((v19 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v35 = NSStringFromSelector(*(a1 + 56));
          v36 = [*(a1 + 40) identifier];
          v37 = [v9 placeIdentifier];
          v38 = *(a1 + 32);
          *buf = 138413059;
          v43 = v35;
          v44 = 2112;
          v45 = v36;
          v46 = 2112;
          v47 = v37;
          v48 = 2117;
          v49 = v38;
          _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "%@, warning, ignoring change to place identifier, %@, from, %@, for loi, %{sensitive}@", buf, 0x2Au);
        }
      }

      v21 = [*(a1 + 40) mapItem];
      v22 = [v16 mapItem];
      v23 = [RTMapItemMO managedObjectWithMapItem:v21 managedObject:v22 inManagedObjectContext:v3];
      [v16 setMapItem:v23];

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "type")}];
      [v16 setType:v24];
      [v9 setPlaceType:v24];

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "typeSource")}];
      [v16 setTypeSource:v25];
      [v9 setPlaceTypeSource:v25];

      v26 = [*(a1 + 40) customLabel];
      [v16 setCustomLabel:v26];
      [v9 setPlaceCustomLabel:v26];

      v27 = [v16 mapItem];
      [v9 setMapItem:v27];
    }

    else
    {
      v27 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v33 = NSStringFromSelector(*(a1 + 56));
        v34 = *(a1 + 32);
        *buf = 138412546;
        v43 = v33;
        v44 = 2112;
        v45 = v34;
        _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, error, loi with identifier, %@, missing place identifier", buf, 0x16u);
      }

      v16 = 0;
    }

    v8 = 0;
LABEL_16:
  }

  [v3 setMirroringQualityOfService:3];
  if (!v8)
  {
    v39 = 0;
    v28 = [v3 save:&v39];
    v8 = v39;
    if ((v28 & 1) == 0)
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v32 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412546;
        v43 = v32;
        v44 = 2112;
        v45 = v8;
        _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }
    }
  }

  [v3 setMergePolicy:v4];
  v30 = *(a1 + 48);
  if (v30)
  {
    if (v8)
    {
      v31 = 0;
    }

    else
    {
      v31 = [RTLearnedLocationOfInterest createWithManagedObject:v9];
      v30 = *(a1 + 48);
    }

    (*(v30 + 16))(v30, v31, v8);
  }
}

uint64_t __80__RTLearnedLocationStore__updateLocationOfInterestWithIdentifier_place_handler___block_invoke_78(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)updateLocationOfInterestWithIdentifier:(id)identifier place:(id)place handler:(id)handler
{
  identifierCopy = identifier;
  placeCopy = place;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__RTLearnedLocationStore_updateLocationOfInterestWithIdentifier_place_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = placeCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = placeCopy;
  v14 = identifierCopy;
  dispatch_async(queue, v15);
}

- (void)expireLifetimeOfVisitsWithIdentifiers:(id)identifiers expirationDate:(id)date handler:(id)handler
{
  identifiersCopy = identifiers;
  dateCopy = date;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__RTLearnedLocationStore_expireLifetimeOfVisitsWithIdentifiers_expirationDate_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = identifiersCopy;
  v17 = dateCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = dateCopy;
  v14 = identifiersCopy;
  dispatch_async(queue, v15);
}

- (void)_expireLifetimeOfVisitsWithIdentifiers:(id)identifiers expirationDate:(id)date handler:(id)handler
{
  identifiersCopy = identifiers;
  dateCopy = date;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__RTLearnedLocationStore__expireLifetimeOfVisitsWithIdentifiers_expirationDate_handler___block_invoke;
    aBlock[3] = &unk_2788CB5C0;
    aBlock[4] = self;
    v16 = identifiersCopy;
    v19 = a2;
    v12 = handlerCopy;
    v18 = v12;
    v17 = dateCopy;
    v13 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v13 contextType:2 errorHandler:v12];
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __88__RTLearnedLocationStore__expireLifetimeOfVisitsWithIdentifiers_expirationDate_handler___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v24 = 0;
  v6 = [v4 _unionSetOfVisitIdentifiersOverlappingVisitIdentifiers:v5 allowThresholdBypass:1 context:v3 error:&v24];
  v7 = v24;
  if (v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412546;
      v26 = v19;
      v27 = 2112;
      v28 = v7;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@, encountered error fetching visits to expire them, error, %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromSelector(*(a1 + 64));
        v11 = [v6 count];
        v12 = [*(a1 + 48) stringFromDate];
        *buf = 138413058;
        v26 = v10;
        v27 = 2048;
        v28 = v11;
        v29 = 2112;
        v30 = v12;
        v31 = 2112;
        v32 = v6;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, expiring %lu visits with expiration date %@, identifiers, %@", buf, 0x2Au);
      }
    }

    v22 = 0;
    v23 = 0;
    [*(a1 + 32) _updateExpirationDateOfVisitsAndTransitionsWithVisitIdentifiers:v6 expirationDate:*(a1 + 48) context:v3 visitsUpdated:&v23 error:&v22];
    v13 = v22;
    if (v13)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412546;
        v26 = v20;
        v27 = 2112;
        v28 = v13;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, encountered error updating expiration date of visits, error, %@", buf, 0x16u);
      }

      v15 = *(*(a1 + 56) + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v16 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = NSStringFromSelector(*(a1 + 64));
          *buf = 138412546;
          v26 = v17;
          v27 = 2048;
          v28 = v23;
          _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, updated expiration date of %lu visits", buf, 0x16u);
        }
      }

      v18 = [*(a1 + 32) mirroringManager];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __88__RTLearnedLocationStore__expireLifetimeOfVisitsWithIdentifiers_expirationDate_handler___block_invoke_79;
      v21[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
      v21[4] = *(a1 + 64);
      [v18 performExportWithHandler:v21];

      v15 = *(*(a1 + 56) + 16);
    }

    v15();
  }
}

void __88__RTLearnedLocationStore__expireLifetimeOfVisitsWithIdentifiers_expirationDate_handler___block_invoke_79(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 32));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, successfully finished export with error, %@", &v6, 0x16u);
    }
  }
}

- (void)extendExpirationDateOfVisitsWithIdentifiers:(id)identifiers expirationDate:(id)date handler:(id)handler
{
  identifiersCopy = identifiers;
  dateCopy = date;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__RTLearnedLocationStore_extendExpirationDateOfVisitsWithIdentifiers_expirationDate_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = identifiersCopy;
  v17 = dateCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = dateCopy;
  v14 = identifiersCopy;
  dispatch_async(queue, v15);
}

- (void)_extendExpirationDateOfVisitsWithIdentifiers:(id)identifiers expirationDate:(id)date handler:(id)handler
{
  identifiersCopy = identifiers;
  dateCopy = date;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__RTLearnedLocationStore__extendExpirationDateOfVisitsWithIdentifiers_expirationDate_handler___block_invoke;
  aBlock[3] = &unk_2788CB520;
  v20 = handlerCopy;
  v21 = a2;
  v17 = identifiersCopy;
  v18 = dateCopy;
  selfCopy = self;
  v12 = handlerCopy;
  v13 = dateCopy;
  v14 = identifiersCopy;
  v15 = _Block_copy(aBlock);
  [(RTStore *)self _performBlock:v15 contextType:2 errorHandler:v12];
}

void __94__RTLearnedLocationStore__extendExpirationDateOfVisitsWithIdentifiers_expirationDate_handler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 64));
      v6 = [*(a1 + 32) count];
      v7 = [*(a1 + 40) stringFromDate];
      v8 = *(a1 + 32);
      v9 = 138413058;
      v10 = v5;
      v11 = 2048;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, extending %lu visits with expiration date %@, identifiers, %@", &v9, 0x2Au);
    }
  }

  [*(a1 + 48) submitMetricsOnExtendingLifetimeOfObjectsWithIdentifiers:*(a1 + 32) context:v3];
  [*(a1 + 48) _moc_updateExpirationDateOfVisitSubgraphWithVisitIdentifiers:*(a1 + 32) expirationDate:*(a1 + 40) allowThresholdBypass:0 context:v3 handler:*(a1 + 56)];
}

- (void)updateExpirationDateOfVisitsWithIdentifiers:(id)identifiers expirationDate:(id)date handler:(id)handler
{
  identifiersCopy = identifiers;
  dateCopy = date;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__RTLearnedLocationStore_updateExpirationDateOfVisitsWithIdentifiers_expirationDate_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = identifiersCopy;
  v17 = dateCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = dateCopy;
  v14 = identifiersCopy;
  dispatch_async(queue, v15);
}

- (void)updateExpirationDateOfVisitsWithIdentifiers:(id)identifiers expirationDate:(id)date allowThresholdBypass:(BOOL)bypass handler:(id)handler
{
  identifiersCopy = identifiers;
  dateCopy = date;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __114__RTLearnedLocationStore_updateExpirationDateOfVisitsWithIdentifiers_expirationDate_allowThresholdBypass_handler___block_invoke;
  v16[3] = &unk_2788C5530;
  v16[4] = self;
  v17 = identifiersCopy;
  v18 = dateCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = dateCopy;
  v15 = identifiersCopy;
  dispatch_async(queue, v16);
}

- (void)_updateExpirationDateOfVisitSubgraphWithVisitIdentifiers:(id)identifiers expirationDate:(id)date allowThresholdBypass:(BOOL)bypass handler:(id)handler
{
  identifiersCopy = identifiers;
  dateCopy = date;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __127__RTLearnedLocationStore__updateExpirationDateOfVisitSubgraphWithVisitIdentifiers_expirationDate_allowThresholdBypass_handler___block_invoke;
    aBlock[3] = &unk_2788CB5E8;
    aBlock[4] = self;
    v17 = identifiersCopy;
    v18 = dateCopy;
    bypassCopy = bypass;
    v13 = handlerCopy;
    v19 = v13;
    v14 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v14 contextType:2 errorHandler:v13];
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

- (void)_moc_updateExpirationDateOfVisitSubgraphWithVisitIdentifiers:(id)identifiers expirationDate:(id)date allowThresholdBypass:(BOOL)bypass context:(id)context handler:(id)handler
{
  v33[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dateCopy = date;
  contextCopy = context;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

    goto LABEL_12;
  }

  if (![identifiersCopy count])
  {
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_13;
  }

  if (!dateCopy)
  {
    v32 = *MEMORY[0x277CCA450];
    v33[0] = @"expirationDate is a required parameter.";
    v18 = MEMORY[0x277CBEAC0];
    v19 = v33;
    v20 = &v32;
LABEL_11:
    v17 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:1];
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v17];
    (handlerCopy)[2](handlerCopy, v21);

LABEL_12:
    goto LABEL_13;
  }

  if (!contextCopy)
  {
    v30 = *MEMORY[0x277CCA450];
    v31 = @"expirationDate is a required parameter.";
    v18 = MEMORY[0x277CBEAC0];
    v19 = &v31;
    v20 = &v30;
    goto LABEL_11;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __139__RTLearnedLocationStore__moc_updateExpirationDateOfVisitSubgraphWithVisitIdentifiers_expirationDate_allowThresholdBypass_context_handler___block_invoke;
  v22[3] = &unk_2788CB610;
  v22[4] = self;
  v23 = identifiersCopy;
  bypassCopy = bypass;
  v24 = contextCopy;
  v27 = a2;
  v26 = handlerCopy;
  v25 = dateCopy;
  [v24 performBlock:v22];

LABEL_13:
}

void __139__RTLearnedLocationStore__moc_updateExpirationDateOfVisitSubgraphWithVisitIdentifiers_expirationDate_allowThresholdBypass_context_handler___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 80);
  v35 = 0;
  v6 = [v2 _unionSetOfVisitIdentifiersOverlappingVisitIdentifiers:v3 allowThresholdBypass:v5 context:v4 error:&v35];
  v7 = v35;
  if (v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(*(a1 + 72));
      *buf = 138412546;
      v37 = v25;
      v38 = 2112;
      v39 = v7;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@, encountered error fetching visits, error, %@", buf, 0x16u);
    }

    v9 = *(*(a1 + 64) + 16);
    goto LABEL_5;
  }

  if ([v6 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = NSStringFromSelector(*(a1 + 72));
        v12 = [v6 count];
        v13 = [*(a1 + 56) stringFromDate];
        *buf = 138413058;
        v37 = v11;
        v38 = 2048;
        v39 = v12;
        v40 = 2112;
        v41 = v13;
        v42 = 2112;
        v43 = v6;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, updating %lu visits and placesw with expiration date, %@, identifiers, %@", buf, 0x2Au);
      }
    }

    v33 = 0;
    v34 = 0;
    [*(a1 + 32) _updateExpirationDateOfVisitsAndTransitionsWithVisitIdentifiers:v6 expirationDate:*(a1 + 56) context:*(a1 + 48) visitsUpdated:&v34 error:&v33];
    v14 = v33;
    if (v14)
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(*(a1 + 72));
        *buf = 138412546;
        v37 = v29;
        v38 = 2112;
        v39 = v14;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@, encountered error updating expiration date of visits, error, %@", buf, 0x16u);
      }

      v16 = *(*(a1 + 64) + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = NSStringFromSelector(*(a1 + 72));
          *buf = 138412546;
          v37 = v18;
          v38 = 2048;
          v39 = v34;
          _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, updated expiration date of %lu visits and transitions", buf, 0x16u);
        }
      }

      if (v34)
      {
        v19 = *(a1 + 32);
        v21 = *(a1 + 48);
        v20 = *(a1 + 56);
        v32 = 0;
        [v19 _updateExpirationDateOfPlaceSubgraphWithVisitIdentifiers:v6 expirationDate:v20 context:v21 error:&v32];
        v22 = v32;
        if (v22)
        {
          v23 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v30 = NSStringFromSelector(*(a1 + 72));
            *buf = 138412546;
            v37 = v30;
            v38 = 2112;
            v39 = v22;
            _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@, encountered error updating expiration date of place subgraph, error, %@", buf, 0x16u);
          }

          v24 = *(*(a1 + 64) + 16);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v26 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v27 = NSStringFromSelector(*(a1 + 72));
              *buf = 138412290;
              v37 = v27;
              _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, successfully updated expiration date of place subgraph", buf, 0xCu);
            }
          }

          v28 = [*(a1 + 32) mirroringManager];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __139__RTLearnedLocationStore__moc_updateExpirationDateOfVisitSubgraphWithVisitIdentifiers_expirationDate_allowThresholdBypass_context_handler___block_invoke_84;
          v31[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
          v31[4] = *(a1 + 72);
          [v28 performExportWithHandler:v31];

          v24 = *(*(a1 + 64) + 16);
        }

        v24();

        goto LABEL_33;
      }

      v16 = *(*(a1 + 64) + 16);
    }

    v16();
LABEL_33:

    goto LABEL_34;
  }

  v9 = *(*(a1 + 64) + 16);
LABEL_5:
  v9();
LABEL_34:
}

void __139__RTLearnedLocationStore__moc_updateExpirationDateOfVisitSubgraphWithVisitIdentifiers_expirationDate_allowThresholdBypass_context_handler___block_invoke_84(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 32));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, successfully finished export with error, %@", &v6, 0x16u);
    }
  }
}

- (BOOL)_updateExpirationDateOfPlaceSubgraphWithVisitIdentifiers:(id)identifiers expirationDate:(id)date context:(id)context error:(id *)error
{
  identifiersCopy = identifiers;
  dateCopy = date;
  contextCopy = context;
  if (error)
  {
    if ([identifiersCopy count])
    {
      if (dateCopy)
      {
        if (contextCopy)
        {
          *buf = 0;
          v27 = buf;
          v28 = 0x3032000000;
          v29 = __Block_byref_object_copy__82;
          v30 = __Block_byref_object_dispose__82;
          v31 = 0;
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __112__RTLearnedLocationStore__updateExpirationDateOfPlaceSubgraphWithVisitIdentifiers_expirationDate_context_error___block_invoke;
          v20[3] = &unk_2788CB638;
          v21 = identifiersCopy;
          v22 = dateCopy;
          v24 = buf;
          v25 = a2;
          v23 = contextCopy;
          [v23 performBlockAndWait:v20];
          *error = *(v27 + 5);
          v13 = *(v27 + 5) == 0;

          _Block_object_dispose(buf, 8);
          goto LABEL_19;
        }

        v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
        }

        v16 = @"context";
      }

      else
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: expirationDate", buf, 2u);
        }

        v16 = @"expirationDate";
      }
    }

    else
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitIdentifiers.count > 0", buf, 2u);
      }

      v16 = @"visitIdentifiers.count > 0";
    }

    _RTErrorInvalidParameterCreate(v16);
    *error = v13 = 0;
    goto LABEL_19;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v13 = 0;
LABEL_19:

  return v13;
}

void __112__RTLearnedLocationStore__updateExpirationDateOfPlaceSubgraphWithVisitIdentifiers_expirationDate_context_error___block_invoke(uint64_t a1)
{
  v126[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBE380]);
  v3 = +[RTLearnedPlaceMO entity];
  v4 = [v2 initWithEntity:v3];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SUBQUERY(%K, $v, $v.%K IN %@).@count > 0", @"visits", @"identifier", *(a1 + 32)];
  [v4 setPredicate:v5];

  v125 = @"expirationDate";
  v6 = [MEMORY[0x277CCA9C0] expressionForConstantValue:*(a1 + 40)];
  v126[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:&v125 count:1];
  [v4 setPropertiesToUpdate:v7];

  [v4 setResultType:1];
  v8 = *(a1 + 48);
  v111 = 0;
  v9 = [v8 executeRequest:v4 error:&v111];
  v10 = v111;
  if (!v10)
  {
    v14 = [v9 result];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = NSStringFromSelector(*(a1 + 64));
        v17 = [v14 count];
        *buf = 138412546;
        v122 = v16;
        v123 = 2048;
        v124 = v17;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, updated expiration date of %lu places", buf, 0x16u);
      }
    }

    v18 = objc_alloc(MEMORY[0x277CBE380]);
    v19 = +[RTMapItemMO entity];
    v20 = [v18 initWithEntity:v19];

    v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K in (%@)", @"place", v14];
    [v20 setPredicate:v21];

    v119 = @"expirationDate";
    v22 = [MEMORY[0x277CCA9C0] expressionForConstantValue:*(a1 + 40)];
    v120 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
    [v20 setPropertiesToUpdate:v23];

    [v20 setResultType:1];
    v24 = *(a1 + 48);
    v110 = 0;
    v25 = [v24 executeRequest:v20 error:&v110];
    v102 = v110;
    if (v102)
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      v27 = v102;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v84 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412546;
        v122 = v84;
        v123 = 2112;
        v124 = v102;
        _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "%@, encountered error updating expiration date of map items, error, %@", buf, 0x16u);
      }

      v28 = *(*(a1 + 56) + 8);
      v29 = v102;
      v30 = *(v28 + 40);
      *(v28 + 40) = v29;
      goto LABEL_47;
    }

    v101 = [v25 result];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = NSStringFromSelector(*(a1 + 64));
        v33 = [v101 count];
        *buf = 138412546;
        v122 = v32;
        v123 = 2048;
        v124 = v33;
        _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@, updated expiration date of %lu map items", buf, 0x16u);
      }
    }

    v34 = objc_alloc(MEMORY[0x277CBE380]);
    v35 = +[RTAddressMO entity];
    v36 = [v34 initWithEntity:v35];

    v37 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K in (%@)", @"mapItem", v101];
    [v36 setPredicate:v37];

    v117 = @"expirationDate";
    v38 = [MEMORY[0x277CCA9C0] expressionForConstantValue:*(a1 + 40)];
    v118 = v38;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
    [v36 setPropertiesToUpdate:v39];

    [v36 setResultType:2];
    v40 = *(a1 + 48);
    v109 = 0;
    v99 = v36;
    v41 = [v40 executeRequest:v36 error:&v109];
    v100 = v109;
    v98 = v41;
    if (v100)
    {
      v42 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v87 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412546;
        v122 = v87;
        v123 = 2112;
        v124 = v100;
        _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "%@, encountered error updating expiration date of address items, error, %@", buf, 0x16u);
      }

      v43 = *(*(a1 + 56) + 8);
      v44 = v100;
      v45 = v100;
      v46 = *(v43 + 40);
      *(v43 + 40) = v45;
      v27 = 0;
      goto LABEL_46;
    }

    v96 = v25;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v47 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = NSStringFromSelector(*(a1 + 64));
        [v41 result];
        v50 = v49 = v14;
        *buf = 138412546;
        v122 = v48;
        v123 = 2112;
        v124 = v50;
        _os_log_impl(&dword_2304B3000, v47, OS_LOG_TYPE_INFO, "%@, updated expiration date of %@ address items", buf, 0x16u);

        v14 = v49;
      }
    }

    v97 = v20;
    v51 = objc_alloc(MEMORY[0x277CBE428]);
    v52 = +[(NSManagedObject *)RTLearnedPlaceMO];
    v53 = [v51 initWithEntityName:v52];

    v116 = @"device";
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v116 count:1];
    [v53 setPropertiesToFetch:v54];

    v115 = @"device";
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v115 count:1];
    [v53 setPropertiesToGroupBy:v55];

    [v53 setResultType:2];
    v56 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF IN (%@)", v14];
    [v53 setPredicate:v56];

    v57 = *(a1 + 48);
    v108 = 0;
    v95 = v53;
    v58 = [v57 executeFetchRequest:v53 error:&v108];
    v59 = v108;
    v94 = v58;
    if (v59)
    {
      v60 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v88 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412546;
        v122 = v88;
        v123 = 2112;
        v124 = v59;
        _os_log_error_impl(&dword_2304B3000, v60, OS_LOG_TYPE_ERROR, "%@, encountered error fetching devices, error, %@", buf, 0x16u);
      }

      v61 = *(*(a1 + 56) + 8);
      v62 = v59;
      v63 = *(v61 + 40);
      *(v61 + 40) = v62;
      v64 = v59;
      v25 = v96;
      v27 = 0;
      goto LABEL_45;
    }

    v92 = v14;
    v63 = objc_opt_new();
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v66 = v58;
    v67 = [v66 countByEnumeratingWithState:&v104 objects:v114 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v105;
      do
      {
        for (i = 0; i != v68; ++i)
        {
          if (*v105 != v69)
          {
            objc_enumerationMutation(v66);
          }

          v71 = [*(*(&v104 + 1) + 8 * i) objectForKey:@"device"];
          if (v71)
          {
            [v63 addObject:v71];
          }
        }

        v68 = [v66 countByEnumeratingWithState:&v104 objects:v114 count:16];
      }

      while (v68);
    }

    v72 = objc_alloc(MEMORY[0x277CBE380]);
    v73 = +[RTDeviceMO entity];
    v74 = [v72 initWithEntity:v73];

    v75 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF IN (%@)", v63];
    [v74 setPredicate:v75];

    v112 = @"expirationDate";
    v76 = [MEMORY[0x277CCA9C0] expressionForConstantValue:*(a1 + 40)];
    v113 = v76;
    v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
    [v74 setPropertiesToUpdate:v77];

    [v74 setResultType:2];
    v78 = *(a1 + 48);
    v103 = 0;
    v79 = [v78 executeRequest:v74 error:&v103];
    v93 = v103;
    if (v93)
    {
      v90 = v79;
      v91 = v74;
      v80 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      v25 = v96;
      v20 = v97;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        v89 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412546;
        v122 = v89;
        v123 = 2112;
        v124 = v93;
        _os_log_error_impl(&dword_2304B3000, v80, OS_LOG_TYPE_ERROR, "%@, encountered error updating expiration date of devices, error, %@", buf, 0x16u);
      }

      v81 = *(*(a1 + 56) + 8);
      v82 = v93;
      v83 = *(v81 + 40);
      *(v81 + 40) = v82;
      v14 = v92;
    }

    else
    {
      v14 = v92;
      v25 = v96;
      v20 = v97;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_44;
      }

      v91 = v74;
      v83 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (!os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
      {
LABEL_43:

        v74 = v91;
LABEL_44:

        v27 = 0;
        v64 = 0;
LABEL_45:

        v44 = 0;
        v46 = v95;
LABEL_46:

        v30 = v101;
LABEL_47:

        goto LABEL_48;
      }

      NSStringFromSelector(*(a1 + 64));
      v85 = v90 = v79;
      v86 = [v90 result];
      *buf = 138412546;
      v122 = v85;
      v123 = 2112;
      v124 = v86;
      _os_log_impl(&dword_2304B3000, v83, OS_LOG_TYPE_INFO, "%@, updated expiration date of %@ devices", buf, 0x16u);
    }

    v79 = v90;
    goto LABEL_43;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v65 = NSStringFromSelector(*(a1 + 64));
    *buf = 138412546;
    v122 = v65;
    v123 = 2112;
    v124 = v10;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, encountered error updating expiration date of places, error, %@", buf, 0x16u);
  }

  v12 = *(*(a1 + 56) + 8);
  v13 = v10;
  v14 = *(v12 + 40);
  *(v12 + 40) = v13;
LABEL_48:
}

- (BOOL)_updateExpirationDateOfVisitsAndTransitionsWithVisitIdentifiers:(id)identifiers expirationDate:(id)date context:(id)context visitsUpdated:(unint64_t *)updated error:(id *)error
{
  identifiersCopy = identifiers;
  dateCopy = date;
  contextCopy = context;
  if (error)
  {
    if ([identifiersCopy count])
    {
      if (dateCopy)
      {
        if (contextCopy)
        {
          *buf = 0;
          v30 = buf;
          v31 = 0x3032000000;
          v32 = __Block_byref_object_copy__82;
          v33 = __Block_byref_object_dispose__82;
          v34 = 0;
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __133__RTLearnedLocationStore__updateExpirationDateOfVisitsAndTransitionsWithVisitIdentifiers_expirationDate_context_visitsUpdated_error___block_invoke;
          v22[3] = &unk_2788CB660;
          v23 = identifiersCopy;
          v24 = dateCopy;
          v25 = contextCopy;
          v26 = buf;
          v27 = a2;
          updatedCopy = updated;
          [v25 performBlockAndWait:v22];
          *error = *(v30 + 5);
          v15 = *(v30 + 5) == 0;

          _Block_object_dispose(buf, 8);
          goto LABEL_19;
        }

        v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
        }

        v18 = @"context";
      }

      else
      {
        v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: expirationDate", buf, 2u);
        }

        v18 = @"expirationDate";
      }
    }

    else
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitIdentifiers.count > 0", buf, 2u);
      }

      v18 = @"visitIdentifiers.count > 0";
    }

    _RTErrorInvalidParameterCreate(v18);
    *error = v15 = 0;
    goto LABEL_19;
  }

  v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v15 = 0;
LABEL_19:

  return v15;
}

void __133__RTLearnedLocationStore__updateExpirationDateOfVisitsAndTransitionsWithVisitIdentifiers_expirationDate_context_visitsUpdated_error___block_invoke(uint64_t a1)
{
  v62[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBE380]);
  v3 = +[RTLearnedVisitMO entity];
  v4 = [v2 initWithEntity:v3];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN (%@)", @"identifier", *(a1 + 32)];
  [v4 setPredicate:v5];

  v61 = @"expirationDate";
  v6 = [MEMORY[0x277CCA9C0] expressionForConstantValue:*(a1 + 40)];
  v62[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];
  [v4 setPropertiesToUpdate:v7];

  [v4 setResultType:2];
  v8 = *(a1 + 48);
  v53 = 0;
  v9 = [v8 executeRequest:v4 error:&v53];
  v10 = v53;
  if (v10)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v44 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412546;
      v58 = v44;
      v59 = 2112;
      v60 = v10;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, encountered error updating expiration date of visits, error, %@", buf, 0x16u);
    }

    v12 = *(*(a1 + 56) + 8);
    v13 = v10;
    v14 = *(v12 + 40);
    *(v12 + 40) = v13;
    goto LABEL_23;
  }

  if (*(a1 + 72))
  {
    v15 = [v9 result];
    **(a1 + 72) = [v15 unsignedIntegerValue];
  }

  v16 = [v9 result];
  v17 = [v16 unsignedIntegerValue];

  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = NSStringFromSelector(*(a1 + 64));
        v20 = [v9 result];
        *buf = 138412546;
        v58 = v19;
        v59 = 2112;
        v60 = v20;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, updated expiration date of %@ visits", buf, 0x16u);
      }
    }

    v14 = +[RTLearnedTransitionMO fetchRequest];
    v21 = MEMORY[0x277CCA920];
    v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K IN (%@)", @"origin", @"identifier", *(a1 + 32)];
    v56[0] = v22;
    v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K IN (%@)", @"destination", @"identifier", *(a1 + 32)];
    v56[1] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    v25 = [v21 orPredicateWithSubpredicates:v24];
    [v14 setPredicate:v25];

    [v14 setResultType:1];
    v26 = *(a1 + 48);
    v52 = 0;
    v27 = [v26 executeFetchRequest:v14 error:&v52];
    v28 = v52;
    if (v28)
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v47 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412546;
        v58 = v47;
        v59 = 2112;
        v60 = v28;
        _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "%@, encountered error fetching transitions to update expiration date, error, %@", buf, 0x16u);
      }

      v30 = *(*(a1 + 56) + 8);
      v31 = v28;
      v32 = *(v30 + 40);
      *(v30 + 40) = v31;
      goto LABEL_22;
    }

    v33 = objc_alloc(MEMORY[0x277CBE380]);
    v34 = +[RTLearnedTransitionMO entity];
    v32 = [v33 initWithEntity:v34];

    v35 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF IN (%@)", v27];
    [v32 setPredicate:v35];

    v54 = @"expirationDate";
    v36 = [MEMORY[0x277CCA9C0] expressionForConstantValue:*(a1 + 40)];
    v55 = v36;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    [v32 setPropertiesToUpdate:v37];

    [v32 setResultType:2];
    v38 = *(a1 + 48);
    v51 = 0;
    v39 = [v38 executeRequest:v32 error:&v51];
    v40 = v51;
    if (v40)
    {
      v50 = v39;
      v41 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v49 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412546;
        v58 = v49;
        v59 = 2112;
        v60 = v40;
        _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, "%@, encountered error updating expiration date of transitions, error, %@", buf, 0x16u);
      }

      v42 = *(*(a1 + 56) + 8);
      v43 = *(v42 + 40);
      *(v42 + 40) = 0;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      v50 = v39;
      v43 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v48 = NSStringFromSelector(*(a1 + 64));
        v45 = [v50 result];
        *buf = 138412546;
        v58 = v48;
        v59 = 2112;
        v60 = v45;
        v46 = v45;
        _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "%@, updated expiration date of %@ transitions", buf, 0x16u);
      }
    }

    v39 = v50;
LABEL_21:

LABEL_22:
LABEL_23:
  }
}

- (id)_unionSetOfVisitIdentifiersOverlappingVisitIdentifiers:(id)identifiers allowThresholdBypass:(BOOL)bypass context:(id)context error:(id *)error
{
  identifiersCopy = identifiers;
  contextCopy = context;
  if (error)
  {
    if ([identifiersCopy count])
    {
      if (contextCopy)
      {
        *buf = 0;
        v33 = buf;
        v34 = 0x3032000000;
        v35 = __Block_byref_object_copy__82;
        v36 = __Block_byref_object_dispose__82;
        v37 = 0;
        v26 = 0;
        v27 = &v26;
        v28 = 0x3032000000;
        v29 = __Block_byref_object_copy__82;
        v30 = __Block_byref_object_dispose__82;
        v31 = 0;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __116__RTLearnedLocationStore__unionSetOfVisitIdentifiersOverlappingVisitIdentifiers_allowThresholdBypass_context_error___block_invoke;
        v19[3] = &unk_2788CB6C8;
        v20 = identifiersCopy;
        v21 = contextCopy;
        selfCopy = self;
        bypassCopy = bypass;
        v23 = &v26;
        v24 = buf;
        [v21 performBlockAndWait:v19];
        *error = v27[5];
        if (v27[5])
        {
          v12 = 0;
        }

        else
        {
          v12 = *(v33 + 5);
        }

        v14 = v12;

        _Block_object_dispose(&v26, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_18;
      }

      v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
      }

      v16 = @"context";
    }

    else
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitIdentifiers.count > 0", buf, 2u);
      }

      v16 = @"visitIdentifiers.count > 0";
    }

    _RTErrorInvalidParameterCreate(v16);
    *error = v14 = 0;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v14 = 0;
  }

LABEL_18:

  return v14;
}

void __116__RTLearnedLocationStore__unionSetOfVisitIdentifiersOverlappingVisitIdentifiers_allowThresholdBypass_context_error___block_invoke(uint64_t a1)
{
  v73 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = +[RTLearnedLocationOfInterestVisitMO fetchRequest];
  [v3 setFetchBatchSize:300];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN (%@)", @"identifier", *(a1 + 32)];
  [v3 setPredicate:v4];

  v5 = *(a1 + 40);
  v70 = 0;
  v6 = [v5 executeFetchRequest:v3 error:&v70];
  v7 = v70;
  v8 = v7;
  if (v7)
  {
    v9 = *(*(a1 + 56) + 8);
    v10 = v7;
    v11 = 0;
    v12 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else
  {
    v13 = [[_RTMap alloc] initWithInput:v6];
    v12 = [(_RTMap *)v13 withBlock:&__block_literal_global_138];

    v14 = *(a1 + 48);
    +[(NSManagedObject *)RTLearnedVisitMO];
    v16 = v15 = a1;
    v17 = *(v15 + 40);
    v69 = 0;
    v11 = [v14 createFetchRequestForOverlappingVisits:v12 entityName:v16 entryDatePropertyName:@"entryDate" exitDatePropertyName:@"exitDate" context:v17 error:&v69];
    v18 = v69;
    v19 = v69;

    a1 = v15;
    if (v19)
    {
      objc_storeStrong((*(*(v15 + 56) + 8) + 40), v18);
    }
  }

  objc_autoreleasePoolPop(v2);
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v68 = v8;
    v21 = [v11 execute:&v68];
    v20 = v68;

    if (v20)
    {
      v22 = *(*(a1 + 56) + 8);
      v23 = v20;
      v24 = *(v22 + 40);
      *(v22 + 40) = v23;
LABEL_36:

      goto LABEL_37;
    }

    v25 = [[_RTMap alloc] initWithInput:v21];
    v24 = [(_RTMap *)v25 withBlock:&__block_literal_global_148_0];

    v26 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v24, "count")}];
    if (*(a1 + 72))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v27 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "by-passing visit extension expiration threshold.", buf, 2u);
        }
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v28 = v24;
      v29 = [v28 countByEnumeratingWithState:&v59 objects:v71 count:16];
      if (!v29)
      {
        goto LABEL_35;
      }

      v30 = v29;
      v58 = v24;
      v31 = v11;
      v32 = *v60;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v60 != v32)
          {
            objc_enumerationMutation(v28);
          }

          v34 = [*(*(&v59 + 1) + 8 * i) identifier];
          [v26 addObject:v34];
        }

        v30 = [v28 countByEnumeratingWithState:&v59 objects:v71 count:16];
      }

      while (v30);
      v11 = v31;
    }

    else
    {
      v55 = v21;
      v56 = v11;
      v57 = a1;
      v28 = [MEMORY[0x277CBEAA8] date];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v58 = v24;
      v35 = v24;
      v36 = [v35 countByEnumeratingWithState:&v64 objects:v72 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v65;
        do
        {
          for (j = 0; j != v37; ++j)
          {
            if (*v65 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v64 + 1) + 8 * j);
            v41 = [v40 expirationDate];
            v42 = [v41 dateByAddingTimeInterval:-4838400.0];

            v43 = [v40 expirationDate];
            [v28 timeIntervalSinceDate:v43];
            v45 = v44;

            v46 = [v40 expirationDate];
            [v46 timeIntervalSinceDate:v42];
            v48 = v47;

            if (fabs(v45 / v48) < 0.6)
            {
              v49 = [v40 expirationDate];
              v50 = [v28 isBeforeDate:v49];

              if (v50)
              {
                v51 = [v40 identifier];
                [v26 addObject:v51];
              }
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v64 objects:v72 count:16];
        }

        while (v37);
      }

      v11 = v56;
      a1 = v57;
      v21 = v55;
      v20 = 0;
    }

    v24 = v58;
LABEL_35:

    v52 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:v26];
    v53 = *(*(a1 + 64) + 8);
    v54 = *(v53 + 40);
    *(v53 + 40) = v52;

    goto LABEL_36;
  }

  v20 = v8;
LABEL_37:
}

- (void)_updateTransitionWithIdentifier:(id)identifier motionActivityType:(unint64_t)type handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__RTLearnedLocationStore__updateTransitionWithIdentifier_motionActivityType_handler___block_invoke;
  aBlock[3] = &unk_2788C7D30;
  v18 = a2;
  typeCopy = type;
  v15 = identifierCopy;
  selfCopy = self;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = identifierCopy;
  v13 = _Block_copy(aBlock);
  [(RTStore *)self _performBlock:v13 contextType:2 errorHandler:v11];
}

void __85__RTLearnedLocationStore__updateTransitionWithIdentifier_motionActivityType_handler___block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 56));
      v6 = *(a1 + 32);
      v7 = [MEMORY[0x277D011B8] motionActivityTypeToString:*(a1 + 64)];
      *buf = 138412802;
      v48 = v5;
      v49 = 2112;
      v50 = v6;
      v51 = 2112;
      v52 = v7;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, updating transition, %@, motionActivityType, %@", buf, 0x20u);
    }
  }

  v8 = objc_alloc(MEMORY[0x277CBE380]);
  v9 = +[RTLearnedTransitionMO entity];
  v10 = [v8 initWithEntity:v9];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"identifier", *(a1 + 32)];
  [v10 setPredicate:v11];

  v45 = @"predominantMotionActivityType";
  v12 = MEMORY[0x277CCA9C0];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
  v14 = [v12 expressionForConstantValue:v13];
  v46 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  [v10 setPropertiesToUpdate:v15];

  [v10 setResultType:1];
  v42 = 0;
  v16 = [v3 executeRequest:v10 error:&v42];
  v17 = v42;
  v18 = [v16 result];
  v19 = [v18 count];

  if (v17)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v48 = v38;
      v49 = 2112;
      v50 = v17;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@, encountered error updating predominant motion type of cloud transition, error, %@", buf, 0x16u);
    }

LABEL_8:

    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v36 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v48 = v36;
      v49 = 2048;
      v50 = v19;
      _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, updated predominant motion type of %lu cloud transitions", buf, 0x16u);
    }

    goto LABEL_8;
  }

LABEL_9:
  v21 = objc_alloc(MEMORY[0x277CBE380]);
  v22 = +[RTLearnedLocationOfInterestTransitionMO entity];
  v23 = [v21 initWithEntity:v22];

  v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"identifier", *(a1 + 32)];
  [v23 setPredicate:v24];

  v43 = @"predominantMotionActivityType";
  v25 = MEMORY[0x277CCA9C0];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
  v27 = [v25 expressionForConstantValue:v26];
  v44 = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  [v23 setPropertiesToUpdate:v28];

  [v23 setResultType:1];
  v41 = v17;
  v29 = [v3 executeRequest:v23 error:&v41];
  v30 = v41;

  v31 = [v29 result];
  v32 = [v31 count];

  if (v30)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v48 = v39;
      v49 = 2112;
      v50 = v30;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, encountered error updating predominant motion type of local transition, error, %@", buf, 0x16u);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v37 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v48 = v37;
      v49 = 2048;
      v50 = v32;
      _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "%@, updated predominant motion type of %lu local transitions", buf, 0x16u);
    }

    goto LABEL_12;
  }

LABEL_13:
  v34 = [*(a1 + 40) mirroringManager];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __85__RTLearnedLocationStore__updateTransitionWithIdentifier_motionActivityType_handler___block_invoke_157;
  v40[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v40[4] = *(a1 + 56);
  [v34 performExportWithHandler:v40];

  v35 = *(a1 + 48);
  if (v35)
  {
    (*(v35 + 16))(v35, v30);
  }
}

void __85__RTLearnedLocationStore__updateTransitionWithIdentifier_motionActivityType_handler___block_invoke_157(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 32));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, successfully finished export with error, %@", &v6, 0x16u);
    }
  }
}

- (void)updateTransitionWithIdentifier:(id)identifier motionActivityType:(unint64_t)type handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__RTLearnedLocationStore_updateTransitionWithIdentifier_motionActivityType_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = handlerCopy;
  typeCopy = type;
  v11 = handlerCopy;
  v12 = identifierCopy;
  dispatch_async(queue, v13);
}

- (void)_updateVisits:(id)visits finerGranularityInferredMapItems:(id)items place:(id)place handler:(id)handler
{
  v31[1] = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  itemsCopy = items;
  placeCopy = place;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (visitsCopy)
    {
      array = [MEMORY[0x277CBEB18] array];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __87__RTLearnedLocationStore__updateVisits_finerGranularityInferredMapItems_place_handler___block_invoke;
      aBlock[3] = &unk_2788C7F10;
      v24 = visitsCopy;
      v25 = array;
      v26 = itemsCopy;
      v27 = placeCopy;
      v15 = handlerCopy;
      v28 = v15;
      v16 = array;
      v17 = _Block_copy(aBlock);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __87__RTLearnedLocationStore__updateVisits_finerGranularityInferredMapItems_place_handler___block_invoke_164;
      v21[3] = &unk_2788C48C0;
      v22 = v15;
      [(RTStore *)self _performBlock:v17 contextType:2 errorHandler:v21];
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D01448];
      v30 = *MEMORY[0x277CCA450];
      v31[0] = @"visits cannot be nil";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v16 = [v18 errorWithDomain:v19 code:7 userInfo:v20];

      (*(handlerCopy + 2))(handlerCopy, v16);
    }
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __87__RTLearnedLocationStore__updateVisits_finerGranularityInferredMapItems_place_handler___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v27 = a1;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  v24 = v3;
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    v7 = 0x2788C1000uLL;
    do
    {
      v8 = 0;
      v25 = v5;
      do
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        v10 = [*(v7 + 2304) fetchRequest];
        [v10 setFetchLimit:1];
        v11 = MEMORY[0x277CCAC30];
        v12 = [v9 identifier];
        v13 = [v11 predicateWithFormat:@"%K == %@", @"identifier", v12];
        [v10 setPredicate:v13];

        v29 = 0;
        v14 = [v3 executeFetchRequest:v10 error:&v29];
        v15 = v29;
        v16 = [v14 firstObject];

        if (v15)
        {
          [*(v27 + 40) addObject:v15];
        }

        else
        {
          v17 = *(v27 + 48);
          v18 = [v9 identifier];
          v19 = [v17 objectForKey:v18];

          v3 = v24;
          v5 = v25;
          v20 = [*(v7 + 2304) managedObjectWithVisit:v9 finerGranularityInferredMapItem:v19 place:*(v27 + 56) managedObject:v16 inManagedObjectContext:v24];
        }

        ++v8;
        v7 = 0x2788C1000;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v5);
  }

  v28 = 0;
  v21 = [v3 save:&v28];
  v22 = v28;
  if ((v21 & 1) == 0)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v22;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Failed to save update to visits with error, %@", buf, 0xCu);
    }

    [*(v27 + 40) addObject:v22];
  }

  (*(*(v27 + 64) + 16))();
}

- (void)updateVisits:(id)visits finerGranularityInferredMapItems:(id)items place:(id)place handler:(id)handler
{
  visitsCopy = visits;
  itemsCopy = items;
  placeCopy = place;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__RTLearnedLocationStore_updateVisits_finerGranularityInferredMapItems_place_handler___block_invoke;
  block[3] = &unk_2788C5580;
  block[4] = self;
  v20 = visitsCopy;
  v21 = itemsCopy;
  v22 = placeCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = placeCopy;
  v17 = itemsCopy;
  v18 = visitsCopy;
  dispatch_async(queue, block);
}

- (void)fetchCurrentDeviceWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__RTLearnedLocationStore_fetchCurrentDeviceWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchCurrentDeviceWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__RTLearnedLocationStore__fetchCurrentDeviceWithHandler___block_invoke;
    aBlock[3] = &unk_2788C7170;
    v6 = handlerCopy;
    v12 = v6;
    v7 = _Block_copy(aBlock);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__RTLearnedLocationStore__fetchCurrentDeviceWithHandler___block_invoke_2;
    v9[3] = &unk_2788C48C0;
    v10 = v6;
    [(RTStore *)self _performBlock:v7 contextType:1 errorHandler:v9];

    v8 = v12;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __57__RTLearnedLocationStore__fetchCurrentDeviceWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 currentDevice];
  if (v3)
  {
    v4 = [RTDevice createWithManagedObject:v3];
    v5 = v4;
    if (v4)
    {
      v6 = *(a1 + 32);
      v8[0] = v4;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
      (*(v6 + 16))(v6, v7, 0);
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] rt_errorWithCode:7 description:@"Failed to create an RTDevice from RTDeviceMO"];
      (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v7);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] rt_errorWithCode:7 description:@"ManagedObjectContext failed to return current device"];
    (*(*(a1 + 32) + 16))();
  }
}

void __57__RTLearnedLocationStore__fetchCurrentDeviceWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Fetch block failed, error, %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchDevicesNotFromCurrentDeviceWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__RTLearnedLocationStore_fetchDevicesNotFromCurrentDeviceWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchDevicesNotFromCurrentDeviceWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__RTLearnedLocationStore__fetchDevicesNotFromCurrentDeviceWithHandler___block_invoke;
    aBlock[3] = &unk_2788C7170;
    v6 = handlerCopy;
    v12 = v6;
    v7 = _Block_copy(aBlock);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__RTLearnedLocationStore__fetchDevicesNotFromCurrentDeviceWithHandler___block_invoke_175;
    v9[3] = &unk_2788C48C0;
    v10 = v6;
    [(RTStore *)self _performBlock:v7 contextType:1 errorHandler:v9];

    v8 = v12;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __71__RTLearnedLocationStore__fetchDevicesNotFromCurrentDeviceWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTDeviceMO fetchRequest];
  v5 = MEMORY[0x277CCAC30];
  v6 = [v3 currentDevice];
  v7 = [v6 identifier];
  v8 = [v5 predicateWithFormat:@"%K != %@", @"identifier", v7];
  [v4 setPredicate:v8];

  [v4 setReturnsObjectsAsFaults:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v32 = v4;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "TransitMetrics, request, %@", buf, 0xCu);
    }
  }

  v29 = 0;
  v10 = [v3 executeFetchRequest:v4 error:&v29];
  v11 = v29;
  if (v11)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v22 = a1;
    v23 = v4;
    v24 = v3;
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = v10;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          v19 = [RTDevice createWithManagedObject:v18];
          if (v19)
          {
            [v12 addObject:v19];
          }

          else
          {
            v20 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v32 = v18;
              _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "TransitMetrics, invalid deviceMO object, %@", buf, 0xCu);
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v15);
    }

    (*(*(v22 + 32) + 16))();
    v4 = v23;
    v3 = v24;
    v11 = 0;
    v10 = v21;
  }
}

void __71__RTLearnedLocationStore__fetchDevicesNotFromCurrentDeviceWithHandler___block_invoke_175(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "TransitMetrics, fetch block failed, error, %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_fetchFinerGranularityInferredMapItemWithVisitIdentifier:(id)identifier handler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (identifierCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __91__RTLearnedLocationStore__fetchFinerGranularityInferredMapItemWithVisitIdentifier_handler___block_invoke;
      aBlock[3] = &unk_2788C4910;
      v22 = identifierCopy;
      selfCopy = self;
      v25 = a2;
      v9 = handlerCopy;
      v24 = v9;
      v10 = _Block_copy(aBlock);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __91__RTLearnedLocationStore__fetchFinerGranularityInferredMapItemWithVisitIdentifier_handler___block_invoke_179;
      v19[3] = &unk_2788C48C0;
      v20 = v9;
      [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v19];

      v11 = v22;
    }

    else
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(a2);
        *buf = 138412546;
        v29 = v17;
        v30 = 2112;
        v31 = v18;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@, %@, visit identifier cannot be nil", buf, 0x16u);
      }

      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277D01448];
      v26 = *MEMORY[0x277CCA450];
      v27 = @"requires a valid identifier.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v15 = [v13 errorWithDomain:v14 code:0 userInfo:v11];
      (*(handlerCopy + 2))(handlerCopy, 0, v15);
    }
  }
}

void __91__RTLearnedLocationStore__fetchFinerGranularityInferredMapItemWithVisitIdentifier_handler___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedVisitMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:1];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"identifier", *(a1 + 32)];
  [v4 setPredicate:v5];

  v15 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v15];

  v7 = v15;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 56));
      v14 = [v6 count];
      *buf = 138413314;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v4;
      v22 = 2048;
      v23 = v14;
      v24 = 2112;
      v25 = v7;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@, %@, request, %@, results count, %lu, error, %@", buf, 0x34u);
    }
  }

  if (v7 || ![v6 count])
  {
    v9 = 0;
  }

  else
  {
    v10 = [v6 firstObject];
    v9 = [v10 finerGranularityInferredMapItem];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchFinerGranularityInferredMapItemWithVisitIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__RTLearnedLocationStore_fetchFinerGranularityInferredMapItemWithVisitIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)fetchFinerGranularityInferredMapItemForVisit:(id)visit handler:(id)handler
{
  visitCopy = visit;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__RTLearnedLocationStore_fetchFinerGranularityInferredMapItemForVisit_handler___block_invoke;
  v12[3] = &unk_2788C4C20;
  v13 = visitCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v16 = a2;
  v10 = handlerCopy;
  v11 = visitCopy;
  dispatch_async(queue, v12);
}

void __79__RTLearnedLocationStore_fetchFinerGranularityInferredMapItemForVisit_handler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v13 = [v2 identifier];
    [v3 _fetchFinerGranularityInferredMapItemWithVisitIdentifier:? handler:?];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, %@, visit cannot be nil", buf, 0x16u);
    }

    v5 = *(a1 + 48);
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D01448];
    v14 = *MEMORY[0x277CCA450];
    v15 = @"requires a valid visit.";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v9 = [v6 errorWithDomain:v7 code:0 userInfo:v8];
    (*(v5 + 16))(v5, 0, v9);
  }
}

- (void)_fetchPlacesWithPredicate:(id)predicate handler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__RTLearnedLocationStore__fetchPlacesWithPredicate_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v14 = predicateCopy;
    v16 = a2;
    v9 = handlerCopy;
    v15 = v9;
    v10 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__RTLearnedLocationStore__fetchPlacesWithPredicate_handler___block_invoke_184;
    v11[3] = &unk_2788C48C0;
    v12 = v9;
    [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v11];
  }
}

void __60__RTLearnedLocationStore__fetchPlacesWithPredicate_handler___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedPlaceMO fetchRequestSortedByCreation];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setPredicate:*(a1 + 32)];
  v23 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v23];
  v6 = v23;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v15 = NSStringFromSelector(*(a1 + 48));
      v16 = [v5 count];
      *buf = 138413058;
      v26 = v15;
      v27 = 2112;
      v28 = v4;
      v29 = 2048;
      v30 = v16;
      v31 = 2112;
      v32 = v6;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v17 = a1;
    v18 = v3;
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [RTLearnedPlace createWithManagedObject:*(*(&v19 + 1) + 8 * v13)];
          if (v14)
          {
            [v8 addObject:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }

    a1 = v17;
    v3 = v18;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchPlacesWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__RTLearnedLocationStore_fetchPlacesWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)fetchPlacesWithPredicate:(id)predicate handler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTLearnedLocationStore_fetchPlacesWithPredicate_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = predicateCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = predicateCopy;
  dispatch_async(queue, block);
}

- (void)_fetchPlacesWithType:(unint64_t)type predicate:(id)predicate handler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__RTLearnedLocationStore__fetchPlacesWithType_predicate_handler___block_invoke;
    aBlock[3] = &unk_2788CB6F0;
    typeCopy = type;
    v16 = predicateCopy;
    v19 = a2;
    v11 = handlerCopy;
    v17 = v11;
    v12 = _Block_copy(aBlock);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__RTLearnedLocationStore__fetchPlacesWithType_predicate_handler___block_invoke_188;
    v13[3] = &unk_2788C48C0;
    v14 = v11;
    [(RTStore *)self _performBlock:v12 contextType:1 errorHandler:v13];
  }
}

void __65__RTLearnedLocationStore__fetchPlacesWithType_predicate_handler___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedPlaceMO fetchRequestSortedByCreation];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  v6 = MEMORY[0x277CCAC30];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  v8 = [v6 predicateWithFormat:@"%K == %@", @"type", v7];

  if (v8)
  {
    [v5 addObject:v8];
  }

  if (*(a1 + 32))
  {
    [v5 addObject:?];
  }

  v9 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v5];
  [v4 setPredicate:v9];

  v29 = 0;
  v10 = [v3 executeFetchRequest:v4 error:&v29];
  v11 = v29;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v20 = NSStringFromSelector(*(a1 + 56));
      v21 = [v10 count];
      *buf = 138413058;
      v32 = v20;
      v33 = 2112;
      v34 = v4;
      v35 = 2048;
      v36 = v21;
      v37 = 2112;
      v38 = v11;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v24 = v3;
    v23 = a1;
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = v10;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [RTLearnedPlace createWithManagedObject:*(*(&v25 + 1) + 8 * i)];
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v16);
    }

    a1 = v23;
    v3 = v24;
    v10 = v22;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchPlacesWithType:(unint64_t)type handler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RTLearnedLocationStore_fetchPlacesWithType_handler___block_invoke;
  block[3] = &unk_2788C6300;
  v10 = handlerCopy;
  typeCopy = type;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)fetchPlacesWithType:(unint64_t)type predicate:(id)predicate handler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__RTLearnedLocationStore_fetchPlacesWithType_predicate_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = predicateCopy;
  v15 = handlerCopy;
  typeCopy = type;
  v11 = handlerCopy;
  v12 = predicateCopy;
  dispatch_async(queue, v13);
}

- (void)_fetchPlaceOfVisit:(id)visit handler:(id)handler
{
  v22[1] = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (visitCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __53__RTLearnedLocationStore__fetchPlaceOfVisit_handler___block_invoke;
      aBlock[3] = &unk_2788C4FB0;
      v18 = visitCopy;
      v20 = a2;
      v9 = handlerCopy;
      v19 = v9;
      v10 = _Block_copy(aBlock);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __53__RTLearnedLocationStore__fetchPlaceOfVisit_handler___block_invoke_189;
      v15[3] = &unk_2788C48C0;
      v16 = v9;
      [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v15];

      v11 = v18;
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v21 = *MEMORY[0x277CCA450];
      v22[0] = @"requires a valid visit.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v14 = [v12 errorWithDomain:v13 code:0 userInfo:v11];
      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }
}

void __53__RTLearnedLocationStore__fetchPlaceOfVisit_handler___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedVisitMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:1];
  v5 = MEMORY[0x277CCAC30];
  v6 = [*(a1 + 32) identifier];
  v7 = [v5 predicateWithFormat:@"%K == %@", @"identifier", v6];
  [v4 setPredicate:v7];

  v16 = 0;
  v8 = [v3 executeFetchRequest:v4 error:&v16];

  v9 = v16;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = NSStringFromSelector(*(a1 + 48));
      v15 = [v8 count];
      *buf = 138413058;
      v18 = v14;
      v19 = 2112;
      v20 = v4;
      v21 = 2048;
      v22 = v15;
      v23 = 2112;
      v24 = v9;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v9 || ![v8 count])
  {
    v11 = 0;
  }

  else
  {
    v12 = [v8 firstObject];
    v13 = [v12 place];
    v11 = [RTLearnedPlace createWithManagedObject:v13];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchPlaceOfVisit:(id)visit handler:(id)handler
{
  visitCopy = visit;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__RTLearnedLocationStore_fetchPlaceOfVisit_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = visitCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = visitCopy;
  dispatch_async(queue, block);
}

- (void)_fetchStoredMapItemsWithMapItem:(id)item predicate:(id)predicate handler:(id)handler
{
  v26[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  predicateCopy = predicate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (itemCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __76__RTLearnedLocationStore__fetchStoredMapItemsWithMapItem_predicate_handler___block_invoke;
      aBlock[3] = &unk_2788C4910;
      v21 = predicateCopy;
      v22 = itemCopy;
      v24 = a2;
      v12 = handlerCopy;
      v23 = v12;
      v13 = _Block_copy(aBlock);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __76__RTLearnedLocationStore__fetchStoredMapItemsWithMapItem_predicate_handler___block_invoke_215;
      v18[3] = &unk_2788C48C0;
      v19 = v12;
      [(RTStore *)self _performBlock:v13 contextType:1 errorHandler:v18];

      v14 = v21;
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D01448];
      v25 = *MEMORY[0x277CCA450];
      v26[0] = @"requires a valid mapItem.";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v17 = [v15 errorWithDomain:v16 code:7 userInfo:v14];
      (*(handlerCopy + 2))(handlerCopy, 0, v17);
    }
  }
}

void __76__RTLearnedLocationStore__fetchStoredMapItemsWithMapItem_predicate_handler___block_invoke(uint64_t a1, void *a2)
{
  v83[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTMapItemMO fetchRequest];
  [v4 setFetchLimit:5];
  [v4 setPredicate:*(a1 + 32)];
  v61 = v4;
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = v5;
  if (*(a1 + 32))
  {
    [v5 addObject:?];
  }

  v60 = v6;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = MEMORY[0x277CCA920];
  v9 = MEMORY[0x277CCAC30];
  v10 = [*(a1 + 40) identifier];
  v11 = [v9 predicateWithFormat:@"%K = %@", @"identifier", v10];
  v83[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:1];
  v13 = [v8 andPredicateWithSubpredicates:v12];

  v58 = v13;
  [v7 addObject:v13];
  if ([*(a1 + 40) validMUID])
  {
    v14 = MEMORY[0x277CCA920];
    v15 = MEMORY[0x277CCAC30];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "muid")}];
    v17 = [v15 predicateWithFormat:@"%K = %@", @"muid", v16];
    v82[0] = v17;
    v18 = MEMORY[0x277CCAC30];
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "resultProviderID")}];
    v20 = [v18 predicateWithFormat:@"%K = %@", @"resultProviderID", v19];
    v82[1] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
    v22 = [v14 andPredicateWithSubpredicates:v21];

    [v7 addObject:v22];
  }

  memset(&v70[1], 0, 32);
  v23 = [*(a1 + 40) location];
  [v23 latitude];
  v24 = [*(a1 + 40) location];
  [v24 longitude];
  RTCommonCalculateBoundingBox();

  v57 = MEMORY[0x277CCA920];
  v25 = MEMORY[0x277CCAC30];
  v64 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v59 = v7;
  contexta = [v25 predicateWithFormat:@"%@ <= %K", v64, @"longitude"];
  v81[0] = contexta;
  v26 = MEMORY[0x277CCAC30];
  v55 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v27 = [v26 predicateWithFormat:@"%K <= %@", @"longitude", v55];
  v81[1] = v27;
  v28 = MEMORY[0x277CCAC30];
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v30 = [v28 predicateWithFormat:@"%@ <= %K", v29, @"latitude"];
  v81[2] = v30;
  v31 = MEMORY[0x277CCAC30];
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v33 = [v31 predicateWithFormat:@"%K <= %@", @"latitude", v32];
  v81[3] = v33;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:4];
  v35 = [v57 andPredicateWithSubpredicates:v34];

  [v59 addObject:v35];
  v56 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v59];
  [v60 addObject:?];
  v36 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v60];
  v37 = v61;
  [v61 setPredicate:v36];

  v38 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v80 = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
  [v61 setSortDescriptors:v39];

  v40 = [MEMORY[0x277CBEB18] array];
  v41 = 0;
  do
  {
    context = objc_autoreleasePoolPush();
    v70[0] = 0;
    v42 = v3;
    v43 = [v3 executeFetchRequest:v37 error:v70];
    v65 = v70[0];

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v41 = v43;
    v44 = [v41 countByEnumeratingWithState:&v66 objects:v79 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v67;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v67 != v46)
          {
            objc_enumerationMutation(v41);
          }

          v48 = *(*(&v66 + 1) + 8 * i);
          v49 = objc_autoreleasePoolPush();
          v50 = [MEMORY[0x277D011A0] createWithManagedObject:v48];
          v51 = v50;
          if (v50 && [v50 isEqualToMapItem:*(a1 + 40)])
          {
            [v40 addObject:v51];
          }

          objc_autoreleasePoolPop(v49);
        }

        v45 = [v41 countByEnumeratingWithState:&v66 objects:v79 count:16];
      }

      while (v45);
    }

    v37 = v61;
    [v61 setFetchOffset:{objc_msgSend(v61, "fetchOffset") + objc_msgSend(v41, "count")}];
    v3 = v42;
    [v42 reset];
    objc_autoreleasePoolPop(context);
  }

  while ([v41 count] && !v65);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v52 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      v53 = NSStringFromSelector(*(a1 + 56));
      v54 = [v61 fetchOffset];
      *buf = 138413058;
      v72 = v53;
      v73 = 2112;
      v74 = v61;
      v75 = 2048;
      v76 = v54;
      v77 = 2112;
      v78 = v65;
      _os_log_debug_impl(&dword_2304B3000, v52, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchStoredMapItemsWithMapItem:(id)item predicate:(id)predicate handler:(id)handler
{
  itemCopy = item;
  predicateCopy = predicate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__RTLearnedLocationStore_fetchStoredMapItemsWithMapItem_predicate_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = itemCopy;
  v17 = predicateCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = predicateCopy;
  v14 = itemCopy;
  dispatch_async(queue, v15);
}

void __75__RTLearnedLocationStore_fetchStoredMapItemsWithMapItem_predicate_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__RTLearnedLocationStore_fetchStoredMapItemsWithMapItem_predicate_handler___block_invoke_2;
  v4[3] = &unk_2788C6D60;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _fetchStoredMapItemsWithMapItem:v2 predicate:v3 handler:v4];
}

- (void)_fetchPlacesWithMapItem:(id)item predicate:(id)predicate handler:(id)handler
{
  v26[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  predicateCopy = predicate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (itemCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __68__RTLearnedLocationStore__fetchPlacesWithMapItem_predicate_handler___block_invoke;
      aBlock[3] = &unk_2788CB718;
      v21 = itemCopy;
      v24 = a2;
      v12 = handlerCopy;
      v23 = v12;
      v22 = predicateCopy;
      v13 = _Block_copy(aBlock);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __68__RTLearnedLocationStore__fetchPlacesWithMapItem_predicate_handler___block_invoke_220;
      v18[3] = &unk_2788C48C0;
      v19 = v12;
      [(RTStore *)self _performBlock:v13 contextType:1 errorHandler:v18];

      v14 = v21;
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D01448];
      v25 = *MEMORY[0x277CCA450];
      v26[0] = @"requires a valid mapItem.";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v17 = [v15 errorWithDomain:v16 code:7 userInfo:v14];
      (*(handlerCopy + 2))(handlerCopy, 0, v17);
    }
  }
}

void __68__RTLearnedLocationStore__fetchPlacesWithMapItem_predicate_handler___block_invoke(uint64_t a1, void *a2)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [RTMapItemMO fetchManagedObjectsForMapItem:*(a1 + 32) predicate:0 inManagedObjectContext:v3];
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = +[RTLearnedPlaceMO fetchRequestSortedByCreation];
    [v6 setFetchLimit:5];
    [v6 setReturnsObjectsAsFaults:0];
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = v7;
    if (*(a1 + 40))
    {
      [v7 addObject:?];
    }

    v9 = MEMORY[0x277CCAC30];
    v10 = [v5 valueForKey:@"identifier"];
    v11 = [v9 predicateWithFormat:@"%K.%K IN %@", @"mapItem", @"identifier", v10];

    v29 = v11;
    [v8 addObject:v11];
    v12 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v8];
    [v6 setPredicate:v12];

    v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v46[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
    [v6 setSortDescriptors:v14];

    v36 = 0;
    v15 = [v3 executeFetchRequest:v6 error:&v36];
    v16 = v36;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v27 = NSStringFromSelector(*(a1 + 56));
        v28 = [v6 fetchOffset];
        *buf = 138413059;
        v39 = v27;
        v40 = 2117;
        v41 = v6;
        v42 = 2048;
        v43 = v28;
        v44 = 2112;
        v45 = v16;
        _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "%@, request, %{sensitive}@, results count, %lu, error, %@", buf, 0x2Au);
      }
    }

    v30 = v8;
    v31 = v3;
    v18 = [MEMORY[0x277CBEB18] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = v15;
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [RTLearnedPlace createWithManagedObject:*(*(&v32 + 1) + 8 * i)];
          if (v24)
          {
            [v18 addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v21);
    }

    (*(*(a1 + 48) + 16))();
    v3 = v31;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412290;
        v39 = v26;
        _os_log_debug_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEBUG, "%@, no matching MapItemMOs found, returning", buf, 0xCu);
      }
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)fetchPlaceWithMapItem:(id)item predicate:(id)predicate handler:(id)handler
{
  itemCopy = item;
  predicateCopy = predicate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__RTLearnedLocationStore_fetchPlaceWithMapItem_predicate_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = itemCopy;
  v17 = predicateCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = predicateCopy;
  v14 = itemCopy;
  dispatch_async(queue, v15);
}

void __66__RTLearnedLocationStore_fetchPlaceWithMapItem_predicate_handler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__RTLearnedLocationStore_fetchPlaceWithMapItem_predicate_handler___block_invoke_2;
  v4[3] = &unk_2788C6D60;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _fetchPlacesWithMapItem:v2 predicate:v3 handler:v4];
}

void __66__RTLearnedLocationStore_fetchPlaceWithMapItem_predicate_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  (*(v2 + 16))(v2, v3, 0);
}

- (void)fetchPlacesWithMapItem:(id)item handler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RTLearnedLocationStore_fetchPlacesWithMapItem_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = itemCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = itemCopy;
  dispatch_async(queue, block);
}

- (void)fetchPlacesWithMapItem:(id)item predicate:(id)predicate handler:(id)handler
{
  itemCopy = item;
  predicateCopy = predicate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__RTLearnedLocationStore_fetchPlacesWithMapItem_predicate_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = itemCopy;
  v17 = predicateCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = predicateCopy;
  v14 = itemCopy;
  dispatch_async(queue, v15);
}

- (void)_fetchPlacesWithinDistance:(double)distance location:(id)location predicate:(id)predicate handler:(id)handler
{
  v30[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  predicateCopy = predicate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (locationCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __80__RTLearnedLocationStore__fetchPlacesWithinDistance_location_predicate_handler___block_invoke;
      aBlock[3] = &unk_2788CB740;
      v23 = locationCopy;
      distanceCopy = distance;
      v24 = predicateCopy;
      selfCopy = self;
      v28 = a2;
      v14 = handlerCopy;
      v26 = v14;
      v15 = _Block_copy(aBlock);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __80__RTLearnedLocationStore__fetchPlacesWithinDistance_location_predicate_handler___block_invoke_231;
      v20[3] = &unk_2788C48C0;
      v21 = v14;
      [(RTStore *)self _performBlock:v15 contextType:1 errorHandler:v20];

      v16 = v23;
    }

    else
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277D01448];
      v29 = *MEMORY[0x277CCA450];
      v30[0] = @"requires a valid location.";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v19 = [v17 errorWithDomain:v18 code:7 userInfo:v16];
      (*(handlerCopy + 2))(handlerCopy, 0, v19);
    }
  }
}

void __80__RTLearnedLocationStore__fetchPlacesWithinDistance_location_predicate_handler___block_invoke(uint64_t a1, void *a2)
{
  v64[4] = *MEMORY[0x277D85DE8];
  v42 = a2;
  v39 = +[RTLearnedPlaceMO fetchRequestSortedByCreation];
  [v39 setFetchLimit:5];
  v53 = 0.0;
  v54 = 0.0;
  v51 = 0.0;
  v52 = 0.0;
  [*(a1 + 32) latitude];
  [*(a1 + 32) longitude];
  RTCommonCalculateBoundingBox();
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = v3;
  if (*(a1 + 40))
  {
    [v3 addObject:?];
  }

  v38 = v4;
  v5 = MEMORY[0x277CCAC30];
  v43 = [MEMORY[0x277CCABB0] numberWithDouble:v53];
  contexta = [v5 predicateWithFormat:@"%@ <= %K.%K", v43, @"mapItem", @"longitude"];
  v64[0] = contexta;
  v6 = MEMORY[0x277CCAC30];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:v51];
  v8 = [v6 predicateWithFormat:@"%K.%K <= %@", @"mapItem", @"longitude", v7];
  v64[1] = v8;
  v9 = MEMORY[0x277CCAC30];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v54];
  v11 = [v9 predicateWithFormat:@"%@ <= %K.%K", v10, @"mapItem", @"latitude"];
  v64[2] = v11;
  v12 = MEMORY[0x277CCAC30];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v52];
  v14 = [v12 predicateWithFormat:@"%K.%K <= %@", @"mapItem", @"latitude", v13];
  v64[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:4];
  [v38 addObjectsFromArray:v15];

  v16 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v38];
  v17 = v39;
  [v39 setPredicate:v16];

  v44 = [MEMORY[0x277CBEB18] array];
  v18 = 0;
  do
  {
    context = objc_autoreleasePoolPush();
    v50 = 0;
    v19 = [v42 executeFetchRequest:v17 error:&v50];
    v20 = v50;

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v18 = v19;
    v21 = [v18 countByEnumeratingWithState:&v46 objects:v63 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v47;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v47 != v23)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v46 + 1) + 8 * i);
          v26 = MEMORY[0x277D01160];
          v27 = [v25 mapItem];
          v28 = [v26 createWithManagedObject:v27];

          if (v28)
          {
            v29 = [*(a1 + 48) distanceCalculator];
            v30 = *(a1 + 32);
            v45 = v20;
            [v29 distanceFromLocation:v30 toLocation:v28 error:&v45];
            v32 = v31;
            v33 = v45;

            if (v33)
            {

              v20 = v33;
              goto LABEL_20;
            }

            if (v32 <= *(a1 + 64))
            {
              v34 = [RTLearnedPlace createWithManagedObject:v25];
              if (v34)
              {
                [v44 addObject:v34];
              }
            }

            v20 = 0;
          }
        }

        v22 = [v18 countByEnumeratingWithState:&v46 objects:v63 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    v17 = v39;
    [v39 setFetchOffset:{objc_msgSend(v39, "fetchOffset") + objc_msgSend(v18, "count")}];
    [v42 reset];
    objc_autoreleasePoolPop(context);
  }

  while ([v18 count] && !v20);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v36 = NSStringFromSelector(*(a1 + 72));
      v37 = [v39 fetchOffset];
      *buf = 138413059;
      v56 = v36;
      v57 = 2117;
      v58 = v39;
      v59 = 2048;
      v60 = v37;
      v61 = 2112;
      v62 = v20;
      _os_log_debug_impl(&dword_2304B3000, v35, OS_LOG_TYPE_DEBUG, "%@, request, %{sensitive}@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (void)fetchPlacesWithinDistance:(double)distance location:(id)location handler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__RTLearnedLocationStore_fetchPlacesWithinDistance_location_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  distanceCopy = distance;
  v13[4] = self;
  v14 = locationCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = locationCopy;
  dispatch_async(queue, v13);
}

- (void)fetchPlacesWithinDistance:(double)distance location:(id)location predicate:(id)predicate handler:(id)handler
{
  locationCopy = location;
  predicateCopy = predicate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__RTLearnedLocationStore_fetchPlacesWithinDistance_location_predicate_handler___block_invoke;
  block[3] = &unk_2788C5110;
  distanceCopy = distance;
  block[4] = self;
  v18 = locationCopy;
  v19 = predicateCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = predicateCopy;
  v16 = locationCopy;
  dispatch_async(queue, block);
}

- (void)_fetchPlaceWithMapItemIdentifier:(id)identifier handler:(id)handler
{
  v22[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (identifierCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __67__RTLearnedLocationStore__fetchPlaceWithMapItemIdentifier_handler___block_invoke;
      aBlock[3] = &unk_2788C4FB0;
      v18 = identifierCopy;
      v20 = a2;
      v9 = handlerCopy;
      v19 = v9;
      v10 = _Block_copy(aBlock);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __67__RTLearnedLocationStore__fetchPlaceWithMapItemIdentifier_handler___block_invoke_238;
      v15[3] = &unk_2788C48C0;
      v16 = v9;
      [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v15];

      v11 = v18;
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v21 = *MEMORY[0x277CCA450];
      v22[0] = @"requires a valid mapItem identifier.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v14 = [v12 errorWithDomain:v13 code:7 userInfo:v11];
      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }
}

void __67__RTLearnedLocationStore__fetchPlaceWithMapItemIdentifier_handler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedPlaceMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:1];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K == %@", @"mapItem", @"identifier", *(a1 + 32)];
  [v4 setPredicate:v5];

  v13 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v13];

  v7 = v13;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = NSStringFromSelector(*(a1 + 48));
      v12 = [v6 count];
      *buf = 138413058;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      v18 = 2048;
      v19 = v12;
      v20 = 2112;
      v21 = v7;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v7 || ![v6 count])
  {
    v9 = 0;
  }

  else
  {
    v10 = [v6 firstObject];
    v9 = [RTLearnedPlace createWithManagedObject:v10];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchPlaceWithMapItemIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RTLearnedLocationStore_fetchPlaceWithMapItemIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)_fetchVisitWithIdentifier:(id)identifier handler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (identifierCopy)
  {
    if (handlerCopy)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __60__RTLearnedLocationStore__fetchVisitWithIdentifier_handler___block_invoke;
      v17[3] = &unk_2788C4FB0;
      v18 = identifierCopy;
      v20 = a2;
      v19 = v9;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __60__RTLearnedLocationStore__fetchVisitWithIdentifier_handler___block_invoke_242;
      v15[3] = &unk_2788C48C0;
      v16 = v19;
      [(RTStore *)self _performBlock:v17 contextType:1 errorHandler:v15];

      v10 = v18;
      goto LABEL_10;
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[RTLearnedLocationStore _fetchVisitWithIdentifier:handler:]";
      v25 = 1024;
      v26 = 2307;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }

    if (v9)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v21 = *MEMORY[0x277CCA450];
      v22 = @"identifier is required";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v14 = [v12 errorWithDomain:v13 code:7 userInfo:v10];
      (v9)[2](v9, 0, v14);

      goto LABEL_10;
    }
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v24 = "[RTLearnedLocationStore _fetchVisitWithIdentifier:handler:]";
    v25 = 1024;
    v26 = 2308;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

LABEL_10:
}

void __60__RTLearnedLocationStore__fetchVisitWithIdentifier_handler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = +[RTLearnedVisitMO fetchRequest];
  [v2 setReturnsObjectsAsFaults:0];
  [v2 setFetchLimit:1];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"identifier", *(a1 + 32)];
  [v2 setPredicate:v3];

  v10 = 0;
  v4 = [v2 execute:&v10];
  v5 = v10;
  v6 = [v4 firstObject];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = NSStringFromSelector(*(a1 + 48));
      *buf = 138413058;
      v12 = v9;
      v13 = 2112;
      v14 = v2;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v5;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, request, %@, result, %@, error, %@", buf, 0x2Au);
    }
  }

  v8 = 0;
  if (!v5 && v6)
  {
    v8 = [RTLearnedVisit createWithManagedObject:v6];
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)placeTypeForMapItem:(id)item placeType:(unint64_t *)type placeTypeSource:(unint64_t *)source error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (!itemCopy)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v29 = "Invalid parameter not satisfying: mapItem";
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, v29, buf, 2u);
    goto LABEL_16;
  }

  if (!type)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v29 = "Invalid parameter not satisfying: placeType";
    goto LABEL_15;
  }

  if (!source)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v29 = "Invalid parameter not satisfying: placeTypeSource";
      goto LABEL_15;
    }

LABEL_16:
    v30 = 0;
    goto LABEL_26;
  }

  *type = 0;
  *source = 0;
  v11 = dispatch_semaphore_create(0);
  *buf = 0;
  v48 = buf;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__82;
  v51 = __Block_byref_object_dispose__82;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__82;
  v45 = __Block_byref_object_dispose__82;
  v46 = 0;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __78__RTLearnedLocationStore_placeTypeForMapItem_placeType_placeTypeSource_error___block_invoke;
  v37[3] = &unk_2788C4B58;
  v39 = buf;
  v40 = &v41;
  v12 = v11;
  v38 = v12;
  [(RTLearnedLocationStore *)self fetchLocationOfInterestWithMapItem:itemCopy handler:v37];
  v13 = v12;
  v36 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v13, v14))
  {
    v25 = 0;
LABEL_18:
    v27 = 1;
    goto LABEL_19;
  }

  v35 = [MEMORY[0x277CBEAA8] now];
  [v35 timeIntervalSinceDate:v36];
  v16 = v15;
  v17 = objc_opt_new();
  v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_932];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  v20 = [callStackSymbols filteredArrayUsingPredicate:v18];
  firstObject = [v20 firstObject];

  [v17 submitToCoreAnalytics:firstObject type:1 duration:v16];
  v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    *v54 = 0;
    _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v54, 2u);
  }

  v23 = MEMORY[0x277CCA9B8];
  v53 = *MEMORY[0x277CCA450];
  *v54 = @"semaphore wait timeout";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
  v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = v25;

  v27 = 0;
LABEL_19:

  v28 = v25;
  if ((v27 & 1) == 0)
  {
    objc_storeStrong(v48 + 5, v25);
  }

  v31 = v42[5];
  if (v31)
  {
    place = [v31 place];
    *type = [place type];

    place2 = [v42[5] place];
    *source = [place2 typeSource];
  }

  if (error)
  {
    *error = *(v48 + 5);
  }

  v30 = *(v48 + 5) == 0;

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(buf, 8);

LABEL_26:
  return v30;
}

void __78__RTLearnedLocationStore_placeTypeForMapItem_placeType_placeTypeSource_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)fetchPlacesWithIdentifiers:(id)identifiers handler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTLearnedLocationStore_fetchPlacesWithIdentifiers_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = identifiersCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifiersCopy;
  dispatch_async(queue, block);
}

- (void)_fetchPlacesWithIdentifiers:(id)identifiers handler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__RTLearnedLocationStore__fetchPlacesWithIdentifiers_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v14 = identifiersCopy;
    v16 = a2;
    v9 = handlerCopy;
    v15 = v9;
    v10 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__RTLearnedLocationStore__fetchPlacesWithIdentifiers_handler___block_invoke_247;
    v11[3] = &unk_2788C48C0;
    v12 = v9;
    [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v11];
  }
}

void __62__RTLearnedLocationStore__fetchPlacesWithIdentifiers_handler___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedPlaceMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN (%@)", @"identifier", *(a1 + 32)];
  [v4 setPredicate:v5];

  v25 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v25];
  v7 = v25;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v16 = NSStringFromSelector(*(a1 + 48));
      v17 = [v6 count];
      *buf = 138413058;
      v28 = v16;
      v29 = 2112;
      v30 = v4;
      v31 = 2048;
      v32 = v17;
      v33 = 2112;
      v34 = v7;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v19 = v3;
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [RTLearnedPlace createWithManagedObject:*(*(&v21 + 1) + 8 * v14)];
          if (v15)
          {
            [v9 addObject:v15];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    v6 = v18;
    v3 = v19;
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__RTLearnedLocationStore__fetchPlacesWithIdentifiers_handler___block_invoke_244;
  v20[3] = &__block_descriptor_40_e31_v32__0__RTLearnedPlace_8Q16_B24l;
  v20[4] = *(a1 + 48);
  [v9 enumerateObjectsUsingBlock:v20];
  (*(*(a1 + 40) + 16))();
}

void __62__RTLearnedLocationStore__fetchPlacesWithIdentifiers_handler___block_invoke_244(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(*(a1 + 32));
      v8 = 138412803;
      v9 = v7;
      v10 = 2048;
      v11 = a3;
      v12 = 2117;
      v13 = v5;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@, idx, %lu, place, %{sensitive}@", &v8, 0x20u);
    }
  }
}

- (void)fetchLocationsOfInterestWithIdentifiers:(id)identifiers handler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__RTLearnedLocationStore_fetchLocationsOfInterestWithIdentifiers_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = identifiersCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifiersCopy;
  dispatch_async(queue, block);
}

- (void)_fetchLocationsOfInterestWithIdentifiers:(id)identifiers handler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  if (!identifiersCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTLearnedLocationStore _fetchLocationsOfInterestWithIdentifiers:handler:]";
      v21 = 1024;
      v22 = 2464;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifiers (in %s:%d)", buf, 0x12u);
    }
  }

  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__RTLearnedLocationStore__fetchLocationsOfInterestWithIdentifiers_handler___block_invoke;
    aBlock[3] = &unk_2788C4910;
    v18 = a2;
    v15 = identifiersCopy;
    selfCopy = self;
    v10 = handlerCopy;
    v17 = v10;
    v11 = _Block_copy(aBlock);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__RTLearnedLocationStore__fetchLocationsOfInterestWithIdentifiers_handler___block_invoke_248;
    v12[3] = &unk_2788C48C0;
    v13 = v10;
    [(RTStore *)self _performBlock:v11 contextType:1 errorHandler:v12];
  }
}

void __75__RTLearnedLocationStore__fetchLocationsOfInterestWithIdentifiers_handler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedLocationOfInterestMO fetchRequestSortedByCreation];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN (%@)", @"identifier", *(a1 + 32)];
  [v4 setPredicate:v5];

  v12 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v12];
  v7 = v12;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = NSStringFromSelector(*(a1 + 56));
      v11 = [v6 count];
      *buf = 138413058;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      v17 = 2048;
      v18 = v11;
      v19 = 2112;
      v20 = v7;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) _learnedLocationsOfInterestFromLearnedLocationsOfInterestMO:v6 context:v3 includeVisits:0 includeTransitions:0];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchVisitWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTLearnedLocationStore_fetchVisitWithIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)_fetchVisitsPredating:(id)predating handler:(id)handler
{
  v14[1] = *MEMORY[0x277D85DE8];
  predatingCopy = predating;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (predatingCopy)
    {
      predatingCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K < %@", @"exitDate", predatingCopy];
      [(RTLearnedLocationStore *)self _fetchVisitsWithPredicate:predatingCopy ascending:1 limit:0 handler:handlerCopy];
    }

    else
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277D01448];
      v13 = *MEMORY[0x277CCA450];
      v14[0] = @"requires a valid date.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v12 = [v9 errorWithDomain:v10 code:0 userInfo:v11];
      handlerCopy[2](handlerCopy, 0, v12);
    }
  }
}

- (void)fetchVisitsPredating:(id)predating handler:(id)handler
{
  predatingCopy = predating;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__RTLearnedLocationStore_fetchVisitsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = predatingCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = predatingCopy;
  dispatch_async(queue, block);
}

- (void)_fetchVisitsWithPredicate:(id)predicate ascending:(BOOL)ascending limit:(id)limit handler:(id)handler
{
  predicateCopy = predicate;
  limitCopy = limit;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__RTLearnedLocationStore__fetchVisitsWithPredicate_ascending_limit_handler___block_invoke;
    aBlock[3] = &unk_2788CB788;
    v19 = predicateCopy;
    ascendingCopy = ascending;
    v20 = limitCopy;
    v22 = a2;
    v14 = handlerCopy;
    v21 = v14;
    v15 = _Block_copy(aBlock);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __76__RTLearnedLocationStore__fetchVisitsWithPredicate_ascending_limit_handler___block_invoke_255;
    v16[3] = &unk_2788C48C0;
    v17 = v14;
    [(RTStore *)self _performBlock:v15 contextType:1 errorHandler:v16];
  }
}

void __76__RTLearnedLocationStore__fetchVisitsWithPredicate_ascending_limit_handler___block_invoke(uint64_t a1, void *a2)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedVisitMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setPredicate:*(a1 + 32)];
  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entryDate" ascending:*(a1 + 64)];
  v36[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  [v4 setSortDescriptors:v6];

  v7 = *(a1 + 40);
  if (v7)
  {
    [v4 setFetchLimit:{objc_msgSend(v7, "unsignedIntegerValue")}];
  }

  v26 = 0;
  v8 = [v3 executeFetchRequest:v4 error:&v26];
  v9 = v26;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v18 = NSStringFromSelector(*(a1 + 56));
      v19 = [v8 count];
      *buf = 138413059;
      v29 = v18;
      v30 = 2117;
      v31 = v4;
      v32 = 2048;
      v33 = v19;
      v34 = 2112;
      v35 = v9;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@, request, %{sensitive}@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v21 = v3;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [RTLearnedVisit createWithManagedObject:*(*(&v22 + 1) + 8 * v16), v20];
          if (v17)
          {
            [v11 addObject:v17];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v14);
    }

    v8 = v20;
    v3 = v21;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchVisitsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__RTLearnedLocationStore_fetchVisitsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)fetchVisitsWithDevice:(id)device dateInterval:(id)interval handler:(id)handler
{
  v28[2] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  intervalCopy = interval;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (!deviceCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: device";
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_16;
  }

  if (!intervalCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: dateInterval";
    goto LABEL_15;
  }

  if (!handlerCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: handler";
    goto LABEL_15;
  }

  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  v14 = [(RTLearnedLocationStore *)self predicateForVisitsFromEntryDate:startDate exitDate:endDate];

  v15 = MEMORY[0x277CCAC30];
  identifier = [deviceCopy identifier];
  v17 = [v15 predicateWithFormat:@"%K.%K == %@", @"device", @"identifier", identifier];

  v18 = objc_alloc(MEMORY[0x277CCA920]);
  v28[0] = v14;
  v28[1] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v20 = [v18 initWithType:1 subpredicates:v19];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      identifier2 = [deviceCopy identifier];
      *buf = 138412546;
      v25 = v20;
      v26 = 2112;
      v27 = identifier2;
      _os_log_debug_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEBUG, "TransitMetrics, visit predicate, %@, device, %@", buf, 0x16u);
    }
  }

  [(RTLearnedLocationStore *)self fetchVisitsWithPredicate:v20 handler:v11];

LABEL_16:
}

- (void)fetchVisitsWithPredicate:(id)predicate handler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTLearnedLocationStore_fetchVisitsWithPredicate_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = predicateCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = predicateCopy;
  dispatch_async(queue, block);
}

- (void)fetchVisitsWithPredicate:(id)predicate ascending:(BOOL)ascending dateInterval:(id)interval limit:(id)limit handler:(id)handler
{
  predicateCopy = predicate;
  intervalCopy = interval;
  limitCopy = limit;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __88__RTLearnedLocationStore_fetchVisitsWithPredicate_ascending_dateInterval_limit_handler___block_invoke;
  v21[3] = &unk_2788CB7B0;
  v22 = predicateCopy;
  v23 = intervalCopy;
  ascendingCopy = ascending;
  selfCopy = self;
  v25 = limitCopy;
  v26 = handlerCopy;
  v17 = handlerCopy;
  v18 = limitCopy;
  v19 = intervalCopy;
  v20 = predicateCopy;
  dispatch_async(queue, v21);
}

void __88__RTLearnedLocationStore_fetchVisitsWithPredicate_ascending_dateInterval_limit_handler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = v2;
  v10 = v2;
  if (*(a1 + 32))
  {
    [v2 addObject:?];
    v3 = v10;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = MEMORY[0x277CCAC30];
    v6 = [v4 startDate];
    v7 = [*(a1 + 40) endDate];
    v8 = [v5 predicateWithFormat:@"%K >= %@ && %K <= %@", @"entryDate", v6, @"exitDate", v7];

    if (v8)
    {
      [v10 addObject:v8];
    }

    v3 = v10;
  }

  if ([v3 count])
  {
    v9 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v10];
  }

  else
  {
    v9 = 0;
  }

  [*(a1 + 48) _fetchVisitsWithPredicate:v9 ascending:*(a1 + 72) limit:*(a1 + 56) handler:*(a1 + 64)];
}

- (void)_fetchVisitsToPlace:(id)place handler:(id)handler
{
  v22[1] = *MEMORY[0x277D85DE8];
  placeCopy = place;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (placeCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __54__RTLearnedLocationStore__fetchVisitsToPlace_handler___block_invoke;
      aBlock[3] = &unk_2788C4FB0;
      v18 = placeCopy;
      v20 = a2;
      v9 = handlerCopy;
      v19 = v9;
      v10 = _Block_copy(aBlock);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __54__RTLearnedLocationStore__fetchVisitsToPlace_handler___block_invoke_262;
      v15[3] = &unk_2788C48C0;
      v16 = v9;
      [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v15];

      v11 = v18;
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v21 = *MEMORY[0x277CCA450];
      v22[0] = @"requires a valid place.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v14 = [v12 errorWithDomain:v13 code:0 userInfo:v11];
      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }
}

void __54__RTLearnedLocationStore__fetchVisitsToPlace_handler___block_invoke(uint64_t a1, void *a2)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedVisitMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = MEMORY[0x277CCAC30];
  v6 = [*(a1 + 32) identifier];
  v7 = [v5 predicateWithFormat:@"%K.%K == %@", @"place", @"identifier", v6];
  [v4 setPredicate:v7];

  v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entryDate" ascending:1];
  v38[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  [v4 setSortDescriptors:v9];

  v28 = 0;
  v10 = [v3 executeFetchRequest:v4 error:&v28];
  v11 = v28;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v20 = NSStringFromSelector(*(a1 + 48));
      v21 = [v10 count];
      *buf = 138413058;
      v31 = v20;
      v32 = 2112;
      v33 = v4;
      v34 = 2048;
      v35 = v21;
      v36 = 2112;
      v37 = v11;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v22 = a1;
    v23 = v3;
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        v18 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [RTLearnedVisit createWithManagedObject:*(*(&v24 + 1) + 8 * v18)];
          if (v19)
          {
            [v13 addObject:v19];
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v16);
    }

    a1 = v22;
    v3 = v23;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchVisitsToPlace:(id)place handler:(id)handler
{
  placeCopy = place;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RTLearnedLocationStore_fetchVisitsToPlace_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = placeCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = placeCopy;
  dispatch_async(queue, block);
}

- (void)_fetchVisitsOverlappingDate:(id)date handler:(id)handler
{
  v15[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (dateCopy)
    {
      v8 = objc_alloc(MEMORY[0x277CCA970]);
      v13 = 0;
      v9 = [v8 rt_initWithStartDate:dateCopy endDate:dateCopy error:&v13];
      v10 = v13;

      if (v10)
      {
        handlerCopy[2](handlerCopy, 0, v10);
      }

      else
      {
        [(RTLearnedLocationStore *)self _fetchVisitsOverlappingDateInterval:v9 handler:handlerCopy];
      }
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v14 = *MEMORY[0x277CCA450];
      v15[0] = @"requires a valid date.";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v9 = [v11 errorWithDomain:v12 code:7 userInfo:v10];
      handlerCopy[2](handlerCopy, 0, v9);
    }
  }
}

- (void)fetchVisitsOverlappingDate:(id)date handler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTLearnedLocationStore_fetchVisitsOverlappingDate_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dateCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dateCopy;
  dispatch_async(queue, block);
}

- (void)_fetchVisitsOverlappingDateInterval:(id)interval handler:(id)handler
{
  v22[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (intervalCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __70__RTLearnedLocationStore__fetchVisitsOverlappingDateInterval_handler___block_invoke;
      aBlock[3] = &unk_2788C4FB0;
      v18 = intervalCopy;
      v20 = a2;
      v9 = handlerCopy;
      v19 = v9;
      v10 = _Block_copy(aBlock);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __70__RTLearnedLocationStore__fetchVisitsOverlappingDateInterval_handler___block_invoke_273;
      v15[3] = &unk_2788C48C0;
      v16 = v9;
      [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v15];

      v11 = v18;
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v21 = *MEMORY[0x277CCA450];
      v22[0] = @"requires a valid date interval.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v14 = [v12 errorWithDomain:v13 code:7 userInfo:v11];
      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }
}

void __70__RTLearnedLocationStore__fetchVisitsOverlappingDateInterval_handler___block_invoke(uint64_t a1, void *a2)
{
  v58[3] = *MEMORY[0x277D85DE8];
  v42 = a2;
  v3 = +[RTLearnedVisitMO fetchRequest];
  [v3 setReturnsObjectsAsFaults:0];
  v4 = MEMORY[0x277CCAC30];
  v5 = [*(a1 + 32) startDate];
  v6 = [*(a1 + 32) endDate];
  v7 = [v4 predicateWithFormat:@"%@ <= %K && %K <= %@", v5, @"entryDate", @"entryDate", v6];

  v8 = MEMORY[0x277CCAC30];
  v9 = [*(a1 + 32) startDate];
  v10 = [*(a1 + 32) endDate];
  v11 = [v8 predicateWithFormat:@"%@ <= %K && %K <= %@", v9, @"exitDate", @"exitDate", v10];

  v12 = MEMORY[0x277CCAC30];
  v13 = [*(a1 + 32) startDate];
  v14 = [*(a1 + 32) startDate];
  v15 = [*(a1 + 32) endDate];
  v16 = [*(a1 + 32) endDate];
  v17 = [v12 predicateWithFormat:@"(%K <= %@ && %@ <= %K) && (%K <= %@ && %@ <= %K)", @"entryDate", v13, v14, @"exitDate", @"entryDate", v15, v16, @"exitDate"];

  v18 = v3;
  v19 = v17;

  v20 = MEMORY[0x277CCA920];
  v58[0] = v7;
  v58[1] = v11;
  v58[2] = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:3];
  v22 = [v20 orPredicateWithSubpredicates:v21];

  v41 = v22;
  [v18 setPredicate:v22];
  v23 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entryDate" ascending:1];
  v57 = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
  [v18 setSortDescriptors:v24];

  v25 = v42;
  v47 = 0;
  v26 = [v42 executeFetchRequest:v18 error:&v47];
  v27 = v47;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v36 = NSStringFromSelector(*(a1 + 48));
      v37 = [v26 count];
      *buf = 138413058;
      v50 = v36;
      v51 = 2112;
      v52 = v18;
      v53 = 2048;
      v54 = v37;
      v55 = 2112;
      v56 = v27;
      _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);

      v25 = v42;
    }
  }

  if (v27)
  {
    v29 = 0;
  }

  else
  {
    v39 = v19;
    v40 = v11;
    v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v26, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v38 = v26;
    v30 = v26;
    v31 = [v30 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v44;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v44 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [RTLearnedVisit createWithManagedObject:*(*(&v43 + 1) + 8 * i)];
          if (v35)
          {
            [v29 addObject:v35];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v32);
    }

    v25 = v42;
    v11 = v40;
    v26 = v38;
    v19 = v39;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchVisitsOverlappingDateInterval:(id)interval handler:(id)handler
{
  intervalCopy = interval;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RTLearnedLocationStore_fetchVisitsOverlappingDateInterval_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = intervalCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = intervalCopy;
  dispatch_async(queue, block);
}

- (void)_fetchLastVisitWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__RTLearnedLocationStore__fetchLastVisitWithHandler___block_invoke;
    aBlock[3] = &unk_2788CB7D8;
    v13 = a2;
    v7 = handlerCopy;
    v12 = v7;
    v8 = _Block_copy(aBlock);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__RTLearnedLocationStore__fetchLastVisitWithHandler___block_invoke_274;
    v9[3] = &unk_2788C48C0;
    v10 = v7;
    [(RTStore *)self _performBlock:v8 contextType:1 errorHandler:v9];
  }
}

void __53__RTLearnedLocationStore__fetchLastVisitWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedVisitMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = MEMORY[0x277CCAC30];
  v6 = [v3 currentDevice];
  v7 = [v6 identifier];
  v8 = [v5 predicateWithFormat:@"%K.%K == %@", @"device", @"identifier", v7];
  [v4 setPredicate:v8];

  v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entryDate" ascending:0];
  v27[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [v4 setSortDescriptors:v10];

  [v4 setFetchLimit:1];
  v18 = 0;
  v11 = [v3 executeFetchRequest:v4 error:&v18];

  v12 = v18;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = NSStringFromSelector(*(a1 + 40));
      v17 = [v11 count];
      *buf = 138413058;
      v20 = v16;
      v21 = 2112;
      v22 = v4;
      v23 = 2048;
      v24 = v17;
      v25 = 2112;
      v26 = v12;
      _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  v14 = 0;
  if ([v11 count] && !v12)
  {
    v15 = [v11 firstObject];
    v14 = [RTLearnedVisit createWithManagedObject:v15];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchLastVisitWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__RTLearnedLocationStore_fetchLastVisitWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchLastVisitToPlaceWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__RTLearnedLocationStore__fetchLastVisitToPlaceWithIdentifier_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v14 = identifierCopy;
    v16 = a2;
    v9 = handlerCopy;
    v15 = v9;
    v10 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__RTLearnedLocationStore__fetchLastVisitToPlaceWithIdentifier_handler___block_invoke_278;
    v11[3] = &unk_2788C48C0;
    v12 = v9;
    [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v11];
  }
}

void __71__RTLearnedLocationStore__fetchLastVisitToPlaceWithIdentifier_handler___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = +[RTLearnedVisitMO fetchRequest];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"place.identifier", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"entryDate" ascending:0];
  v19[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [v2 setSortDescriptors:v5];

  [v2 setFetchLimit:1];
  [v2 setReturnsObjectsAsFaults:0];
  v12 = 0;
  v6 = [v2 execute:&v12];
  v7 = v12;
  v8 = [v6 firstObject];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v2;
      v17 = 2112;
      v18 = v7;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, request, %@, error, %@", buf, 0x20u);
    }
  }

  v10 = 0;
  if (v8 && !v7)
  {
    v10 = [RTLearnedVisit createWithManagedObject:v8];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchLastVisitToPlaceWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTLearnedLocationStore_fetchLastVisitToPlaceWithIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)_fetchCountOfVisitsToPlaceWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__RTLearnedLocationStore__fetchCountOfVisitsToPlaceWithIdentifier_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v14 = identifierCopy;
    v16 = a2;
    v9 = handlerCopy;
    v15 = v9;
    v10 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __75__RTLearnedLocationStore__fetchCountOfVisitsToPlaceWithIdentifier_handler___block_invoke_279;
    v11[3] = &unk_2788C48C0;
    v12 = v9;
    [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v11];
  }
}

void __75__RTLearnedLocationStore__fetchCountOfVisitsToPlaceWithIdentifier_handler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedVisitMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"place.identifier", *(a1 + 32)];
  [v4 setPredicate:v5];

  v9 = 0;
  [v3 countForFetchRequest:v4 error:&v9];

  v6 = v9;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412802;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      v14 = 2112;
      v15 = v6;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, request, %@, error, %@", buf, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchCountOfVisitsToPlaceWithIdentifier:(id)identifier endDate:(id)date handler:(id)handler
{
  identifierCopy = identifier;
  dateCopy = date;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__RTLearnedLocationStore_fetchCountOfVisitsToPlaceWithIdentifier_endDate_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v16 = dateCopy;
  selfCopy = self;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = dateCopy;
  dispatch_async(queue, v15);
}

uint64_t __82__RTLearnedLocationStore_fetchCountOfVisitsToPlaceWithIdentifier_endDate_handler___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  if (v3)
  {
    return [v2 _fetchCountOfVisitsToPlaceWithIdentifier:v4 endDate:v3 handler:a1[7]];
  }

  else
  {
    return [v2 _fetchCountOfVisitsToPlaceWithIdentifier:v4 handler:a1[7]];
  }
}

- (void)fetchCountOfVisitsToLocationOfInterestWithIdentifier:(id)identifier dateInterval:(id)interval handler:(id)handler
{
  identifierCopy = identifier;
  intervalCopy = interval;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__RTLearnedLocationStore_fetchCountOfVisitsToLocationOfInterestWithIdentifier_dateInterval_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = intervalCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = intervalCopy;
  v14 = identifierCopy;
  dispatch_async(queue, v15);
}

- (void)_fetchCountOfVisitsToLocationOfInterestWithIdentifier:(id)identifier dateInterval:(id)interval handler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  intervalCopy = interval;
  handlerCopy = handler;
  if (!intervalCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[RTLearnedLocationStore _fetchCountOfVisitsToLocationOfInterestWithIdentifier:dateInterval:handler:]";
      v29 = 1024;
      v30 = 3065;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval (in %s:%d)", buf, 0x12u);
    }
  }

  if (handlerCopy)
  {
    startDate = [intervalCopy startDate];
    endDate = [intervalCopy endDate];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __101__RTLearnedLocationStore__fetchCountOfVisitsToLocationOfInterestWithIdentifier_dateInterval_handler___block_invoke;
    aBlock[3] = &unk_2788CB520;
    v22 = identifierCopy;
    v23 = startDate;
    v24 = endDate;
    v26 = a2;
    v15 = handlerCopy;
    v25 = v15;
    v16 = endDate;
    v17 = startDate;
    v18 = _Block_copy(aBlock);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __101__RTLearnedLocationStore__fetchCountOfVisitsToLocationOfInterestWithIdentifier_dateInterval_handler___block_invoke_286;
    v19[3] = &unk_2788C48C0;
    v20 = v15;
    [(RTStore *)self _performBlock:v18 contextType:1 errorHandler:v19];
  }
}

void __101__RTLearnedLocationStore__fetchCountOfVisitsToLocationOfInterestWithIdentifier_dateInterval_handler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedLocationOfInterestVisitMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@ && %K >= %@  && %K <= %@ ", @"locationOfInterest.identifier", *(a1 + 32), @"exitDate", *(a1 + 40), @"exitDate", *(a1 + 48)];
  [v4 setPredicate:v5];

  v9 = 0;
  [v3 countForFetchRequest:v4 error:&v9];

  v6 = v9;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412802;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      v14 = 2112;
      v15 = v6;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, request, %@, error, %@", buf, 0x20u);
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (void)_fetchCountOfVisitsToPlaceWithIdentifier:(id)identifier endDate:(id)date handler:(id)handler
{
  identifierCopy = identifier;
  dateCopy = date;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__RTLearnedLocationStore__fetchCountOfVisitsToPlaceWithIdentifier_endDate_handler___block_invoke;
    aBlock[3] = &unk_2788C4910;
    v17 = identifierCopy;
    v18 = dateCopy;
    v20 = a2;
    v12 = handlerCopy;
    v19 = v12;
    v13 = _Block_copy(aBlock);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __83__RTLearnedLocationStore__fetchCountOfVisitsToPlaceWithIdentifier_endDate_handler___block_invoke_290;
    v14[3] = &unk_2788C48C0;
    v15 = v12;
    [(RTStore *)self _performBlock:v13 contextType:1 errorHandler:v14];
  }
}

void __83__RTLearnedLocationStore__fetchCountOfVisitsToPlaceWithIdentifier_endDate_handler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedVisitMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@ && %K <= %@ ", @"place.identifier", *(a1 + 32), @"exitDate", *(a1 + 40)];
  [v4 setPredicate:v5];

  v9 = 0;
  [v3 countForFetchRequest:v4 error:&v9];

  v6 = v9;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      v14 = 2112;
      v15 = v6;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, request, %@, error, %@", buf, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchCountOfVisitsToPlaceWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__RTLearnedLocationStore_fetchCountOfVisitsToPlaceWithIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)_fetchVisitIdentifiersIn:(id)in handler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  inCopy = in;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__RTLearnedLocationStore__fetchVisitIdentifiersIn_handler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    v15 = inCopy;
    v17 = a2;
    v9 = handlerCopy;
    v16 = v9;
    v10 = _Block_copy(aBlock);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__RTLearnedLocationStore__fetchVisitIdentifiersIn_handler___block_invoke_294;
    v12[3] = &unk_2788C48C0;
    v13 = v9;
    [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v12];

    v11 = v15;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTLearnedLocationStore _fetchVisitIdentifiersIn:handler:]";
      v20 = 1024;
      v21 = 3150;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __59__RTLearnedLocationStore__fetchVisitIdentifiersIn_handler___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedVisitMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"identifier", *(a1 + 32)];
  [v4 setPredicate:v5];

  v19[0] = @"identifier";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [v4 setPropertiesToFetch:v6];

  v12 = 0;
  v7 = [v3 executeFetchRequest:v4 error:&v12];

  v8 = v12;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v8;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, request, %@, error, %@", buf, 0x20u);
    }
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v7 valueForKeyPath:@"identifier"];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchVisitIdentifiersIn:(id)in handler:(id)handler
{
  inCopy = in;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTLearnedLocationStore_fetchVisitIdentifiersIn_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = inCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = inCopy;
  dispatch_async(queue, block);
}

- (void)_fetchTransitionsBetweenStartDate:(id)date endDate:(id)endDate handler:(id)handler
{
  v31[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (dateCopy && endDateCopy)
    {
      if ([dateCopy compare:endDateCopy] != 1)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __76__RTLearnedLocationStore__fetchTransitionsBetweenStartDate_endDate_handler___block_invoke;
        aBlock[3] = &unk_2788C4910;
        v24 = dateCopy;
        v25 = endDateCopy;
        v27 = a2;
        v19 = handlerCopy;
        v26 = v19;
        v20 = _Block_copy(aBlock);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __76__RTLearnedLocationStore__fetchTransitionsBetweenStartDate_endDate_handler___block_invoke_308;
        v21[3] = &unk_2788C48C0;
        v22 = v19;
        [(RTStore *)self _performBlock:v20 contextType:1 errorHandler:v21];

        v17 = v24;
        goto LABEL_9;
      }

      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v28 = *MEMORY[0x277CCA450];
      v29 = @"requires well ordered dates.";
      v14 = MEMORY[0x277CBEAC0];
      v15 = &v29;
      v16 = &v28;
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v30 = *MEMORY[0x277CCA450];
      v31[0] = @"requires valid dates.";
      v14 = MEMORY[0x277CBEAC0];
      v15 = v31;
      v16 = &v30;
    }

    v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    v18 = [v12 errorWithDomain:v13 code:0 userInfo:v17];
    (*(handlerCopy + 2))(handlerCopy, 0, v18);

LABEL_9:
  }
}

void __76__RTLearnedLocationStore__fetchTransitionsBetweenStartDate_endDate_handler___block_invoke(uint64_t a1, void *a2)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedTransitionMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@ && %K <= %@", @"startDate", *(a1 + 32), @"stopDate", *(a1 + 40)];
  [v4 setPredicate:v5];

  [v4 setReturnsObjectsAsFaults:0];
  v6 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"startDate" ascending:1];
  v36[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  [v4 setSortDescriptors:v7];

  v26 = 0;
  v8 = [v3 executeFetchRequest:v4 error:&v26];
  v9 = v26;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v18 = NSStringFromSelector(*(a1 + 56));
      v19 = [v8 count];
      *buf = 138413058;
      v29 = v18;
      v30 = 2112;
      v31 = v4;
      v32 = 2048;
      v33 = v19;
      v34 = 2112;
      v35 = v9;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v21 = v3;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [RTLearnedTransition createWithManagedObject:*(*(&v22 + 1) + 8 * v16)];
          if (v17)
          {
            [v11 addObject:v17];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v14);
    }

    v8 = v20;
    v3 = v21;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchTransitionsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__RTLearnedLocationStore_fetchTransitionsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __54__RTLearnedLocationStore_fetchTransitionsWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [MEMORY[0x277CBEAA8] distantPast];
  v3 = [MEMORY[0x277CBEAA8] distantFuture];
  [v2 _fetchTransitionsBetweenStartDate:v4 endDate:v3 handler:*(a1 + 40)];
}

- (void)fetchTransitionsBetweenStartDate:(id)date endDate:(id)endDate handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__RTLearnedLocationStore_fetchTransitionsBetweenStartDate_endDate_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = dateCopy;
  v17 = endDateCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = endDateCopy;
  v14 = dateCopy;
  dispatch_async(queue, v15);
}

- (void)_fetchTransitionWithDestinationIdentifier:(id)identifier handler:(id)handler
{
  v21[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (identifierCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __76__RTLearnedLocationStore__fetchTransitionWithDestinationIdentifier_handler___block_invoke;
      aBlock[3] = &unk_2788C4898;
      v17 = identifierCopy;
      v8 = handlerCopy;
      v18 = v8;
      v9 = _Block_copy(aBlock);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __76__RTLearnedLocationStore__fetchTransitionWithDestinationIdentifier_handler___block_invoke_2;
      v14[3] = &unk_2788C48C0;
      v15 = v8;
      [(RTStore *)self _performBlock:v9 contextType:1 errorHandler:v14];

      v10 = v17;
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v20 = *MEMORY[0x277CCA450];
      v21[0] = @"destination identifier cannot be nil.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v10 = [v11 errorWithDomain:v12 code:7 userInfo:v13];

      (*(handlerCopy + 2))(handlerCopy, 0, v10);
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __76__RTLearnedLocationStore__fetchTransitionWithDestinationIdentifier_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RTLearnedTransitionMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:1];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K == %@", @"destination", @"identifier", *(a1 + 32)];
  [v4 setPredicate:v5];

  v10 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v10];

  v7 = v10;
  v8 = [v6 firstObject];

  if (v8)
  {
    v9 = [RTLearnedTransition createWithManagedObject:v8];
  }

  else
  {
    v9 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchTransitionWithDestinationIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__RTLearnedLocationStore_fetchTransitionWithDestinationIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)_fetchTransitionWithOriginIdentifier:(id)identifier handler:(id)handler
{
  v21[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (identifierCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __71__RTLearnedLocationStore__fetchTransitionWithOriginIdentifier_handler___block_invoke;
      aBlock[3] = &unk_2788C4898;
      v17 = identifierCopy;
      v8 = handlerCopy;
      v18 = v8;
      v9 = _Block_copy(aBlock);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __71__RTLearnedLocationStore__fetchTransitionWithOriginIdentifier_handler___block_invoke_2;
      v14[3] = &unk_2788C48C0;
      v15 = v8;
      [(RTStore *)self _performBlock:v9 contextType:1 errorHandler:v14];

      v10 = v17;
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v20 = *MEMORY[0x277CCA450];
      v21[0] = @"origin identifier cannot be nil.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v10 = [v11 errorWithDomain:v12 code:7 userInfo:v13];

      (*(handlerCopy + 2))(handlerCopy, 0, v10);
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __71__RTLearnedLocationStore__fetchTransitionWithOriginIdentifier_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RTLearnedTransitionMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:1];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K == %@", @"origin", @"identifier", *(a1 + 32)];
  [v4 setPredicate:v5];

  v10 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v10];

  v7 = v10;
  v8 = [v6 firstObject];

  if (v8)
  {
    v9 = [RTLearnedTransition createWithManagedObject:v8];
  }

  else
  {
    v9 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchTransitionWithOriginIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTLearnedLocationStore_fetchTransitionWithOriginIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (id)bulkFetchMapItemMOsByIdentifiers:(id)identifiers context:(id)context error:(id *)error
{
  v53[2] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  contextCopy = context;
  v10 = contextCopy;
  if (!identifiersCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: identifiers";
LABEL_17:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v19, buf, 2u);
    goto LABEL_18;
  }

  if (!contextCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v19 = "Invalid parameter not satisfying: context";
    goto LABEL_17;
  }

  if (!error)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Invalid parameter not satisfying: outError";
      goto LABEL_17;
    }

LABEL_18:
    v18 = 0;
LABEL_19:

    goto LABEL_20;
  }

  if ([identifiersCopy count])
  {
    v11 = +[RTMapItemMO fetchRequest];
    identifiersCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"identifier", identifiersCopy];
    [v11 setPredicate:identifiersCopy];

    v53[0] = @"address";
    v53[1] = @"extendedAttributesIdentifier";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
    [v11 setRelationshipKeyPathsForPrefetching:v13];

    [v11 setReturnsObjectsAsFaults:0];
    v41 = 0;
    v14 = [v10 executeFetchRequest:v11 error:&v41];
    v15 = v41;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = NSStringFromSelector(a2);
        v33 = [v14 count];
        v34 = [identifiersCopy count];
        *buf = 138413314;
        v44 = v31;
        v45 = 2112;
        v46 = v32;
        v47 = 2048;
        v48 = v33;
        v49 = 2048;
        v50 = v34;
        v51 = 2112;
        v52 = v15;
        _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "%@, %@, %lu mapItems from %lu identifiers, error, %@", buf, 0x34u);
      }
    }

    if (v15)
    {
      v17 = v15;
      *error = v15;
      v18 = MEMORY[0x277CBEC10];
    }

    else
    {
      v36 = v10;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v35 = v14;
      v22 = v14;
      v23 = [v22 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v38;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v38 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v37 + 1) + 8 * i);
            v28 = objc_autoreleasePoolPush();
            identifier = [v27 identifier];
            [dictionary setObject:v27 forKeyedSubscript:identifier];

            objc_autoreleasePoolPop(v28);
          }

          v24 = [v22 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v24);
      }

      v18 = [dictionary copy];
      v14 = v35;
      v10 = v36;
      v15 = 0;
    }

    goto LABEL_19;
  }

  v18 = MEMORY[0x277CBEC10];
LABEL_20:

  return v18;
}

- (id)placeMapItemIdentifiersFromLearnedLocationsOfInterestMO:(id)o
{
  v22 = *MEMORY[0x277D85DE8];
  oCopy = o;
  v4 = oCopy;
  if (oCopy && [oCopy count])
  {
    v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          placeMapItemIdentifier = [v11 placeMapItemIdentifier];

          if (placeMapItemIdentifier)
          {
            placeMapItemIdentifier2 = [v11 placeMapItemIdentifier];
            [v5 addObject:placeMapItemIdentifier2];
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v15 = [v5 copy];
  }

  else
  {
    v15 = [MEMORY[0x277CBEB98] set];
  }

  return v15;
}

- (id)_learnedLocationsOfInterestFromLearnedLocationsOfInterestMO:(id)o context:(id)context includeVisits:(BOOL)visits includeTransitions:(BOOL)transitions
{
  oCopy = o;
  contextCopy = context;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__82;
  v25 = __Block_byref_object_dispose__82;
  v26 = 0;
  if ([oCopy count])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __127__RTLearnedLocationStore__learnedLocationsOfInterestFromLearnedLocationsOfInterestMO_context_includeVisits_includeTransitions___block_invoke;
    v14[3] = &unk_2788CB800;
    v18 = &v21;
    v15 = oCopy;
    selfCopy = self;
    v17 = contextCopy;
    visitsCopy = visits;
    transitionsCopy = transitions;
    [v17 performBlockAndWait:v14];
    v12 = v22[5];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  _Block_object_dispose(&v21, 8);

  return v12;
}

void __127__RTLearnedLocationStore__learnedLocationsOfInterestFromLearnedLocationsOfInterestMO_context_includeVisits_includeTransitions___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 40) placeMapItemIdentifiersFromLearnedLocationsOfInterestMO:*(a1 + 32)];
  v6 = *(a1 + 40);
  v27 = 0;
  v22 = v5;
  v7 = [v6 bulkFetchMapItemMOsByIdentifiers:? context:? error:?];
  v21 = v27;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = *(a1 + 32);
  v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"visits.@count" ascending:0];
  v28 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v11 = [v8 sortedArrayUsingDescriptors:v10];

  v12 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = [v16 placeMapItemIdentifier];
        v19 = [v7 objectForKey:v18];

        if (v19)
        {
          [v16 setCachedMapItem:v19];
        }

        v20 = [RTLearnedLocationOfInterest createWithManagedObject:v16 includeVisits:*(a1 + 64) includeTransitions:*(a1 + 65)];
        if (v20)
        {
          [*(*(*(a1 + 56) + 8) + 40) addObject:v20];
        }

        objc_autoreleasePoolPop(v17);
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v13);
  }
}

- (void)_fetchLocationsOfInterestWithinDistance:(double)distance location:(id)location handler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__RTLearnedLocationStore__fetchLocationsOfInterestWithinDistance_location_handler___block_invoke;
    aBlock[3] = &unk_2788C7D30;
    distanceCopy = distance;
    v20 = a2;
    v16 = locationCopy;
    selfCopy = self;
    v11 = handlerCopy;
    v18 = v11;
    v12 = _Block_copy(aBlock);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __83__RTLearnedLocationStore__fetchLocationsOfInterestWithinDistance_location_handler___block_invoke_334;
    v13[3] = &unk_2788C48C0;
    v14 = v11;
    [(RTStore *)self _performBlock:v12 contextType:1 errorHandler:v13];
  }
}

void __83__RTLearnedLocationStore__fetchLocationsOfInterestWithinDistance_location_handler___block_invoke(uint64_t a1, void *a2)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v28 = a2;
  v3 = +[RTLearnedLocationOfInterestMO fetchRequestSortedByCreation];
  [v3 setReturnsObjectsAsFaults:0];
  v40[0] = @"visits";
  v40[1] = @"transitions";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  [v3 setRelationshipKeyPathsForPrefetching:v4];

  [*(a1 + 32) latitude];
  [*(a1 + 32) longitude];
  v29 = a1;
  RTCommonCalculateBoundingBox();
  v25 = MEMORY[0x277CCA920];
  v5 = MEMORY[0x277CCAC30];
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v26 = [v5 predicateWithFormat:@"%@ <= %K", v27, @"locationLongitude"];
  v39[0] = v26;
  v6 = MEMORY[0x277CCAC30];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v8 = [v6 predicateWithFormat:@"%K <= %@", @"locationLongitude", v7];
  v39[1] = v8;
  v9 = MEMORY[0x277CCAC30];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v11 = [v9 predicateWithFormat:@"%@ <= %K", v10, @"locationLatitude"];
  v39[2] = v11;
  v12 = MEMORY[0x277CCAC30];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v14 = [v12 predicateWithFormat:@"%K <= %@", @"locationLatitude", v13];
  v39[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
  v16 = [v25 andPredicateWithSubpredicates:v15];
  [v3 setPredicate:v16];

  v17 = v3;
  memset(v30, 0, sizeof(v30));
  v18 = [v28 executeFetchRequest:v3 error:v30];
  v19 = v30[0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v23 = NSStringFromSelector(*(v29 + 64));
      v24 = [v18 count];
      *buf = 138413059;
      v32 = v23;
      v33 = 2117;
      v34 = v17;
      v35 = 2048;
      v36 = v24;
      v37 = 2112;
      v38 = v19;
      _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "%@, request, %{sensitive}@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v19)
  {
    v21 = 0;
    v22 = v29;
  }

  else
  {
    v22 = v29;
    v21 = [*(v29 + 40) _learnedLocationsOfInterestFromLearnedLocationsOfInterestMO:v18 context:v28];
  }

  (*(*(v22 + 48) + 16))();
}

- (void)fetchLocationsOfInterestWithinDistance:(double)distance location:(id)location handler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__RTLearnedLocationStore_fetchLocationsOfInterestWithinDistance_location_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  distanceCopy = distance;
  v13[4] = self;
  v14 = locationCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = locationCopy;
  dispatch_async(queue, v13);
}

- (void)_fetchLocationsOfInterestWithPlaceType:(unint64_t)type handler:(id)handler
{
  handlerCopy = handler;
  v8 = handlerCopy;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__RTLearnedLocationStore__fetchLocationsOfInterestWithPlaceType_handler___block_invoke;
    aBlock[3] = &unk_2788CB6F0;
    typeCopy = type;
    v16 = a2;
    aBlock[4] = self;
    v9 = handlerCopy;
    v14 = v9;
    v10 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __73__RTLearnedLocationStore__fetchLocationsOfInterestWithPlaceType_handler___block_invoke_338;
    v11[3] = &unk_2788C48C0;
    v12 = v9;
    [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v11];
  }
}

void __73__RTLearnedLocationStore__fetchLocationsOfInterestWithPlaceType_handler___block_invoke(uint64_t a1, void *a2)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedLocationOfInterestMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v25[0] = @"visits";
  v25[1] = @"transitions";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  [v4 setRelationshipKeyPathsForPrefetching:v5];

  v6 = MEMORY[0x277CCAC30];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  v8 = [v6 predicateWithFormat:@"%K == %@", @"placeType", v7];
  [v4 setPredicate:v8];

  v16 = 0;
  v9 = [v3 executeFetchRequest:v4 error:&v16];
  v10 = v16;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = NSStringFromSelector(*(a1 + 56));
      v15 = [v9 count];
      *buf = 138413058;
      v18 = v14;
      v19 = 2112;
      v20 = v4;
      v21 = 2048;
      v22 = v15;
      v23 = 2112;
      v24 = v10;
      _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = [*(a1 + 32) _learnedLocationsOfInterestFromLearnedLocationsOfInterestMO:v9 context:v3];
  }

  v13 = [*(a1 + 32) _sortLocationsOfInterest:v12];

  (*(*(a1 + 40) + 16))();
}

- (id)_sortLocationsOfInterest:(id)interest
{
  v3 = [interest sortedArrayUsingComparator:&__block_literal_global_341];
  reverseObjectEnumerator = [v3 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

uint64_t __51__RTLearnedLocationStore__sortLocationsOfInterest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 place];
  if ([v6 typeSource])
  {
  }

  else
  {
    v7 = [v5 place];
    v8 = [v7 typeSource];

    if (v8)
    {
      v9 = -1;
      goto LABEL_13;
    }
  }

  v10 = [v4 place];
  if ([v10 typeSource])
  {
    v11 = [v5 place];
    v12 = [v11 typeSource];

    if ((v12 & 1) == 0)
    {
      v9 = 1;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v13 = [v4 visits];
  v14 = [v13 count];
  v15 = [v5 visits];
  v16 = [v15 count];

  if (v14 == v16)
  {
    v17 = [v4 visits];
    v18 = [v17 valueForKeyPath:@"@max.creationDate"];
    v19 = [v5 visits];
    [v19 valueForKeyPath:@"@max.creationDate"];
  }

  else
  {
    v20 = MEMORY[0x277CCABB0];
    v17 = [v4 visits];
    v18 = [v20 numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
    v21 = MEMORY[0x277CCABB0];
    v19 = [v5 visits];
    [v21 numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
  }
  v22 = ;
  v9 = [v18 compare:v22];

LABEL_13:
  return v9;
}

- (void)fetchLocationsOfInterestWithPlaceType:(unint64_t)type handler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__RTLearnedLocationStore_fetchLocationsOfInterestWithPlaceType_handler___block_invoke;
  block[3] = &unk_2788C6300;
  v10 = handlerCopy;
  typeCopy = type;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)_fetchLocationsOfInterestVisitedBetweenStartDate:(id)date endDate:(id)endDate includePlaceholders:(BOOL)placeholders includeVisits:(BOOL)visits includeTransitions:(BOOL)transitions handler:(id)handler
{
  v58[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (dateCopy && endDateCopy)
    {
      if ([dateCopy compare:endDateCopy] == 1)
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          stringFromDate = [dateCopy stringFromDate];
          stringFromDate2 = [endDateCopy stringFromDate];
          *buf = 138413058;
          v50 = stringFromDate;
          v51 = 2112;
          v53 = 2080;
          v52 = stringFromDate2;
          v54 = "[RTLearnedLocationStore _fetchLocationsOfInterestVisitedBetweenStartDate:endDate:includePlaceholders:includeVisits:includeTransitions:handler:]";
          v55 = 1024;
          v56 = 3690;
          _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "startDate, %@, postdates endDate, %@ (in %s:%d)", buf, 0x26u);
        }
      }

      if ([dateCopy compare:endDateCopy] != 1)
      {
        transitionsCopy = transitions;
        v26 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
        v27 = os_signpost_id_generate(v26);

        v28 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
        v29 = v28;
        if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_2304B3000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "_fetchLocationsOfInterestVisitedBetweenStartDate", " enableTelemetry=YES ", buf, 2u);
        }

        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __144__RTLearnedLocationStore__fetchLocationsOfInterestVisitedBetweenStartDate_endDate_includePlaceholders_includeVisits_includeTransitions_handler___block_invoke;
        aBlock[3] = &unk_2788CB870;
        v38 = endDateCopy;
        v39 = dateCopy;
        v42 = a2;
        v43 = v27;
        v30 = handlerCopy;
        visitsCopy = visits;
        v45 = transitionsCopy;
        placeholdersCopy = placeholders;
        selfCopy = self;
        v41 = v30;
        v31 = _Block_copy(aBlock);
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __144__RTLearnedLocationStore__fetchLocationsOfInterestVisitedBetweenStartDate_endDate_includePlaceholders_includeVisits_includeTransitions_handler___block_invoke_362;
        v35[3] = &unk_2788C48C0;
        v36 = v30;
        [(RTStore *)self _performBlock:v31 contextType:1 errorHandler:v35];

        v24 = v38;
        goto LABEL_16;
      }

      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277D01448];
      v47 = *MEMORY[0x277CCA450];
      v48 = @"requires well ordered dates.";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v48;
      v23 = &v47;
    }

    else
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277D01448];
      v57 = *MEMORY[0x277CCA450];
      v58[0] = @"requires valid dates.";
      v21 = MEMORY[0x277CBEAC0];
      v22 = v58;
      v23 = &v57;
    }

    v24 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:1];
    v25 = [v19 errorWithDomain:v20 code:0 userInfo:v24];
    (*(handlerCopy + 2))(handlerCopy, 0, v25);

LABEL_16:
  }
}

void __144__RTLearnedLocationStore__fetchLocationsOfInterestVisitedBetweenStartDate_endDate_includePlaceholders_includeVisits_includeTransitions_handler___block_invoke(uint64_t a1, void *a2)
{
  v86[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedLocationOfInterestVisitMO fetchRequest];
  v86[0] = @"locationOfInterest";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:1];
  [v4 setPropertiesToFetch:v5];

  [v4 setResultType:2];
  [v4 setReturnsDistinctResults:1];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CBEAA8] distantFuture];
  v8 = [v6 compare:v7];

  v9 = *(a1 + 40);
  if (v8 == -1)
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@ AND %K <= %@", @"entryDate", v9, @"exitDate", *(a1 + 32)];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", @"entryDate", v9, v59, v60];
  }
  v10 = ;
  [v4 setPredicate:v10];

  v76 = 0;
  v11 = [v3 executeFetchRequest:v4 error:&v76];
  v12 = v76;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v54 = NSStringFromSelector(*(a1 + 64));
      v55 = [v11 count];
      *buf = 138413058;
      v79 = v54;
      v80 = 2112;
      v81 = v4;
      v82 = 2048;
      v83 = v55;
      v84 = 2112;
      v85 = v12;
      _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@, visit fetch request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (!v12)
  {
    v66 = v3;
    v17 = [MEMORY[0x277CBEB58] set];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v65 = v11;
    v18 = v11;
    v19 = [v18 countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v73;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v73 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v72 + 1) + 8 * i);
          v24 = objc_autoreleasePoolPush();
          v25 = [v23 objectForKeyedSubscript:@"locationOfInterest"];
          if (v25)
          {
            [v17 addObject:v25];
          }

          objc_autoreleasePoolPop(v24);
        }

        v20 = [v18 countByEnumeratingWithState:&v72 objects:v77 count:16];
      }

      while (v20);
    }

    v26 = +[RTLearnedLocationOfInterestMO fetchRequestSortedByCreation];
    v27 = objc_opt_new();
    if (*(a1 + 80))
    {
      v28 = 0;
    }

    else
    {
      v28 = *(a1 + 81) ^ 1;
    }

    [v26 setReturnsObjectsAsFaults:v28 & 1];
    if (*(a1 + 80) == 1)
    {
      [v27 addObject:@"visits"];
    }

    v3 = v66;
    if (*(a1 + 81) == 1)
    {
      [v27 addObject:@"transitions"];
    }

    if ([v17 count])
    {
      v29 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF IN %@", v17];
      [v26 setPredicate:v29];
    }

    else if ((*(a1 + 82) & 1) == 0)
    {
      v47 = v27;
      v51 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      v52 = v51;
      v53 = *(a1 + 72);
      if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2304B3000, v52, OS_SIGNPOST_INTERVAL_END, v53, "_fetchLocationsOfInterestVisitedBetweenStartDate", " enableTelemetry=YES ", buf, 2u);
      }

      (*(*(a1 + 56) + 16))();
      v12 = 0;
      v11 = v65;
      goto LABEL_56;
    }

    if ([v27 count])
    {
      [v26 setRelationshipKeyPathsForPrefetching:v27];
    }

    v71 = 0;
    v30 = [v66 executeFetchRequest:v26 error:&v71];
    v67 = v71;
    v64 = v30;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v56 = NSStringFromSelector(*(a1 + 64));
        v57 = [v64 count];
        *buf = 138413058;
        v79 = v56;
        v80 = 2112;
        v81 = v26;
        v82 = 2048;
        v83 = v57;
        v84 = 2112;
        v85 = v67;
        _os_log_debug_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEBUG, "%@, loi fetch request, %@, results count, %lu, error, %@", buf, 0x2Au);

        v30 = v64;
      }
    }

    v32 = [v30 mutableCopy];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = [MEMORY[0x277CBEB18] array];
    }

    v35 = v34;

    if (*(a1 + 82) == 1)
    {
      v36 = +[RTLearnedLocationOfInterestMO fetchRequestSortedByCreation];
      v37 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count == 0", @"visits"];
      [v36 setPredicate:v37];

      v70 = 0;
      v38 = [v66 executeFetchRequest:v36 error:&v70];
      v39 = v70;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v62 = v39;
        v40 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v61 = NSStringFromSelector(*(a1 + 64));
          v58 = [v64 count];
          *buf = 138413058;
          v79 = v61;
          v80 = 2112;
          v81 = v26;
          v82 = 2048;
          v83 = v58;
          v84 = 2112;
          v85 = v62;
          _os_log_debug_impl(&dword_2304B3000, v40, OS_LOG_TYPE_DEBUG, "%@, placeholder fetch request, %@, results count, %lu, error, %@", buf, 0x2Au);
        }

        v39 = v62;
      }

      if (v38)
      {
        [v35 addObjectsFromArray:v38];
      }
    }

    v63 = v26;
    if (v67)
    {
      v41 = v35;
      v42 = 0;
    }

    else
    {
      v43 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:*(a1 + 40) endDate:*(a1 + 32)];
      v41 = v35;
      v44 = [*(a1 + 48) _learnedLocationsOfInterestFromLearnedLocationsOfInterestMO:v35 context:v66 includeVisits:*(a1 + 80) includeTransitions:*(a1 + 81)];
      v45 = [[_RTMap alloc] initWithInput:v44];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __144__RTLearnedLocationStore__fetchLocationsOfInterestVisitedBetweenStartDate_endDate_includePlaceholders_includeVisits_includeTransitions_handler___block_invoke_360;
      v68[3] = &unk_2788CB848;
      v69 = v43;
      v46 = v43;
      v42 = [(_RTMap *)v45 withBlock:v68];
    }

    v47 = v27;
    v48 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
    v49 = v48;
    v50 = *(a1 + 72);
    if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2304B3000, v49, OS_SIGNPOST_INTERVAL_END, v50, "_fetchLocationsOfInterestVisitedBetweenStartDate", " enableTelemetry=YES ", buf, 2u);
    }

    (*(*(a1 + 56) + 16))();
    v12 = 0;
    v11 = v65;
    v26 = v63;
LABEL_56:

    goto LABEL_57;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
  v15 = v14;
  v16 = *(a1 + 72);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v15, OS_SIGNPOST_INTERVAL_END, v16, "_fetchLocationsOfInterestVisitedBetweenStartDate", " enableTelemetry=YES ", buf, 2u);
  }

  (*(*(a1 + 56) + 16))();
LABEL_57:
}

- (void)_fetchLocationsOfInterestUUIDsVisitedWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__RTLearnedLocationStore__fetchLocationsOfInterestUUIDsVisitedWithHandler___block_invoke;
    aBlock[3] = &unk_2788CB7D8;
    v13 = a2;
    v7 = handlerCopy;
    v12 = v7;
    v8 = _Block_copy(aBlock);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75__RTLearnedLocationStore__fetchLocationsOfInterestUUIDsVisitedWithHandler___block_invoke_363;
    v9[3] = &unk_2788C48C0;
    v10 = v7;
    [(RTStore *)self _performBlock:v8 contextType:1 errorHandler:v9];
  }
}

void __75__RTLearnedLocationStore__fetchLocationsOfInterestUUIDsVisitedWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedLocationOfInterestMO fetchRequest];
  v36[0] = @"identifier";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  [v4 setPropertiesToFetch:v5];

  [v4 setResultType:2];
  [v4 setReturnsObjectsAsFaults:1];
  v26 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v26];
  v7 = v26;
  v8 = 0;
  if (!v7)
  {
    v21 = a1;
    v8 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v22 + 1) + 8 * i) objectForKeyedSubscript:{@"identifier", v20}];
          if (v14)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v35 count:16];
      }

      while (v11);
    }

    v6 = v20;
    a1 = v21;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = NSStringFromSelector(*(a1 + 40));
      v18 = [v6 count];
      *buf = 138413058;
      v28 = v17;
      v29 = 2112;
      v30 = v4;
      v31 = 2048;
      v32 = v18;
      v33 = 2112;
      v34 = v7;
      _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = NSStringFromSelector(*(a1 + 40));
      *buf = 138412546;
      v28 = v19;
      v29 = 2112;
      v30 = v8;
      _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "%@, loisUUIDs, %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_fetchCloudStorePersistentHistorySinceDate:(id)date earlyStop:(BOOL)stop handler:(id)handler
{
  v28[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (dateCopy)
    {
      v10 = [MEMORY[0x277CBE4B0] fetchHistoryAfterDate:dateCopy];
      [v10 setResultType:5];
      [v10 setFetchLimit:5];
      persistenceManager = [(RTStore *)self persistenceManager];
      v12 = [persistenceManager persistenceStoreForType:1];

      if ([v12 state] == 5)
      {
        persistenceManager2 = [(RTStore *)self persistenceManager];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __87__RTLearnedLocationStore__fetchCloudStorePersistentHistorySinceDate_earlyStop_handler___block_invoke;
        v20[3] = &unk_2788CB898;
        v21 = v12;
        v23 = handlerCopy;
        v22 = v10;
        stopCopy = stop;
        [persistenceManager2 createManagedObjectContext:v20];

        v14 = v21;
      }

      else
      {
        v17 = MEMORY[0x277CCA9B8];
        v18 = *MEMORY[0x277D01448];
        v25 = *MEMORY[0x277CCA450];
        v26 = @"cloud store is not ready.";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v19 = [v17 errorWithDomain:v18 code:0 userInfo:v14];
        (*(handlerCopy + 2))(handlerCopy, 0, v19);
      }
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D01448];
      v27 = *MEMORY[0x277CCA450];
      v28[0] = @"requires valid dates.";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v12 = [v15 errorWithDomain:v16 code:0 userInfo:v10];
      (*(handlerCopy + 2))(handlerCopy, 0, v12);
    }
  }
}

void __87__RTLearnedLocationStore__fetchCloudStorePersistentHistorySinceDate_earlyStop_handler___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [v3 persistentStoreCoordinator];
  v5 = [v4 persistentStores];

  v6 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v26 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v25 + 1) + 8 * v9);
      v11 = [v10 URL];
      v12 = [*(a1 + 32) URL];
      v13 = [v11 isEqual:v12];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v10;

    if (!v14)
    {
      goto LABEL_12;
    }

    v29 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    [*(a1 + 40) setAffectedStores:v15];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __87__RTLearnedLocationStore__fetchCloudStorePersistentHistorySinceDate_earlyStop_handler___block_invoke_2;
    v20[3] = &unk_2788C4690;
    v21 = v3;
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    [v21 performBlock:v20];

    v16 = v21;
  }

  else
  {
LABEL_9:

LABEL_12:
    v17 = *(a1 + 48);
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D01448];
    v30 = *MEMORY[0x277CCA450];
    v31 = @"cloud store is nil";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v16 = [v18 errorWithDomain:v19 code:0 userInfo:v14];
    (*(v17 + 16))(v17, 0, v16);
  }
}

void __87__RTLearnedLocationStore__fetchCloudStorePersistentHistorySinceDate_earlyStop_handler___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  while (1)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v32 = 0;
    v6 = [v4 executeRequest:v5 error:&v32];
    v7 = v32;
    if (v7)
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138412290;
        v35 = v22;
        _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "error while fetching history; unexpected result class, %@", buf, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_18;
    }

    context = v3;
    v24 = v6;
    v8 = v6;
    v25 = [v8 result];
    v23 = [v25 count];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v8;
    v9 = [v8 result];
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            v16 = [v15 changes];
            v17 = [v16 count];

            if (v17)
            {
              [v2 addObject:v15];
              if (*(a1 + 56) == 1)
              {
                (*(*(a1 + 48) + 16))();

                v3 = context;
                v6 = v24;
                goto LABEL_18;
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    [*(a1 + 40) setFetchOffset:{objc_msgSend(*(a1 + 40), "fetchOffset") + v23}];
    [*(a1 + 32) reset];

    objc_autoreleasePoolPop(context);
    if (!v23)
    {
      (*(*(a1 + 48) + 16))();
      goto LABEL_19;
    }
  }

  v18 = v7;
  v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v35 = v18;
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "error while fetching history, %@", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
LABEL_18:

  objc_autoreleasePoolPop(v3);
LABEL_19:
}

- (void)fetchLocationsOfInterestVisitedBetweenStartDate:(id)date endDate:(id)endDate handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__RTLearnedLocationStore_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = dateCopy;
  v17 = endDateCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = endDateCopy;
  v14 = dateCopy;
  dispatch_async(queue, v15);
}

- (void)fetchLocationsOfInterestVisitedSinceDate:(id)date handler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__RTLearnedLocationStore_fetchLocationsOfInterestVisitedSinceDate_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dateCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dateCopy;
  dispatch_async(queue, block);
}

void __75__RTLearnedLocationStore_fetchLocationsOfInterestVisitedSinceDate_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [MEMORY[0x277CBEAA8] distantFuture];
  [v2 _fetchLocationsOfInterestVisitedBetweenStartDate:v3 endDate:v4 includePlaceholders:0 includeVisits:1 includeTransitions:1 handler:a1[6]];
}

- (void)fetchCloudStorePersistentHistorySinceDate:(id)date earlyStop:(BOOL)stop handler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__RTLearnedLocationStore_fetchCloudStorePersistentHistorySinceDate_earlyStop_handler___block_invoke;
  v13[3] = &unk_2788C4690;
  v13[4] = self;
  v14 = dateCopy;
  stopCopy = stop;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = dateCopy;
  dispatch_async(queue, v13);
}

- (BOOL)cloudStoreChangedSinceDate:(id)date
{
  v47 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__82;
  v43 = __Block_byref_object_dispose__82;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__82;
  v37 = __Block_byref_object_dispose__82;
  v38 = 0;
  v5 = dispatch_semaphore_create(0);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __53__RTLearnedLocationStore_cloudStoreChangedSinceDate___block_invoke;
  v28[3] = &unk_2788C69F0;
  v6 = dateCopy;
  v29 = v6;
  v31 = &v39;
  v32 = &v33;
  v7 = v5;
  v30 = v7;
  [(RTLearnedLocationStore *)self fetchCloudStorePersistentHistorySinceDate:v6 earlyStop:1 handler:v28];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_932];
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
    v45 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v45 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;

      v24 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = 1;
LABEL_8:

  v25 = v22;
  if ((v24 & 1) == 0)
  {
    objc_storeStrong(v40 + 5, v22);
  }

  if (v40[5])
  {
    v26 = 1;
  }

  else
  {
    v26 = [v34[5] count] != 0;
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v26;
}

void __53__RTLearnedLocationStore_cloudStoreChangedSinceDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 count];
      v9 = *(a1 + 32);
      v16 = 134218754;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = @"YES";
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "fetched %lu persistent history transaction, since date, %@, early stop, %@, error, %@", &v16, 0x2Au);
    }
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
  v12 = v6;

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v5;
  v15 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_verifyExpirationDatesOfVisitGraphWithHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        *buf = 138412546;
        v18 = v8;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, Running verification of expiration dates of visit graph", buf, 0x16u);
      }
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__RTLearnedLocationStore__verifyExpirationDatesOfVisitGraphWithHandler___block_invoke;
    aBlock[3] = &unk_2788C7170;
    v10 = handlerCopy;
    v16 = v10;
    v11 = _Block_copy(aBlock);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__RTLearnedLocationStore__verifyExpirationDatesOfVisitGraphWithHandler___block_invoke_2;
    v13[3] = &unk_2788C48C0;
    v14 = v10;
    [(RTStore *)self _performBlock:v11 contextType:1 errorHandler:v13];

    v12 = v16;
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __72__RTLearnedLocationStore__verifyExpirationDatesOfVisitGraphWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedVisitMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:5];
  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entryDate" ascending:1];
  v21[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  [v4 setSortDescriptors:v6];

  v7 = 0;
  while (1)
  {
    v8 = objc_autoreleasePoolPush();
    v19 = 0;
    v9 = [v3 executeFetchRequest:v4 error:&v19];
    v10 = v19;

    if (v10)
    {
      break;
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v9;
    v11 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v15 + 1) + 8 * v14++) verifyDependencyGraphExpirationDates];
        }

        while (v12 != v14);
        v12 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v12);
    }

    [v4 setFetchOffset:{objc_msgSend(v4, "fetchOffset") + objc_msgSend(v7, "count")}];
    [v3 reset];
    objc_autoreleasePoolPop(v8);
    if (![v7 count])
    {
      (*(*(a1 + 32) + 16))();
      goto LABEL_13;
    }
  }

  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v8);

LABEL_13:
}

- (void)verifyExpirationDatesOfVisitGraphWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__RTLearnedLocationStore_verifyExpirationDatesOfVisitGraphWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)fetchRecentLocationsOfInterestWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-4838400.0];
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTLearnedLocationStore_fetchRecentLocationsOfInterestWithHandler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v10 = v5;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = v5;
  dispatch_async(queue, block);
}

void __68__RTLearnedLocationStore_fetchRecentLocationsOfInterestWithHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [MEMORY[0x277CBEAA8] distantFuture];
  [v2 _fetchLocationsOfInterestVisitedBetweenStartDate:v3 endDate:v4 includePlaceholders:1 includeVisits:1 includeTransitions:1 handler:a1[6]];
}

- (void)fetchLocationsOfInterestVisitedBetweenStartDate:(id)date endDate:(id)endDate includePlaceholders:(BOOL)placeholders includeVisits:(BOOL)visits includeTransitions:(BOOL)transitions handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  v17 = handlerCopy;
  if (!dateCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: startDate";
LABEL_11:
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    goto LABEL_12;
  }

  if (!endDateCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: endDate";
    goto LABEL_11;
  }

  if (!handlerCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "Invalid parameter not satisfying: handler";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __143__RTLearnedLocationStore_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_includePlaceholders_includeVisits_includeTransitions_handler___block_invoke;
  block[3] = &unk_2788C6328;
  block[4] = self;
  v22 = dateCopy;
  v23 = endDateCopy;
  placeholdersCopy = placeholders;
  visitsCopy = visits;
  transitionsCopy = transitions;
  v24 = v17;
  dispatch_async(queue, block);

LABEL_13:
}

- (void)fetchLocationsOfInterestUUIDsVisitedWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __74__RTLearnedLocationStore_fetchLocationsOfInterestUUIDsVisitedWithHandler___block_invoke;
    v7[3] = &unk_2788C4938;
    v7[4] = self;
    v8 = handlerCopy;
    dispatch_async(queue, v7);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

- (void)fetchAllLocationsOfInterestWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__RTLearnedLocationStore_fetchAllLocationsOfInterestWithHandler___block_invoke;
    v7[3] = &unk_2788C4938;
    v7[4] = self;
    v8 = handlerCopy;
    dispatch_async(queue, v7);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __65__RTLearnedLocationStore_fetchAllLocationsOfInterestWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [MEMORY[0x277CBEAA8] distantPast];
  v3 = [MEMORY[0x277CBEAA8] distantFuture];
  [v2 _fetchLocationsOfInterestVisitedBetweenStartDate:v4 endDate:v3 includePlaceholders:1 includeVisits:1 includeTransitions:1 handler:*(a1 + 40)];
}

- (void)fetchInferredMapItemForVisitIdentifier:(id)identifier handler:(id)handler
{
  v18[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

    goto LABEL_7;
  }

  if (!identifierCopy)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"requires a non-nil identifier.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v9 = [v10 errorWithDomain:v11 code:7 userInfo:v12];

    handlerCopy[2](handlerCopy, 0, v9);
LABEL_7:

    goto LABEL_8;
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__RTLearnedLocationStore_fetchInferredMapItemForVisitIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v14 = identifierCopy;
  v15 = handlerCopy;
  dispatch_async(queue, block);

LABEL_8:
}

- (void)_fetchInferredMapItemForVisitIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__RTLearnedLocationStore__fetchInferredMapItemForVisitIdentifier_handler___block_invoke;
  aBlock[3] = &unk_2788C4FB0;
  v16 = identifierCopy;
  v18 = a2;
  v9 = handlerCopy;
  v17 = v9;
  v10 = identifierCopy;
  v11 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__RTLearnedLocationStore__fetchInferredMapItemForVisitIdentifier_handler___block_invoke_384;
  v13[3] = &unk_2788C48C0;
  v14 = v9;
  v12 = v9;
  [(RTStore *)self _performBlock:v11 contextType:1 errorHandler:v13];
}

void __74__RTLearnedLocationStore__fetchInferredMapItemForVisitIdentifier_handler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = +[RTLearnedVisitMO fetchRequest];
  [v2 setReturnsObjectsAsFaults:0];
  [v2 setFetchLimit:1];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"identifier", *(a1 + 32)];
  [v2 setPredicate:v3];

  v16 = 0;
  v4 = [v2 execute:&v16];
  v5 = v16;
  v6 = [v4 firstObject];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v15 = NSStringFromSelector(*(a1 + 48));
      *buf = 138413058;
      v20 = v15;
      v21 = 2112;
      v22 = v2;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v5;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, request, %@, result, %@, error, %@", buf, 0x2Au);
    }
  }

  if (!v5)
  {
    if (v6)
    {
      v9 = [MEMORY[0x277D01128] createWithManagedObject:v6];
      if (!v9)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"could not initialize inferredMapItem for learnedVisitMO, %@", v6];
        v10 = MEMORY[0x277CCA9B8];
        v11 = *MEMORY[0x277D01448];
        v17 = *MEMORY[0x277CCA450];
        v18 = v9;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        v13 = [v10 errorWithDomain:v11 code:0 userInfo:v12];

        v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v20 = v13;
          _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "error, %@", buf, 0xCu);
        }

        (*(*(a1 + 40) + 16))();
        goto LABEL_16;
      }
    }

    else
    {
      v9 = 0;
    }

    (*(*(a1 + 40) + 16))();
LABEL_16:

    goto LABEL_17;
  }

  v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v20 = v5;
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "error, %@", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
LABEL_17:
}

- (void)_fetchLocationOfInterestVisitedFirstWithHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__RTLearnedLocationStore__fetchLocationOfInterestVisitedFirstWithHandler___block_invoke;
  aBlock[3] = &unk_2788CB7D8;
  v13 = a2;
  v6 = handlerCopy;
  v12 = v6;
  v7 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__RTLearnedLocationStore__fetchLocationOfInterestVisitedFirstWithHandler___block_invoke_385;
  v9[3] = &unk_2788C48C0;
  v10 = v6;
  v8 = v6;
  [(RTStore *)self _performBlock:v7 contextType:1 errorHandler:v9];
}

void __74__RTLearnedLocationStore__fetchLocationOfInterestVisitedFirstWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedLocationOfInterestVisitMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:1];
  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"exitDate" ascending:1];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v4 setSortDescriptors:v6];

  v15 = 0;
  v7 = [v3 executeFetchRequest:v4 error:&v15];

  v8 = v15;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = NSStringFromSelector(*(a1 + 40));
      v14 = [v7 count];
      *buf = 138413058;
      v17 = v13;
      v18 = 2112;
      v19 = v4;
      v20 = 2048;
      v21 = v14;
      v22 = 2112;
      v23 = v8;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v8 || ![v7 count])
  {
    v10 = 0;
  }

  else
  {
    v11 = [v7 firstObject];
    v12 = [v11 locationOfInterest];
    v10 = [RTLearnedLocationOfInterest createWithManagedObject:v12];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchLocationOfInterestVisitedFirstWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__RTLearnedLocationStore_fetchLocationOfInterestVisitedFirstWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchLocationOfInterestVisitedLastWithHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__RTLearnedLocationStore__fetchLocationOfInterestVisitedLastWithHandler___block_invoke;
  aBlock[3] = &unk_2788CB7D8;
  v13 = a2;
  v6 = handlerCopy;
  v12 = v6;
  v7 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__RTLearnedLocationStore__fetchLocationOfInterestVisitedLastWithHandler___block_invoke_386;
  v9[3] = &unk_2788C48C0;
  v10 = v6;
  v8 = v6;
  [(RTStore *)self _performBlock:v7 contextType:1 errorHandler:v9];
}

void __73__RTLearnedLocationStore__fetchLocationOfInterestVisitedLastWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedLocationOfInterestVisitMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:1];
  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entryDate" ascending:0];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v4 setSortDescriptors:v6];

  v15 = 0;
  v7 = [v3 executeFetchRequest:v4 error:&v15];

  v8 = v15;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = NSStringFromSelector(*(a1 + 40));
      v14 = [v7 count];
      *buf = 138413058;
      v17 = v13;
      v18 = 2112;
      v19 = v4;
      v20 = 2048;
      v21 = v14;
      v22 = 2112;
      v23 = v8;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v8 || ![v7 count])
  {
    v10 = 0;
  }

  else
  {
    v11 = [v7 firstObject];
    v12 = [v11 locationOfInterest];
    v10 = [RTLearnedLocationOfInterest createWithManagedObject:v12];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchLocationOfInterestVisitedLastWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__RTLearnedLocationStore_fetchLocationOfInterestVisitedLastWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchLocationOfInterestWithIdentifier:(id)identifier handler:(id)handler
{
  v22[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (identifierCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __73__RTLearnedLocationStore__fetchLocationOfInterestWithIdentifier_handler___block_invoke;
      aBlock[3] = &unk_2788C4FB0;
      v18 = identifierCopy;
      v20 = a2;
      v9 = handlerCopy;
      v19 = v9;
      v10 = _Block_copy(aBlock);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __73__RTLearnedLocationStore__fetchLocationOfInterestWithIdentifier_handler___block_invoke_387;
      v15[3] = &unk_2788C48C0;
      v16 = v9;
      [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v15];

      v11 = v18;
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v21 = *MEMORY[0x277CCA450];
      v22[0] = @"requires a valid identifier.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v14 = [v12 errorWithDomain:v13 code:0 userInfo:v11];
      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }
}

void __73__RTLearnedLocationStore__fetchLocationOfInterestWithIdentifier_handler___block_invoke(uint64_t a1, void *a2)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedLocationOfInterestMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v23[0] = @"visits";
  v23[1] = @"transitions";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [v4 setRelationshipKeyPathsForPrefetching:v5];

  [v4 setFetchLimit:1];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"identifier", *(a1 + 32)];
  [v4 setPredicate:v6];

  v14 = 0;
  v7 = [v3 executeFetchRequest:v4 error:&v14];

  v8 = v14;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(*(a1 + 48));
      v13 = [v7 count];
      *buf = 138413058;
      v16 = v12;
      v17 = 2112;
      v18 = v4;
      v19 = 2048;
      v20 = v13;
      v21 = 2112;
      v22 = v8;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v8 || ![v7 count])
  {
    v10 = 0;
  }

  else
  {
    v11 = [v7 firstObject];
    v10 = [RTLearnedLocationOfInterest createWithManagedObject:v11];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchLocationOfInterestWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__RTLearnedLocationStore_fetchLocationOfInterestWithIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)_fetchLocationOfInterestWithMapItem:(id)item handler:(id)handler
{
  v23[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (itemCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __70__RTLearnedLocationStore__fetchLocationOfInterestWithMapItem_handler___block_invoke;
      aBlock[3] = &unk_2788C4FB0;
      v18 = itemCopy;
      v20 = a2;
      v9 = handlerCopy;
      v19 = v9;
      v10 = _Block_copy(aBlock);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __70__RTLearnedLocationStore__fetchLocationOfInterestWithMapItem_handler___block_invoke_391;
      v15[3] = &unk_2788C48C0;
      v16 = v9;
      [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v15];

      v11 = v18;
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v22 = *MEMORY[0x277CCA450];
      v23[0] = @"requires a valid mapItem.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v14 = [v12 errorWithDomain:v13 code:0 userInfo:v11];
      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
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

void __70__RTLearnedLocationStore__fetchLocationOfInterestWithMapItem_handler___block_invoke(uint64_t a1, void *a2)
{
  v83[2] = *MEMORY[0x277D85DE8];
  v64 = a2;
  v3 = +[RTLearnedLocationOfInterestMO fetchRequestSortedByCreation];
  [v3 setFetchLimit:5];
  v58 = v3;
  [v3 setReturnsObjectsAsFaults:0];
  v83[0] = @"visits";
  v83[1] = @"transitions";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:2];
  [v3 setRelationshipKeyPathsForPrefetching:v4];

  v55 = [MEMORY[0x277CBEB18] array];
  v54 = [MEMORY[0x277CBEB18] array];
  v5 = MEMORY[0x277CCAC30];
  v6 = [*(a1 + 32) identifier];
  v7 = [v5 predicateWithFormat:@"%K = %@", @"placeMapItemIdentifier", v6];

  v53 = v7;
  [v54 addObject:v7];
  memset(&v70[1], 0, 32);
  v8 = [*(a1 + 32) location];
  [v8 latitude];
  v63 = a1;
  v9 = [*(a1 + 32) location];
  [v9 longitude];
  RTCommonCalculateBoundingBox();

  obja = MEMORY[0x277CCA920];
  v10 = MEMORY[0x277CCAC30];
  v61 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v11 = [v10 predicateWithFormat:@"%@ <= %K", v61, @"locationLongitude"];
  v82[0] = v11;
  v12 = MEMORY[0x277CCAC30];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v14 = [v12 predicateWithFormat:@"%K <= %@", @"locationLongitude", v13];
  v82[1] = v14;
  v15 = MEMORY[0x277CCAC30];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v17 = [v15 predicateWithFormat:@"%@ <= %K", v16, @"locationLatitude"];
  v82[2] = v17;
  v18 = MEMORY[0x277CCAC30];
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v20 = v58;
  v21 = [v18 predicateWithFormat:@"%K <= %@", @"locationLatitude", v19];
  v82[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:4];
  v23 = [obja andPredicateWithSubpredicates:v22];

  v52 = v23;
  [v54 addObject:v23];
  v51 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v54];
  [v55 addObject:?];
  v24 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v55];
  [v58 setPredicate:v24];

  v25 = 0;
  v26 = MEMORY[0x277D86220];
  do
  {
    context = objc_autoreleasePoolPush();
    v70[0] = 0;
    v27 = [v64 executeFetchRequest:v20 error:v70];
    v28 = v70[0];

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v47 = NSStringFromSelector(*(v63 + 48));
        v48 = [v20 fetchOffset];
        v49 = [v27 count];
        *buf = 138413315;
        v73 = v47;
        v74 = 2117;
        v75 = v20;
        v76 = 2048;
        v77 = v48;
        v78 = 2048;
        v79 = v49;
        v80 = 2112;
        v81 = v28;
        _os_log_debug_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEBUG, "%@, request, %{sensitive}@, results count, %lu, nearby LOIs, %lu, error, %@", buf, 0x34u);
      }
    }

    v57 = v28;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v27;
    v30 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = 0;
      v62 = *v67;
      while (2)
      {
        v33 = 0;
        v34 = v32;
        do
        {
          if (*v67 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v66 + 1) + 8 * v33);
          v36 = objc_autoreleasePoolPush();
          v37 = +[RTMapItemMO fetchRequest];
          [v37 setReturnsObjectsAsFaults:0];
          v38 = MEMORY[0x277CCAC30];
          v39 = [v35 placeMapItemIdentifier];
          v40 = [v38 predicateWithFormat:@"%K = %@", @"identifier", v39];

          [v37 setPredicate:v40];
          v65 = v34;
          v41 = [v64 executeFetchRequest:v37 error:&v65];
          v32 = v65;

          v42 = MEMORY[0x277D011A0];
          v43 = [v41 firstObject];
          v44 = [v42 createWithManagedObject:v43];

          if ([v44 isEqualToMapItem:*(v63 + 32)])
          {
            v50 = [RTLearnedLocationOfInterest createWithManagedObject:v35];
            v46 = v57;
            (*(*(v63 + 40) + 16))();

            objc_autoreleasePoolPop(v36);
            v25 = obj;

            objc_autoreleasePoolPop(context);
            v20 = v58;
            goto LABEL_21;
          }

          objc_autoreleasePoolPop(v36);
          ++v33;
          v34 = v32;
        }

        while (v31 != v33);
        v31 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v32 = 0;
    }

    v25 = obj;

    v20 = v58;
    [v58 setFetchOffset:{objc_msgSend(v58, "fetchOffset") + objc_msgSend(obj, "count")}];
    [v64 reset];
    objc_autoreleasePoolPop(context);
    v45 = [obj count];
    v46 = v57;
    v26 = MEMORY[0x277D86220];
  }

  while (v45 && !v32 && !v57);
  if (![obj count])
  {
    (*(*(v63 + 40) + 16))();
  }

LABEL_21:
}

- (void)fetchLocationOfInterestWithMapItem:(id)item handler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RTLearnedLocationStore_fetchLocationOfInterestWithMapItem_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = itemCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = itemCopy;
  dispatch_async(queue, block);
}

- (void)_fetchLocationOfInterestWithPlace:(id)place handler:(id)handler
{
  v22[1] = *MEMORY[0x277D85DE8];
  placeCopy = place;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (placeCopy)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __68__RTLearnedLocationStore__fetchLocationOfInterestWithPlace_handler___block_invoke;
      aBlock[3] = &unk_2788C4FB0;
      v18 = placeCopy;
      v20 = a2;
      v9 = handlerCopy;
      v19 = v9;
      v10 = _Block_copy(aBlock);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __68__RTLearnedLocationStore__fetchLocationOfInterestWithPlace_handler___block_invoke_395;
      v15[3] = &unk_2788C48C0;
      v16 = v9;
      [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v15];

      v11 = v18;
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v21 = *MEMORY[0x277CCA450];
      v22[0] = @"requires a valid place.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v14 = [v12 errorWithDomain:v13 code:7 userInfo:v11];
      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }
}

void __68__RTLearnedLocationStore__fetchLocationOfInterestWithPlace_handler___block_invoke(uint64_t a1, void *a2)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedLocationOfInterestMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v25[0] = @"visits";
  v25[1] = @"transitions";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  [v4 setRelationshipKeyPathsForPrefetching:v5];

  [v4 setFetchLimit:1];
  v6 = MEMORY[0x277CCAC30];
  v7 = [*(a1 + 32) identifier];
  v8 = [v6 predicateWithFormat:@"%K == %@", @"placeIdentifier", v7];
  [v4 setPredicate:v8];

  v16 = 0;
  v9 = [v3 executeFetchRequest:v4 error:&v16];

  v10 = v16;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = NSStringFromSelector(*(a1 + 48));
      v15 = [v9 count];
      *buf = 138413058;
      v18 = v14;
      v19 = 2112;
      v20 = v4;
      v21 = 2048;
      v22 = v15;
      v23 = 2112;
      v24 = v10;
      _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v10 || ![v9 count])
  {
    v12 = 0;
  }

  else
  {
    v13 = [v9 firstObject];
    v12 = [RTLearnedLocationOfInterest createWithManagedObject:v13];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchLocationOfInterestWithPlace:(id)place handler:(id)handler
{
  placeCopy = place;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__RTLearnedLocationStore_fetchLocationOfInterestWithPlace_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = placeCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = placeCopy;
  dispatch_async(queue, block);
}

- (void)_fetchLocationsOfInterestWithVisitsWithinDistance:(double)distance location:(id)location handler:(id)handler
{
  v29[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (distance >= 0.0)
    {
      if (locationCopy)
      {
        objc_initWeak(&location, self);
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __93__RTLearnedLocationStore__fetchLocationsOfInterestWithVisitsWithinDistance_location_handler___block_invoke;
        aBlock[3] = &unk_2788CB8C0;
        objc_copyWeak(v24, &location);
        v14 = handlerCopy;
        v23 = v14;
        v22 = locationCopy;
        v24[1] = *&distance;
        v15 = _Block_copy(aBlock);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __93__RTLearnedLocationStore__fetchLocationsOfInterestWithVisitsWithinDistance_location_handler___block_invoke_2;
        v19[3] = &unk_2788C48C0;
        v20 = v14;
        [(RTStore *)self _performBlock:v15 contextType:1 errorHandler:v19];

        objc_destroyWeak(v24);
        objc_destroyWeak(&location);
      }

      else
      {
        v16 = MEMORY[0x277CCA9B8];
        v26 = *MEMORY[0x277CCA450];
        v27 = @"location cannot be nil";
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v18 = [v16 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v17];

        (*(handlerCopy + 2))(handlerCopy, 0, v18);
      }
    }

    else
    {
      v10 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v29[0] = @"distance cannot be less than zero";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v12 = [v10 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v11];

      (*(handlerCopy + 2))(handlerCopy, 0, v12);
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location) = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", &location, 2u);
    }
  }
}

void __93__RTLearnedLocationStore__fetchLocationsOfInterestWithVisitsWithinDistance_location_handler___block_invoke(uint64_t a1, void *a2)
{
  v99[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v74 = v3;
    v75 = +[RTLearnedLocationOfInterestVisitMO fetchRequest];
    [v75 setReturnsObjectsAsFaults:0];
    [*(a1 + 32) latitude];
    [*(a1 + 32) longitude];
    RTCommonCalculateBoundingBox();
    v82 = MEMORY[0x277CCA920];
    v4 = MEMORY[0x277CCAC30];
    [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v86 = v84 = a1;
    v5 = [v4 predicateWithFormat:@"%@ <= %K", v86, @"locationLongitude"];
    v97[0] = v5;
    v6 = MEMORY[0x277CCAC30];
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v8 = [v6 predicateWithFormat:@"%K <= %@", @"locationLongitude", v7];
    v97[1] = v8;
    v9 = MEMORY[0x277CCAC30];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v11 = [v9 predicateWithFormat:@"%@ <= %K", v10, @"locationLatitude"];
    v97[2] = v11;
    v12 = MEMORY[0x277CCAC30];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    v14 = [v12 predicateWithFormat:@"%K <= %@", @"locationLatitude", v13];
    v97[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:4];
    v16 = [v82 andPredicateWithSubpredicates:v15];
    [v75 setPredicate:v16];

    v17 = v75;
    memset(v93, 0, sizeof(v93));
    v18 = [v75 execute:v93];
    v19 = v93[0];
    if (v19)
    {
      (*(*(v84 + 40) + 16))();
      v3 = v74;
    }

    else
    {
      v23 = [MEMORY[0x277CBEB58] set];
      v76 = [MEMORY[0x277CBEB18] array];
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v73 = v18;
      v24 = v18;
      v25 = v84;
      v87 = [v24 countByEnumeratingWithState:&v89 objects:v96 count:16];
      if (v87)
      {
        v26 = *v90;
        v72 = *MEMORY[0x277D01448];
        v71 = *MEMORY[0x277CCA450];
        v78 = v24;
        v79 = v23;
        v77 = *v90;
LABEL_7:
        v27 = 0;
        while (1)
        {
          if (*v90 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v89 + 1) + 8 * v27);
          v29 = objc_autoreleasePoolPush();
          v30 = [v28 locationOfInterest];
          v31 = [v30 identifier];

          if (v31)
          {
            v32 = [v28 locationOfInterest];
            v33 = [v32 identifier];
            v34 = [v23 member:v33];

            if (!v34)
            {
              v85 = v29;
              v81 = objc_alloc(MEMORY[0x277D01160]);
              v83 = [v28 locationLatitude];
              [v83 doubleValue];
              v36 = v35;
              v37 = [v28 locationLongitude];
              [v37 doubleValue];
              v39 = v38;
              v40 = [v28 locationHorizontalUncertainty];
              [v40 doubleValue];
              v42 = v41;
              v43 = [v28 locationAltitude];
              [v43 doubleValue];
              v45 = v44;
              v46 = [v28 locationVerticalUncertainty];
              [v46 doubleValue];
              v48 = v47;
              [v28 locationReferenceFrame];
              v50 = v49 = v25;
              v51 = [v50 intValue];
              v52 = [v28 locationSourceAccuracy];
              v53 = [v81 initWithLatitude:0 longitude:v51 horizontalUncertainty:objc_msgSend(v52 altitude:"intValue") verticalUncertainty:v36 date:v39 referenceFrame:v42 speed:v45 sourceAccuracy:{v48, 0.0}];

              v25 = v49;
              v54 = [WeakRetained distanceCalculator];
              v55 = *(v49 + 32);
              v88 = 0;
              [v54 distanceFromLocation:v53 toLocation:v55 error:&v88];
              v57 = v56;
              v58 = v88;

              if (v58)
              {
                (*(*(v49 + 40) + 16))();
                v3 = v74;
                v17 = v75;
                v19 = 0;
                v23 = v79;
                v29 = v85;
LABEL_22:

                objc_autoreleasePoolPop(v29);
                v18 = v73;
                v63 = v76;
                goto LABEL_23;
              }

              v59 = *(v49 + 56);
              v23 = v79;
              v29 = v85;
              v26 = v77;
              if (v57 <= v59)
              {
                v60 = [v28 locationOfInterest];
                v61 = [RTLearnedLocationOfInterest createWithManagedObject:v60];

                if (!v61)
                {
                  v64 = MEMORY[0x277CCACA8];
                  v65 = [v28 locationOfInterest];
                  v66 = [v65 identifier];
                  v67 = [v64 stringWithFormat:@"reading loiMO with identifier, %@, resulted in nil object", v66];

                  v68 = MEMORY[0x277CCA9B8];
                  v94 = v71;
                  v95 = v67;
                  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
                  v70 = [v68 errorWithDomain:v72 code:0 userInfo:v69];

                  (*(*(v25 + 40) + 16))();
                  v58 = 0;
                  v3 = v74;
                  v17 = v75;
                  v19 = 0;
                  goto LABEL_22;
                }

                [v76 addObject:v61];
                v62 = [v61 identifier];
                [v79 addObject:v62];
              }

              v24 = v78;
            }
          }

          objc_autoreleasePoolPop(v29);
          if (v87 == ++v27)
          {
            v87 = [v24 countByEnumeratingWithState:&v89 objects:v96 count:16];
            if (v87)
            {
              goto LABEL_7;
            }

            break;
          }
        }
      }

      v63 = v76;
      (*(*(v25 + 40) + 16))();
      v3 = v74;
      v17 = v75;
      v19 = 0;
      v18 = v73;
LABEL_23:
    }
  }

  else
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D01448];
    v98 = *MEMORY[0x277CCA450];
    v99[0] = @"swelf is nil";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:&v98 count:1];
    v17 = [v20 errorWithDomain:v21 code:0 userInfo:v22];

    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchLocationsOfInterestWithVisitsWithinDistance:(double)distance location:(id)location handler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__RTLearnedLocationStore_fetchLocationsOfInterestWithVisitsWithinDistance_location_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  distanceCopy = distance;
  v13[4] = self;
  v14 = locationCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = locationCopy;
  dispatch_async(queue, v13);
}

- (void)_fetchLocationOfInterestTransitionsBetweenStartDate:(id)date endDate:(id)endDate handler:(id)handler
{
  v31[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (dateCopy && endDateCopy)
    {
      if ([dateCopy compare:endDateCopy] != 1)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __94__RTLearnedLocationStore__fetchLocationOfInterestTransitionsBetweenStartDate_endDate_handler___block_invoke;
        aBlock[3] = &unk_2788C4910;
        v24 = dateCopy;
        v25 = endDateCopy;
        v27 = a2;
        v19 = handlerCopy;
        v26 = v19;
        v20 = _Block_copy(aBlock);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __94__RTLearnedLocationStore__fetchLocationOfInterestTransitionsBetweenStartDate_endDate_handler___block_invoke_408;
        v21[3] = &unk_2788C48C0;
        v22 = v19;
        [(RTStore *)self _performBlock:v20 contextType:1 errorHandler:v21];

        v17 = v24;
        goto LABEL_9;
      }

      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v28 = *MEMORY[0x277CCA450];
      v29 = @"requires well ordered dates.";
      v14 = MEMORY[0x277CBEAC0];
      v15 = &v29;
      v16 = &v28;
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D01448];
      v30 = *MEMORY[0x277CCA450];
      v31[0] = @"requires valid dates.";
      v14 = MEMORY[0x277CBEAC0];
      v15 = v31;
      v16 = &v30;
    }

    v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    v18 = [v12 errorWithDomain:v13 code:0 userInfo:v17];
    (*(handlerCopy + 2))(handlerCopy, 0, v18);

LABEL_9:
  }
}

void __94__RTLearnedLocationStore__fetchLocationOfInterestTransitionsBetweenStartDate_endDate_handler___block_invoke(uint64_t a1, void *a2)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedLocationOfInterestTransitionMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@ && %K <= %@", @"startDate", *(a1 + 32), @"stopDate", *(a1 + 40)];
  [v4 setPredicate:v5];

  [v4 setReturnsObjectsAsFaults:0];
  v6 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"startDate" ascending:1];
  v36[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  [v4 setSortDescriptors:v7];

  v26 = 0;
  v8 = [v3 executeFetchRequest:v4 error:&v26];
  v9 = v26;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v18 = NSStringFromSelector(*(a1 + 56));
      v19 = [v8 count];
      *buf = 138413058;
      v29 = v18;
      v30 = 2112;
      v31 = v4;
      v32 = 2048;
      v33 = v19;
      v34 = 2112;
      v35 = v9;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v21 = v3;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [RTLearnedTransition createWithManagedObject:*(*(&v22 + 1) + 8 * v16)];
          if (v17)
          {
            [v11 addObject:v17];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v14);
    }

    v8 = v20;
    v3 = v21;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchLocationOfInterestTransitionsBetweenStartDate:(id)date endDate:(id)endDate handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__RTLearnedLocationStore_fetchLocationOfInterestTransitionsBetweenStartDate_endDate_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = dateCopy;
  v17 = endDateCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = endDateCopy;
  v14 = dateCopy;
  dispatch_async(queue, v15);
}

- (void)_fetchMetricsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__RTLearnedLocationStore__fetchMetricsWithHandler___block_invoke;
    aBlock[3] = &unk_2788C7170;
    v6 = handlerCopy;
    v11 = v6;
    v7 = _Block_copy(aBlock);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__RTLearnedLocationStore__fetchMetricsWithHandler___block_invoke_2;
    v8[3] = &unk_2788C48C0;
    v9 = v6;
    [(RTStore *)self _performBlock:v7 contextType:1 errorHandler:v8];
  }
}

void __51__RTLearnedLocationStore__fetchMetricsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 currentDevice];
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = +[RTLearnedVisitMO fetchRequest];
  v7 = MEMORY[0x277CCAC30];
  v33 = v3;
  v8 = [v3 identifier];
  v9 = [v7 predicateWithFormat:@"%K.%K == %@", @"device", @"identifier", v8];
  [v6 setPredicate:v9];

  v36 = 0;
  v32 = v6;
  v10 = [v2 countForFetchRequest:v6 error:&v36];
  v11 = v36;
  [v4 setVisitCountDevice:v10];
  if (v11)
  {
    [v5 addObject:v11];
  }

  v30 = v11;
  +[RTLearnedVisitMO fetchRequest];
  v29 = v35[1] = 0;
  v12 = [v2 countForFetchRequest:? error:?];
  v13 = 0;
  [v4 setVisitCountTotal:v12];
  if (v13)
  {
    [v5 addObject:v13];
  }

  v28 = v13;
  v14 = v5;
  v15 = +[RTLearnedPlaceMO fetchRequest];
  v16 = MEMORY[0x277CCAC30];
  v17 = [v33 identifier];
  v18 = [v16 predicateWithFormat:@"%K.%K == %@", @"device", @"identifier", v17];
  [v15 setPredicate:v18];

  v35[0] = 0;
  v19 = [v2 countForFetchRequest:v15 error:v35];
  v20 = v35[0];
  [v4 setPlaceCountDevice:v19];
  if (v20)
  {
    [v14 addObject:v20];
  }

  v21 = +[RTLearnedPlaceMO fetchRequest];
  v34 = 0;
  v22 = [v2 countForFetchRequest:v21 error:&v34];
  v23 = v34;
  [v4 setPlaceCountTotal:v22];
  v24 = v14;
  if (v23)
  {
    [v14 addObject:v23];
  }

  v25 = *(a1 + 32);
  v26 = _RTSafeArray();
  v27 = _RTMultiErrorCreate();
  (*(v25 + 16))(v25, v4, v27);
}

- (void)fetchMetricsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__RTLearnedLocationStore_fetchMetricsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)fetchVisitsWithoutPlacesForCurrentDeviceWithHandler:(id)handler limit:(id)limit
{
  handlerCopy = handler;
  limitCopy = limit;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__RTLearnedLocationStore_fetchVisitsWithoutPlacesForCurrentDeviceWithHandler_limit___block_invoke;
  block[3] = &unk_2788C67D8;
  v12 = limitCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = limitCopy;
  v10 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)_fetchVisitsWithoutPlacesForCurrentDeviceWithHandler:(id)handler limit:(id)limit
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  limitCopy = limit;
  v8 = limitCopy;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__RTLearnedLocationStore__fetchVisitsWithoutPlacesForCurrentDeviceWithHandler_limit___block_invoke;
    aBlock[3] = &unk_2788C4898;
    v15 = limitCopy;
    v9 = handlerCopy;
    v16 = v9;
    v10 = _Block_copy(aBlock);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__RTLearnedLocationStore__fetchVisitsWithoutPlacesForCurrentDeviceWithHandler_limit___block_invoke_3;
    v12[3] = &unk_2788C48C0;
    v13 = v9;
    [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v12];

    v11 = v15;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTLearnedLocationStore _fetchVisitsWithoutPlacesForCurrentDeviceWithHandler:limit:]";
      v19 = 1024;
      v20 = 4897;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __85__RTLearnedLocationStore__fetchVisitsWithoutPlacesForCurrentDeviceWithHandler_limit___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedVisitMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = MEMORY[0x277CCAC30];
  v6 = [v3 currentDevice];
  v7 = [v6 identifier];
  v8 = [v5 predicateWithFormat:@"%K.%K == %@ && place == nil", @"device", @"identifier", v7];
  [v4 setPredicate:v8];

  v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entryDate" ascending:1];
  v17[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v4 setSortDescriptors:v10];

  v11 = *(a1 + 32);
  if (v11)
  {
    [v4 setFetchLimit:{objc_msgSend(v11, "integerValue")}];
  }

  v16 = 0;
  v12 = [v3 executeFetchRequest:v4 error:&v16];
  v13 = v16;
  v14 = 0;
  if (!v13)
  {
    v15 = [[_RTMap alloc] initWithInput:v12];
    v14 = [(_RTMap *)v15 withBlock:&__block_literal_global_414];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchVisitsWithIncompletePlacesForCurrentDeviceWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__RTLearnedLocationStore_fetchVisitsWithIncompletePlacesForCurrentDeviceWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchVisitsWithIncompletePlacesForCurrentDeviceWithHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v6 = handlerCopy;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__RTLearnedLocationStore__fetchVisitsWithIncompletePlacesForCurrentDeviceWithHandler___block_invoke;
    aBlock[3] = &unk_2788C4FB0;
    aBlock[4] = self;
    v14 = a2;
    v7 = handlerCopy;
    v13 = v7;
    v8 = _Block_copy(aBlock);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__RTLearnedLocationStore__fetchVisitsWithIncompletePlacesForCurrentDeviceWithHandler___block_invoke_421;
    v10[3] = &unk_2788C48C0;
    v11 = v7;
    [(RTStore *)self _performBlock:v8 contextType:1 errorHandler:v10];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTLearnedLocationStore _fetchVisitsWithIncompletePlacesForCurrentDeviceWithHandler:]";
      v17 = 1024;
      v18 = 4946;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __86__RTLearnedLocationStore__fetchVisitsWithIncompletePlacesForCurrentDeviceWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v46[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) predicateForObjectsFromCurrentDevice];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != nil", @"place"];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K == nil", @"place", @"mapItem"];
  v7 = +[RTLearnedVisitMO fetchRequest];
  [v7 setReturnsObjectsAsFaults:0];
  v8 = MEMORY[0x277CCA920];
  v46[0] = v4;
  v46[1] = v5;
  v30 = v6;
  v46[2] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
  v10 = [v8 andPredicateWithSubpredicates:v9];
  [v7 setPredicate:v10];

  v11 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entryDate" ascending:1];
  v45 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  [v7 setSortDescriptors:v12];

  v35 = 0;
  v13 = [v3 executeFetchRequest:v7 error:&v35];
  v14 = v35;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(*(a1 + 48));
      v25 = v24 = v13;
      v26 = [v24 count];
      *buf = 138413058;
      v38 = v25;
      v39 = 2112;
      v40 = v7;
      v41 = 2048;
      v42 = v26;
      v43 = 2112;
      v44 = v14;
      _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);

      v13 = v24;
    }
  }

  v16 = a1;
  if (v14)
  {
    v17 = 0;
  }

  else
  {
    v28 = v5;
    v29 = v4;
    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v27 = v13;
    v18 = v13;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [RTLearnedVisit createWithManagedObject:*(*(&v31 + 1) + 8 * i)];
          if (v23)
          {
            [v17 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v20);
    }

    v4 = v29;
    v13 = v27;
    v5 = v28;
  }

  (*(*(v16 + 40) + 16))();
}

- (void)fetchMapItemWithMuid:(unint64_t)muid predicate:(id)predicate handler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__RTLearnedLocationStore_fetchMapItemWithMuid_predicate_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = predicateCopy;
  v15 = handlerCopy;
  muidCopy = muid;
  v11 = handlerCopy;
  v12 = predicateCopy;
  dispatch_async(queue, v13);
}

- (void)_fetchMapItemWithMuid:(unint64_t)muid predicate:(id)predicate handler:(id)handler
{
  v25[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (muid)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __66__RTLearnedLocationStore__fetchMapItemWithMuid_predicate_handler___block_invoke;
      aBlock[3] = &unk_2788CB6F0;
      muidCopy = muid;
      v20 = predicateCopy;
      v23 = a2;
      v11 = handlerCopy;
      v21 = v11;
      v12 = _Block_copy(aBlock);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __66__RTLearnedLocationStore__fetchMapItemWithMuid_predicate_handler___block_invoke_428;
      v17[3] = &unk_2788C48C0;
      v18 = v11;
      [(RTStore *)self _performBlock:v12 contextType:1 errorHandler:v17];

      v13 = v20;
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277D01448];
      v24 = *MEMORY[0x277CCA450];
      v25[0] = @"requires a valid muid.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v16 = [v14 errorWithDomain:v15 code:7 userInfo:v13];
      (*(handlerCopy + 2))(handlerCopy, 0, v16);
    }
  }
}

void __66__RTLearnedLocationStore__fetchMapItemWithMuid_predicate_handler___block_invoke(uint64_t a1, void *a2)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTMapItemMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:1];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %lld", @"muid", *(a1 + 48)];
  v6 = MEMORY[0x277CCA920];
  v31[0] = *(a1 + 32);
  v31[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v8 = [v6 andPredicateWithSubpredicates:v7];
  [v4 setPredicate:v8];

  v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"creationDate" ascending:0];
  v30 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  [v4 setSortDescriptors:v10];

  v21 = 0;
  v11 = [v3 executeFetchRequest:v4 error:&v21];

  v12 = v21;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v19 = NSStringFromSelector(*(a1 + 56));
      v20 = [v11 count];
      *buf = 138413058;
      v23 = v19;
      v24 = 2112;
      v25 = v4;
      v26 = 2048;
      v27 = v20;
      v28 = 2112;
      v29 = v12;
      _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v12 || ![v11 count])
  {
    v14 = 0;
  }

  else
  {
    v15 = MEMORY[0x277D011A0];
    v16 = [v11 firstObject];
    v14 = [v15 createWithManagedObject:v16];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v23 = v18;
      v24 = 2112;
      v25 = v14;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, mapItem, %@, error, %@", buf, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)groupCloudManagedObjectsByDeviceIdentifier:(id)identifier
{
  v45 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = identifierCopy;
  v5 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v37;
    v30 = *v37;
    v31 = v4;
    do
    {
      v8 = 0;
      v32 = v6;
      do
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v36 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        device = [v9 device];
        identifier = [device identifier];

        if (!identifier)
        {
          v34 = v10;
          v15 = MEMORY[0x277CCACA8];
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          identifier2 = [v9 identifier];
          uUIDString = [identifier2 UUIDString];
          device2 = [v9 device];
          device3 = [v9 device];
          identifier3 = [device3 identifier];
          v14 = [v15 stringWithFormat:@"Device identifier was nil while grouping RTCloudManagedObject (type: %@, identifier, %@), by device. Device, %@, Device identifier, %@", v17, uUIDString, device2, identifier3];

          v23 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v41 = v14;
            _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
          }

          v7 = v30;
          v4 = v31;
          v6 = v32;
          v10 = v34;
          goto LABEL_22;
        }

        v13 = [v4 objectForKey:identifier];
        v14 = v13;
        if (v13)
        {
          [v13 addObject:v9];
        }

        else
        {
          v24 = objc_opt_new();
          [v24 addObject:v9];
          if (v24)
          {
            [v4 setObject:v24 forKey:identifier];
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v35 = v10;
            v25 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              uUIDString2 = [identifier UUIDString];
              *buf = 138412290;
              v41 = uUIDString2;
              _os_log_debug_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEBUG, "New grouping of cloud managed objects for device with identifier, %@", buf, 0xCu);

              v6 = v32;
            }

            v10 = v35;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v23 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            uUIDString3 = [identifier UUIDString];
            *buf = 138740227;
            v41 = v9;
            v42 = 2112;
            v43 = uUIDString3;
            _os_log_debug_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEBUG, "Added cloud managed object %{sensitive}@ to group for device with identifier, %@", buf, 0x16u);

            v6 = v32;
          }

LABEL_22:
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v6);
  }

  v28 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];

  return v28;
}

- (BOOL)_processDeletionRequestWithFetchRequest:(id)request context:(id)context error:(id *)error
{
  requestCopy = request;
  contextCopy = context;
  v11 = contextCopy;
  if (!requestCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fetchRequest", buf, 2u);
    }

    if (error)
    {
      v14 = @"fetchRequest";
LABEL_16:
      _RTErrorInvalidParameterCreate(v14);
      *error = v12 = 0;
      goto LABEL_18;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  if (!contextCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    if (error)
    {
      v14 = @"context";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v11 options] & 2) == 0)
  {
    v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"This operation requires a context with RTPersistenceContextOptionsAllowTombstones." userInfo:0];
    objc_exception_throw(v17);
  }

  *buf = 0;
  v25 = buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__82;
  v28 = __Block_byref_object_dispose__82;
  v29 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__RTLearnedLocationStore__processDeletionRequestWithFetchRequest_context_error___block_invoke;
  v18[3] = &unk_2788C9D78;
  v19 = v11;
  v20 = requestCopy;
  selfCopy = self;
  v22 = buf;
  v23 = a2;
  [v19 performBlockAndWait:v18];
  if (error)
  {
    *error = *(v25 + 5);
  }

  v12 = *(v25 + 5) == 0;

  _Block_object_dispose(buf, 8);
LABEL_18:

  return v12;
}

void __80__RTLearnedLocationStore__processDeletionRequestWithFetchRequest_context_error___block_invoke(uint64_t a1)
{
  v90 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v68 = a1;
  v3 = *(a1 + 40);
  v79 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v79];
  v5 = v79;
  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v58 = *(v68 + 40);
      *buf = 138412546;
      v81 = v58;
      v82 = 2112;
      v83 = v5;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Received error while fetching cloud managed objects to delete, fetchRequest, %@, error, %@", buf, 0x16u);
    }

    v7 = *(*(v68 + 56) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else if ([v4 count])
  {
    [*(v68 + 32) setMirroringQualityOfService:3];
    v62 = v4;
    v10 = [*(v68 + 48) groupCloudManagedObjectsByDeviceIdentifier:v4];
    v61 = [*(v68 + 32) transactionAuthor];
    [*(v68 + 32) setTransactionAuthor:@"CloudDeletion"];
    v65 = objc_opt_new();
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v75 objects:v89 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = MEMORY[0x277D86220];
      v15 = *v76;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v76 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v75 + 1) + 8 * i);
          v18 = [v11 objectForKey:v17];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v19 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = [v17 UUIDString];
              *buf = 138412547;
              v81 = v20;
              v82 = 2117;
              v83 = v18;
              _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "Building delete request for device with identifier, %@, for cloud objects, %{sensitive}@", buf, 0x16u);
            }
          }

          v21 = [RTEntityDeletionRequestMO managedObjectWithCloudManagedObjects:v18 context:*(v68 + 32)];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v22 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v81 = v21;
              _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "Created deletion request, %@", buf, 0xCu);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v75 objects:v89 count:16];
      }

      while (v13);
    }

    v23 = v68;
    v24 = *(v68 + 32);
    v74 = 0;
    v25 = [v24 save:&v74];
    v26 = v74;
    v27 = v26;
    if (!v25 || v26)
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v59 = NSStringFromSelector(*(v68 + 64));
        *buf = 138412546;
        v81 = v59;
        v82 = 2112;
        v83 = v27;
        _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      if (v27)
      {
        [v65 addObject:v27];
      }
    }

    v60 = v27;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v9 = v11;
    v29 = [v9 countByEnumeratingWithState:&v70 objects:v88 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v71;
      v64 = v9;
      v66 = *v71;
      do
      {
        v32 = 0;
        v67 = v30;
        do
        {
          if (*v71 != v31)
          {
            objc_enumerationMutation(v9);
          }

          v33 = *(*(&v70 + 1) + 8 * v32);
          v34 = [v9 objectForKey:v33];
          v35 = [*(v23 + 32) currentDevice];
          v36 = [v35 identifier];
          v37 = [v33 isEqual:v36];

          if (v37)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v38 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                v39 = [v33 UUIDString];
                *buf = 138412290;
                v81 = v39;
                _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "Batch deleting objects from current device with identifier, %@", buf, 0xCu);
              }
            }

            v40 = objc_alloc(MEMORY[0x277CBE428]);
            v41 = [*(v23 + 40) entityName];
            v42 = [v40 initWithEntityName:v41];

            v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"@distinctUnionOfObjects.%@", @"identifier"];
            v44 = [v34 valueForKeyPath:v43];
            v45 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K in (%@)", @"identifier", v44, v60];
            [v42 setPredicate:v45];

            v46 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v42];
            [v46 setResultType:2];
            v47 = *(v23 + 32);
            v69 = 0;
            v48 = [v47 executeRequest:v46 error:&v69];
            v49 = v69;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v50 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
              {
                v63 = NSStringFromSelector(*(v23 + 64));
                v51 = [v48 result];
                *buf = 138413058;
                v81 = v63;
                v82 = 2112;
                v83 = v46;
                v84 = 2112;
                v85 = v51;
                v52 = v51;
                v86 = 2112;
                v87 = v49;
                _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "%@, request, %@, deleted count, %@, error, %@", buf, 0x2Au);

                v23 = v68;
              }

              v9 = v64;
            }

            if (v49)
            {
              [v65 addObject:v49];
            }

            v31 = v66;
            v30 = v67;
          }

          ++v32;
        }

        while (v30 != v32);
        v30 = [v9 countByEnumeratingWithState:&v70 objects:v88 count:16];
      }

      while (v30);
    }

    v53 = _RTSafeArray();
    v54 = _RTMultiErrorCreate();
    v55 = *(*(v23 + 56) + 8);
    v56 = *(v55 + 40);
    *(v55 + 40) = v54;

    [*(v23 + 32) setTransactionAuthor:{v61, 1}];
    v5 = 0;
    v4 = v62;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_48;
    }

    v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v57 = *(v68 + 40);
      *buf = 138412290;
      v81 = v57;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "No such objects exist satisfying fetch request %@", buf, 0xCu);
    }
  }

LABEL_48:
}

- (void)_removePlace:(id)place handler:(id)handler
{
  v22[1] = *MEMORY[0x277D85DE8];
  placeCopy = place;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (placeCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__RTLearnedLocationStore__removePlace_handler___block_invoke;
    aBlock[3] = &unk_2788C4910;
    v17 = placeCopy;
    selfCopy = self;
    v20 = a2;
    v10 = v9;
    v19 = v10;
    v11 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v11 contextType:0 errorHandler:v10];

    v12 = v17;
LABEL_5:

    goto LABEL_6;
  }

  if (handlerCopy)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D01448];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"requires a valid place.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v15 = [v13 errorWithDomain:v14 code:7 userInfo:v12];
    (v9)[2](v9, v15);

    goto LABEL_5;
  }

LABEL_6:
}

void __47__RTLearnedLocationStore__removePlace_handler___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedPlaceMO fetchRequest];
  v5 = MEMORY[0x277CCAC30];
  v6 = [*(a1 + 32) identifier];
  v7 = [v5 predicateWithFormat:@"%K == %@", @"identifier", v6];
  [v4 setPredicate:v7];

  [v4 setFetchBatchSize:300];
  v8 = [*(a1 + 40) persistenceManager];
  v9 = [v8 persistenceContextWithOptions:2];

  v10 = *(a1 + 40);
  v32 = 0;
  v26 = v9;
  [v10 _processDeletionRequestWithFetchRequest:v4 context:v9 error:&v32];
  v11 = v32;
  v12 = +[RTLearnedLocationOfInterestMO fetchRequest];
  v13 = MEMORY[0x277CCAC30];
  v14 = [*(a1 + 32) identifier];
  v15 = [v13 predicateWithFormat:@"%K == %@", @"identifier", v14];
  [v12 setPredicate:v15];

  v16 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v12];
  [v16 setResultType:2];
  v31 = 0;
  v17 = [v3 executeRequest:v16 error:&v31];

  v18 = v31;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = NSStringFromSelector(*(a1 + 56));
      v21 = [v17 result];
      *buf = 138413058;
      v34 = v20;
      v35 = 2112;
      v36 = v16;
      v37 = 2112;
      v38 = v21;
      v39 = 2112;
      v40 = v18;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@, request, %@, deleted count, %@, error, %@", buf, 0x2Au);
    }
  }

  v22 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTLearnedLocationStore__removePlace_handler___block_invoke_448;
  block[3] = &unk_2788C64E0;
  v23 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v29 = v18;
  v30 = v23;
  v28 = v11;
  v24 = v18;
  v25 = v11;
  dispatch_async(v22, block);
}

void __47__RTLearnedLocationStore__removePlace_handler___block_invoke_448(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__RTLearnedLocationStore__removePlace_handler___block_invoke_2;
  v3[3] = &unk_2788CB8E8;
  v6 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _removeUnreferencedMapItems:v3];
}

void __47__RTLearnedLocationStore__removePlace_handler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = _RTSafeArray();
    v4 = _RTMultiErrorCreate();

    (*(*(a1 + 48) + 16))(*(a1 + 48), v4, v3);
  }
}

- (void)removePlace:(id)place handler:(id)handler
{
  placeCopy = place;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__RTLearnedLocationStore_removePlace_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = placeCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = placeCopy;
  dispatch_async(queue, block);
}

- (void)_removePlacesWithHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __51__RTLearnedLocationStore__removePlacesWithHandler___block_invoke;
  v10 = &unk_2788C4898;
  selfCopy = self;
  v12 = handlerCopy;
  v5 = handlerCopy;
  v6 = _Block_copy(&v7);
  [(RTStore *)self _performBlock:v6 contextType:0 errorHandler:v5, v7, v8, v9, v10, selfCopy];
}

void __51__RTLearnedLocationStore__removePlacesWithHandler___block_invoke(uint64_t a1)
{
  v2 = +[RTLearnedPlaceMO fetchRequest];
  v3 = [*(a1 + 32) persistenceManager];
  v4 = [v3 persistenceContextWithOptions:2];

  v5 = *(a1 + 32);
  v8 = 0;
  [v5 _processDeletionRequestWithFetchRequest:v2 context:v4 error:&v8];
  v6 = v8;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (void)removePlacesWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__RTLearnedLocationStore_removePlacesWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_removeUnreferencedPlacesWithHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __63__RTLearnedLocationStore__removeUnreferencedPlacesWithHandler___block_invoke;
  v10 = &unk_2788C9110;
  selfCopy = self;
  v12 = handlerCopy;
  v5 = handlerCopy;
  v6 = _Block_copy(&v7);
  [(RTStore *)self _performBlock:v6 contextType:0 errorHandler:v5, v7, v8, v9, v10, selfCopy];
}

void __63__RTLearnedLocationStore__removeUnreferencedPlacesWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedPlaceMO fetchRequest];
  v5 = 0x277CCA000uLL;
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K.%K & %lu) == 0", @"mapItem", @"mapItemSource", *MEMORY[0x277D014A0]];
  [v4 setPredicate:v6];

  v51[0] = @"identifier";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
  [v4 setPropertiesToFetch:v7];

  [v4 setResultType:2];
  v47 = 0;
  v40 = v3;
  v8 = [v3 executeFetchRequest:v4 error:&v47];
  v9 = v47;
  if (v9)
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v9);
    }

    goto LABEL_28;
  }

  v36 = a1;
  v37 = v4;
  v38 = [MEMORY[0x277CBEB58] set];
  v39 = [MEMORY[0x277CBEB18] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v35 = v8;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = v12;
  v14 = *v44;
  do
  {
    v15 = 0;
    do
    {
      if (*v44 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v43 + 1) + 8 * v15);
      v17 = objc_autoreleasePoolPush();
      v18 = [v16 objectForKey:@"identifier"];
      if (v18)
      {
        v19 = +[RTLearnedLocationOfInterestMO fetchRequest];
        v20 = v5;
        v21 = [*(v5 + 3120) predicateWithFormat:@"%K == %@", @"placeIdentifier", v18];
        [v19 setPredicate:v21];

        v42 = 0;
        v22 = [v40 countForFetchRequest:v19 error:&v42];
        v23 = v42;
        if (v23)
        {
          v24 = v39;
          v25 = v23;
          goto LABEL_12;
        }

        if (!v22)
        {
          v24 = v38;
          v25 = v18;
LABEL_12:
          [v24 addObject:v25];
        }

        v5 = v20;
        goto LABEL_17;
      }

      v19 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v49 = v16;
        _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "fetched learned place has nil identifier, %@", buf, 0xCu);
      }

LABEL_17:

      objc_autoreleasePoolPop(v17);
      ++v15;
    }

    while (v13 != v15);
    v26 = [v11 countByEnumeratingWithState:&v43 objects:v50 count:16];
    v13 = v26;
  }

  while (v26);
LABEL_21:

  v27 = _RTSafeArray();
  v28 = _RTMultiErrorCreate();

  if (v28)
  {
    v8 = v35;
    v29 = *(v36 + 40);
    if (v29)
    {
      (*(v29 + 16))(v29, v28);
    }
  }

  else
  {
    v30 = [*(v36 + 32) persistenceManager];
    v31 = [v30 persistenceContextWithOptions:2];

    v32 = *(v36 + 32);
    v41 = 0;
    [v32 deletePlacesWithinIdentifierSetWithZeroVisits:v38 context:v40 tombstoneContext:v31 error:&v41];
    v33 = v41;
    v34 = *(v36 + 40);
    if (v34)
    {
      (*(v34 + 16))(v34, v33);
    }

    v8 = v35;
  }

  v4 = v37;
  v9 = 0;
LABEL_28:
}

- (void)removeUnreferencedPlacesWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__RTLearnedLocationStore_removeUnreferencedPlacesWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_removeVisits:(id)visits handler:(id)handler
{
  v21[1] = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  handlerCopy = handler;
  if ([visitsCopy count])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__RTLearnedLocationStore__removeVisits_handler___block_invoke;
    aBlock[3] = &unk_2788C4910;
    v16 = visitsCopy;
    selfCopy = self;
    v19 = a2;
    v9 = handlerCopy;
    v18 = v9;
    v10 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v10 contextType:0 errorHandler:v9];

    v11 = v16;
LABEL_5:

    goto LABEL_6;
  }

  if (handlerCopy)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D01448];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"requires valid visits.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v14 = [v12 errorWithDomain:v13 code:7 userInfo:v11];
    (*(handlerCopy + 2))(handlerCopy, v14);

    goto LABEL_5;
  }

LABEL_6:
}

void __48__RTLearnedLocationStore__removeVisits_handler___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v31 + 1) + 8 * i) identifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v7);
  }

  v11 = +[RTLearnedVisitMO fetchRequest];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"identifier", v4];
  [v11 setPredicate:v12];

  v13 = [*(a1 + 40) persistenceManager];
  v14 = [v13 persistenceContextWithOptions:2];

  v15 = *(a1 + 40);
  v30 = 0;
  v26 = v14;
  [v15 _processDeletionRequestWithFetchRequest:v11 context:v14 error:&v30];
  v27 = v30;
  v16 = +[RTLearnedLocationOfInterestVisitMO fetchRequest];
  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"identifier", v4];
  [v16 setPredicate:v17];

  v18 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v16];
  [v18 setResultType:2];
  v28 = v3;
  v29 = 0;
  v19 = [v3 executeRequest:v18 error:&v29];
  v20 = v29;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = NSStringFromSelector(*(a1 + 56));
      v23 = [v19 result];
      *buf = 138413058;
      v36 = v22;
      v37 = 2112;
      v38 = v18;
      v39 = 2112;
      v40 = v23;
      v41 = 2112;
      v42 = v20;
      _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, request, %@, deleted count, %@, error, %@", buf, 0x2Au);
    }
  }

  if (*(a1 + 48))
  {
    v24 = _RTSafeArray();
    v25 = _RTMultiErrorCreate();

    (*(*(a1 + 48) + 16))(*(a1 + 48), v25);
  }
}

- (void)removeVisits:(id)visits handler:(id)handler
{
  visitsCopy = visits;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTLearnedLocationStore_removeVisits_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = visitsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = visitsCopy;
  dispatch_async(queue, block);
}

- (void)_removeVisitsWithHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __51__RTLearnedLocationStore__removeVisitsWithHandler___block_invoke;
  v10 = &unk_2788C4898;
  selfCopy = self;
  v12 = handlerCopy;
  v5 = handlerCopy;
  v6 = _Block_copy(&v7);
  [(RTStore *)self _performBlock:v6 contextType:0 errorHandler:v5, v7, v8, v9, v10, selfCopy];
}

void __51__RTLearnedLocationStore__removeVisitsWithHandler___block_invoke(uint64_t a1)
{
  v2 = +[RTLearnedVisitMO fetchRequest];
  v3 = [*(a1 + 32) persistenceManager];
  v4 = [v3 persistenceContextWithOptions:2];

  v5 = *(a1 + 32);
  v8 = 0;
  [v5 _processDeletionRequestWithFetchRequest:v2 context:v4 error:&v8];
  v6 = v8;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (void)removeVisitsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__RTLearnedLocationStore_removeVisitsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_removeTransitionsWithHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __56__RTLearnedLocationStore__removeTransitionsWithHandler___block_invoke;
  v10 = &unk_2788C4898;
  selfCopy = self;
  v12 = handlerCopy;
  v5 = handlerCopy;
  v6 = _Block_copy(&v7);
  [(RTStore *)self _performBlock:v6 contextType:0 errorHandler:v5, v7, v8, v9, v10, selfCopy];
}

void __56__RTLearnedLocationStore__removeTransitionsWithHandler___block_invoke(uint64_t a1)
{
  v2 = +[RTLearnedTransitionMO fetchRequest];
  v3 = [*(a1 + 32) persistenceManager];
  v4 = [v3 persistenceContextWithOptions:2];

  v5 = *(a1 + 32);
  v8 = 0;
  [v5 _processDeletionRequestWithFetchRequest:v2 context:v4 error:&v8];
  v6 = v8;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

- (void)removeTransitionsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__RTLearnedLocationStore_removeTransitionsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_removeTransitionsReferencingVisits:(id)visits handler:(id)handler
{
  v21[1] = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  handlerCopy = handler;
  if ([visitsCopy count])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__RTLearnedLocationStore__removeTransitionsReferencingVisits_handler___block_invoke;
    aBlock[3] = &unk_2788C4910;
    v16 = visitsCopy;
    selfCopy = self;
    v19 = a2;
    v9 = handlerCopy;
    v18 = v9;
    v10 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v10 contextType:0 errorHandler:v9];

    v11 = v16;
LABEL_5:

    goto LABEL_6;
  }

  if (handlerCopy)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D01448];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"requires valid visits.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v14 = [v12 errorWithDomain:v13 code:0 userInfo:v11];
    (*(handlerCopy + 2))(handlerCopy, v14);

    goto LABEL_5;
  }

LABEL_6:
}

void __70__RTLearnedLocationStore__removeTransitionsReferencingVisits_handler___block_invoke(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v42 = a2;
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v46;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v46 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v45 + 1) + 8 * i) identifier];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v45 objects:v59 count:16];
    }

    while (v6);
  }

  v10 = +[RTLearnedTransitionMO fetchRequest];
  v11 = MEMORY[0x277CCA920];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"origin.identifier", v3];
  v58[0] = v12;
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"destination.identifier", v3];
  v58[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  v15 = [v11 orPredicateWithSubpredicates:v14];
  [v10 setPredicate:v15];

  v16 = [*(a1 + 40) persistenceManager];
  v17 = [v16 persistenceContextWithOptions:2];

  v18 = *(a1 + 40);
  v44 = 0;
  v41 = v10;
  [v18 _processDeletionRequestWithFetchRequest:v10 context:v17 error:&v44];
  v19 = v44;
  v20 = +[RTLearnedLocationOfInterestTransitionMO fetchRequest];
  v21 = MEMORY[0x277CCA920];
  v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"visitIdentifierOrigin", v3];
  v57[0] = v22;
  v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"visitIdentifierDestination", v3];
  v57[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v25 = [v21 orPredicateWithSubpredicates:v24];
  [v20 setPredicate:v25];

  v26 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v20];
  [v26 setResultType:2];
  v43 = 0;
  v27 = v42;
  v28 = [v42 executeRequest:v26 error:&v43];
  v29 = v43;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      NSStringFromSelector(*(a1 + 56));
      v31 = v39 = v19;
      [v28 result];
      v32 = v40 = v17;
      *buf = 138413058;
      v50 = v31;
      v51 = 2112;
      v52 = v26;
      v53 = 2112;
      v54 = v32;
      v55 = 2112;
      v56 = v29;
      _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@, request, %@, deleted count, %@, error, %@", buf, 0x2Au);

      v17 = v40;
      v19 = v39;
    }
  }

  if (*(a1 + 48))
  {
    v33 = _RTSafeArray();
    _RTMultiErrorCreate();
    v34 = v20;
    v35 = v28;
    v36 = v19;
    v38 = v37 = v17;

    (*(*(a1 + 48) + 16))(*(a1 + 48), v38);
    v17 = v37;
    v19 = v36;
    v28 = v35;
    v20 = v34;
    v27 = v42;
  }
}

- (void)removeTransitionsReferencingVisits:(id)visits handler:(id)handler
{
  visitsCopy = visits;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RTLearnedLocationStore_removeTransitionsReferencingVisits_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = visitsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = visitsCopy;
  dispatch_async(queue, block);
}

- (id)createFetchRequestForOverlappingVisits:(id)visits entityName:(id)name entryDatePropertyName:(id)propertyName exitDatePropertyName:(id)datePropertyName context:(id)context error:(id *)error
{
  v83[1] = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  nameCopy = name;
  propertyNameCopy = propertyName;
  datePropertyNameCopy = datePropertyName;
  contextCopy = context;
  v18 = contextCopy;
  if (!error)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_20;
  }

  if (!visitsCopy)
  {
    v44 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedVisits", buf, 2u);
    }

    v45 = @"learnedVisits";
    goto LABEL_30;
  }

  if (!nameCopy)
  {
    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: entityName", buf, 2u);
    }

    v45 = @"entityName";
    goto LABEL_30;
  }

  if (!contextCopy)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    v45 = @"context";
LABEL_30:
    _RTErrorInvalidParameterCreate(v45);
    *error = v42 = 0;
    goto LABEL_31;
  }

  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];
  entitiesByName = [managedObjectModel entitiesByName];
  v22 = [entitiesByName objectForKeyedSubscript:nameCopy];

  if (!v22)
  {
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"entity, %@, not found in model", nameCopy];
    v50 = MEMORY[0x277CCA9B8];
    v51 = *MEMORY[0x277D01448];
    v82 = *MEMORY[0x277CCA450];
    v83[0] = nameCopy;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:&v82 count:1];
    v53 = [v50 errorWithDomain:v51 code:7 userInfo:v52];

    v54 = v53;
    *error = v53;

LABEL_20:
    v42 = 0;
    goto LABEL_31;
  }

  v69 = datePropertyNameCopy;
  v70 = propertyNameCopy;
  v23 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:nameCopy];
  v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(visitsCopy, "count")}];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = visitsCopy;
  v25 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v72;
    v65 = nameCopy;
    v66 = visitsCopy;
    errorCopy = error;
    v64 = v23;
    v68 = v24;
LABEL_8:
    v28 = 0;
    while (1)
    {
      if (*v72 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(*(&v71 + 1) + 8 * v28);
      v30 = MEMORY[0x277CCAC30];
      entryDate = [v29 entryDate];
      exitDate = [v29 exitDate];
      v33 = [v30 predicateWithFormat:@"%K between { %@, %@ }", v70, entryDate, exitDate];

      v34 = MEMORY[0x277CCAC30];
      entryDate2 = [v29 entryDate];
      exitDate2 = [v29 exitDate];
      v37 = [v34 predicateWithFormat:@"%K between { %@, %@ }", v69, entryDate2, exitDate2];

      if (!v33 || !v37)
      {
        break;
      }

      v38 = MEMORY[0x277CCA920];
      v78[0] = v33;
      v78[1] = v37;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
      v40 = [v38 orPredicateWithSubpredicates:v39];

      if (!v40)
      {
        v55 = MEMORY[0x277CCA9B8];
        v56 = *MEMORY[0x277D01448];
        v76 = *MEMORY[0x277CCA450];
        v77 = @"could not construct compound predicate";
        v57 = MEMORY[0x277CBEAC0];
        v58 = &v77;
        v59 = &v76;
        goto LABEL_37;
      }

      [v68 addObject:v40];

      if (v26 == ++v28)
      {
        v26 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
        nameCopy = v65;
        visitsCopy = v66;
        v23 = v64;
        v24 = v68;
        if (v26)
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }
    }

    v55 = MEMORY[0x277CCA9B8];
    v56 = *MEMORY[0x277D01448];
    v79 = *MEMORY[0x277CCA450];
    v80 = @"could not construct both entry and exit date predicates";
    v57 = MEMORY[0x277CBEAC0];
    v58 = &v80;
    v59 = &v79;
LABEL_37:
    v60 = [v57 dictionaryWithObjects:v58 forKeys:v59 count:1];
    v61 = [v55 errorWithDomain:v56 code:0 userInfo:v60];

    v62 = v61;
    *errorCopy = v61;

    v42 = 0;
    nameCopy = v65;
    visitsCopy = v66;
    datePropertyNameCopy = v69;
    propertyNameCopy = v70;
    v23 = v64;
    v24 = v68;
    goto LABEL_38;
  }

LABEL_16:

  v41 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v24];
  [v23 setPredicate:v41];

  v42 = v23;
  datePropertyNameCopy = v69;
  propertyNameCopy = v70;
LABEL_38:

LABEL_31:

  return v42;
}

- (id)identifiersForPlacesThatOwnVisitIdentifiers:(id)identifiers context:(id)context error:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  contextCopy = context;
  v9 = contextCopy;
  if (error)
  {
    if (identifiersCopy)
    {
      if (contextCopy)
      {
        v10 = +[RTLearnedPlaceMO fetchRequest];
        identifiersCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"SUBQUERY(%K, $v, $v.%K IN %@).@count > 0", @"visits", @"identifier", identifiersCopy];
        [v10 setPredicate:identifiersCopy];
        [v10 setFetchBatchSize:10];
        [v10 setReturnsObjectsAsFaults:1];
        v40[0] = @"identifier";
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
        [v10 setPropertiesToFetch:v12];

        v37 = 0;
        v13 = [v9 executeFetchRequest:v10 error:&v37];
        v14 = v37;
        v15 = v14;
        if (v14)
        {
          v16 = v14;
          v17 = 0;
          *error = v15;
        }

        else
        {
          v32 = identifiersCopy;
          v17 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v13, "count")}];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v31 = v13;
          v22 = v13;
          v23 = [v22 countByEnumeratingWithState:&v33 objects:v39 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v34;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v34 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v33 + 1) + 8 * i);
                identifier = [v27 identifier];

                if (identifier)
                {
                  identifier2 = [v27 identifier];
                  [v17 addObject:identifier2];
                }

                [v9 refreshObject:v27 mergeChanges:0];
              }

              v24 = [v22 countByEnumeratingWithState:&v33 objects:v39 count:16];
            }

            while (v24);
          }

          [v9 reset];
          v13 = v31;
          identifiersCopy = v32;
          v15 = 0;
        }

        goto LABEL_27;
      }

      v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
      }

      v20 = @"context";
    }

    else
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitIdentifiers", buf, 2u);
      }

      v20 = @"visitIdentifiers";
    }

    _RTErrorInvalidParameterCreate(v20);
    *error = v17 = 0;
    goto LABEL_27;
  }

  v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v17 = 0;
LABEL_27:

  return v17;
}

- (id)fetchVisitIdentifiersUsingFetchRequest:(id)request context:(id)context error:(id *)error
{
  v41[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  contextCopy = context;
  v9 = contextCopy;
  if (error)
  {
    if (requestCopy)
    {
      if (contextCopy)
      {
        entityName = [requestCopy entityName];
        v11 = +[(NSManagedObject *)RTLearnedVisitMO];
        v12 = [entityName isEqual:v11];

        if (v12)
        {
          v13 = [requestCopy copy];
          [v13 setFetchBatchSize:10];
          [v13 setReturnsObjectsAsFaults:1];
          v39 = @"identifier";
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
          [v13 setPropertiesToFetch:v14];

          v37 = 0;
          v15 = [v9 executeFetchRequest:v13 error:&v37];
          v16 = v37;
          v17 = v16;
          if (v16)
          {
            v18 = v16;
            v19 = 0;
            *error = v17;
          }

          else
          {
            v30 = [[_RTMap alloc] initWithInput:v15];
            v32 = MEMORY[0x277D85DD0];
            v33 = 3221225472;
            v34 = __79__RTLearnedLocationStore_fetchVisitIdentifiersUsingFetchRequest_context_error___block_invoke;
            v35 = &unk_2788CB910;
            v31 = v9;
            v36 = v31;
            v19 = [(_RTMap *)v30 withBlock:&v32];

            [v31 reset];
          }

          goto LABEL_19;
        }

        v24 = MEMORY[0x277CCA9B8];
        v25 = *MEMORY[0x277D01448];
        v40 = *MEMORY[0x277CCA450];
        v41[0] = @"fetchRequest is not for learnedVisitMOs";
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
        v27 = [v24 errorWithDomain:v25 code:7 userInfo:v26];

        v28 = v27;
        *error = v27;

        goto LABEL_18;
      }

      v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
      }

      v22 = @"context";
    }

    else
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fetchRequest", buf, 2u);
      }

      v22 = @"fetchRequest";
    }

    _RTErrorInvalidParameterCreate(v22);
    *error = v19 = 0;
    goto LABEL_19;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

LABEL_18:
  v19 = 0;
LABEL_19:

  return v19;
}

id __79__RTLearnedLocationStore_fetchVisitIdentifiersUsingFetchRequest_context_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  [*(a1 + 32) refreshObject:v3 mergeChanges:0];

  return v4;
}

- (BOOL)deleteTransitionsReferencingVisitIdentifiers:(id)identifiers context:(id)context tombstoneContext:(id)tombstoneContext error:(id *)error
{
  v56[2] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  contextCopy = context;
  tombstoneContextCopy = tombstoneContext;
  if (error)
  {
    if (identifiersCopy)
    {
      if (contextCopy)
      {
        aSelector = a2;
        +[RTLearnedTransitionMO fetchRequest];
        v14 = v42 = contextCopy;
        v44 = +[RTLearnedLocationOfInterestTransitionMO fetchRequest];
        v15 = MEMORY[0x277CCA920];
        identifiersCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"origin.identifier", identifiersCopy];
        v56[0] = identifiersCopy;
        identifiersCopy2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"destination.identifier", identifiersCopy];
        v56[1] = identifiersCopy2;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
        v19 = [v15 orPredicateWithSubpredicates:v18];
        [v14 setPredicate:v19];

        v20 = MEMORY[0x277CCA920];
        identifiersCopy3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"visitIdentifierOrigin", identifiersCopy];
        v55[0] = identifiersCopy3;
        identifiersCopy4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"visitIdentifierDestination", identifiersCopy];
        v55[1] = identifiersCopy4;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
        v24 = [v20 orPredicateWithSubpredicates:v23];
        [v44 setPredicate:v24];

        v46 = 0;
        v43 = v14;
        v25 = v14;
        contextCopy = v42;
        [(RTLearnedLocationStore *)self _processDeletionRequestWithFetchRequest:v25 context:tombstoneContextCopy error:&v46];
        v26 = v46;
        v27 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v44];
        [v27 setResultType:2];
        v45 = 0;
        v28 = [v42 executeRequest:v27 error:&v45];
        v29 = v45;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v30 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = NSStringFromSelector(aSelector);
            *buf = 138413058;
            v48 = v31;
            v49 = 2112;
            v50 = v28;
            v51 = 2112;
            v52 = v26;
            v53 = 2112;
            v54 = v29;
            _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@, deleted %@ transitions, cloudError, %@, localError, %@", buf, 0x2Au);
          }
        }

        v32 = _RTSafeArray();
        v33 = _RTMultiErrorCreate();

        v34 = v33 == 0;
        if (v33)
        {
          v35 = v33;
          *error = v33;
        }

        goto LABEL_21;
      }

      v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
      }

      v38 = @"context";
    }

    else
    {
      v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitIdentifiers", buf, 2u);
      }

      v38 = @"visitIdentifiers";
    }

    _RTErrorInvalidParameterCreate(v38);
    *error = v34 = 0;
    goto LABEL_21;
  }

  v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v34 = 0;
LABEL_21:

  return v34;
}

- (BOOL)deleteVisitsUsingCloudFetchRequest:(id)request localFetchRequest:(id)fetchRequest context:(id)context tombstoneContext:(id)tombstoneContext error:(id *)error
{
  v62[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  fetchRequestCopy = fetchRequest;
  contextCopy = context;
  tombstoneContextCopy = tombstoneContext;
  v17 = tombstoneContextCopy;
  if (!error)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_18;
  }

  if (!requestCopy)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: cloudFetchRequest", buf, 2u);
    }

    v35 = @"cloudFetchRequest";
    goto LABEL_31;
  }

  if (!fetchRequestCopy)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: localFetchRequest", buf, 2u);
    }

    v35 = @"localFetchRequest";
    goto LABEL_31;
  }

  if (!contextCopy)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    v35 = @"context";
    goto LABEL_31;
  }

  if (!tombstoneContextCopy)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tombstoneContext", buf, 2u);
    }

    v35 = @"tombstoneContext";
LABEL_31:
    _RTErrorInvalidParameterCreate(v35);
    *error = v31 = 0;
    goto LABEL_32;
  }

  entityName = [requestCopy entityName];
  v19 = +[(NSManagedObject *)RTLearnedVisitMO];
  v20 = [entityName isEqual:v19];

  if ((v20 & 1) == 0)
  {
    v40 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277D01448];
    v61 = *MEMORY[0x277CCA450];
    v62[0] = @"cloud fetch request is not for RTLearnedVisitMOs";
    v42 = MEMORY[0x277CBEAC0];
    v43 = v62;
    v44 = &v61;
LABEL_35:
    v45 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:1];
    v46 = [v40 errorWithDomain:v41 code:7 userInfo:v45];

    v47 = v46;
    *error = v46;

LABEL_18:
    v31 = 0;
    goto LABEL_32;
  }

  entityName2 = [fetchRequestCopy entityName];
  v22 = +[(NSManagedObject *)RTLearnedLocationOfInterestVisitMO];
  v23 = [entityName2 isEqual:v22];

  if ((v23 & 1) == 0)
  {
    v40 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277D01448];
    v59 = *MEMORY[0x277CCA450];
    v60 = @"local fetch request is not for RTLearnedLocationOfInterestVisitMO";
    v42 = MEMORY[0x277CBEAC0];
    v43 = &v60;
    v44 = &v59;
    goto LABEL_35;
  }

  v50 = 0;
  [(RTLearnedLocationStore *)self _processDeletionRequestWithFetchRequest:requestCopy context:v17 error:&v50];
  v24 = v50;
  v25 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:fetchRequestCopy];
  [v25 setResultType:2];
  v49 = 0;
  v48 = [contextCopy executeRequest:v25 error:&v49];
  v26 = v49;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = NSStringFromSelector(a2);
      *buf = 138413058;
      v52 = v28;
      v53 = 2112;
      v54 = v48;
      v55 = 2112;
      v56 = v24;
      v57 = 2112;
      v58 = v26;
      _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, deleted %@ visits, cloudError, %@, localError, %@", buf, 0x2Au);
    }
  }

  v29 = _RTSafeArray();
  v30 = _RTMultiErrorCreate();

  v31 = v30 == 0;
  if (v30)
  {
    v32 = v30;
    *error = v30;
  }

LABEL_32:
  return v31;
}

- (BOOL)deletePlacesWithinIdentifierSet:(id)set tombstoneContext:(id)context error:(id *)error
{
  v27[3] = *MEMORY[0x277D85DE8];
  setCopy = set;
  contextCopy = context;
  v10 = contextCopy;
  if (error)
  {
    if (setCopy)
    {
      if (contextCopy)
      {
        v11 = +[RTLearnedPlaceMO fetchRequest];
        v24 = MEMORY[0x277CCA920];
        setCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"identifier", setCopy];
        v27[0] = setCopy;
        v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %lu", @"mapItem.mapItemSource", 4];
        v27[1] = v13;
        0x20000 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %lu", @"mapItem.mapItemSource", 0x20000];
        v27[2] = 0x20000;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
        v16 = [v24 andPredicateWithSubpredicates:v15];
        [v11 setPredicate:v16];

        v25 = 0;
        [(RTLearnedLocationStore *)self _processDeletionRequestWithFetchRequest:v11 context:v10 error:&v25];
        v17 = v25;
        v18 = v17 == 0;
        if (v17)
        {
          v17 = v17;
          *error = v17;
        }

        goto LABEL_17;
      }

      v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tombstoneContext", buf, 2u);
      }

      v21 = @"tombstoneContext";
    }

    else
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeIdentifierSet", buf, 2u);
      }

      v21 = @"placeIdentifierSet";
    }

    _RTErrorInvalidParameterCreate(v21);
    *error = v18 = 0;
    goto LABEL_17;
  }

  v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v18 = 0;
LABEL_17:

  return v18;
}

- (BOOL)deletePlacesWithinIdentifierSetWithZeroVisits:(id)visits context:(id)context tombstoneContext:(id)tombstoneContext error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  contextCopy = context;
  tombstoneContextCopy = tombstoneContext;
  v13 = tombstoneContextCopy;
  if (!error)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v20 = 0;
    goto LABEL_40;
  }

  if (!visitsCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeIdentifierSet", buf, 2u);
    }

    v23 = @"placeIdentifierSet";
    goto LABEL_19;
  }

  if (!contextCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    v23 = @"context";
    goto LABEL_19;
  }

  if (!tombstoneContextCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tombstoneContext", buf, 2u);
    }

    v23 = @"tombstoneContext";
LABEL_19:
    _RTErrorInvalidParameterCreate(v23);
    *error = v20 = 0;
    goto LABEL_40;
  }

  v14 = +[RTLearnedPlaceMO fetchRequest];
  visitsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"identifier", visitsCopy];
  [v14 setPredicate:visitsCopy];
  [v14 setReturnsObjectsAsFaults:0];
  v57 = 0;
  v16 = [v14 execute:&v57];
  v17 = v57;
  v18 = v17;
  if (v17)
  {
    v19 = v17;
    v20 = 0;
    *error = v18;
    goto LABEL_39;
  }

  v39 = visitsCopy;
  selfCopy = self;
  v41 = v14;
  errorCopy = error;
  v43 = v13;
  v44 = visitsCopy;
  v45 = [MEMORY[0x277CBEB58] set];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v38 = v16;
  obj = v16;
  v48 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (!v48)
  {
    goto LABEL_38;
  }

  v47 = *v54;
  do
  {
    for (i = 0; i != v48; ++i)
    {
      if (*v54 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v53 + 1) + 8 * i);
      v28 = objc_autoreleasePoolPush();
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      visits = [v27 visits];
      v30 = [visits countByEnumeratingWithState:&v49 objects:v59 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v50;
LABEL_27:
        v33 = 0;
        while (1)
        {
          if (*v50 != v32)
          {
            objc_enumerationMutation(visits);
          }

          v34 = *(*(&v49 + 1) + 8 * v33);
          flags = [v34 flags];
          [contextCopy refreshObject:v34 mergeChanges:0];
          if ((flags & 1) == 0)
          {
            break;
          }

          if (v31 == ++v33)
          {
            v31 = [visits countByEnumeratingWithState:&v49 objects:v59 count:16];
            if (v31)
            {
              goto LABEL_27;
            }

            goto LABEL_33;
          }
        }
      }

      else
      {
LABEL_33:

        identifier = [v27 identifier];

        if (!identifier)
        {
          goto LABEL_36;
        }

        visits = [v27 identifier];
        [v45 addObject:visits];
      }

LABEL_36:
      [contextCopy refreshObject:v27 mergeChanges:0];
      objc_autoreleasePoolPop(v28);
    }

    v48 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
  }

  while (v48);
LABEL_38:

  [contextCopy reset];
  v13 = v43;
  v20 = [(RTLearnedLocationStore *)selfCopy deletePlacesWithinIdentifierSet:v45 tombstoneContext:v43 error:errorCopy];

  visitsCopy = v44;
  v14 = v41;
  v16 = v38;
  visitsCopy = v39;
  v18 = 0;
LABEL_39:

LABEL_40:
  return v20;
}

- (void)_removeOverlappingVisitsAndTransitionsForVisits:(id)visits handler:(id)handler
{
  v21[1] = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (visitsCopy)
  {
    if ([visitsCopy count])
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __82__RTLearnedLocationStore__removeOverlappingVisitsAndTransitionsForVisits_handler___block_invoke;
      aBlock[3] = &unk_2788C4910;
      aBlock[4] = self;
      v17 = visitsCopy;
      v10 = v9;
      v18 = v10;
      v19 = a2;
      v11 = _Block_copy(aBlock);
      [(RTStore *)self _performBlock:v11 contextType:0 errorHandler:v10];
    }

    else if (v9)
    {
      v9[2](v9, 0);
    }
  }

  else if (handlerCopy)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D01448];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"learnedVisits cannot be nil";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v15 = [v12 errorWithDomain:v13 code:7 userInfo:v14];

    (v9)[2](v9, v15);
  }
}

void __82__RTLearnedLocationStore__removeOverlappingVisitsAndTransitionsForVisits_handler___block_invoke(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = +[RTLearnedVisitMO entity];
  v7 = [v6 name];
  v60 = 0;
  v8 = [v4 createFetchRequestForOverlappingVisits:v5 entityName:v7 entryDatePropertyName:@"entryDate" exitDatePropertyName:@"exitDate" context:v3 error:&v60];
  v9 = v60;

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = +[RTLearnedLocationOfInterestVisitMO entity];
  v13 = [v12 name];
  v59 = 0;
  v14 = [v10 createFetchRequestForOverlappingVisits:v11 entityName:v13 entryDatePropertyName:@"entryDate" exitDatePropertyName:@"exitDate" context:v3 error:&v59];
  v15 = v59;

  v16 = _RTSafeArray();
  v17 = _RTMultiErrorCreate();

  if (v17)
  {
    v18 = *(a1 + 48);
    if (v18)
    {
      (*(v18 + 16))(v18, v17);
    }
  }

  else
  {
    v19 = *(a1 + 32);
    v58 = 0;
    v20 = [v19 fetchVisitIdentifiersUsingFetchRequest:v8 context:v3 error:{&v58, v15, 1}];
    v21 = v58;
    if (v21)
    {
      v22 = *(a1 + 48);
      if (v22)
      {
        (*(v22 + 16))(v22, v21);
      }
    }

    else
    {
      v51 = v20;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v23 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = NSStringFromSelector(*(a1 + 56));
          v25 = [MEMORY[0x277CBEB98] setWithArray:v20];
          v26 = [v25 count];
          *buf = 138412546;
          v62 = v24;
          v63 = 2048;
          v64 = v26;
          _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@, overlapping visits count, %lu", buf, 0x16u);

          v20 = v51;
        }
      }

      v27 = *(a1 + 32);
      v57 = 0;
      v28 = [v27 identifiersForPlacesThatOwnVisitIdentifiers:v20 context:v3 error:&v57];
      v29 = v57;
      if (v29)
      {
        v30 = *(a1 + 48);
        if (v30)
        {
          (*(v30 + 16))(v30, v29);
        }
      }

      v50 = v29;
      v52 = v28;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v31 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = NSStringFromSelector(*(a1 + 56));
          v33 = [v52 count];
          *buf = 138412546;
          v62 = v32;
          v63 = 2048;
          v64 = v33;
          _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@, places count, %lu", buf, 0x16u);
        }
      }

      v34 = [*(a1 + 32) persistenceManager];
      v35 = [v34 persistenceContextWithOptions:2];

      v36 = *(a1 + 32);
      v56 = 0;
      [v36 deleteTransitionsReferencingVisitIdentifiers:v20 context:v3 tombstoneContext:v35 error:&v56];
      v37 = v56;
      v38 = *(a1 + 32);
      v55 = 0;
      [v38 deleteVisitsUsingCloudFetchRequest:v8 localFetchRequest:v14 context:v3 tombstoneContext:v35 error:&v55];
      v39 = v55;
      v40 = *(a1 + 32);
      v54 = 0;
      v49 = v35;
      [v40 deletePlacesWithinIdentifierSetWithZeroVisits:v52 context:v3 tombstoneContext:v35 error:&v54];
      v41 = v54;
      v53 = 0;
      [v3 save:&v53];
      v46 = v53;
      v47 = v39;
      v48 = v37;
      v42 = _RTSafeArray();
      v43 = _RTMultiErrorCreate();

      v45 = *(a1 + 48);
      if (v43)
      {
        if (v45)
        {
          (*(v45 + 16))(v45, v43, v44);
        }
      }

      else if (v45)
      {
        (*(v45 + 16))(v45, 0, v44);
      }

      v21 = 0;
      v20 = v51;
    }
  }
}

- (void)removeOverlappingVisitsAndTransitionsForVisits:(id)visits handler:(id)handler
{
  visitsCopy = visits;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__RTLearnedLocationStore_removeOverlappingVisitsAndTransitionsForVisits_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = visitsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = visitsCopy;
  dispatch_async(queue, block);
}

- (void)_removeVisitWithIdentifier:(id)identifier handler:(id)handler
{
  v22[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (identifierCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__RTLearnedLocationStore__removeVisitWithIdentifier_handler___block_invoke;
    aBlock[3] = &unk_2788CB938;
    v18 = identifierCopy;
    v9 = v8;
    selfCopy = self;
    v20 = v9;
    v10 = _Block_copy(aBlock);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__RTLearnedLocationStore__removeVisitWithIdentifier_handler___block_invoke_3;
    v15[3] = &unk_2788C48C0;
    v16 = v9;
    [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v15];

    v11 = v18;
LABEL_5:

    goto LABEL_6;
  }

  if (handlerCopy)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D01448];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"identifier cannot be nil";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v14 = [v12 errorWithDomain:v13 code:7 userInfo:v11];
    (v8)[2](v8, v14);

    goto LABEL_5;
  }

LABEL_6:
}

void __61__RTLearnedLocationStore__removeVisitWithIdentifier_handler___block_invoke(uint64_t a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v2 = +[RTLearnedLocationOfInterestVisitMO fetchRequest];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"identifier", *(a1 + 32)];
  [v2 setPredicate:v3];

  [v2 setFetchLimit:1];
  v24 = 0;
  v4 = [v2 execute:&v24];
  v5 = v24;
  v6 = [v4 firstObject];

  if (!v5)
  {
    if (v6)
    {
      v8 = [RTLearnedVisit createWithManagedObject:v6];
      v9 = v8;
      if (v8)
      {
        v10 = *(a1 + 40);
        v25 = v8;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __61__RTLearnedLocationStore__removeVisitWithIdentifier_handler___block_invoke_2;
        v22[3] = &unk_2788C48C0;
        v23 = *(a1 + 48);
        [v10 removeOverlappingVisitsAndTransitionsForVisits:v11 handler:v22];

        v12 = v23;
LABEL_11:

        goto LABEL_12;
      }

      v18 = *(a1 + 48);
      if (v18)
      {
        v19 = MEMORY[0x277CCA9B8];
        v20 = *MEMORY[0x277D01448];
        v26 = *MEMORY[0x277CCA450];
        v27 = @"visit could not be created from managed object";
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v21 = [v19 errorWithDomain:v20 code:0 userInfo:v12];
        (*(v18 + 16))(v18, v21);

        goto LABEL_11;
      }
    }

    else
    {
      if (!*(a1 + 48))
      {
        goto LABEL_13;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"visit with identifier, %@, not found", *(a1 + 32)];
      v13 = *(a1 + 48);
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277D01448];
      v28 = *MEMORY[0x277CCA450];
      v29[0] = v9;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v17 = [v14 errorWithDomain:v15 code:0 userInfo:v16];
      (*(v13 + 16))(v13, v17);
    }

LABEL_12:

    goto LABEL_13;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }

LABEL_13:
}

- (void)removeVisitWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RTLearnedLocationStore_removeVisitWithIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (id)identifiersForPlacesThatDedupeToPlace:(id)place context:(id)context error:(id *)error
{
  v70 = *MEMORY[0x277D85DE8];
  placeCopy = place;
  contextCopy = context;
  if (!error)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_10;
  }

  if (!placeCopy)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place", buf, 2u);
    }

    v32 = @"place";
    goto LABEL_17;
  }

  if (!contextCopy)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    v32 = @"context";
LABEL_17:
    _RTErrorInvalidParameterCreate(v32);
    *error = v56 = 0;
    goto LABEL_36;
  }

  mapItem = [placeCopy mapItem];

  v54 = placeCopy;
  if (!mapItem)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v34 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = NSStringFromSelector(a2);
        *buf = 138412547;
        *&buf[4] = v35;
        v68 = 2117;
        v69 = placeCopy;
        _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%@, found place with nil mapItem, %{sensitive}@", buf, 0x16u);
      }
    }

LABEL_10:
    v56 = 0;
    goto LABEL_36;
  }

  v53 = +[RTMapItemMO fetchRequest];
  *buf = 0;
  mapItem2 = [placeCopy mapItem];
  location = [mapItem2 location];
  [location latitude];
  mapItem3 = [placeCopy mapItem];
  location2 = [mapItem3 location];
  [location2 longitude];
  RTCommonCalculateBoundingBox();

  v50 = MEMORY[0x277CCA920];
  v14 = MEMORY[0x277CCAC30];
  obja = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v55 = [v14 predicateWithFormat:@"%@ <= %K", obja, @"longitude"];
  v66[0] = v55;
  v15 = MEMORY[0x277CCAC30];
  v51 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v16 = [v15 predicateWithFormat:@"%K <= %@", @"longitude", v51];
  v66[1] = v16;
  v17 = MEMORY[0x277CCAC30];
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v19 = [v17 predicateWithFormat:@"%@ <= %K", v18, @"latitude"];
  v66[2] = v19;
  v20 = MEMORY[0x277CCAC30];
  v21 = v53;
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v23 = [v20 predicateWithFormat:@"%K <= %@", @"latitude", v22];
  v66[3] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:4];
  v25 = [v50 andPredicateWithSubpredicates:v24];
  [v53 setPredicate:v25];

  memset(v64, 0, sizeof(v64));
  v26 = [v53 execute:v64];
  v27 = v64[0];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
    v56 = 0;
    *error = v28;
  }

  else
  {
    v56 = [MEMORY[0x277CBEB58] set];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v52 = v26;
    obj = v26;
    v36 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v61;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v61 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v60 + 1) + 8 * i);
          v41 = objc_autoreleasePoolPush();
          v42 = [MEMORY[0x277D011A0] createWithManagedObject:v40];
          if (v42)
          {
            mapItem4 = [placeCopy mapItem];
            v44 = [v42 isEqualToMapItem:mapItem4];

            if (v44)
            {
              place = [v40 place];
              identifier = [place identifier];

              if (identifier)
              {
                place2 = [v40 place];
                identifier2 = [place2 identifier];
                [v56 addObject:identifier2];

                placeCopy = v54;
              }
            }
          }

          [contextCopy refreshObject:v40 mergeChanges:0];

          objc_autoreleasePoolPop(v41);
        }

        v37 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v37);
    }

    [contextCopy reset];
    v26 = v52;
    v21 = v53;
    v28 = 0;
  }

LABEL_36:

  return v56;
}

- (void)_removePlacesForLocationOfInterest:(id)interest handler:(id)handler
{
  v21[1] = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (interestCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__RTLearnedLocationStore__removePlacesForLocationOfInterest_handler___block_invoke;
    aBlock[3] = &unk_2788C4910;
    aBlock[4] = self;
    v17 = interestCopy;
    v10 = v9;
    v18 = v10;
    v19 = a2;
    v11 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v11 contextType:0 errorHandler:v10];
  }

  else if (handlerCopy)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D01448];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"locationOfInterest cannot be nil";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v15 = [v12 errorWithDomain:v13 code:7 userInfo:v14];
    (v9)[2](v9, v15);
  }
}

void __69__RTLearnedLocationStore__removePlacesForLocationOfInterest_handler___block_invoke(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) place];
  v60 = 0;
  v6 = [v4 identifiersForPlacesThatDedupeToPlace:v5 context:v3 error:&v60];
  v7 = v60;

  if (v7 || ![v6 count])
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, v7);
    }
  }

  else
  {
    v9 = +[RTLearnedVisitMO fetchRequest];
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"place.identifier", v6];
    [v9 setPredicate:v10];

    v11 = *(a1 + 32);
    v59 = 0;
    v12 = [v11 fetchVisitIdentifiersUsingFetchRequest:v9 context:v3 error:&v59];
    v13 = v59;
    if (v13)
    {
      v14 = *(a1 + 48);
      if (v14)
      {
        (*(v14 + 16))(v14, v13);
      }
    }

    else
    {
      v15 = +[RTLearnedVisitMO fetchRequest];
      v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"identifier", v12];
      [v15 setPredicate:v16];

      v17 = +[RTLearnedLocationOfInterestVisitMO fetchRequest];
      v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"identifier", v12];
      [v17 setPredicate:v18];

      v19 = [*(a1 + 32) persistenceManager];
      v20 = [v19 persistenceContextWithOptions:2];

      v21 = *(a1 + 32);
      v58 = 0;
      v51 = v12;
      [v21 deleteTransitionsReferencingVisitIdentifiers:v12 context:v3 tombstoneContext:v20 error:&v58];
      v53 = v58;
      v22 = *(a1 + 32);
      v57 = 0;
      v49 = v17;
      v50 = v15;
      [v22 deleteVisitsUsingCloudFetchRequest:v15 localFetchRequest:v17 context:v3 tombstoneContext:v20 error:&v57];
      v52 = v57;
      v23 = *(a1 + 32);
      v56 = 0;
      v48 = v20;
      [v23 deletePlacesWithinIdentifierSet:v6 tombstoneContext:v20 error:&v56];
      v24 = v56;
      v25 = +[RTLearnedLocationOfInterestMO fetchRequest];
      [v25 setFetchLimit:1];
      v26 = MEMORY[0x277CCAC30];
      v27 = [*(a1 + 40) identifier];
      v28 = [v26 predicateWithFormat:@"%K == %@", @"identifier", v27];
      [v25 setPredicate:v28];

      v55 = 0;
      v47 = v25;
      v29 = [v25 execute:&v55];
      v30 = v55;
      v31 = [v29 firstObject];

      if (v31)
      {
        [v3 deleteObject:v31];
      }

      v54 = 0;
      [v3 save:&v54];
      v32 = v54;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v45 = NSStringFromSelector(*(a1 + 56));
          *buf = 138413058;
          v62 = v45;
          v63 = 2112;
          v64 = v24;
          v65 = 2112;
          v66 = v30;
          v67 = 2112;
          v68 = v32;
          _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "%@, deleted places error, %@, loi fetch error, %@, save error, %@", buf, 0x2Au);
        }
      }

      v46 = v9;
      v34 = v31;
      v35 = v24;
      v36 = v32;
      v37 = v30;
      v38 = v35;
      v39 = _RTSafeArray();
      v40 = _RTMultiErrorCreate();

      v44 = *(a1 + 48);
      if (v40)
      {
        if (v44)
        {
          (*(v44 + 16))(v44, v40, v41, v42, v43);
        }
      }

      else
      {
        (*(v44 + 16))(v44, 0, v41, v42, v43);
      }

      v12 = v51;
      v13 = 0;
      v9 = v46;
    }
  }
}

- (void)removePlacesForLocationOfInterest:(id)interest handler:(id)handler
{
  interestCopy = interest;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTLearnedLocationStore_removePlacesForLocationOfInterest_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = interestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = interestCopy;
  dispatch_async(queue, block);
}

- (void)_removeLocationOfInterestWithIdentifier:(id)identifier handler:(id)handler
{
  v18[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (identifierCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__RTLearnedLocationStore__removeLocationOfInterestWithIdentifier_handler___block_invoke;
    v13[3] = &unk_2788CB960;
    v16 = handlerCopy;
    v14 = identifierCopy;
    selfCopy = self;
    [(RTLearnedLocationStore *)self fetchLocationOfInterestWithIdentifier:v14 handler:v13];

    v9 = v16;
LABEL_5:

    goto LABEL_6;
  }

  if (handlerCopy)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"identiifer cannot be nil";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v9 = [v10 errorWithDomain:v11 code:7 userInfo:v12];

    (v8)[2](v8, v9);
    goto LABEL_5;
  }

LABEL_6:
}

void __74__RTLearnedLocationStore__removeLocationOfInterestWithIdentifier_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, v6);
    }
  }

  else if (v5)
  {
    v8 = *(a1 + 40);
    v9 = [v5 visits];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __74__RTLearnedLocationStore__removeLocationOfInterestWithIdentifier_handler___block_invoke_2;
    v18[3] = &unk_2788C4EC8;
    v18[4] = *(a1 + 40);
    v19 = v5;
    v20 = *(a1 + 48);
    [v8 removeOverlappingVisitsAndTransitionsForVisits:v9 handler:v18];
  }

  else
  {
    v10 = *(a1 + 48);
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D01448];
    v21 = *MEMORY[0x277CCA450];
    v13 = MEMORY[0x277CCACA8];
    v14 = [*(a1 + 32) UUIDString];
    v15 = [v13 stringWithFormat:@"cannot find a location of interest with identifier, %@.", v14];
    v22[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v17 = [v11 errorWithDomain:v12 code:0 userInfo:v16];
    (*(v10 + 16))(v10, v17);
  }
}

void __74__RTLearnedLocationStore__removeLocationOfInterestWithIdentifier_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__RTLearnedLocationStore__removeLocationOfInterestWithIdentifier_handler___block_invoke_3;
  v7[3] = &unk_2788C4F60;
  v8 = v3;
  v9 = *(a1 + 48);
  v6 = v3;
  [v4 removePlacesForLocationOfInterest:v5 handler:v7];
}

void __74__RTLearnedLocationStore__removeLocationOfInterestWithIdentifier_handler___block_invoke_3(uint64_t a1)
{
  v2 = _RTSafeArray();
  v3 = _RTMultiErrorCreate();

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
}

- (void)removeLocationOfInterestWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__RTLearnedLocationStore_removeLocationOfInterestWithIdentifier_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)_removeLocationsOfInterestWithHandler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __64__RTLearnedLocationStore__removeLocationsOfInterestWithHandler___block_invoke;
  v11 = &unk_2788CB7D8;
  v12 = handlerCopy;
  v13 = a2;
  v6 = handlerCopy;
  v7 = _Block_copy(&v8);
  [(RTStore *)self _performBlock:v7 contextType:0 errorHandler:v6, v8, v9, v10, v11];
}

void __64__RTLearnedLocationStore__removeLocationsOfInterestWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedLocationOfInterestMO fetchRequest];
  v5 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v5 setResultType:2];
  v17 = 0;
  v6 = [v3 executeRequest:v5 error:&v17];
  v7 = v17;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(*(a1 + 40));
      v10 = [v6 result];
      *buf = 138413058;
      v19 = v9;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, request, %@, deleted count, %@, error, %@", buf, 0x2Au);
    }
  }

  v16 = 0;
  v11 = [v3 save:&v16];
  v12 = v16;
  if ((v11 & 1) == 0)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(*(a1 + 40));
      *buf = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, v7);
  }
}

- (void)_removeRecordsExpiredBeforeDate:(id)date handler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __66__RTLearnedLocationStore__removeRecordsExpiredBeforeDate_handler___block_invoke;
  v15 = &unk_2788C4910;
  v16 = dateCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v19 = a2;
  v9 = handlerCopy;
  v10 = dateCopy;
  v11 = _Block_copy(&v12);
  [(RTStore *)self _performBlock:v11 contextType:0 errorHandler:v9, v12, v13, v14, v15];
}

void __66__RTLearnedLocationStore__removeRecordsExpiredBeforeDate_handler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 56));
      v6 = *(a1 + 32);
      *buf = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, removing expired records with respect to date, %@", buf, 0x16u);
    }
  }

  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 72);
  v13 = 0;
  [v8 removeExpiredRecordsBeforeDate:v7 context:v3 error:&v13];
  v9 = v13;
  v10 = [*(a1 + 40) mirroringManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__RTLearnedLocationStore__removeRecordsExpiredBeforeDate_handler___block_invoke_540;
  v12[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v12[4] = *(a1 + 56);
  [v10 performExportWithHandler:v12];

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v9);
  }
}

void __66__RTLearnedLocationStore__removeRecordsExpiredBeforeDate_handler___block_invoke_540(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 32));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, successfully finished export with error, %@", &v6, 0x16u);
    }
  }
}

- (void)removeRecordsExpiredBeforeDate:(id)date handler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__RTLearnedLocationStore_removeRecordsExpiredBeforeDate_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dateCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dateCopy;
  dispatch_async(queue, block);
}

- (void)_clearWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_group_create();
  array = [MEMORY[0x277CBEB18] array];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__RTLearnedLocationStore__clearWithHandler___block_invoke;
  aBlock[3] = &unk_2788CB988;
  aBlock[4] = self;
  v7 = array;
  v17 = v7;
  v18 = v5;
  v8 = v5;
  v9 = _Block_copy(aBlock);
  dispatch_group_enter(v8);
  [(RTLearnedLocationStore *)self _removePlacesWithHandler:v9];
  dispatch_group_enter(v8);
  [(RTLearnedLocationStore *)self _removeVisitsWithHandler:v9];
  dispatch_group_enter(v8);
  [(RTLearnedLocationStore *)self _removeTransitionsWithHandler:v9];
  dispatch_group_enter(v8);
  [(RTLearnedLocationStore *)self _removeLocationsOfInterestWithHandler:v9];
  dispatch_group_enter(v8);
  [(RTLearnedLocationStore *)self _removeAllMapItems:v9];
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RTLearnedLocationStore__clearWithHandler___block_invoke_3;
  block[3] = &unk_2788C4938;
  v14 = v7;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = v7;
  dispatch_group_notify(v8, queue, block);
}

void __44__RTLearnedLocationStore__clearWithHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [a1[4] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__RTLearnedLocationStore__clearWithHandler___block_invoke_2;
    block[3] = &unk_2788C76F8;
    v6 = a1[5];
    v7 = v3;
    v8 = a1[6];
    dispatch_async(v4, block);
  }

  else
  {
    dispatch_group_leave(a1[6]);
  }
}

void __44__RTLearnedLocationStore__clearWithHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) addObject:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

uint64_t __44__RTLearnedLocationStore__clearWithHandler___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = objc_opt_new();
    [v2 setObject:@"failed clearing learned locations" forKey:*MEMORY[0x277CCA450]];
    v7 = 1;
    v3 = _RTSafeArray();
    v4 = _RTMultiErrorCreate();

    if (v4)
    {
      [v2 setObject:v4 forKey:{*MEMORY[0x277CCA7E8], 1}];
    }

    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:{v2, v7}];
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)clearWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__RTLearnedLocationStore_clearWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)removeUnreferencedMapItems:(id)items
{
  itemsCopy = items;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__RTLearnedLocationStore_removeUnreferencedMapItems___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = itemsCopy;
  v6 = itemsCopy;
  dispatch_async(queue, v7);
}

- (void)_removeUnreferencedMapItems:(id)items
{
  itemsCopy = items;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__RTLearnedLocationStore__removeUnreferencedMapItems___block_invoke;
  v6[3] = &unk_2788C51C8;
  v6[4] = self;
  v7 = itemsCopy;
  v5 = itemsCopy;
  [(RTLearnedLocationStore *)self __removeUnreferencedMapItems:v6];
}

void __54__RTLearnedLocationStore__removeUnreferencedMapItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
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
    v5 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__RTLearnedLocationStore__removeUnreferencedMapItems___block_invoke_2;
    block[3] = &unk_2788C4500;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v8 = 0;
    v9 = v6;
    dispatch_async(v5, block);
  }
}

void __54__RTLearnedLocationStore__removeUnreferencedMapItems___block_invoke_2(id *a1)
{
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__82;
  v22[4] = __Block_byref_object_dispose__82;
  v23 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__82;
  v20[4] = __Block_byref_object_dispose__82;
  v21 = 0;
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__RTLearnedLocationStore__removeUnreferencedMapItems___block_invoke_3;
  v16[3] = &unk_2788C46B8;
  v19 = v22;
  v3 = a1[4];
  v17 = a1[5];
  v4 = v2;
  v18 = v4;
  [v3 __removeUnreferencedExtendedAttributes:v16];
  dispatch_group_enter(v4);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__RTLearnedLocationStore__removeUnreferencedMapItems___block_invoke_4;
  v12[3] = &unk_2788C46B8;
  v15 = v20;
  v5 = a1[4];
  v13 = a1[5];
  v6 = v4;
  v14 = v6;
  [v5 __removeUnreferencedAddresses:v12];
  v7 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RTLearnedLocationStore__removeUnreferencedMapItems___block_invoke_5;
  block[3] = &unk_2788CB9B0;
  v9 = a1[6];
  v10 = v22;
  v11 = v20;
  dispatch_group_notify(v6, v7, block);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
}

void __54__RTLearnedLocationStore__removeUnreferencedMapItems___block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __54__RTLearnedLocationStore__removeUnreferencedMapItems___block_invoke_4(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __54__RTLearnedLocationStore__removeUnreferencedMapItems___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = _RTSafeArray();
    v3 = _RTMultiErrorCreate();

    (*(*(a1 + 32) + 16))(*(a1 + 32), v3);
  }
}

- (void)__removeUnreferencedAddresses:(id)addresses
{
  addressesCopy = addresses;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__RTLearnedLocationStore___removeUnreferencedAddresses___block_invoke;
  aBlock[3] = &unk_2788C4FB0;
  v9 = addressesCopy;
  v10 = a2;
  aBlock[4] = self;
  v6 = addressesCopy;
  v7 = _Block_copy(aBlock);
  [(RTStore *)self _performBlock:v7 contextType:0 errorHandler:v6];
}

void __56__RTLearnedLocationStore___removeUnreferencedAddresses___block_invoke(uint64_t a1, void *a2)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTAddressMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == nil", @"mapItem"];
  v6 = MEMORY[0x277CCA920];
  v29[0] = v5;
  v7 = [*(a1 + 32) predicateForObjectsFromCurrentDevice];
  v29[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v9 = [v6 andPredicateWithSubpredicates:v8];
  [v4 setPredicate:v9];

  v10 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v10 setResultType:2];
  v20 = 0;
  v11 = [v3 executeRequest:v10 error:&v20];

  v12 = v20;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = NSStringFromSelector(*(a1 + 48));
      *buf = 138413058;
      v22 = v14;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, request, %@, deleted count, %@, error, %@", buf, 0x2Au);
    }
  }

  if (v12)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v22 = v19;
      v23 = 2112;
      v24 = v12;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = *(v16 + 16);
LABEL_12:
      v17();
    }
  }

  else
  {
    v18 = *(a1 + 40);
    if (v18)
    {
      v17 = *(v18 + 16);
      goto LABEL_12;
    }
  }
}

- (void)__removeUnreferencedExtendedAttributes:(id)attributes
{
  attributesCopy = attributes;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __65__RTLearnedLocationStore___removeUnreferencedExtendedAttributes___block_invoke;
  v11 = &unk_2788CB7D8;
  v12 = attributesCopy;
  v13 = a2;
  v6 = attributesCopy;
  v7 = _Block_copy(&v8);
  [(RTStore *)self _performBlock:v7 contextType:0 errorHandler:v6, v8, v9, v10, v11];
}

void __65__RTLearnedLocationStore___removeUnreferencedExtendedAttributes___block_invoke(uint64_t a1, void *a2)
{
  v77[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = +[RTMapItemMO fetchRequest];
  [v5 setResultType:2];
  v77[0] = @"extendedAttributesIdentifier";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:1];
  [v5 setPropertiesToFetch:v6];

  v64 = 0;
  v7 = [v3 executeFetchRequest:v5 error:&v64];
  v8 = v64;
  if (!v8)
  {
    v53 = a1;
    [v4 removeAllObjects];
    v63 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    v52 = v7;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v60 objects:v76 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v61;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v61 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v60 + 1) + 8 * i) allValues];
          [v4 addObjectsFromArray:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v60 objects:v76 count:16];
      }

      while (v14);
    }

    v18 = +[RTMapItemExtendedAttributesMO fetchRequest];
    [v18 setResultType:2];
    v75 = @"identifier";
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
    [v18 setPropertiesToFetch:v19];

    v59 = 0;
    v20 = [v3 executeFetchRequest:v18 error:&v59];
    v9 = v59;
    if (v9)
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v44 = NSStringFromSelector(*(v53 + 40));
        *buf = 138412546;
        v66 = v44;
        v67 = 2112;
        v68 = v9;
        _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      v22 = *(v53 + 32);
      if (v22)
      {
        (*(v22 + 16))(v22, v9);
      }

      v7 = v52;
      goto LABEL_42;
    }

    v51 = v3;
    v23 = objc_opt_new();
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v50 = v20;
    v24 = v20;
    v25 = [v24 countByEnumeratingWithState:&v55 objects:v74 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v56;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v56 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v55 + 1) + 8 * j) allValues];
          [v23 addObjectsFromArray:v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v55 objects:v74 count:16];
      }

      while (v26);
    }

    [v23 minusSet:v4];
    if ([v23 count])
    {
      v30 = +[RTMapItemExtendedAttributesMO fetchRequest];

      v31 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K IN (%@))", @"identifier", v23];
      v32 = MEMORY[0x277CCA920];
      v48 = v31;
      v73 = v31;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
      v34 = [v32 andPredicateWithSubpredicates:v33];
      [v30 setPredicate:v34];

      v35 = v30;
      v36 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v30];
      [v36 setResultType:2];
      v54 = 0;
      v3 = v51;
      v49 = [v51 executeRequest:v36 error:&v54];
      v37 = v54;
      v7 = v52;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v38 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          NSStringFromSelector(*(v53 + 40));
          v39 = v46 = v35;
          *buf = 138413058;
          v66 = v39;
          v67 = 2112;
          v68 = v36;
          v69 = 2112;
          v70 = v49;
          v71 = 2112;
          v72 = v37;
          _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, request, %@, deleted count, %@, error, %@", buf, 0x2Au);

          v35 = v46;
        }
      }

      if (v37)
      {
        v40 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(*(v53 + 40));
          v45 = v47 = v35;
          *buf = 138412546;
          v66 = v45;
          v67 = 2112;
          v68 = v37;
          _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);

          v35 = v47;
        }

        v41 = *(v53 + 32);
        if (v41)
        {
          (*(v41 + 16))(v41, v37);
        }

        v20 = v50;
LABEL_41:

        v18 = v35;
LABEL_42:

        goto LABEL_43;
      }
    }

    else
    {
      v35 = v18;
      v3 = v51;
      v7 = v52;
    }

    v43 = *(v53 + 32);
    v20 = v50;
    if (v43)
    {
      (*(v43 + 16))(v43, 0);
    }

    goto LABEL_41;
  }

  v9 = v8;
  v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v42 = NSStringFromSelector(*(a1 + 40));
    *buf = 138412546;
    v66 = v42;
    v67 = 2112;
    v68 = v9;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v9);
  }

LABEL_43:
}

- (void)__removeUnreferencedMapItems:(id)items
{
  v93[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v6 = dispatch_group_create();
  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x3032000000;
  v87[3] = __Block_byref_object_copy__82;
  v87[4] = __Block_byref_object_dispose__82;
  v88 = 0;
  v85[0] = 0;
  v85[1] = v85;
  v85[2] = 0x3032000000;
  v85[3] = __Block_byref_object_copy__82;
  v85[4] = __Block_byref_object_dispose__82;
  v86 = 0;
  v83[0] = 0;
  v83[1] = v83;
  v83[2] = 0x3032000000;
  v83[3] = __Block_byref_object_copy__82;
  v83[4] = __Block_byref_object_dispose__82;
  v84 = 0;
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x3032000000;
  v81[3] = __Block_byref_object_copy__82;
  v81[4] = __Block_byref_object_dispose__82;
  v82 = 0;
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x3032000000;
  v79[3] = __Block_byref_object_copy__82;
  v79[4] = __Block_byref_object_dispose__82;
  v80 = 0;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x3032000000;
  v77[3] = __Block_byref_object_copy__82;
  v77[4] = __Block_byref_object_dispose__82;
  v78 = 0;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x3032000000;
  v75[3] = __Block_byref_object_copy__82;
  v75[4] = __Block_byref_object_dispose__82;
  v76 = 0;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x3032000000;
  v73[3] = __Block_byref_object_copy__82;
  v73[4] = __Block_byref_object_dispose__82;
  v74 = 0;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x3032000000;
  v71[3] = __Block_byref_object_copy__82;
  v71[4] = __Block_byref_object_dispose__82;
  v72 = 0;
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x3032000000;
  v69[3] = __Block_byref_object_copy__82;
  v69[4] = __Block_byref_object_dispose__82;
  v70 = 0;
  dispatch_group_enter(v6);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v93[0] = @"placeMapItemIdentifier";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:1];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __55__RTLearnedLocationStore___removeUnreferencedMapItems___block_invoke;
  v65[3] = &unk_2788C4490;
  v67 = v77;
  v68 = v87;
  v10 = v6;
  v66 = v10;
  [(RTLearnedLocationStore *)self _fetchEntityAsDictionaryWithEntityName:v8 propertiesToFetch:v9 handler:v65];

  dispatch_group_enter(v10);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v92 = @"mapItemIdentifier";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __55__RTLearnedLocationStore___removeUnreferencedMapItems___block_invoke_2;
  v61[3] = &unk_2788C4490;
  v63 = v75;
  v64 = v85;
  v14 = v10;
  v62 = v14;
  [(RTLearnedLocationStore *)self _fetchEntityAsDictionaryWithEntityName:v12 propertiesToFetch:v13 handler:v61];

  dispatch_group_enter(v14);
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v91[0] = @"placeInferenceMapItemIdentifier";
  v91[1] = @"placeInferenceFinerGranularityMapItemIdentifier";
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:2];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __55__RTLearnedLocationStore___removeUnreferencedMapItems___block_invoke_3;
  v57[3] = &unk_2788C4490;
  v59 = v73;
  v60 = v83;
  v18 = v14;
  v58 = v18;
  [(RTLearnedLocationStore *)self _fetchEntityAsDictionaryWithEntityName:v16 propertiesToFetch:v17 handler:v57];

  dispatch_group_enter(v18);
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v90 = @"mapItemIdentifier";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v90 count:1];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __55__RTLearnedLocationStore___removeUnreferencedMapItems___block_invoke_4;
  v53[3] = &unk_2788C4490;
  v55 = v71;
  v56 = v81;
  v22 = v18;
  v54 = v22;
  [(RTLearnedLocationStore *)self _fetchEntityAsDictionaryWithEntityName:v20 propertiesToFetch:v21 handler:v53];

  dispatch_group_enter(v22);
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v89 = @"finerGranularityMapItemIdentifier";
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __55__RTLearnedLocationStore___removeUnreferencedMapItems___block_invoke_5;
  v49[3] = &unk_2788C4490;
  v51 = v69;
  v52 = v79;
  v26 = v22;
  v50 = v26;
  [(RTLearnedLocationStore *)self _fetchEntityAsDictionaryWithEntityName:v24 propertiesToFetch:v25 handler:v49];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__RTLearnedLocationStore___removeUnreferencedMapItems___block_invoke_6;
  aBlock[3] = &unk_2788CB9D8;
  v44 = v75;
  v45 = v73;
  v46 = v71;
  v47 = v69;
  v43 = v77;
  aBlock[4] = self;
  v48 = a2;
  v27 = itemsCopy;
  v42 = v27;
  v28 = _Block_copy(aBlock);
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__RTLearnedLocationStore___removeUnreferencedMapItems___block_invoke_572;
  block[3] = &unk_2788CBA00;
  v36 = v85;
  v37 = v83;
  v38 = v81;
  v39 = v79;
  v40 = a2;
  block[4] = self;
  v33 = v27;
  v34 = v28;
  v35 = v87;
  v30 = v28;
  v31 = v27;
  dispatch_group_notify(v26, queue, block);

  _Block_object_dispose(v69, 8);
  _Block_object_dispose(v71, 8);

  _Block_object_dispose(v73, 8);
  _Block_object_dispose(v75, 8);

  _Block_object_dispose(v77, 8);
  _Block_object_dispose(v79, 8);

  _Block_object_dispose(v81, 8);
  _Block_object_dispose(v83, 8);

  _Block_object_dispose(v85, 8);
  _Block_object_dispose(v87, 8);
}

void __55__RTLearnedLocationStore___removeUnreferencedMapItems___block_invoke(uint64_t a1, void *a2, void *a3)
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

  dispatch_group_leave(*(a1 + 32));
}

void __55__RTLearnedLocationStore___removeUnreferencedMapItems___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

  dispatch_group_leave(*(a1 + 32));
}

void __55__RTLearnedLocationStore___removeUnreferencedMapItems___block_invoke_3(uint64_t a1, void *a2, void *a3)
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

  dispatch_group_leave(*(a1 + 32));
}

void __55__RTLearnedLocationStore___removeUnreferencedMapItems___block_invoke_4(uint64_t a1, void *a2, void *a3)
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

  dispatch_group_leave(*(a1 + 32));
}

void __55__RTLearnedLocationStore___removeUnreferencedMapItems___block_invoke_5(uint64_t a1, void *a2, void *a3)
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

  dispatch_group_leave(*(a1 + 32));
}

void __55__RTLearnedLocationStore___removeUnreferencedMapItems___block_invoke_6(uint64_t a1, void *a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v50 = a2;
  v51 = +[RTMapItemMO fetchRequest];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == NULL", @"place"];
  [v3 addObject:v5];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v6 = *(*(*(a1 + 48) + 8) + 40);
  v7 = [v6 countByEnumeratingWithState:&v69 objects:v85 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v70;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v70 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v69 + 1) + 8 * i) allValues];
        [v4 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v69 objects:v85 count:16];
    }

    while (v8);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v12 = *(*(*(a1 + 56) + 8) + 40);
  v13 = [v12 countByEnumeratingWithState:&v65 objects:v84 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v66;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v66 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v65 + 1) + 8 * j) allValues];
        [v4 addObjectsFromArray:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v65 objects:v84 count:16];
    }

    while (v14);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v18 = *(*(*(a1 + 64) + 8) + 40);
  v19 = [v18 countByEnumeratingWithState:&v61 objects:v83 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v62;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v62 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v61 + 1) + 8 * k) allValues];
        [v4 addObjectsFromArray:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v61 objects:v83 count:16];
    }

    while (v20);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v24 = *(*(*(a1 + 72) + 8) + 40);
  v25 = [v24 countByEnumeratingWithState:&v57 objects:v82 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v58;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v58 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v57 + 1) + 8 * m) allValues];
        [v4 addObjectsFromArray:v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v57 objects:v82 count:16];
    }

    while (v26);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v30 = *(*(*(a1 + 80) + 8) + 40);
  v31 = [v30 countByEnumeratingWithState:&v53 objects:v81 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v54;
    do
    {
      for (n = 0; n != v32; ++n)
      {
        if (*v54 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v53 + 1) + 8 * n) allValues];
        [v4 addObjectsFromArray:v35];
      }

      v32 = [v30 countByEnumeratingWithState:&v53 objects:v81 count:16];
    }

    while (v32);
  }

  if ([v4 count])
  {
    v36 = [MEMORY[0x277CCAC30] predicateWithFormat:@"!(%K IN (%@))", @"identifier", v4];
    [v3 addObject:v36];
  }

  v37 = [*(a1 + 32) predicateForObjectsFromCurrentDevice];
  [v3 addObject:v37];

  v38 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v3];
  [v51 setPredicate:v38];
  v39 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v51];
  [v39 setResultType:2];
  v52 = 0;
  v40 = v50;
  v41 = [v50 executeRequest:v39 error:&v52];
  v42 = v52;
  if (v42)
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v49 = NSStringFromSelector(*(a1 + 88));
      *buf = 138412546;
      v74 = v49;
      v75 = 2112;
      v76 = v42;
      _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    v44 = *(a1 + 40);
    if (v44)
    {
      v45 = *(v44 + 16);
LABEL_49:
      v45();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v46 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = NSStringFromSelector(*(a1 + 88));
        *buf = 138413058;
        v74 = v47;
        v75 = 2112;
        v76 = v39;
        v77 = 2112;
        v78 = v41;
        v79 = 2112;
        v80 = 0;
        _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_INFO, "%@, request, %@, deleted count, %@, error, %@", buf, 0x2Au);

        v40 = v50;
      }
    }

    v48 = *(a1 + 40);
    if (v48)
    {
      v45 = *(v48 + 16);
      goto LABEL_49;
    }
  }
}

void __55__RTLearnedLocationStore___removeUnreferencedMapItems___block_invoke_572(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 56) + 8) + 40) | *(*(*(a1 + 64) + 8) + 40) || *(*(*(a1 + 72) + 8) + 40) || *(*(*(a1 + 80) + 8) + 40) || *(*(*(a1 + 88) + 8) + 40))
  {
    v2 = _RTSafeArray();
    v3 = _RTMultiErrorCreate();

    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(*(a1 + 96));
      *buf = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, v3);
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a1 + 32);

    [v9 _performBlock:v7 contextType:0 errorHandler:v8];
  }
}

- (void)removeAllMapItems:(id)items
{
  itemsCopy = items;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__RTLearnedLocationStore_removeAllMapItems___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = itemsCopy;
  v6 = itemsCopy;
  dispatch_async(queue, v7);
}

- (void)_removeAllMapItems:(id)items
{
  itemsCopy = items;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__RTLearnedLocationStore__removeAllMapItems___block_invoke;
  aBlock[3] = &unk_2788C4FB0;
  v9 = itemsCopy;
  v10 = a2;
  aBlock[4] = self;
  v6 = itemsCopy;
  v7 = _Block_copy(aBlock);
  [(RTStore *)self _performBlock:v7 contextType:0 errorHandler:v6];
}

void __45__RTLearnedLocationStore__removeAllMapItems___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTMapItemMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:1];
  [v4 setIncludesPropertyValues:0];
  v5 = [*(a1 + 32) persistenceManager];
  v6 = [v5 persistenceContextWithOptions:2];

  v7 = *(a1 + 32);
  v28 = 0;
  [v7 _processDeletionRequestWithFetchRequest:v4 context:v6 error:&v28];
  v8 = v28;
  v9 = +[RTMapItemExtendedAttributesMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:1];
  [v4 setIncludesPropertyValues:0];
  v10 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v9];
  [v9 setResultType:4];
  v27 = 0;
  v25 = [v3 executeRequest:v10 error:&v27];

  v11 = v27;
  if (v11)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_3:

      goto LABEL_4;
    }

    v23 = NSStringFromSelector(*(a1 + 48));
    *buf = 138412546;
    v30 = v23;
    v31 = 2112;
    v32 = v11;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
LABEL_11:

    goto LABEL_3;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_3;
    }

    v23 = NSStringFromSelector(*(a1 + 48));
    *buf = 138412802;
    v30 = v23;
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = v25;
    _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, request, %@, deleted count, %@", buf, 0x20u);
    goto LABEL_11;
  }

LABEL_4:
  v13 = +[RTAddressMO fetchRequest];
  [v13 setReturnsObjectsAsFaults:1];
  [v13 setIncludesPropertyValues:0];
  v14 = *(a1 + 32);
  v26 = 0;
  [v14 _processDeletionRequestWithFetchRequest:v13 context:v6 error:&v26];
  v15 = v26;
  if (*(a1 + 40))
  {
    _RTSafeArray();
    v16 = v9;
    v17 = v6;
    v18 = v10;
    v20 = v19 = v8;
    _RTMultiErrorCreate();
    v21 = v24 = v4;

    v8 = v19;
    v10 = v18;
    v6 = v17;
    v9 = v16;
    (*(*(a1 + 40) + 16))(*(a1 + 40), v21, v22);

    v4 = v24;
  }
}

- (void)_replaceWithLocationsOfInterest:(id)interest handler:(id)handler
{
  interestCopy = interest;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__RTLearnedLocationStore__replaceWithLocationsOfInterest_handler___block_invoke;
  aBlock[3] = &unk_2788C5138;
  v14 = handlerCopy;
  v15 = a2;
  v13 = interestCopy;
  v9 = interestCopy;
  v10 = handlerCopy;
  v11 = _Block_copy(aBlock);
  [(RTStore *)self _performBlock:v11 contextType:2 errorHandler:v10];
}

void __66__RTLearnedLocationStore__replaceWithLocationsOfInterest_handler___block_invoke(uint64_t a1, void *a2)
{
  v60[3] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = +[RTLearnedLocationOfInterestMO entity];
  v60[0] = v3;
  v4 = +[RTLearnedLocationOfInterestVisitMO entity];
  v60[1] = v4;
  v5 = +[RTLearnedLocationOfInterestTransitionMO entity];
  v60[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];

  v7 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = v6;
  v39 = [v8 countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v39)
  {
    v9 = *v47;
    v36 = v7;
    v37 = v8;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v46 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x277CBE428]);
        v13 = [v11 name];
        v14 = [v12 initWithEntityName:v13];

        v15 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v14];
        [v15 setResultType:2];
        v45 = 0;
        v16 = [v2 executeRequest:v15 error:&v45];
        v17 = v45;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v18 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            NSStringFromSelector(*(a1 + 48));
            v20 = v19 = v2;
            [v16 result];
            v22 = v21 = v9;
            *buf = 138413058;
            v52 = v20;
            v53 = 2112;
            v54 = v15;
            v55 = 2112;
            v56 = v22;
            v57 = 2112;
            v58 = v17;
            _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, request, %@, deleted count, %@, error, %@", buf, 0x2Au);

            v9 = v21;
            v2 = v19;
            v7 = v36;
            v8 = v37;
          }
        }

        if (v17)
        {
          [v7 addObject:v17];
        }
      }

      v39 = [v8 countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v39);
  }

  if ([v7 count])
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "skipping persisting of new locations of interest due to errors during deletion.", buf, 2u);
    }

    v24 = _RTSafeArray();
    v25 = _RTMultiErrorCreate();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v26 = *(a1 + 32);
    v27 = [v26 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v42;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v41 + 1) + 8 * j) managedObjectWithContext:v2];
        }

        v28 = [v26 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v28);
    }

    v40 = 0;
    v32 = [v2 save:&v40];
    v25 = v40;
    if ((v32 & 1) == 0)
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v35 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412546;
        v52 = v35;
        v53 = 2112;
        v54 = v25;
        _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }
    }
  }

  v34 = *(a1 + 40);
  if (v34)
  {
    (*(v34 + 16))(v34, v25);
  }
}

- (void)replaceWithLocationsOfInterest:(id)interest handler:(id)handler
{
  interestCopy = interest;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__RTLearnedLocationStore_replaceWithLocationsOfInterest_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = interestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = interestCopy;
  dispatch_async(queue, block);
}

- (void)_fetchEntityAsDictionaryWithEntityName:(id)name propertiesToFetch:(id)fetch handler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  fetchCopy = fetch;
  handlerCopy = handler;
  if (nameCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__RTLearnedLocationStore__fetchEntityAsDictionaryWithEntityName_propertiesToFetch_handler___block_invoke;
    aBlock[3] = &unk_2788C4910;
    v18 = nameCopy;
    v19 = fetchCopy;
    v21 = a2;
    v12 = handlerCopy;
    v20 = v12;
    v13 = _Block_copy(aBlock);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __91__RTLearnedLocationStore__fetchEntityAsDictionaryWithEntityName_propertiesToFetch_handler___block_invoke_573;
    v15[3] = &unk_2788C48C0;
    v16 = v12;
    [(RTStore *)self _performBlock:v13 contextType:1 errorHandler:v15];
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[RTLearnedLocationStore _fetchEntityAsDictionaryWithEntityName:propertiesToFetch:handler:]";
      v24 = 1024;
      v25 = 7013;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: entityName (in %s:%d)", buf, 0x12u);
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }
}

void __91__RTLearnedLocationStore__fetchEntityAsDictionaryWithEntityName_propertiesToFetch_handler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBE428];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntityName:*(a1 + 32)];
  [v5 setResultType:2];
  [v5 setPropertiesToFetch:*(a1 + 40)];
  v13 = 0;
  v6 = [v4 executeFetchRequest:v5 error:&v13];

  v7 = v13;
  if (v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v7;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_8:
      v10();
    }
  }

  else
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      v10 = *(v11 + 16);
      goto LABEL_8;
    }
  }
}

uint64_t __91__RTLearnedLocationStore__fetchEntityAsDictionaryWithEntityName_propertiesToFetch_handler___block_invoke_573(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)enumerateStoredLocationsOfInterestWithOptions:(id)options enumerationBlock:(id)block
{
  v46[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  blockCopy = block;
  if (blockCopy)
  {
    v37 = 1;
    if (optionsCopy)
    {
      if ([optionsCopy singleVisit])
      {
        v9 = +[RTLearnedLocationOfInterestVisitMO fetchRequest];
        [v9 setReturnsObjectsAsFaults:1];
        v10 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entryDate" ascending:{objc_msgSend(optionsCopy, "ascendingVisitEntryDate")}];
        v40 = v10;
        selfCopy = self;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
        [v9 setSortDescriptors:v11];

        [v9 setReturnsObjectsAsFaults:1];
        v12 = MEMORY[0x277CCA920];
        v13 = MEMORY[0x277CCAC30];
        dateInterval = [optionsCopy dateInterval];
        startDate = [dateInterval startDate];
        dateInterval3 = [v13 predicateWithFormat:@"%K >= %@", @"entryDate", startDate];
        v39[0] = dateInterval3;
        v16 = MEMORY[0x277CCAC30];
        dateInterval2 = [optionsCopy dateInterval];
        endDate = [dateInterval2 endDate];
        v19 = [v16 predicateWithFormat:@"%K <= %@", @"exitDate", endDate];
        v39[1] = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
        v21 = [v12 andPredicateWithSubpredicates:v20];
        [v9 setPredicate:v21];

        self = selfCopy;
      }

      else
      {
        v9 = +[RTLearnedLocationOfInterestMO fetchRequestSortedByCreation];
        [v9 setReturnsObjectsAsFaults:0];
        v38[0] = @"visits";
        v38[1] = @"transitions";
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
        [v9 setRelationshipKeyPathsForPrefetching:v26];

        v27 = MEMORY[0x277CCAC30];
        dateInterval = [optionsCopy dateInterval];
        startDate = [dateInterval startDate];
        dateInterval3 = [optionsCopy dateInterval];
        dateInterval2 = [dateInterval3 endDate];
        endDate = [v27 predicateWithFormat:@"SUBQUERY(%K, $v, $v.%K >= %@ and $v.%K <= %@).@count > 0", @"visits", @"entryDate", startDate, @"exitDate", dateInterval2];
        [v9 setPredicate:endDate];
      }

      if ([optionsCopy batchSize])
      {
        batchSize = [optionsCopy batchSize];
        if (batchSize >= 0x12C)
        {
          v29 = 300;
        }

        else
        {
          v29 = batchSize;
        }
      }

      else
      {
        v29 = 300;
      }

      [v9 setFetchBatchSize:300];
      [v9 setFetchLimit:v29];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __89__RTLearnedLocationStore_enumerateStoredLocationsOfInterestWithOptions_enumerationBlock___block_invoke;
      aBlock[3] = &unk_2788CBA28;
      v35 = optionsCopy;
      v36 = blockCopy;
      v30 = _Block_copy(aBlock);
      [(RTStore *)self enumerateType:objc_opt_class() fetchRequest:v9 enumerationBlock:v30];
    }

    else
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277D01448];
      v45 = *MEMORY[0x277CCA450];
      v46[0] = @"requires non-nil options.";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v9 = [v22 errorWithDomain:v23 code:7 userInfo:v24];

      v25 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocationStore);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v31 = NSStringFromSelector(a2);
        *buf = 138412546;
        v42 = v31;
        v43 = 2112;
        v44 = v9;
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      (*(blockCopy + 2))(blockCopy, 0, v9, &v37);
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: enumerationBlock", buf, 2u);
    }
  }
}

void __89__RTLearnedLocationStore_enumerateStoredLocationsOfInterestWithOptions_enumerationBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[_RTMap alloc] initWithInput:v6];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__RTLearnedLocationStore_enumerateStoredLocationsOfInterestWithOptions_enumerationBlock___block_invoke_2;
  v9[3] = &unk_2788CB848;
  v10 = *(a1 + 32);
  v8 = [(_RTMap *)v7 withBlock:v9];

  (*(*(a1 + 40) + 16))();
}

id __89__RTLearnedLocationStore_enumerateStoredLocationsOfInterestWithOptions_enumerationBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 dateInterval];
  v5 = [v3 filterWithDateInterval:v4];

  return v5;
}

- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v9 = optionsCopy;
  if (!error)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_8;
  }

  if (optionsCopy)
  {
    v10 = objc_opt_class();
    if (v10 != objc_opt_class())
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v11 stringWithFormat:@"error of type, %@, is not supported", v13];

      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D01448];
      v25 = *MEMORY[0x277CCA450];
      v26[0] = v14;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v18 = [v15 errorWithDomain:v16 code:7 userInfo:v17];

      v19 = v18;
      *error = v18;

LABEL_8:
      v21 = 0;
      goto LABEL_13;
    }

    v21 = [(RTLearnedLocationStore *)self fetchRequestFromLocationOfInterestOptions:v9];
    [v21 setFetchOffset:offset];
  }

  else
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
    }

    _RTErrorInvalidParameterCreate(@"options");
    *error = v21 = 0;
  }

LABEL_13:

  return v21;
}

- (id)fetchRequestFromLocationOfInterestOptions:(id)options
{
  v47[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = optionsCopy;
  if (optionsCopy)
  {
    wrappedVisit = [optionsCopy wrappedVisit];
    v6 = MEMORY[0x277CBE428];
    if (wrappedVisit)
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v6 fetchRequestWithEntityName:v8];

      [v9 setReturnsObjectsAsFaults:1];
      v10 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entryDate" ascending:{objc_msgSend(v4, "ascending")}];
      v47[0] = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
      [v9 setSortDescriptors:v11];

      [v9 setReturnsObjectsAsFaults:1];
      v12 = MEMORY[0x277CCAC30];
      dateInterval = [v4 dateInterval];
      startDate = [dateInterval startDate];
      dateInterval2 = [v4 dateInterval];
      endDate = [dateInterval2 endDate];
      v17 = [v12 predicateWithFormat:@"%K >= %@ AND %K <= %@", @"entryDate", startDate, @"entryDate", endDate];

      v18 = MEMORY[0x277CCAC30];
      dateInterval3 = [v4 dateInterval];
      startDate2 = [dateInterval3 startDate];
      dateInterval4 = [v4 dateInterval];
      endDate2 = [dateInterval4 endDate];
      startDate3 = [v18 predicateWithFormat:@"%K >= %@ AND %K <= %@", @"exitDate", startDate2, @"exitDate", endDate2];

      v24 = MEMORY[0x277CCA920];
      v46[0] = v17;
      v46[1] = startDate3;
      dateInterval6 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
      endDate3 = [v24 orPredicateWithSubpredicates:dateInterval6];
      [v9 setPredicate:endDate3];
    }

    else
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v9 = [v6 fetchRequestWithEntityName:v29];

      [v9 setReturnsObjectsAsFaults:0];
      v45[0] = @"visits";
      v45[1] = @"transitions";
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
      [v9 setRelationshipKeyPathsForPrefetching:v30];

      v31 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"placeCreationDate" ascending:{objc_msgSend(v4, "ascending")}];
      v44 = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
      [v9 setSortDescriptors:v32];

      v33 = MEMORY[0x277CCAC30];
      dateInterval5 = [v4 dateInterval];
      startDate3 = [dateInterval5 startDate];
      dateInterval6 = [v4 dateInterval];
      endDate3 = [dateInterval6 endDate];
      dateInterval7 = [v4 dateInterval];
      startDate4 = [dateInterval7 startDate];
      dateInterval8 = [v4 dateInterval];
      endDate4 = [dateInterval8 endDate];
      v38 = [v33 predicateWithFormat:@"SUBQUERY(%K, $v, ($v.%K >= %@ and $v.%K <= %@) or ($v.%K >= %@ and $v.%K <= %@)).@count > 0", @"visits", @"entryDate", startDate3, @"entryDate", endDate3, @"exitDate", startDate4, @"exitDate", endDate4];
      [v9 setPredicate:v38];

      v17 = dateInterval5;
    }

    if ([v4 batchSize])
    {
      batchSize = [v4 batchSize];
      if (batchSize >= 0x12C)
      {
        v40 = 300;
      }

      else
      {
        v40 = batchSize;
      }
    }

    else
    {
      v40 = 300;
    }

    [v9 setFetchBatchSize:300];
    [v9 setFetchLimit:v40];
  }

  else
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (void)_logLocalStoreWithReason:(id)reason handler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__RTLearnedLocationStore__logLocalStoreWithReason_handler___block_invoke;
  v13[3] = &unk_2788C4FB0;
  v14 = reasonCopy;
  v16 = a2;
  v15 = handlerCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__RTLearnedLocationStore__logLocalStoreWithReason_handler___block_invoke_594;
  v11[3] = &unk_2788C48C0;
  v12 = v15;
  v9 = v15;
  v10 = reasonCopy;
  [(RTStore *)self _performBlock:v13 contextType:1 errorHandler:v11];
}

void __59__RTLearnedLocationStore__logLocalStoreWithReason_handler___block_invoke(uint64_t a1, void *a2)
{
  v70[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v60 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "start logging local store with reason, %@", buf, 0xCu);
    }
  }

  v35 = a1;
  v6 = +[RTLearnedLocationOfInterestMO fetchRequestSortedByCreation];
  [v6 setReturnsObjectsAsFaults:0];
  v70[0] = @"visits";
  v70[1] = @"transitions";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
  [v6 setRelationshipKeyPathsForPrefetching:v7];

  v39 = v6;
  [v6 setFetchLimit:5];
  obj = 0;
  v41 = 0;
  v36 = v3;
  do
  {
    v8 = objc_autoreleasePoolPush();
    v58 = 0;
    v9 = [v3 executeFetchRequest:v39 error:&v58];
    v10 = v58;

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v9;
    v43 = [obj countByEnumeratingWithState:&v54 objects:v69 count:16];
    context = v8;
    v38 = v10;
    if (v43)
    {
      v42 = *v55;
      do
      {
        v11 = 0;
        do
        {
          if (*v55 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [RTLearnedLocationOfInterest createWithManagedObject:*(*(&v54 + 1) + 8 * v11)];
          v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          v44 = v11;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218243;
            v60 = ++v41;
            v61 = 2117;
            v62 = v12;
            _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "locationOfInterest %lu, %{sensitive}@", buf, 0x16u);
          }

          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v45 = v12;
          v14 = [v12 visits];
          v15 = [v14 countByEnumeratingWithState:&v50 objects:v68 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = 0;
            v18 = *v51;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v51 != v18)
                {
                  objc_enumerationMutation(v14);
                }

                v20 = *(*(&v50 + 1) + 8 * i);
                v21 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  ++v17;
                  *buf = 134218243;
                  v60 = v17;
                  v61 = 2117;
                  v62 = v20;
                  _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEFAULT, "visit %lu, %{sensitive}@", buf, 0x16u);
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v50 objects:v68 count:16];
            }

            while (v16);
          }

          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v22 = [v45 transitions];
          v23 = [v22 countByEnumeratingWithState:&v46 objects:v67 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = 0;
            v26 = *v47;
            do
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v47 != v26)
                {
                  objc_enumerationMutation(v22);
                }

                v28 = *(*(&v46 + 1) + 8 * j);
                v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  ++v25;
                  *buf = 134218243;
                  v60 = v25;
                  v61 = 2117;
                  v62 = v28;
                  _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEFAULT, "transition %lu, %{sensitive}@", buf, 0x16u);
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v46 objects:v67 count:16];
            }

            while (v24);
          }

          v11 = v44 + 1;
        }

        while (v44 + 1 != v43);
        v43 = [obj countByEnumeratingWithState:&v54 objects:v69 count:16];
      }

      while (v43);
    }

    [v39 setFetchOffset:{objc_msgSend(v39, "fetchOffset") + objc_msgSend(obj, "count")}];
    v3 = v36;
    [v36 reset];
    objc_autoreleasePoolPop(context);
  }

  while ([obj count] && !v38);
  if (*(v35 + 32))
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(v35 + 32);
      *buf = 138412290;
      v60 = v31;
      _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEFAULT, "end logging local store with reason, %@", buf, 0xCu);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v34 = NSStringFromSelector(*(v35 + 48));
      *buf = 138413058;
      v60 = v34;
      v61 = 2112;
      v62 = v39;
      v63 = 2048;
      v64 = v41;
      v65 = 2112;
      v66 = v38;
      _os_log_debug_impl(&dword_2304B3000, v32, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);

      v3 = v36;
    }
  }

  v33 = *(v35 + 40);
  if (v33)
  {
    (*(v33 + 16))(v33, v38);
  }
}

uint64_t __59__RTLearnedLocationStore__logLocalStoreWithReason_handler___block_invoke_594(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)logLocalStoreWithReason:(id)reason handler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTLearnedLocationStore_logLocalStoreWithReason_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = reasonCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = reasonCopy;
  dispatch_async(queue, block);
}

- (void)_logCloudStoreWithReason:(id)reason handler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__RTLearnedLocationStore__logCloudStoreWithReason_handler___block_invoke;
  v13[3] = &unk_2788C4FB0;
  v14 = reasonCopy;
  v16 = a2;
  v15 = handlerCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__RTLearnedLocationStore__logCloudStoreWithReason_handler___block_invoke_598;
  v11[3] = &unk_2788C48C0;
  v12 = v15;
  v9 = v15;
  v10 = reasonCopy;
  [(RTStore *)self _performBlock:v13 contextType:1 errorHandler:v11];
}

void __59__RTLearnedLocationStore__logCloudStoreWithReason_handler___block_invoke(uint64_t a1, void *a2)
{
  v126[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v118 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "start logging cloud store with reason, %@", buf, 0xCu);
    }
  }

  v80 = a1;
  v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  v88 = v3;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = +[RTDeviceMO fetchRequest];
    v9 = [v3 countForFetchRequest:v8 error:0];
    v10 = [v3 currentDevice];
    v11 = [RTDevice createWithManagedObject:v10];
    *buf = 138412803;
    v118 = v7;
    v119 = 2048;
    v120 = v9;
    v121 = 2117;
    v122 = v11;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%@, %lu devices, currentDevice, %{sensitive}@", buf, 0x20u);

    v3 = v88;
  }

  v12 = +[RTDeviceMO fetchRequest];
  [v12 setReturnsObjectsAsFaults:0];
  [v12 setFetchLimit:5];
  v13 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"ckRecordID" ascending:1];
  v126[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:1];
  [v12 setSortDescriptors:v14];

  v15 = 0;
  obj = 0;
  v83 = v12;
  do
  {
    context = objc_autoreleasePoolPush();
    v112 = 0;
    v16 = [v3 executeFetchRequest:v12 error:&v112];
    v87 = v112;

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    obj = v16;
    v17 = [obj countByEnumeratingWithState:&v108 objects:v125 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v109;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v109 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v108 + 1) + 8 * i);
          v22 = [RTDevice createWithManagedObject:v21];
          v23 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            ++v15;
            v24 = [v21 places];
            v25 = [v24 count];
            v26 = [v21 visits];
            v27 = [v26 count];
            *buf = 134218755;
            v118 = v15;
            v119 = 2117;
            v120 = v22;
            v121 = 2048;
            v122 = v25;
            v123 = 2048;
            v124 = v27;
            _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEFAULT, "device %lu, %{sensitive}@, placesCount, %lu, visitsCount, %lu", buf, 0x2Au);
          }
        }

        v18 = [obj countByEnumeratingWithState:&v108 objects:v125 count:16];
      }

      while (v18);
    }

    v12 = v83;
    [v83 setFetchOffset:{objc_msgSend(v83, "fetchOffset") + objc_msgSend(obj, "count")}];
    v3 = v88;
    [v88 reset];
    objc_autoreleasePoolPop(context);
  }

  while ([obj count] && !v87);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v77 = NSStringFromSelector(*(v80 + 48));
      *buf = 138413058;
      v118 = v77;
      v119 = 2112;
      v120 = v83;
      v121 = 2048;
      v122 = v15;
      v123 = 2112;
      v124 = v87;
      _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  v29 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = NSStringFromSelector(*(v80 + 48));
    v31 = +[RTLearnedPlaceMO fetchRequest];
    v32 = [v88 countForFetchRequest:v31 error:0];
    *buf = 138412546;
    v118 = v30;
    v119 = 2048;
    v120 = v32;
    _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEFAULT, "%@, %lu places", buf, 0x16u);
  }

  v33 = +[RTLearnedPlaceMO fetchRequest];
  [v33 setReturnsObjectsAsFaults:0];
  [v33 setFetchLimit:5];
  v34 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"creationDate" ascending:1];
  v116 = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v116 count:1];
  [v33 setSortDescriptors:v35];

  contexta = 0;
  v93 = 0;
  v82 = v33;
  do
  {
    v89 = objc_autoreleasePoolPush();
    v107 = 0;
    v36 = [v3 executeFetchRequest:v33 error:&v107];
    v86 = v107;

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v93 = v36;
    v37 = [v93 countByEnumeratingWithState:&v103 objects:v115 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v104;
      v91 = *v104;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v104 != v39)
          {
            objc_enumerationMutation(v93);
          }

          v41 = *(*(&v103 + 1) + 8 * j);
          v42 = [v41 device];
          v43 = [RTDevice createWithManagedObject:v42];

          v44 = [RTLearnedPlace createWithManagedObject:v41];
          v45 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = [v41 visits];
            v47 = [v46 count];
            v48 = [v43 identifier];
            *buf = 134218755;
            v118 = ++contexta;
            v119 = 2117;
            v120 = v44;
            v121 = 2048;
            v122 = v47;
            v123 = 2112;
            v124 = v48;
            _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_DEFAULT, "place, %lu, %{sensitive}@, visits, %lu, deviceIdentifier, %@", buf, 0x2Au);

            v39 = v91;
          }
        }

        v38 = [v93 countByEnumeratingWithState:&v103 objects:v115 count:16];
      }

      while (v38);
    }

    v33 = v82;
    [v82 setFetchOffset:{objc_msgSend(v82, "fetchOffset") + objc_msgSend(v93, "count")}];
    v3 = v88;
    [v88 reset];
    objc_autoreleasePoolPop(v89);
  }

  while ([v93 count] && !v86);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v49 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      v78 = NSStringFromSelector(*(v80 + 48));
      *buf = 138413059;
      v118 = v78;
      v119 = 2117;
      v120 = v82;
      v121 = 2048;
      v122 = contexta;
      v123 = 2112;
      v124 = v86;
      _os_log_debug_impl(&dword_2304B3000, v49, OS_LOG_TYPE_DEBUG, "%@, request, %{sensitive}@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  v50 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = NSStringFromSelector(*(v80 + 48));
    v52 = +[RTLearnedVisitMO fetchRequest];
    v53 = [v88 countForFetchRequest:v52 error:0];
    *buf = 138412546;
    v118 = v51;
    v119 = 2048;
    v120 = v53;
    _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_DEFAULT, "%@, %lu visits", buf, 0x16u);
  }

  v54 = +[RTLearnedVisitMO fetchRequest];
  [v54 setReturnsObjectsAsFaults:0];
  [v54 setFetchLimit:5];
  v55 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"entryDate" ascending:1];
  v114 = v55;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
  [v54 setSortDescriptors:v56];

  contextb = 0;
  v92 = 0;
  v81 = v54;
  do
  {
    v84 = objc_autoreleasePoolPush();
    v102 = 0;
    v57 = [v3 executeFetchRequest:v54 error:&v102];
    v85 = v102;

    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v92 = v57;
    v58 = [v92 countByEnumeratingWithState:&v98 objects:v113 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v99;
      v90 = *v99;
      do
      {
        for (k = 0; k != v59; ++k)
        {
          if (*v99 != v60)
          {
            objc_enumerationMutation(v92);
          }

          v62 = *(*(&v98 + 1) + 8 * k);
          v63 = [v62 device];
          v64 = [RTDevice createWithManagedObject:v63];

          v65 = [RTLearnedVisit createWithManagedObject:v62];
          v66 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            v67 = [v62 place];
            v68 = [v67 identifier];
            v69 = [v64 identifier];
            *buf = 134218755;
            v118 = ++contextb;
            v119 = 2117;
            v120 = v65;
            v121 = 2112;
            v122 = v68;
            v123 = 2112;
            v124 = v69;
            _os_log_impl(&dword_2304B3000, v66, OS_LOG_TYPE_DEFAULT, "visit, %lu, %{sensitive}@, placeIdentifier, %@, deviceIdentifier, %@", buf, 0x2Au);

            v60 = v90;
          }
        }

        v59 = [v92 countByEnumeratingWithState:&v98 objects:v113 count:16];
      }

      while (v59);
    }

    v54 = v81;
    [v81 setFetchOffset:{objc_msgSend(v81, "fetchOffset") + objc_msgSend(v92, "count")}];
    v3 = v88;
    [v88 reset];
    objc_autoreleasePoolPop(v84);
  }

  while ([v92 count] && !v85);
  v70 = v80;
  if (*(v80 + 32))
  {
    v71 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      v72 = *(v80 + 32);
      *buf = 138412290;
      v118 = v72;
      _os_log_impl(&dword_2304B3000, v71, OS_LOG_TYPE_DEFAULT, "end logging cloud store with reason, %@", buf, 0xCu);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v73 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      v79 = NSStringFromSelector(*(v80 + 48));
      *buf = 138413058;
      v118 = v79;
      v119 = 2112;
      v120 = v81;
      v121 = 2048;
      v122 = contextb;
      v123 = 2112;
      v124 = v85;
      _os_log_debug_impl(&dword_2304B3000, v73, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);

      v70 = v80;
    }
  }

  v74 = *(v70 + 40);
  if (v74)
  {
    v75 = _RTSafeArray();
    v76 = _RTMultiErrorCreate();
    (*(v74 + 16))(v74, v76);
  }
}

uint64_t __59__RTLearnedLocationStore__logCloudStoreWithReason_handler___block_invoke_598(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)logCloudStoreWithReason:(id)reason handler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTLearnedLocationStore_logCloudStoreWithReason_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = reasonCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = reasonCopy;
  dispatch_async(queue, block);
}

- (void)_associatePlacesToVisits:(id)visits handler:(id)handler
{
  visitsCopy = visits;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__RTLearnedLocationStore__associatePlacesToVisits_handler___block_invoke;
  aBlock[3] = &unk_2788C4FB0;
  v13 = visitsCopy;
  v14 = handlerCopy;
  v15 = a2;
  v9 = handlerCopy;
  v10 = visitsCopy;
  v11 = _Block_copy(aBlock);
  [(RTStore *)self _performBlock:v11 contextType:2 errorHandler:v9];
}

void __59__RTLearnedLocationStore__associatePlacesToVisits_handler___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedPlaceMO fetchRequest];
  v5 = MEMORY[0x277CCAC30];
  v6 = [*(a1 + 32) allKeys];
  v7 = [v5 predicateWithFormat:@"%K IN %@", @"identifier", v6];
  [v4 setPredicate:v7];

  v39 = 0;
  v8 = [v3 executeFetchRequest:v4 error:&v39];
  v9 = v39;
  if (v9 || ![v8 count])
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v9);
    }
  }

  else
  {
    v30 = v8;
    v31 = v4;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          v16 = +[RTLearnedVisitMO fetchRequest];
          v17 = MEMORY[0x277CCAC30];
          v18 = *(a1 + 32);
          v19 = [v15 identifier];
          v20 = [v18 objectForKeyedSubscript:v19];
          v21 = [v17 predicateWithFormat:@"%K IN %@", @"identifier", v20];
          [v16 setPredicate:v21];

          v34 = 0;
          v22 = [v3 executeFetchRequest:v16 error:&v34];
          v23 = v34;
          if (v23)
          {
            v9 = v23;
            v28 = *(a1 + 40);
            v4 = v31;
            if (v28)
            {
              (*(v28 + 16))(v28, v9);
            }

            goto LABEL_24;
          }

          if ([v22 count])
          {
            v24 = [MEMORY[0x277CBEB98] setWithArray:v22];
            [v15 addVisits:v24];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v33 = 0;
    v25 = [v3 save:&v33];
    v9 = v33;
    if ((v25 & 1) == 0)
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412546;
        v41 = v29;
        v42 = 2112;
        v43 = v9;
        _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "%@, associatePlacesToVisits error, %@", buf, 0x16u);
      }
    }

    v27 = *(a1 + 40);
    v4 = v31;
    if (v27)
    {
      (*(v27 + 16))(v27, v9);
    }

LABEL_24:
    v8 = v30;
  }
}

- (id)predicateForVisitsWithinDistance:(double)distance location:(id)location
{
  v21[4] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  [locationCopy latitude];
  [locationCopy longitude];

  RTCommonCalculateBoundingBox();
  v19 = MEMORY[0x277CCA920];
  v5 = MEMORY[0x277CCAC30];
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v6 = [v5 predicateWithFormat:@"%@ <= %K", v20, @"locationLongitude"];
  v21[0] = v6;
  v7 = MEMORY[0x277CCAC30];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v9 = [v7 predicateWithFormat:@"%K <= %@", @"locationLongitude", v8];
  v21[1] = v9;
  v10 = MEMORY[0x277CCAC30];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v12 = [v10 predicateWithFormat:@"%@ <= %K", v11, @"locationLatitude"];
  v21[2] = v12;
  v13 = MEMORY[0x277CCAC30];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v15 = [v13 predicateWithFormat:@"%K <= %@", @"locationLatitude", v14];
  v21[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  v17 = [v19 andPredicateWithSubpredicates:v16];

  return v17;
}

- (void)processExternalMapItem:(id)item handler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

    goto LABEL_7;
  }

  if (!itemCopy)
  {
    v10 = [MEMORY[0x277CCA9B8] rt_errorWithCode:7 description:@"mapItem cannot be nil"];
    handlerCopy[2](handlerCopy, 0, v10);
LABEL_7:

    goto LABEL_8;
  }

  queue = [(RTNotifier *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__RTLearnedLocationStore_processExternalMapItem_handler___block_invoke;
  v11[3] = &unk_2788C4C20;
  v11[4] = self;
  v12 = itemCopy;
  v14 = a2;
  v13 = handlerCopy;
  dispatch_async(queue, v11);

LABEL_8:
}

void __57__RTLearnedLocationStore_processExternalMapItem_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) predicateForObjectsFromCurrentDevice];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__RTLearnedLocationStore_processExternalMapItem_handler___block_invoke_2;
  v9[3] = &unk_2788C9E18;
  v8 = *(a1 + 48);
  v5 = v8;
  v12 = v8;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  [v3 fetchStoredMapItemsWithMapItem:v4 predicate:v2 handler:v9];
}

void __57__RTLearnedLocationStore_processExternalMapItem_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v28 = v19;
      v29 = 2112;
      v30 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, error fetching stored mapItems, %@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if ([v5 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = NSStringFromSelector(*(a1 + 56));
          v10 = [v5 firstObject];
          *buf = 138412547;
          v28 = v9;
          v29 = 2117;
          v30 = v10;
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, found existing mapItem, %{sensitive}@", buf, 0x16u);
        }
      }

      v11 = *(a1 + 48);
      v12 = [v5 firstObject];
      (*(v11 + 16))(v11, v12, 0);
    }

    else
    {
      v13 = [RTMapItemManager createMapItemFromMapItem:*(a1 + 32)];
      v12 = v13;
      if (v13)
      {
        v14 = *(a1 + 40);
        v26 = v13;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __57__RTLearnedLocationStore_processExternalMapItem_handler___block_invoke_618;
        v23[3] = &unk_2788C6B80;
        v22 = *(a1 + 48);
        v16 = v22;
        v25 = v22;
        v24 = v12;
        [v14 storeMapItems:v15 handler:v23];

        v17 = v25;
      }

      else
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v20 = NSStringFromSelector(*(a1 + 56));
          v21 = *(a1 + 32);
          *buf = 138412547;
          v28 = v20;
          v29 = 2117;
          v30 = v21;
          _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "%@, failed to create local copy of mapItem, %{sensitive}@", buf, 0x16u);
        }

        v17 = [MEMORY[0x277CCA9B8] rt_errorWithCode:0 description:@"Failed to create local copy of mapItem"];
        (*(*(a1 + 48) + 16))();
      }
    }
  }
}

void __57__RTLearnedLocationStore_processExternalMapItem_handler___block_invoke_618(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(*(a1 + 48));
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, error storing local copy of mapItem, %@", &v10, 0x16u);
    }

    v5 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = NSStringFromSelector(*(a1 + 48));
        v8 = *(a1 + 32);
        v10 = 138412547;
        v11 = v7;
        v12 = 2117;
        v13 = v8;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, successfully processed external mapItem, %{sensitive}@", &v10, 0x16u);
      }
    }

    v5 = *(*(a1 + 40) + 16);
  }

  v5();
}

@end