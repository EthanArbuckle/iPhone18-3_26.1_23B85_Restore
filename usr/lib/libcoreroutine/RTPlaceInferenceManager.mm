@interface RTPlaceInferenceManager
+ (unint64_t)learnedPlaceTypeFromLocationOfInterestType:(int64_t)type;
+ (unint64_t)learnedPlaceTypeFromUserSpecificPlaceType:(unint64_t)type;
+ (unint64_t)userSpecificPlaceTypeFromLearnedPlaceType:(unint64_t)type;
+ (unint64_t)userSpecificPlaceTypeFromLocationOfInterestType:(int64_t)type;
+ (void)sanityCheckMapItemProviders:(id)providers;
- (BOOL)_inferUserSpecificPlaceTypeForInferredMapItem:(id)item userSpecificPlaceType:(unint64_t *)type userSpecificPlaceTypeSource:(unint64_t *)source error:(id *)error;
- (BOOL)_learnedPlaceTypeForInferredMapItem:(id)item placeType:(unint64_t *)type placeTypeSource:(unint64_t *)source error:(id *)error;
- (BOOL)_savePlaceInferenceQueriesFromInferredMapItems:(id)items inferenceErrorCode:(int64_t)code referenceLocation:(id)location options:(id)options outError:(id *)error;
- (RTPlaceInferenceManager)initWithDefaultsManager:(id)manager bluePOIMetricManager:(id)metricManager bluePOIMonitor:(id)monitor bluePOITileManager:(id)tileManager distanceCalculator:(id)calculator eventManager:(id)eventManager fingerprintManager:(id)fingerprintManager inferredMapItemFuser:(id)self0 learnedLocationStore:(id)self1 locationManager:(id)self2 mapItemManager:(id)self3 mapServiceManager:(id)self4 mapsSupportManager:(id)self5 metricManager:(id)self6 motionActivityManager:(id)self7 placeInferenceQueryStore:(id)self8 platform:(id)self9 portraitManager:(id)portraitManager userCurationStore:(id)curationStore visitStore:(id)visitStore;
- (id)_closestCachedLocationForLocation:(id)location;
- (id)_estimatedLocationFromSortedLocations:(id)locations;
- (id)_filterLocalBluePOIMapItems:(id)items;
- (id)_getFallbackMapItemProviderForOptions:(id)options;
- (id)_loiIdentifierForInferredMapItem:(id)item;
- (id)_placeInferenceFromInferredMapItem:(id)item referenceLocation:(id)location error:(id *)error;
- (id)_placeInferencesForOptions:(id)options error:(id *)error;
- (id)_removeCurrentPOIMapItems:(id)items;
- (id)_selectBestCandidateAndUpdateReferenceLocation:(id)location;
- (id)_selectLastLocationFromLocations:(id)locations maxHorizontalUncertainty:(double)uncertainty;
- (id)_selectMapItemProvidersForOptions:(id)options targetProvider:(unint64_t)provider;
- (id)createAllMapItemProvidersWithDefaultManager:(id)manager bluePOIMetricManager:(id)metricManager bluePOIMonitor:(id)monitor bluePOITileManager:(id)tileManager distanceCalculator:(id)calculator eventManager:(id)eventManager fingerprintManager:(id)fingerprintManager learnedLocationStore:(id)self0 locationManager:(id)self1 mapItemManager:(id)self2 mapServiceManager:(id)self3 mapsSupportManager:(id)self4 motionActivityManager:(id)self5 platform:(id)self6 portraitManager:(id)self7 userCurationStore:(id)self8 visitStore:(id)self9;
- (unint64_t)_getMappingIndexForClientIdentifier:(id)identifier;
- (void)_addMapItemProviderFromArray:(id)array toSet:(id)set;
- (void)_onBluePOIMonitorEstimateUpdateNotification:(id)notification;
- (void)_onDailyMetricsNotification:(id)notification;
- (void)_onPointOfInterestVisitNotification:(id)notification;
- (void)_onSyncedPlaceInferences:(id)inferences;
- (void)_onVisitManagerVisitIncidentNotification:(id)notification;
- (void)_performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion;
- (void)_registerForDailyMetricsNotifications;
- (void)_setup;
- (void)_shutdownWithHandler:(id)handler;
- (void)_unRegisterForDailyMetricsNotifications;
- (void)_updateCachedLocationsWithLocation:(id)location;
- (void)fetchPlaceInferencesForOptions:(id)options handler:(id)handler;
- (void)onBluePOIMonitorEstimateUpdateNotification:(id)notification;
- (void)onDailyMetricsNotification:(id)notification;
- (void)onPointOfInterestVisitNotification:(id)notification;
- (void)onSyncedPlaceInferences:(id)inferences;
- (void)onVisitManagerVisitIncidentNotification:(id)notification;
- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion;
- (void)sendPlaceInferenceMetrics:(id)metrics inferredMapItems:(id)items fusedMapItems:(id)mapItems fallbackInferredMapItems:(id)inferredMapItems finalPlaceInferences:(id)inferences referenceLocation:(id)location;
- (void)setVisitManager:(id)manager;
@end

@implementation RTPlaceInferenceManager

- (RTPlaceInferenceManager)initWithDefaultsManager:(id)manager bluePOIMetricManager:(id)metricManager bluePOIMonitor:(id)monitor bluePOITileManager:(id)tileManager distanceCalculator:(id)calculator eventManager:(id)eventManager fingerprintManager:(id)fingerprintManager inferredMapItemFuser:(id)self0 learnedLocationStore:(id)self1 locationManager:(id)self2 mapItemManager:(id)self3 mapServiceManager:(id)self4 mapsSupportManager:(id)self5 metricManager:(id)self6 motionActivityManager:(id)self7 placeInferenceQueryStore:(id)self8 platform:(id)self9 portraitManager:(id)portraitManager userCurationStore:(id)curationStore visitStore:(id)visitStore
{
  managerCopy = manager;
  obj = metricManager;
  metricManagerCopy = metricManager;
  monitorCopy = monitor;
  tileManagerCopy = tileManager;
  tileManagerCopy2 = tileManager;
  calculatorCopy = calculator;
  calculatorCopy2 = calculator;
  v27 = metricManagerCopy;
  eventManagerCopy = eventManager;
  fingerprintManagerCopy = fingerprintManager;
  fuserCopy = fuser;
  storeCopy = store;
  locationManagerCopy = locationManager;
  itemManagerCopy = itemManager;
  serviceManagerCopy = serviceManager;
  supportManagerCopy = supportManager;
  v58 = a16;
  activityManagerCopy = activityManager;
  queryStoreCopy = queryStore;
  platformCopy = platform;
  portraitManagerCopy = portraitManager;
  curationStoreCopy = curationStore;
  visitStoreCopy = visitStore;
  v63 = v27;
  v62 = visitStoreCopy;
  if (!v27)
  {
    v31 = monitorCopy;
    v44 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bluePOIMetricManager", buf, 2u);
    }

    v43 = 0;
    v32 = managerCopy;
    v33 = tileManagerCopy2;
    v45 = calculatorCopy2;
    v46 = eventManagerCopy;
    v34 = fuserCopy;
    goto LABEL_31;
  }

  v31 = monitorCopy;
  if (!monitorCopy)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v32 = managerCopy;
    v45 = calculatorCopy2;
    v34 = fuserCopy;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bluePOIMonitor", buf, 2u);
    }

    v43 = 0;
    v33 = tileManagerCopy2;
    v46 = eventManagerCopy;
LABEL_31:
    v35 = storeCopy;
    v48 = v58;
    goto LABEL_70;
  }

  v32 = managerCopy;
  v33 = tileManagerCopy2;
  v34 = fuserCopy;
  if (tileManagerCopy2)
  {
    v53 = eventManagerCopy;
    if (managerCopy)
    {
      v35 = storeCopy;
      if (calculatorCopy2)
      {
        if (v53)
        {
          if (fingerprintManagerCopy)
          {
            if (fuserCopy)
            {
              if (storeCopy)
              {
                if (locationManagerCopy)
                {
                  if (itemManagerCopy)
                  {
                    if (serviceManagerCopy)
                    {
                      if (supportManagerCopy)
                      {
                        if (activityManagerCopy)
                        {
                          if (queryStoreCopy)
                          {
                            if (platformCopy)
                            {
                              if (portraitManagerCopy)
                              {
                                if (curationStoreCopy)
                                {
                                  if (visitStoreCopy)
                                  {
                                    v79.receiver = self;
                                    v79.super_class = RTPlaceInferenceManager;
                                    v66 = [(RTNotifier *)&v79 init];
                                    if (v66)
                                    {
                                      objc_storeStrong(&v66->_bluePOIMetricManager, obj);
                                      objc_storeStrong(&v66->_bluePOIMonitor, monitor);
                                      objc_storeStrong(&v66->_bluePOITileManager, tileManagerCopy);
                                      objc_storeStrong(&v66->_defaultsManager, manager);
                                      objc_storeStrong(&v66->_distanceCalculator, calculatorCopy);
                                      objc_storeStrong(&v66->_metricManager, a16);
                                      objc_storeStrong(&v66->_inferredMapItemFuser, fuser);
                                      objc_storeStrong(&v66->_learnedLocationStore, store);
                                      v66->_placeInferencesLimit = 50;
                                      v36 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
                                      cachedLocations = v66->_cachedLocations;
                                      v66->_cachedLocations = v36;

                                      v66->_cachedLocationIndex = 0;
                                      objc_storeStrong(&v66->_locationManager, locationManager);
                                      objc_storeStrong(&v66->_mapItemManager, itemManager);
                                      objc_storeStrong(&v66->_mapServiceManager, serviceManager);
                                      objc_storeStrong(&v66->_visitStore, visitStore);
                                      objc_storeStrong(&v66->_placeInferenceQueryStore, queryStore);
                                      v38 = [(RTDefaultsManager *)v66->_defaultsManager objectForKey:@"RTDefaultsPlaceInferenceManagerPlaceInferencesLimit"];
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v66->_placeInferencesLimit = [v38 unsignedIntegerValue];
                                      }

                                      v66->_clientMappingIndex = 0;
                                      v39 = [[RTPlaceInferenceDailyMetrics alloc] initWithDefaultsManager:managerCopy];
                                      dailyMetrics = v66->_dailyMetrics;
                                      v66->_dailyMetrics = v39;

                                      v35 = storeCopy;
                                      v41 = [(RTPlaceInferenceManager *)v66 createAllMapItemProvidersWithDefaultManager:managerCopy bluePOIMetricManager:v63 bluePOIMonitor:monitorCopy bluePOITileManager:tileManagerCopy2 distanceCalculator:calculatorCopy2 eventManager:v53 fingerprintManager:fingerprintManagerCopy learnedLocationStore:storeCopy locationManager:locationManagerCopy mapItemManager:itemManagerCopy mapServiceManager:serviceManagerCopy mapsSupportManager:supportManagerCopy motionActivityManager:activityManagerCopy platform:platformCopy portraitManager:portraitManagerCopy userCurationStore:curationStoreCopy visitStore:v62];
                                      mapItemProviders = v66->_mapItemProviders;
                                      v66->_mapItemProviders = v41;

                                      [(RTService *)v66 setup];
                                      v34 = fuserCopy;
                                    }

                                    v43 = v66;
                                    self = v43;
                                    goto LABEL_69;
                                  }

                                  v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                                  {
                                    *buf = 0;
                                    v51 = "Invalid parameter not satisfying: visitStore";
                                    goto LABEL_67;
                                  }

LABEL_68:

                                  v43 = 0;
LABEL_69:
                                  v48 = v58;
                                  v45 = calculatorCopy2;
                                  v46 = v53;
                                  goto LABEL_70;
                                }

                                v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                                {
                                  goto LABEL_68;
                                }

                                *buf = 0;
                                v51 = "Invalid parameter not satisfying: userCurationStore";
                              }

                              else
                              {
                                v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                                {
                                  goto LABEL_68;
                                }

                                *buf = 0;
                                v51 = "Invalid parameter not satisfying: portraitManager";
                              }
                            }

                            else
                            {
                              v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                              if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_68;
                              }

                              *buf = 0;
                              v51 = "Invalid parameter not satisfying: platform";
                            }
                          }

                          else
                          {
                            v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                            if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_68;
                            }

                            *buf = 0;
                            v51 = "Invalid parameter not satisfying: placeInferenceQueryStore";
                          }
                        }

                        else
                        {
                          v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                          if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_68;
                          }

                          *buf = 0;
                          v51 = "Invalid parameter not satisfying: motionActivityManager";
                        }
                      }

                      else
                      {
                        v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                        if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_68;
                        }

                        *buf = 0;
                        v51 = "Invalid parameter not satisfying: mapsSupportManager";
                      }
                    }

                    else
                    {
                      v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                      if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_68;
                      }

                      *buf = 0;
                      v51 = "Invalid parameter not satisfying: mapServiceManager";
                    }
                  }

                  else
                  {
                    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_68;
                    }

                    *buf = 0;
                    v51 = "Invalid parameter not satisfying: mapItemManager";
                  }
                }

                else
                {
                  v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_68;
                  }

                  *buf = 0;
                  v51 = "Invalid parameter not satisfying: locationManager";
                }
              }

              else
              {
                v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_68;
                }

                *buf = 0;
                v51 = "Invalid parameter not satisfying: learnedLocationStore";
              }
            }

            else
            {
              v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_68;
              }

              *buf = 0;
              v51 = "Invalid parameter not satisfying: inferredMapItemFuser";
            }
          }

          else
          {
            v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_68;
            }

            *buf = 0;
            v51 = "Invalid parameter not satisfying: fingerprintManager";
          }
        }

        else
        {
          v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }

          *buf = 0;
          v51 = "Invalid parameter not satisfying: eventManager";
        }
      }

      else
      {
        v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        *buf = 0;
        v51 = "Invalid parameter not satisfying: distanceCalculator";
      }
    }

    else
    {
      v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v35 = storeCopy;
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }

      *buf = 0;
      v51 = "Invalid parameter not satisfying: defaultsManager";
    }

LABEL_67:
    _os_log_error_impl(&dword_2304B3000, v50, OS_LOG_TYPE_ERROR, v51, buf, 2u);
    goto LABEL_68;
  }

  v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  v46 = eventManagerCopy;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v49, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bluePOITileManager", buf, 2u);
  }

  v43 = 0;
  v35 = storeCopy;
  v48 = v58;
  v45 = calculatorCopy2;
LABEL_70:

  return v43;
}

- (id)createAllMapItemProvidersWithDefaultManager:(id)manager bluePOIMetricManager:(id)metricManager bluePOIMonitor:(id)monitor bluePOITileManager:(id)tileManager distanceCalculator:(id)calculator eventManager:(id)eventManager fingerprintManager:(id)fingerprintManager learnedLocationStore:(id)self0 locationManager:(id)self1 mapItemManager:(id)self2 mapServiceManager:(id)self3 mapsSupportManager:(id)self4 motionActivityManager:(id)self5 platform:(id)self6 portraitManager:(id)self7 userCurationStore:(id)self8 visitStore:(id)self9
{
  managerCopy = manager;
  metricManagerCopy = metricManager;
  monitorCopy = monitor;
  tileManagerCopy = tileManager;
  calculatorCopy = calculator;
  eventManagerCopy = eventManager;
  fingerprintManagerCopy = fingerprintManager;
  storeCopy = store;
  locationManagerCopy = locationManager;
  itemManagerCopy = itemManager;
  serviceManagerCopy = serviceManager;
  supportManagerCopy = supportManager;
  activityManagerCopy = activityManager;
  platformCopy = platform;
  portraitManagerCopy = portraitManager;
  curationStoreCopy = curationStore;
  visitStoreCopy = visitStore;
  v32 = metricManagerCopy;
  v77 = storeCopy;
  if (!metricManagerCopy)
  {
    v33 = monitorCopy;
    v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
LABEL_38:

      v82 = 0;
      v55 = tileManagerCopy;
      v56 = fingerprintManagerCopy;
      v51 = supportManagerCopy;
      v52 = locationManagerCopy;
      goto LABEL_82;
    }

    *buf = 0;
    v54 = "Invalid parameter not satisfying: bluePOIMetricManager";
LABEL_59:
    _os_log_error_impl(&dword_2304B3000, v53, OS_LOG_TYPE_ERROR, v54, buf, 2u);
    goto LABEL_38;
  }

  v33 = monitorCopy;
  if (!monitorCopy)
  {
    v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v54 = "Invalid parameter not satisfying: bluePOIMonitor";
    goto LABEL_59;
  }

  v73 = calculatorCopy;
  if (tileManagerCopy)
  {
    v34 = monitorCopy;
    if (!managerCopy)
    {
      v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v59, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
      }

      v82 = 0;
      v56 = fingerprintManagerCopy;
      v51 = supportManagerCopy;
      v52 = locationManagerCopy;
      goto LABEL_80;
    }

    if (!v73)
    {
      v60 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v75 = fingerprintManagerCopy;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v60, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distanceCalculator", buf, 2u);
      }

      v82 = 0;
      v51 = supportManagerCopy;
      v52 = locationManagerCopy;
      calculatorCopy = 0;
      goto LABEL_48;
    }

    v35 = fingerprintManagerCopy;
    v36 = eventManagerCopy;
    if (eventManagerCopy)
    {
      v37 = itemManagerCopy;
      v38 = serviceManagerCopy;
      v39 = v35;
      if (v35)
      {
        v40 = v36;
        if (storeCopy)
        {
          if (locationManagerCopy)
          {
            if (v37)
            {
              if (serviceManagerCopy)
              {
                if (supportManagerCopy)
                {
                  if (activityManagerCopy)
                  {
                    if (platformCopy)
                    {
                      if (portraitManagerCopy)
                      {
                        if (curationStoreCopy)
                        {
                          if (visitStoreCopy)
                          {
                            v82 = objc_opt_new();
                            v71 = [RTMapItemProviderBluePOI alloc];
                            placeInferenceQueryStore = [(RTPlaceInferenceManager *)self placeInferenceQueryStore];
                            v72 = [(RTMapItemProviderBluePOI *)v71 initWithDefaultsManager:managerCopy bluePOIMetricManager:metricManagerCopy bluePOIMonitor:v33 bluePOITileManager:tileManagerCopy distanceCalculator:v73 fingerprintManager:v39 locationManager:locationManagerCopy mapItemManager:v37 mapServiceManager:serviceManagerCopy motionActivityManager:activityManagerCopy placeInferenceQueryStore:placeInferenceQueryStore platform:platformCopy];

                            if (v72)
                            {
                              [v82 setObject:v72 forKey:&unk_28459C570];
                            }

                            v70 = [[RTMapItemProviderEventKit alloc] initWithDefaultsManager:managerCopy distanceCalculator:v73 eventManager:v36 mapServiceManager:serviceManagerCopy];
                            if (v70)
                            {
                              [v82 setObject:v70 forKey:&unk_28459C588];
                            }

                            v68 = [[RTMapItemProviderLearnedPlace alloc] initWithDefaultsManager:managerCopy distanceCalculator:v73 learnedLocationStore:storeCopy];
                            if (v68)
                            {
                              [v82 setObject:v68 forKey:&unk_28459C5A0];
                            }

                            v41 = [[RTMapItemProviderMapsSupport alloc] initWithDefaultsManager:managerCopy distanceCalculator:v73 mapsSupportManager:supportManagerCopy];
                            if (v41)
                            {
                              [v82 setObject:v41 forKey:&unk_28459C5B8];
                            }

                            v67 = v41;
                            v42 = [RTMapItemProviderCurrentPOI alloc];
                            placeInferenceQueryStore2 = [(RTPlaceInferenceManager *)self placeInferenceQueryStore];
                            v44 = [(RTMapItemProviderCurrentPOI *)v42 initWithDefaultsManager:managerCopy distanceCalculator:v73 placeInferenceQueryStore:placeInferenceQueryStore2 visitStore:visitStoreCopy];

                            if (v44)
                            {
                              [v82 setObject:v44 forKey:&unk_28459C5D0];
                            }

                            v66 = v44;
                            v75 = v39;
                            v45 = [[RTMapItemProviderProactiveExperts alloc] initWithDefaultsManager:managerCopy distanceCalculator:v73 mapServiceManager:serviceManagerCopy personalizationPortraitManager:portraitManagerCopy];
                            if (v45)
                            {
                              [v82 setObject:v45 forKey:&unk_28459C5E8];
                            }

                            v46 = v40;
                            v47 = v38;
                            v48 = [[RTMapItemProviderReverseGeocode alloc] initWithDefaultsManager:managerCopy mapServiceManager:v38];
                            if (v48)
                            {
                              [v82 setObject:v48 forKey:&unk_28459C600];
                            }

                            v32 = metricManagerCopy;
                            itemManagerCopy = v37;
                            v49 = v34;
                            v50 = [[RTMapItemProviderUserCuration alloc] initWithDefaultsManager:managerCopy distanceCalculator:v73 userCurationStore:curationStoreCopy visitStore:visitStoreCopy];
                            if (v50)
                            {
                              [v82 setObject:v50 forKey:&unk_28459C618];
                            }

                            calculatorCopy = v73;
                            v33 = v49;
                            v51 = supportManagerCopy;
                            v52 = locationManagerCopy;
                            serviceManagerCopy = v47;
                            eventManagerCopy = v46;
LABEL_48:
                            v56 = v75;
LABEL_81:
                            v55 = tileManagerCopy;
                            goto LABEL_82;
                          }

                          v56 = v35;
                          eventManagerCopy = v40;
                          v32 = metricManagerCopy;
                          v51 = supportManagerCopy;
                          itemManagerCopy = v37;
                          v52 = locationManagerCopy;
                          v63 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                          if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_79;
                          }

                          *buf = 0;
                          v64 = "Invalid parameter not satisfying: visitStore";
                          goto LABEL_78;
                        }

                        v56 = v35;
                        eventManagerCopy = v40;
                        v32 = metricManagerCopy;
                        v51 = supportManagerCopy;
                        itemManagerCopy = v37;
                        v52 = locationManagerCopy;
                        v63 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 0;
                          v64 = "Invalid parameter not satisfying: userCurationStore";
                          goto LABEL_78;
                        }

LABEL_79:

                        v82 = 0;
LABEL_80:
                        calculatorCopy = v73;
                        goto LABEL_81;
                      }

                      v56 = v35;
                      eventManagerCopy = v40;
                      v32 = metricManagerCopy;
                      v51 = supportManagerCopy;
                      itemManagerCopy = v37;
                      v52 = locationManagerCopy;
                      v63 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                      if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_79;
                      }

                      *buf = 0;
                      v64 = "Invalid parameter not satisfying: portraitManager";
                    }

                    else
                    {
                      v56 = v35;
                      eventManagerCopy = v40;
                      v32 = metricManagerCopy;
                      v51 = supportManagerCopy;
                      itemManagerCopy = v37;
                      v52 = locationManagerCopy;
                      v63 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                      if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_79;
                      }

                      *buf = 0;
                      v64 = "Invalid parameter not satisfying: platform";
                    }
                  }

                  else
                  {
                    v56 = v35;
                    eventManagerCopy = v40;
                    v32 = metricManagerCopy;
                    v51 = supportManagerCopy;
                    itemManagerCopy = v37;
                    v52 = locationManagerCopy;
                    v63 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_79;
                    }

                    *buf = 0;
                    v64 = "Invalid parameter not satisfying: motionActivityManager";
                  }
                }

                else
                {
                  v56 = v35;
                  eventManagerCopy = v40;
                  v32 = metricManagerCopy;
                  v51 = 0;
                  itemManagerCopy = v37;
                  v52 = locationManagerCopy;
                  v63 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_79;
                  }

                  *buf = 0;
                  v64 = "Invalid parameter not satisfying: mapsSupportManager";
                }
              }

              else
              {
                v56 = v35;
                eventManagerCopy = v40;
                v32 = metricManagerCopy;
                v51 = supportManagerCopy;
                serviceManagerCopy = 0;
                itemManagerCopy = v37;
                v52 = locationManagerCopy;
                v63 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_79;
                }

                *buf = 0;
                v64 = "Invalid parameter not satisfying: mapServiceManager";
              }
            }

            else
            {
              v56 = v35;
              eventManagerCopy = v40;
              v32 = metricManagerCopy;
              v51 = supportManagerCopy;
              itemManagerCopy = 0;
              v52 = locationManagerCopy;
              v63 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_79;
              }

              *buf = 0;
              v64 = "Invalid parameter not satisfying: mapItemManager";
            }
          }

          else
          {
            v56 = v35;
            eventManagerCopy = v40;
            v32 = metricManagerCopy;
            v51 = supportManagerCopy;
            itemManagerCopy = v37;
            v52 = 0;
            v63 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_79;
            }

            *buf = 0;
            v64 = "Invalid parameter not satisfying: locationManager";
          }
        }

        else
        {
          v56 = v35;
          eventManagerCopy = v40;
          v32 = metricManagerCopy;
          v51 = supportManagerCopy;
          itemManagerCopy = v37;
          v52 = locationManagerCopy;
          v63 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_79;
          }

          *buf = 0;
          v64 = "Invalid parameter not satisfying: learnedLocationStore";
        }

LABEL_78:
        _os_log_error_impl(&dword_2304B3000, v63, OS_LOG_TYPE_ERROR, v64, buf, 2u);
        goto LABEL_79;
      }

      v76 = 0;
      itemManagerCopy = v37;
      v52 = locationManagerCopy;
      v62 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v51 = supportManagerCopy;
      eventManagerCopy = v36;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v62, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fingerprintManager", buf, 2u);
      }

      v82 = 0;
      calculatorCopy = v73;
    }

    else
    {
      v76 = fingerprintManagerCopy;
      v61 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v52 = locationManagerCopy;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v61, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: eventManager", buf, 2u);
      }

      v82 = 0;
      v51 = supportManagerCopy;
      calculatorCopy = v73;
    }

    v55 = tileManagerCopy;
    v56 = v76;
    goto LABEL_82;
  }

  v57 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v57, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bluePOITileManager", buf, 2u);
  }

  v82 = 0;
  v58 = fingerprintManagerCopy;
  v51 = supportManagerCopy;
  v52 = locationManagerCopy;
  v55 = 0;
  v56 = v58;
LABEL_82:

  return v82;
}

- (void)_setup
{
  [(RTPlaceInferenceManager *)self _registerForDailyMetricsNotifications];
  bluePOIMonitor = [(RTPlaceInferenceManager *)self bluePOIMonitor];
  v3 = +[(RTNotification *)RTBluePOIMonitorEstimateUpdateNotification];
  [bluePOIMonitor addObserver:self selector:sel_onBluePOIMonitorEstimateUpdateNotification_ name:v3];
}

- (void)setVisitManager:(id)manager
{
  managerCopy = manager;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__RTPlaceInferenceManager_setVisitManager___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = managerCopy;
  v6 = managerCopy;
  dispatch_async(queue, v7);
}

void __43__RTPlaceInferenceManager_setVisitManager___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 120), *(a1 + 40));
  v2 = [*(a1 + 32) visitManager];
  v3 = *(a1 + 32);
  v4 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
  [v2 addObserver:v3 selector:sel_onVisitManagerVisitIncidentNotification_ name:v4];

  v7 = [*(a1 + 32) visitManager];
  v5 = *(a1 + 32);
  v6 = +[(RTNotification *)RTPointOfInterestMonitorVisitNotification];
  [v7 addObserver:v5 selector:sel_onPointOfInterestVisitNotification_ name:v6];
}

- (void)_registerForDailyMetricsNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_onDailyMetricsNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];
}

- (void)_shutdownWithHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@ %@", &v13, 0x16u);
    }
  }

  [(RTPlaceInferenceManager *)self _unRegisterForDailyMetricsNotifications];
  visitManager = [(RTPlaceInferenceManager *)self visitManager];

  if (visitManager)
  {
    visitManager2 = [(RTPlaceInferenceManager *)self visitManager];
    v10 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
    [visitManager2 removeObserver:self fromNotification:v10];

    visitManager3 = [(RTPlaceInferenceManager *)self visitManager];
    v12 = +[(RTNotification *)RTPointOfInterestMonitorVisitNotification];
    [visitManager3 removeObserver:self fromNotification:v12];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)_unRegisterForDailyMetricsNotifications
{
  locationManager = [(RTPlaceInferenceManager *)self locationManager];
  v3 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
  [locationManager removeObserver:self fromNotification:v3];
}

- (void)fetchPlaceInferencesForOptions:(id)options handler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

    goto LABEL_11;
  }

  if (!optionsCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "options is required, %@", buf, 0xCu);
      }
    }

    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D01448];
    v18 = *MEMORY[0x277CCA450];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"options is required."];
    v19 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v9 = [v11 errorWithDomain:v12 code:7 userInfo:v14];

    handlerCopy[2](handlerCopy, 0, v9);
LABEL_11:

    goto LABEL_12;
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RTPlaceInferenceManager_fetchPlaceInferencesForOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v16 = optionsCopy;
  v17 = handlerCopy;
  dispatch_async(queue, block);

LABEL_12:
}

void __66__RTPlaceInferenceManager_fetchPlaceInferencesForOptions_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v6 = 0;
  v4 = [v2 _placeInferencesForOptions:v3 error:&v6];
  v5 = v6;
  (*(a1[6] + 16))();
}

- (id)_selectLastLocationFromLocations:(id)locations maxHorizontalUncertainty:(double)uncertainty
{
  v15 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  if (![locationsCopy count])
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTPlaceInferenceManager _selectLastLocationFromLocations:maxHorizontalUncertainty:]";
      *&buf[12] = 1024;
      *&buf[14] = 449;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locations.count (in %s:%d)", buf, 0x12u);
    }
  }

  if ([locationsCopy count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v12 = __Block_byref_object_copy__3;
    v13 = __Block_byref_object_dispose__3;
    v14 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __85__RTPlaceInferenceManager__selectLastLocationFromLocations_maxHorizontalUncertainty___block_invoke;
    v10[3] = &unk_2788C4A98;
    *&v10[5] = uncertainty;
    v10[4] = buf;
    [locationsCopy enumerateObjectsWithOptions:2 usingBlock:v10];
    if (*(*&buf[8] + 40))
    {
      v7 = objc_alloc(MEMORY[0x277D01160]);
      v8 = [v7 initWithCLLocation:*(*&buf[8] + 40)];
    }

    else
    {
      v8 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __85__RTPlaceInferenceManager__selectLastLocationFromLocations_maxHorizontalUncertainty___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  [v8 horizontalAccuracy];
  if (v7 < *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_updateCachedLocationsWithLocation:(id)location
{
  v21 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if (!locationCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[RTPlaceInferenceManager _updateCachedLocationsWithLocation:]";
      v15 = 1024;
      LODWORD(v16) = 473;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location (in %s:%d)", &v13, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = NSStringFromSelector(a2);
      v11 = [(NSMutableArray *)self->_cachedLocations count];
      cachedLocationIndex = self->_cachedLocationIndex;
      v13 = 138413059;
      v14 = v10;
      v15 = 2117;
      v16 = locationCopy;
      v17 = 2048;
      v18 = v11;
      v19 = 2048;
      v20 = cachedLocationIndex;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, location, %{sensitive}@, cached locations count, %lu, current index, %lu", &v13, 0x2Au);
    }
  }

  v8 = [(NSMutableArray *)self->_cachedLocations count];
  cachedLocations = self->_cachedLocations;
  if (v8 > 9)
  {
    [(NSMutableArray *)cachedLocations replaceObjectAtIndex:self->_cachedLocationIndex withObject:locationCopy];
  }

  else
  {
    [(NSMutableArray *)cachedLocations addObject:locationCopy];
  }

  self->_cachedLocationIndex = (self->_cachedLocationIndex + 1) % 0xA;
}

- (id)_closestCachedLocationForLocation:(id)location
{
  v44 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if (locationCopy)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = self->_cachedLocations;
    v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v43 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = *v30;
      v10 = 1.79769313e308;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          v12 = v6;
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          distanceCalculator = [(RTPlaceInferenceManager *)self distanceCalculator];
          v28 = v6;
          [distanceCalculator distanceFromLocation:locationCopy toLocation:v13 error:&v28];
          v16 = v15;
          v6 = v28;

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v17 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v20 = NSStringFromSelector(a2);
              *buf = 138413315;
              v34 = v20;
              v35 = 2048;
              v36 = v7;
              v37 = 2117;
              v38 = v13;
              v39 = 2048;
              v40 = v16;
              v41 = 2112;
              v42 = v6;
              _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "%@, index, %lu, cached location, %{sensitive}@, distance, %.3f, error, %@", buf, 0x34u);
            }
          }

          if (!v6 && v16 <= 50.0 && v16 < v10)
          {
            v19 = v13;

            ++v7;
            v10 = v16;
            v8 = v19;
          }
        }

        v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v43 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
      v8 = 0;
      v10 = 1.79769313e308;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = NSStringFromSelector(a2);
        v23 = [(NSMutableArray *)self->_cachedLocations count];
        *buf = 138413315;
        v34 = v22;
        v35 = 2117;
        v36 = v8;
        v37 = 2117;
        v38 = locationCopy;
        v39 = 2048;
        v40 = v10;
        v41 = 2048;
        v42 = v23;
        _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, selected cached location, %{sensitive}@, for location, %{sensitive}@, distance, %.3f, cached locations count, %lu", buf, 0x34u);
      }
    }
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)onSyncedPlaceInferences:(id)inferences
{
  inferencesCopy = inferences;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__RTPlaceInferenceManager_onSyncedPlaceInferences___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = inferencesCopy;
  v6 = inferencesCopy;
  dispatch_async(queue, v7);
}

- (void)_onSyncedPlaceInferences:(id)inferences
{
  v60[1] = *MEMORY[0x277D85DE8];
  inferencesCopy = inferences;
  if (!inferencesCopy)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v56 = 136315394;
      *&v56[4] = "[RTPlaceInferenceManager _onSyncedPlaceInferences:]";
      *&v56[12] = 1024;
      *&v56[14] = 537;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeInferences (in %s:%d)", v56, 0x12u);
    }
  }

  *v56 = 0;
  *&v56[8] = v56;
  *&v56[16] = 0x3032000000;
  v57 = __Block_byref_object_copy__3;
  v58 = __Block_byref_object_dispose__3;
  v59 = 0;
  v36 = [MEMORY[0x277CBEAA8] now];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = inferencesCopy;
  v5 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v35 = *v49;
    v33 = *MEMORY[0x277D01448];
    v34 = *MEMORY[0x277CCA450];
    do
    {
      v37 = v5;
      v8 = 0;
      v39 = v7;
      do
      {
        if (*v49 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v48 + 1) + 8 * v8);
        v46[0] = 0;
        v46[1] = v46;
        v46[2] = 0x3032000000;
        v46[3] = __Block_byref_object_copy__3;
        v46[4] = __Block_byref_object_dispose__3;
        v47 = 0;
        v10 = dispatch_semaphore_create(0);

        learnedLocationStore = [(RTPlaceInferenceManager *)self learnedLocationStore];
        mapItem = [v9 mapItem];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __52__RTPlaceInferenceManager__onSyncedPlaceInferences___block_invoke;
        v40[3] = &unk_2788C4AC0;
        v45 = v56;
        v44 = v46;
        v40[4] = v9;
        v41 = v36;
        selfCopy = self;
        v13 = v10;
        v43 = v13;
        [learnedLocationStore processExternalMapItem:mapItem handler:v40];

        v6 = v13;
        v14 = [MEMORY[0x277CBEAA8] now];
        v15 = dispatch_time(0, 3600000000000);
        if (!dispatch_semaphore_wait(v6, v15))
        {
          goto LABEL_15;
        }

        v16 = [MEMORY[0x277CBEAA8] now];
        [v16 timeIntervalSinceDate:v14];
        v18 = v17;
        v19 = objc_opt_new();
        v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_3];
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
        v60[0] = v34;
        *buf = @"semaphore wait timeout";
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v60 count:1];
        v27 = [v25 errorWithDomain:v33 code:15 userInfo:v26];

        if (v27)
        {
          v28 = v27;

          v29 = 0;
        }

        else
        {
LABEL_15:
          v29 = 1;
          v27 = v39;
        }

        v7 = v27;
        if ((v29 & 1) == 0)
        {
          objc_storeStrong((*&v56[8] + 40), v27);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v30 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = *(*&v56[8] + 40);
            *buf = 138740227;
            *&buf[4] = v9;
            v53 = 2112;
            v54 = v31;
            _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "integrating synced place inference from phone, placeInference, %{sensitive}@, error, %@", buf, 0x16u);
          }
        }

        _Block_object_dispose(v46, 8);
        ++v8;
        v39 = v7;
      }

      while (v37 != v8);
      v5 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(v56, 8);
}

void __52__RTPlaceInferenceManager__onSyncedPlaceInferences___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  v8 = *(*(*(a1 + 64) + 8) + 40);
  if (v8)
  {
    [*(*(*(a1 + 64) + 8) + 40) setSource:{objc_msgSend(v8, "source") | 0x200000}];
    v9 = objc_alloc(MEMORY[0x277D011D8]);
    v10 = *(*(*(a1 + 64) + 8) + 40);
    v11 = [*(a1 + 32) userType];
    v12 = [*(a1 + 32) userTypeSource];
    v13 = [*(a1 + 32) placeType];
    v14 = [*(a1 + 32) referenceLocation];
    [*(a1 + 32) confidence];
    v16 = v15;
    v17 = [*(a1 + 32) loiIdentifier];
    v18 = [v9 initWithMapItem:v10 userType:v11 userTypeSource:v12 placeType:v13 referenceLocation:v14 confidence:v17 loiIdentifier:v16];

    v19 = objc_alloc(MEMORY[0x277D011E8]);
    v20 = [MEMORY[0x277CCAD78] UUID];
    v21 = [v19 initWithIdentifier:v20 date:*(a1 + 40) errorCode:-1 fidelityPolicyMask:1 placeInference:v18 sourceIdentifier:0];

    v22 = [*(a1 + 48) placeInferenceQueryStore];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __52__RTPlaceInferenceManager__onSyncedPlaceInferences___block_invoke_2;
    v23[3] = &unk_2788C4618;
    v25 = *(a1 + 72);
    v24 = *(a1 + 56);
    [v22 storePlaceInferenceQuery:v21 handler:v23];
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 56));
  }
}

void __52__RTPlaceInferenceManager__onSyncedPlaceInferences___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_onBluePOIMonitorEstimateUpdateNotification:(id)notification
{
  v43 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = notificationCopy;
    v6 = objc_alloc(MEMORY[0x277D011E0]);
    locations = [v5 locations];
    accessPoints = [v5 accessPoints];
    v9 = [v6 initWithFidelityPolicy:32 locations:locations accessPoints:accessPoints];

    inferredMapItems = [v5 inferredMapItems];
    v34 = v5;
    referenceLocation = [v5 referenceLocation];
    v39 = 0;
    v29 = v9;
    [(RTPlaceInferenceManager *)self _savePlaceInferenceQueriesFromInferredMapItems:inferredMapItems inferenceErrorCode:-1 referenceLocation:referenceLocation options:v9 outError:&v39];
    v12 = v39;

    if (v12)
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v12;
        _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "saving BluePOI estimate update hits error, %@", buf, 0xCu);
      }
    }

    v28 = v12;
    selfCopy = self;
    v30 = notificationCopy;
    array = [MEMORY[0x277CBEB18] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [v34 inferredMapItems];
    v14 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          v19 = MEMORY[0x277D011D8];
          mapItem = [v18 mapItem];
          v21 = [v19 placeInferencePlaceTypeFromMapItem:mapItem userType:0 source:0x4000];

          v22 = [(RTPlaceInferenceManager *)selfCopy _loiIdentifierForInferredMapItem:v18];
          v23 = objc_alloc(MEMORY[0x277D011D8]);
          mapItem2 = [v18 mapItem];
          referenceLocation2 = [v34 referenceLocation];
          [v18 confidence];
          v26 = [v23 initWithMapItem:mapItem2 userType:0 userTypeSource:0 placeType:v21 referenceLocation:referenceLocation2 confidence:v22 loiIdentifier:?];

          [array addObject:v26];
        }

        v15 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v15);
    }

    v27 = [[RTPlaceInferenceUpdateNotification alloc] initWithPlaceInferences:array];
    [(RTNotifier *)selfCopy postNotification:v27];

    notificationCopy = v30;
  }
}

- (void)onBluePOIMonitorEstimateUpdateNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__RTPlaceInferenceManager_onBluePOIMonitorEstimateUpdateNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (id)_filterLocalBluePOIMapItems:(id)items
{
  v23 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 source] == 0x100000)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = [v4 count];
  v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v11)
  {
    v13 = v4;
    if (v12)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "Dropping server results", v17, 2u);
      }

      v13 = v4;
LABEL_19:
    }
  }

  else
  {
    v13 = v5;
    if (v12)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "Returning server results", v17, 2u);
      }

      v13 = v5;
      goto LABEL_19;
    }
  }

  v15 = v13;

  return v13;
}

- (id)_removeCurrentPOIMapItems:(id)items
{
  v17 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 source] != 0x10000)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_placeInferencesForOptions:(id)options error:(id *)error
{
  v176[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  locations = [optionsCopy locations];
  v8 = [locations count];

  if (!v8)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTPlaceInferenceManager _placeInferencesForOptions:error:]";
      v169 = 1024;
      LODWORD(v170) = 678;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options.locations.count (in %s:%d)", buf, 0x12u);
    }
  }

  locations2 = [optionsCopy locations];
  v11 = [locations2 count];

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = NSStringFromSelector(a2);
        fidelityPolicy = [optionsCopy fidelityPolicy];
        errorCopy = error;
        v16 = [MEMORY[0x277D011E0] fidelityPolicyMaskToString:{objc_msgSend(optionsCopy, "fidelityPolicy")}];
        locations3 = [optionsCopy locations];
        v18 = [locations3 count];
        *buf = 138413058;
        *&buf[4] = v13;
        v169 = 2048;
        v170 = fidelityPolicy;
        v171 = 2112;
        v172 = v16;
        v173 = 2048;
        v174 = v18;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, fidelity policy, %lu (%@), location count, %lu", buf, 0x2Au);

        error = errorCopy;
      }
    }

    v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1];
    locations4 = [optionsCopy locations];
    v131 = v19;
    v167 = v19;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v167 count:1];
    v22 = [locations4 sortedArrayUsingDescriptors:v21];

    v141 = v22;
    v23 = [(RTPlaceInferenceManager *)self _selectLastLocationFromLocations:v22 maxHorizontalUncertainty:250.0];
    if (!v23)
    {
      v35 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = self;
        _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "At least one non-cell location should be provided, %@", buf, 0xCu);
      }

      if (!error)
      {
        v34 = 0;
LABEL_136:

        goto LABEL_137;
      }

      v36 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277D01448];
      v165 = *MEMORY[0x277CCA450];
      v142 = [MEMORY[0x277CCACA8] stringWithFormat:@"At least one non-cell location should be provided."];
      v166 = v142;
      array = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
      [v36 errorWithDomain:v37 code:7 userInfo:array];
      *error = v34 = 0;
LABEL_135:

      goto LABEL_136;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v162[0] = MEMORY[0x277D85DD0];
      v162[1] = 3221225472;
      v162[2] = __60__RTPlaceInferenceManager__placeInferencesForOptions_error___block_invoke;
      v162[3] = &__block_descriptor_40_e27_v32__0__CLLocation_8Q16_B24l;
      v162[4] = a2;
      [v22 enumerateObjectsUsingBlock:v162];
    }

    v142 = v23;
    if (([optionsCopy fidelityPolicy] & 8) != 0 && (objc_msgSend(optionsCopy, "fidelityPolicy") & 2) != 0)
    {
      v24 = [(RTPlaceInferenceManager *)self _estimatedLocationFromSortedLocations:v22];

      [(RTPlaceInferenceManager *)self _updateCachedLocationsWithLocation:v24];
      v142 = v24;
    }

    if (([optionsCopy fidelityPolicy] & 0x10) != 0)
    {
      if (([optionsCopy fidelityPolicy] & 8) != 0 && (objc_msgSend(optionsCopy, "fidelityPolicy") & 2) == 0)
      {
        v38 = [(RTPlaceInferenceManager *)self _closestCachedLocationForLocation:v142];

        v142 = v38;
      }

      v39 = [objc_alloc(MEMORY[0x277D011D8]) initWithMapItem:0 finerGranularityMapItem:0 userType:0 userTypeSource:0 placeType:0 referenceLocation:v142 confidence:0.0 finerGranularityMapItemConfidence:0.0 loiIdentifier:0 preferredName:0];
      array = v39;
      if (v39)
      {
        v164 = v39;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v164 count:1];
      }

      else
      {
        v34 = 0;
      }

      goto LABEL_135;
    }

    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    array3 = [MEMORY[0x277CBEB18] array];
    firstObject = [v22 firstObject];
    timestamp = [firstObject timestamp];

    lastObject = [v22 lastObject];
    timestamp2 = [lastObject timestamp];

    placeInferencesLimit = [(RTPlaceInferenceManager *)self placeInferencesLimit];
    if ([optionsCopy limit] >= 1)
    {
      placeInferencesLimit = [optionsCopy limit];
    }

    v138 = placeInferencesLimit;
    context = objc_autoreleasePoolPush();
    clientIdentifier = [optionsCopy clientIdentifier];
    if (clientIdentifier)
    {
      clientIdentifier2 = [optionsCopy clientIdentifier];
    }

    else
    {
      clientIdentifier2 = @"unknown";
    }

    v125 = [[RTPlaceInferenceMetrics alloc] initWithClientIdentifier:clientIdentifier2 placeInferenceOptions:optionsCopy];
    v126 = clientIdentifier2;
    self->_clientMappingIndex = [(RTPlaceInferenceManager *)self _getMappingIndexForClientIdentifier:?];
    v40 = [(RTPlaceInferenceManager *)self _selectMapItemProvidersForOptions:optionsCopy];
    v128 = v23;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v41 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        fidelityPolicy2 = [optionsCopy fidelityPolicy];
        v43 = [v40 count];
        *buf = 134218240;
        *&buf[4] = fidelityPolicy2;
        v169 = 2048;
        v170 = v43;
        _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "fidelity policy %lu has %lu providers", buf, 0x16u);
      }
    }

    v143 = optionsCopy;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v44 = v40;
    v45 = [v44 countByEnumeratingWithState:&v158 objects:v163 count:16];
    obj = v44;
    errorCopy2 = error;
    if (v45)
    {
      v46 = v45;
      v137 = array;
      v132 = 0;
      v47 = 0;
      v48 = *v159;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v159 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v50 = *(*(&v158 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v137 count])
          {
            v51 = objc_alloc(MEMORY[0x277D011E0]);
            fidelityPolicy3 = [v143 fidelityPolicy];
            accessPoints = [v143 accessPoints];
            clientIdentifier3 = [v143 clientIdentifier];
            LOBYTE(v124) = 0;
            v55 = [v51 initWithFidelityPolicy:fidelityPolicy3 locations:v141 accessPoints:accessPoints distance:v142 location:timestamp startDate:timestamp2 endDate:50.0 limit:v138 useBackground:v124 clientIdentifier:clientIdentifier3];

            v157 = 0;
            v56 = [v50 mapItemsWithOptions:v55 error:&v157];
            v57 = v157;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v58 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
              {
                v59 = objc_opt_class();
                v60 = NSStringFromClass(v59);
                v61 = [v56 count];
                *buf = 138412802;
                *&buf[4] = v60;
                v169 = 2048;
                v170 = v61;
                v171 = 2112;
                v172 = v57;
                _os_log_impl(&dword_2304B3000, v58, OS_LOG_TYPE_INFO, "provider, %@, mapItems, %lu, error, %@", buf, 0x20u);
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v143 fidelityPolicy] == 64)
              {
                v62 = 0;
              }

              else
              {
                code = [v57 code];
                v156 = 0;
                [(RTPlaceInferenceManager *)self _savePlaceInferenceQueriesFromInferredMapItems:v56 inferenceErrorCode:code referenceLocation:v142 options:v143 outError:&v156];
                v62 = v156;
                if (v62)
                {
                  v64 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                  {
                    v70 = objc_opt_class();
                    v133 = NSStringFromClass(v70);
                    *buf = 138412546;
                    *&buf[4] = v133;
                    v169 = 2112;
                    v170 = v62;
                    _os_log_error_impl(&dword_2304B3000, v64, OS_LOG_TYPE_ERROR, "%@, saving BluePOI queries hits error, %@", buf, 0x16u);
                  }
                }
              }

              v65 = [(RTPlaceInferenceManager *)self _filterLocalBluePOIMapItems:v56];

              v47 |= v57 == 0;
              v132 = 1;
              v56 = v65;
            }

            if (v57)
            {
              [array3 addObject:v57];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                v66 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                {
                  v67 = objc_opt_class();
                  v68 = NSStringFromClass(v67);
                  v69 = [v56 count];
                  *buf = 138412802;
                  *&buf[4] = v68;
                  v169 = 2048;
                  v170 = v69;
                  v171 = 2112;
                  v172 = v57;
                  _os_log_debug_impl(&dword_2304B3000, v66, OS_LOG_TYPE_DEBUG, "provider, %@, mapItems, %lu, error, %@", buf, 0x20u);
                }
              }
            }

            else if ([v56 count])
            {
              [v137 addObjectsFromArray:v56];
            }
          }
        }

        v46 = [obj countByEnumeratingWithState:&v158 objects:v163 count:16];
      }

      while (v46);

      if ((v47 & 1) == 0)
      {
        optionsCopy = v143;
        error = errorCopy2;
        array = v137;
LABEL_80:
        fidelityPolicy4 = [optionsCopy fidelityPolicy];
        v73 = [optionsCopy fidelityPolicy] & 0x20;
        if ([optionsCopy fidelityPolicy] & 0x40 | v73)
        {
          v74 = 1;
        }

        else
        {
          v74 = fidelityPolicy4 == 7;
        }

        v75 = !v74;
        if ([array count])
        {
          v76 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(array, "count")}];
          v77 = array;
          if ([array count])
          {
            v78 = 0;
            v79 = 0;
            v80 = array;
            do
            {
              v81 = v79;
              *buf = 0;
              v155 = 0;
              v82 = [v80 objectAtIndexedSubscript:v78];
              v154 = v79;
              v83 = [(RTPlaceInferenceManager *)self _learnedPlaceTypeForInferredMapItem:v82 placeType:buf placeTypeSource:&v155 error:&v154];
              v79 = v154;

              if (!v83)
              {
                *buf = 0;
                v155 = 0;
              }

              v84 = objc_alloc(MEMORY[0x277D011C0]);
              v85 = [v77 objectAtIndexedSubscript:v78];
              v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*buf];
              v87 = [v84 initWithFirstObject:v85 secondObject:v86];

              if (v87)
              {
                [v76 addObject:v87];
              }

              if (v79)
              {
                [array3 addObject:v79];
              }

              ++v78;
              v80 = v77;
            }

            while (v78 < [v77 count]);
          }

          else
          {
            v79 = 0;
          }

          inferredMapItemFuser = [(RTPlaceInferenceManager *)self inferredMapItemFuser];
          v153 = v79;
          v88 = [inferredMapItemFuser fusedInferredMapItemsUsingCandidates:v76 referenceLocation:v142 snapToBestKnownPlace:v75 snapToBestAoi:0 error:&v153];
          v90 = v153;

          if (v90)
          {
            [array3 addObject:v90];
          }

          optionsCopy = v143;
          error = errorCopy2;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v91 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
            {
              v92 = [v77 count];
              v93 = [v88 count];
              *buf = 134218498;
              *&buf[4] = v92;
              error = errorCopy2;
              v169 = 2048;
              v170 = v93;
              v171 = 2112;
              v172 = v90;
              _os_log_impl(&dword_2304B3000, v91, OS_LOG_TYPE_INFO, "fusion, inferred mapitems, %lu, fused mapitems, %lu, error, %@", buf, 0x20u);
            }
          }

          array = v77;
        }

        else
        {
          v88 = MEMORY[0x277CBEBF8];
        }

        if ([v88 count])
        {
          firstObject2 = [v88 firstObject];
          mapItem = [firstObject2 mapItem];

          if (mapItem)
          {
            goto LABEL_122;
          }
        }

        v96 = [(RTPlaceInferenceManager *)self _getFallbackMapItemProviderForOptions:optionsCopy];
        if (!v96)
        {
          goto LABEL_122;
        }

        v97 = v96;
        v98 = v88;
        errorCopy3 = error;
        v100 = objc_alloc(MEMORY[0x277D011E0]);
        fidelityPolicy5 = [optionsCopy fidelityPolicy];
        accessPoints2 = [optionsCopy accessPoints];
        clientIdentifier4 = [optionsCopy clientIdentifier];
        LOBYTE(v124) = 0;
        v104 = [v100 initWithFidelityPolicy:fidelityPolicy5 locations:v141 accessPoints:accessPoints2 distance:v142 location:timestamp startDate:timestamp2 endDate:50.0 limit:v138 useBackground:v124 clientIdentifier:clientIdentifier4];

        v152 = 0;
        v105 = [v97 mapItemsWithOptions:v104 error:&v152];
        v106 = v152;
        if (v106)
        {
          [array3 addObject:v106];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v107 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
            {
              v121 = objc_opt_class();
              v122 = NSStringFromClass(v121);
              v123 = [v105 count];
              *buf = 138412802;
              *&buf[4] = v122;
              v169 = 2048;
              v170 = v123;
              v171 = 2112;
              v172 = v106;
              _os_log_debug_impl(&dword_2304B3000, v107, OS_LOG_TYPE_DEBUG, "provider, %@, mapItems, %lu, error, %@", buf, 0x20u);
            }

            v108 = 0;
LABEL_117:
            v88 = v98;

            optionsCopy = v143;
            goto LABEL_120;
          }

          v108 = 0;
        }

        else
        {
          v108 = v105;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v107 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
            {
              v109 = objc_opt_class();
              v110 = NSStringFromClass(v109);
              v111 = [v108 count];
              *buf = 138412802;
              *&buf[4] = v110;
              v169 = 2048;
              v170 = v111;
              v171 = 2112;
              v172 = 0;
              _os_log_impl(&dword_2304B3000, v107, OS_LOG_TYPE_INFO, "provider, %@, mapItems, %lu, error, %@", buf, 0x20u);
            }

            goto LABEL_117;
          }
        }

        v88 = v98;
LABEL_120:

        error = errorCopy3;
        if (v108)
        {
          v148[0] = MEMORY[0x277D85DD0];
          v148[1] = 3221225472;
          v148[2] = __60__RTPlaceInferenceManager__placeInferencesForOptions_error___block_invoke_231;
          v148[3] = &unk_2788C4B08;
          v148[4] = self;
          v112 = &v149;
          v149 = v142;
          v113 = &v150;
          v150 = array2;
          v114 = v151;
          v151[0] = array3;
          v151[1] = v138;
          [v108 enumerateObjectsUsingBlock:v148];
          goto LABEL_123;
        }

LABEL_122:
        v144[0] = MEMORY[0x277D85DD0];
        v144[1] = 3221225472;
        v144[2] = __60__RTPlaceInferenceManager__placeInferencesForOptions_error___block_invoke_2;
        v144[3] = &unk_2788C4B30;
        v144[4] = self;
        v112 = &v145;
        v145 = v142;
        v113 = &v146;
        v146 = array2;
        v114 = v147;
        v147[0] = array3;
        v147[1] = v138;
        [v88 enumerateObjectsUsingBlock:v144];
        v108 = MEMORY[0x277CBEBF8];
LABEL_123:

        v19 = v131;
        if (([optionsCopy fidelityPolicy] & 8) != 0 && (objc_msgSend(optionsCopy, "fidelityPolicy") & 2) == 0)
        {
          v115 = [(RTPlaceInferenceManager *)self _selectBestCandidateAndUpdateReferenceLocation:array2];
          [array2 removeAllObjects];
          if (v115)
          {
            [array2 addObject:v115];
          }
        }

        if (v132)
        {
          v116 = [[RTPlaceInferenceUpdateNotification alloc] initWithPlaceInferences:array2];
          [(RTNotifier *)self postNotification:v116];
        }

        dailyMetrics = [(RTPlaceInferenceManager *)self dailyMetrics];
        [dailyMetrics increaseCountForClientMappingIndex:LODWORD(self->_clientMappingIndex)];

        v118 = array2;
        [(RTPlaceInferenceManager *)self sendPlaceInferenceMetrics:v125 inferredMapItems:array fusedMapItems:v88 fallbackInferredMapItems:v108 finalPlaceInferences:array2 referenceLocation:v142];

        objc_autoreleasePoolPop(context);
        if (error && [array3 count] && !objc_msgSend(array2, "count"))
        {
          v119 = _RTSafeArray();
          *error = _RTMultiErrorCreate();

          v118 = array2;
        }

        v34 = v118;

        v23 = v128;
        goto LABEL_135;
      }

      optionsCopy = v143;
      error = errorCopy2;
      v44 = v137;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v71 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v71, OS_LOG_TYPE_INFO, "Removing current POI map items", buf, 2u);
        }
      }

      array = [(RTPlaceInferenceManager *)self _removeCurrentPOIMapItems:v137];
    }

    else
    {
      v132 = 0;
    }

    goto LABEL_80;
  }

  v31 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "At least one location should be provided, %@", buf, 0xCu);
  }

  if (!error)
  {
    v34 = 0;
    goto LABEL_138;
  }

  v32 = MEMORY[0x277CCA9B8];
  v33 = *MEMORY[0x277D01448];
  v175 = *MEMORY[0x277CCA450];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"At least one location should be provided."];
  v176[0] = v19;
  v141 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v176 forKeys:&v175 count:1];
  [v32 errorWithDomain:v33 code:7 userInfo:?];
  *error = v34 = 0;
LABEL_137:

LABEL_138:

  return v34;
}

void __60__RTPlaceInferenceManager__placeInferencesForOptions_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
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
      v11 = a3 + 1;
      v12 = 2117;
      v13 = v5;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@, sorted location %lu, %{sensitive}@", &v8, 0x20u);
    }
  }
}

void __60__RTPlaceInferenceManager__placeInferencesForOptions_error___block_invoke_231(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = 0;
  v8 = [v6 _placeInferenceFromInferredMapItem:a2 referenceLocation:v7 error:&v10];
  v9 = v10;
  [*(a1 + 48) addObject:v8];
  if (v9)
  {
    [*(a1 + 56) addObject:v9];
  }

  if ([*(a1 + 48) count] >= *(a1 + 64))
  {
    *a4 = 1;
  }
}

void __60__RTPlaceInferenceManager__placeInferencesForOptions_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 convertToInferredMapItem];
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11 = 0;
    v9 = [v7 _placeInferenceFromInferredMapItem:v6 referenceLocation:v8 error:&v11];
    v10 = v11;
    [*(a1 + 48) addObject:v9];
    if (v10)
    {
      [*(a1 + 56) addObject:v10];
    }

    if ([*(a1 + 48) count] >= *(a1 + 64))
    {
      *a4 = 1;
    }
  }
}

- (BOOL)_savePlaceInferenceQueriesFromInferredMapItems:(id)items inferenceErrorCode:(int64_t)code referenceLocation:(id)location options:(id)options outError:(id *)error
{
  v118[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  locationCopy = location;
  optionsCopy = options;
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__3;
  v110 = __Block_byref_object_dispose__3;
  v111 = 0;
  v82 = itemsCopy;
  errorCopy = error;
  if (![itemsCopy count])
  {
    v51 = dispatch_semaphore_create(0);
    v52 = [objc_alloc(MEMORY[0x277D011D8]) initWithMapItem:0 finerGranularityMapItem:0 userType:0 userTypeSource:0 placeType:0 referenceLocation:locationCopy confidence:0.0 finerGranularityMapItemConfidence:0.0 loiIdentifier:0];
    v53 = objc_alloc(MEMORY[0x277D011E8]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    date = [locationCopy date];
    fidelityPolicy = [optionsCopy fidelityPolicy];
    clientIdentifier = [optionsCopy clientIdentifier];
    v58 = [v53 initWithIdentifier:uUID date:date errorCode:code fidelityPolicyMask:fidelityPolicy placeInference:v52 sourceIdentifier:clientIdentifier];

    placeInferenceQueryStore = [(RTPlaceInferenceManager *)self placeInferenceQueryStore];
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __128__RTPlaceInferenceManager__savePlaceInferenceQueriesFromInferredMapItems_inferenceErrorCode_referenceLocation_options_outError___block_invoke;
    v103[3] = &unk_2788C4618;
    v105 = &v106;
    v60 = v51;
    v104 = v60;
    [placeInferenceQueryStore storePlaceInferenceQuery:v58 handler:v103];

    dsema = v60;
    v61 = [MEMORY[0x277CBEAA8] now];
    v62 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v62))
    {
      v63 = [MEMORY[0x277CBEAA8] now];
      [v63 timeIntervalSinceDate:v61];
      v65 = v64;
      v66 = objc_opt_new();
      v67 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_3];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v69 = [callStackSymbols filteredArrayUsingPredicate:v67];
      firstObject = [v69 firstObject];

      [v66 submitToCoreAnalytics:firstObject type:1 duration:v65];
      v71 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v71, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v72 = MEMORY[0x277CCA9B8];
      v118[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v118 count:1];
      v74 = [v72 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v73];

      if (v74)
      {
        v75 = v74;

        v76 = 0;
LABEL_37:

        v12 = v74;
        if ((v76 & 1) == 0)
        {
          objc_storeStrong(v107 + 5, v74);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v77 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            v78 = NSStringFromSelector(a2);
            v79 = v107[5];
            *buf = 138412803;
            *&buf[4] = v78;
            v114 = 2117;
            v115 = v58;
            v116 = 2112;
            v117 = v79;
            _os_log_impl(&dword_2304B3000, v77, OS_LOG_TYPE_INFO, "%@, save placeInferenceQuery, %{sensitive}@, error, %@", buf, 0x20u);
          }
        }

        if (errorCopy)
        {
          *errorCopy = v107[5];
        }

        v50 = v107[5] == 0;

        goto LABEL_46;
      }
    }

    else
    {
      v74 = 0;
    }

    v76 = 1;
    goto LABEL_37;
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = itemsCopy;
  v11 = [obj countByEnumeratingWithState:&v99 objects:v112 count:16];
  if (v11)
  {
    dsema = 0;
    v12 = 0;
    v88 = *v100;
    v85 = *MEMORY[0x277D01448];
    v86 = *MEMORY[0x277CCA450];
    while (2)
    {
      v87 = v11;
      v13 = 0;
      v93 = v12;
      do
      {
        if (*v100 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v99 + 1) + 8 * v13);
        v15 = MEMORY[0x277D011D8];
        mapItem = [v14 mapItem];
        v17 = [v15 placeInferencePlaceTypeFromMapItem:mapItem userType:0 source:0x4000];

        v94 = [(RTPlaceInferenceManager *)self _loiIdentifierForInferredMapItem:v14];
        v18 = objc_alloc(MEMORY[0x277D011D8]);
        mapItem2 = [v14 mapItem];
        [v14 confidence];
        v20 = [v18 initWithMapItem:mapItem2 userType:0 userTypeSource:0 placeType:v17 referenceLocation:locationCopy confidence:v94 loiIdentifier:?];

        v21 = objc_alloc(MEMORY[0x277D011E8]);
        uUID2 = [MEMORY[0x277CCAD78] UUID];
        date2 = [locationCopy date];
        fidelityPolicy2 = [optionsCopy fidelityPolicy];
        clientIdentifier2 = [optionsCopy clientIdentifier];
        v26 = [v21 initWithIdentifier:uUID2 date:date2 errorCode:code fidelityPolicyMask:fidelityPolicy2 placeInference:v20 sourceIdentifier:clientIdentifier2];

        v27 = dispatch_semaphore_create(0);
        placeInferenceQueryStore2 = [(RTPlaceInferenceManager *)self placeInferenceQueryStore];
        v96[0] = MEMORY[0x277D85DD0];
        v96[1] = 3221225472;
        v96[2] = __128__RTPlaceInferenceManager__savePlaceInferenceQueriesFromInferredMapItems_inferenceErrorCode_referenceLocation_options_outError___block_invoke_234;
        v96[3] = &unk_2788C4618;
        v98 = &v106;
        v29 = v27;
        v97 = v29;
        [placeInferenceQueryStore2 storePlaceInferenceQuery:v26 handler:v96];

        dsema = v29;
        v30 = [MEMORY[0x277CBEAA8] now];
        v31 = dispatch_time(0, 3600000000000);
        if (!dispatch_semaphore_wait(dsema, v31))
        {
          goto LABEL_12;
        }

        v32 = [MEMORY[0x277CBEAA8] now];
        [v32 timeIntervalSinceDate:v30];
        v34 = v33;
        v35 = objc_opt_new();
        v36 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_3];
        callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
        v38 = [callStackSymbols2 filteredArrayUsingPredicate:v36];
        firstObject2 = [v38 firstObject];

        [v35 submitToCoreAnalytics:firstObject2 type:1 duration:v34];
        v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v40, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v41 = MEMORY[0x277CCA9B8];
        v118[0] = v86;
        *buf = @"semaphore wait timeout";
        v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v118 count:1];
        v43 = [v41 errorWithDomain:v85 code:15 userInfo:v42];

        if (v43)
        {
          v44 = v43;

          v45 = 0;
        }

        else
        {
LABEL_12:
          v45 = 1;
          v43 = v93;
        }

        v12 = v43;
        if ((v45 & 1) == 0)
        {
          objc_storeStrong(v107 + 5, v43);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v46 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v47 = NSStringFromSelector(a2);
            v48 = v107[5];
            *buf = 138412802;
            *&buf[4] = v47;
            v114 = 2112;
            v115 = v26;
            v116 = 2112;
            v117 = v48;
            _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_INFO, "%@, save placeInferenceQuery, %@, error, %@", buf, 0x20u);
          }
        }

        v49 = v107[5];
        if (v49)
        {
          if (errorCopy)
          {
            *errorCopy = v49;
          }

          v50 = 0;
          goto LABEL_46;
        }

        ++v13;
        v93 = v12;
      }

      while (v87 != v13);
      v11 = [obj countByEnumeratingWithState:&v99 objects:v112 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    dsema = 0;
    v12 = 0;
  }

  if (errorCopy)
  {
    *errorCopy = 0;
  }

  v50 = 1;
LABEL_46:

  _Block_object_dispose(&v106, 8);
  return v50;
}

void __128__RTPlaceInferenceManager__savePlaceInferenceQueriesFromInferredMapItems_inferenceErrorCode_referenceLocation_options_outError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __128__RTPlaceInferenceManager__savePlaceInferenceQueriesFromInferredMapItems_inferenceErrorCode_referenceLocation_options_outError___block_invoke_234(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_selectBestCandidateAndUpdateReferenceLocation:(id)location
{
  v93[1] = *MEMORY[0x277D85DE8];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = location;
  v68 = [obj countByEnumeratingWithState:&v81 objects:v92 count:16];
  if (!v68)
  {
    v61 = 0;
    v57 = 0;
    mapItem = obj;
LABEL_36:

    goto LABEL_38;
  }

  v69 = 0;
  v70 = 0;
  v61 = 0;
  v67 = *v82;
  v63 = *MEMORY[0x277D01448];
  v64 = *MEMORY[0x277CCA450];
  v3 = -1.0;
  do
  {
    for (i = 0; i != v68; ++i)
    {
      if (*v82 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v81 + 1) + 8 * i);
      ++v70;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = NSStringFromSelector(a2);
          *buf = 138412803;
          *&buf[4] = v7;
          *&buf[12] = 2048;
          *&buf[14] = v70;
          *&buf[22] = 2117;
          v89 = v5;
          _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, placeInference candidate %lu, %{sensitive}@", buf, 0x20u);
        }
      }

      loiIdentifier = [v5 loiIdentifier];
      v9 = loiIdentifier == 0;

      if (!v9)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v89 = __Block_byref_object_copy__3;
        v90 = __Block_byref_object_dispose__3;
        v91 = 0;
        v75 = 0;
        v76 = &v75;
        v77 = 0x3032000000;
        v78 = __Block_byref_object_copy__3;
        v79 = __Block_byref_object_dispose__3;
        v80 = 0;
        v10 = dispatch_semaphore_create(0);
        learnedLocationStore = [(RTPlaceInferenceManager *)self learnedLocationStore];
        loiIdentifier2 = [v5 loiIdentifier];
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __74__RTPlaceInferenceManager__selectBestCandidateAndUpdateReferenceLocation___block_invoke;
        v71[3] = &unk_2788C4B58;
        v73 = &v75;
        v74 = buf;
        v13 = v10;
        v72 = v13;
        [learnedLocationStore fetchLocationOfInterestWithIdentifier:loiIdentifier2 handler:v71];

        v14 = v13;
        v15 = [MEMORY[0x277CBEAA8] now];
        v16 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v14, v16))
        {
          v17 = [MEMORY[0x277CBEAA8] now];
          [v17 timeIntervalSinceDate:v15];
          v19 = v18;
          v20 = objc_opt_new();
          v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_3];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v23 = [callStackSymbols filteredArrayUsingPredicate:v21];
          firstObject = [v23 firstObject];

          [v20 submitToCoreAnalytics:firstObject type:1 duration:v19];
          v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            *v85 = 0;
            _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v85, 2u);
          }

          v26 = MEMORY[0x277CCA9B8];
          v93[0] = v64;
          *v85 = @"semaphore wait timeout";
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v93 count:1];
          v28 = [v26 errorWithDomain:v63 code:15 userInfo:v27];

          if (v28)
          {
            v29 = v28;

            v30 = 0;
            goto LABEL_18;
          }
        }

        else
        {
          v28 = 0;
        }

        v30 = 1;
LABEL_18:

        v31 = v28;
        if ((v30 & 1) == 0)
        {
          objc_storeStrong((*&buf[8] + 40), v28);
        }

        if (*(*&buf[8] + 40))
        {
          location = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
          {
            v33 = NSStringFromSelector(a2);
            v34 = *(*&buf[8] + 40);
            *v85 = 138412546;
            *&v85[4] = v33;
            v86 = 2112;
            v87 = v34;
            _os_log_error_impl(&dword_2304B3000, location, OS_LOG_TYPE_ERROR, "%@, error, %@", v85, 0x16u);
          }

LABEL_28:

          goto LABEL_29;
        }

        location = [v76[5] location];
        v32Location = [location location];
        if ([v32Location sourceAccuracy] != 2)
        {

          goto LABEL_28;
        }

        location2 = [v76[5] location];
        v36Location = [location2 location];
        [v36Location horizontalUncertainty];
        v39 = v38 > 40.0;

        if (v39 || ([v5 confidence], v40 <= v3))
        {
LABEL_29:
          v41 = v69;
        }

        else
        {
          v41 = v5;

          location3 = [v76[5] location];
          v42Location = [location3 location];

          [v41 confidence];
          v3 = v44;
          v61 = v42Location;
        }

        _Block_object_dispose(&v75, 8);
        _Block_object_dispose(buf, 8);

        v69 = v41;
        continue;
      }
    }

    v68 = [obj countByEnumeratingWithState:&v81 objects:v92 count:16];
  }

  while (v68);

  if (v69)
  {
    v45 = objc_alloc(MEMORY[0x277D011D8]);
    mapItem = [v69 mapItem];
    finerGranularityMapItem = [v69 finerGranularityMapItem];
    userType = [v69 userType];
    userTypeSource = [v69 userTypeSource];
    placeType = [v69 placeType];
    [v69 confidence];
    v52 = v51;
    [v69 finerGranularityMapItemConfidence];
    v54 = v53;
    loiIdentifier3 = [v69 loiIdentifier];
    preferredName = [v69 preferredName];
    v57 = [v45 initWithMapItem:mapItem finerGranularityMapItem:finerGranularityMapItem userType:userType userTypeSource:userTypeSource placeType:placeType referenceLocation:v61 confidence:v52 finerGranularityMapItemConfidence:v54 loiIdentifier:loiIdentifier3 preferredName:preferredName];

    goto LABEL_36;
  }

  v57 = 0;
LABEL_38:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v58 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v59 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v59;
      *&buf[12] = 2112;
      *&buf[14] = v57;
      _os_log_impl(&dword_2304B3000, v58, OS_LOG_TYPE_INFO, "%@, selected best candidate, %@", buf, 0x16u);
    }
  }

  return v57;
}

void __74__RTPlaceInferenceManager__selectBestCandidateAndUpdateReferenceLocation___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_estimatedLocationFromSortedLocations:(id)locations
{
  v32 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  if ([locationsCopy count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = locationsCopy;
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v27;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          if ([v12 type] == 1)
          {
            [v12 speed];
            if (v13 >= 0.0)
            {
              [v12 speed];
              v10 = v10 + v14;
              ++v8;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);

      if (v8)
      {
        v15 = v10 / v8;
LABEL_19:
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v18 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
        [dictionary setObject:v18 forKey:@"kRTLocationSmootherAverageMovingSpeed"];

        v19 = MEMORY[0x277CBEC38];
        [dictionary setObject:MEMORY[0x277CBEC38] forKey:@"kRTLocationSmootherEnableFallbackModel"];
        [dictionary setObject:v19 forKey:@"kRTLocationSmootherPreciseLocationOnlyMode"];
        locationManager = [(RTPlaceInferenceManager *)self locationManager];
        locationSmoother = [locationManager locationSmoother];
        v22 = [v5 objectAtIndexedSubscript:0];
        timestamp = [v22 timestamp];
        [timestamp timeIntervalSinceReferenceDate];
        v24 = [locationSmoother estimateLocationWithLocations:v5 timestamp:dictionary parameters:0 meta:?];

        v17 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:v24];
        goto LABEL_20;
      }
    }

    else
    {
    }

    v15 = 0.0;
    goto LABEL_19;
  }

  dictionary = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, dictionary, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locations.count", buf, 2u);
  }

  v17 = 0;
LABEL_20:

  return v17;
}

- (id)_getFallbackMapItemProviderForOptions:(id)options
{
  optionsCopy = options;
  if (([optionsCopy fidelityPolicy] & 4) != 0)
  {
    v6 = [(RTPlaceInferenceManager *)self _selectMapItemProvidersForOptions:optionsCopy targetProvider:7];
    if ([v6 count])
    {
      firstObject = [v6 firstObject];
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

- (id)_selectMapItemProvidersForOptions:(id)options targetProvider:(unint64_t)provider
{
  optionsCopy = options;
  if (optionsCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v8 = [MEMORY[0x277CBEB58] set];
    defaultsManager = [(RTPlaceInferenceManager *)self defaultsManager];
    v10 = [defaultsManager objectForKey:@"RTDefaultsMapItemProviderDenyList"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(RTPlaceInferenceManager *)self _addMapItemProviderFromArray:v10 toSet:v8];
    }

    mEMORY[0x277D0EB00] = [MEMORY[0x277D0EB00] sharedConfiguration];
    v12 = [mEMORY[0x277D0EB00] defaultForKey:@"RTDefaultsMapItemProviderDenyList" defaultValue:MEMORY[0x277CBEBF8]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(RTPlaceInferenceManager *)self _addMapItemProviderFromArray:v12 toSet:v8];
    }

    fidelityPolicy = [optionsCopy fidelityPolicy];
    v14 = fidelityPolicy;
    if ((fidelityPolicy & 0x20) != 0 || (fidelityPolicy & 0x40) != 0)
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = [v8 containsObject:v21];

      if ((v22 & 1) == 0)
      {
        mapItemProviders = [(RTPlaceInferenceManager *)self mapItemProviders];
        v24 = [mapItemProviders objectForKeyedSubscript:&unk_28459C570];

        if (v24)
        {
          [array addObject:v24];
        }
      }

      goto LABEL_71;
    }

    if (provider > 3)
    {
      if (provider != 4)
      {
        if (provider != 8)
        {
          goto LABEL_36;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (provider && provider != 3)
      {
        goto LABEL_36;
      }

      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v8 containsObject:v16];

      if ((v17 & 1) == 0)
      {
        mapItemProviders2 = [(RTPlaceInferenceManager *)self mapItemProviders];
        v19 = [mapItemProviders2 objectForKeyedSubscript:&unk_28459C5A0];

        if (v19)
        {
          [array addObject:v19];
        }
      }

      if (provider)
      {
        goto LABEL_36;
      }
    }

    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = [v8 containsObject:v27];

    if ((v28 & 1) == 0)
    {
      mapItemProviders3 = [(RTPlaceInferenceManager *)self mapItemProviders];
      v30 = [mapItemProviders3 objectForKeyedSubscript:&unk_28459C5B8];

      if (v30)
      {
        [array addObject:v30];
      }
    }

    if (!provider)
    {
LABEL_32:
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = [v8 containsObject:v32];

      if ((v33 & 1) == 0)
      {
        mapItemProviders4 = [(RTPlaceInferenceManager *)self mapItemProviders];
        v35 = [mapItemProviders4 objectForKeyedSubscript:&unk_28459C5D0];

        if (v35)
        {
          [array addObject:v35];
        }
      }
    }

LABEL_36:
    if ((v14 & 3) != 0)
    {
      if (provider <= 1)
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = [v8 containsObject:v37];

        if ((v38 & 1) == 0)
        {
          mapItemProviders5 = [(RTPlaceInferenceManager *)self mapItemProviders];
          v40 = [mapItemProviders5 objectForKeyedSubscript:&unk_28459C570];

          if (v40)
          {
            [array addObject:v40];
          }
        }
      }

      if ((provider | 2) == 2)
      {
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = [v8 containsObject:v42];

        if ((v43 & 1) == 0)
        {
          mapItemProviders6 = [(RTPlaceInferenceManager *)self mapItemProviders];
          v45 = [mapItemProviders6 objectForKeyedSubscript:&unk_28459C588];

          if (v45)
          {
            [array addObject:v45];
          }
        }
      }
    }

    if ((v14 & 2) != 0)
    {
      if (provider > 6)
      {
        if (provider != 7)
        {
          if (provider != 9)
          {
LABEL_70:
            [RTPlaceInferenceManager sanityCheckMapItemProviders:array];
LABEL_71:

            goto LABEL_72;
          }

LABEL_61:
          v51 = objc_opt_class();
          v52 = NSStringFromClass(v51);
          v53 = [v8 containsObject:v52];

          if ((v53 & 1) == 0)
          {
            mapItemProviders7 = [(RTPlaceInferenceManager *)self mapItemProviders];
            v55 = [mapItemProviders7 objectForKeyedSubscript:&unk_28459C618];

            if (v55)
            {
              [array addObject:v55];
            }
          }

          goto LABEL_70;
        }

LABEL_66:
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        v58 = [v8 containsObject:v57];

        if ((v58 & 1) == 0)
        {
          mapItemProviders8 = [(RTPlaceInferenceManager *)self mapItemProviders];
          v60 = [mapItemProviders8 objectForKeyedSubscript:&unk_28459C600];

          if (v60)
          {
            [array addObject:v60];
          }
        }

        goto LABEL_70;
      }

      if (provider && provider != 6)
      {
        goto LABEL_70;
      }

      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = [v8 containsObject:v47];

      if ((v48 & 1) == 0)
      {
        mapItemProviders9 = [(RTPlaceInferenceManager *)self mapItemProviders];
        v50 = [mapItemProviders9 objectForKeyedSubscript:&unk_28459C5E8];

        if (v50)
        {
          [array addObject:v50];
        }
      }
    }

    if (provider == 9)
    {
      goto LABEL_61;
    }

    if (provider != 7)
    {
      if (provider)
      {
        goto LABEL_70;
      }

      goto LABEL_61;
    }

    goto LABEL_66;
  }

  v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *v62 = 0;
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", v62, 2u);
  }

  array = 0;
LABEL_72:

  return array;
}

+ (void)sanityCheckMapItemProviders:(id)providers
{
  providersCopy = providers;
  if ([providersCopy count])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __55__RTPlaceInferenceManager_sanityCheckMapItemProviders___block_invoke;
    v4[3] = &unk_2788C4B80;
    v5 = providersCopy;
    [v5 enumerateObjectsUsingBlock:v4];
  }
}

void __55__RTPlaceInferenceManager_sanityCheckMapItemProviders___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 isMemberOfClass:objc_opt_class()];
  if (a3 && v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v13 = 138412802;
      v14 = v10;
      v15 = 2080;
      v16 = "+[RTPlaceInferenceManager sanityCheckMapItemProviders:]_block_invoke";
      v17 = 1024;
      v18 = 1356;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "the first mapItem provider must be %@ (in %s:%d)", &v13, 0x1Cu);
    }
  }

  if ([v5 isMemberOfClass:objc_opt_class()] && objc_msgSend(*(a1 + 32), "count") - 1 != a3)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138412802;
      v14 = v12;
      v15 = 2080;
      v16 = "+[RTPlaceInferenceManager sanityCheckMapItemProviders:]_block_invoke";
      v17 = 1024;
      v18 = 1362;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "the last mapItem provider must be %@ (in %s:%d)", &v13, 0x1Cu);
    }
  }
}

- (void)_addMapItemProviderFromArray:(id)array toSet:(id)set
{
  arrayCopy = array;
  setCopy = set;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__RTPlaceInferenceManager__addMapItemProviderFromArray_toSet___block_invoke;
    v7[3] = &unk_2788C4BA8;
    v8 = setCopy;
    [arrayCopy enumerateObjectsUsingBlock:v7];
  }
}

void __62__RTPlaceInferenceManager__addMapItemProviderFromArray_toSet___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (BOOL)_learnedPlaceTypeForInferredMapItem:(id)item placeType:(unint64_t *)type placeTypeSource:(unint64_t *)source error:(id *)error
{
  itemCopy = item;
  if (!itemCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItem", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_19;
    }

    v16 = @"inferredMapItem";
    goto LABEL_18;
  }

  if (!type)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeType", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_19;
    }

    v16 = @"placeType";
LABEL_18:
    _RTErrorInvalidParameterCreate(v16);
    *error = v11 = 0;
    goto LABEL_24;
  }

  if (!source)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeTypeSource", buf, 2u);
    }

    if (error)
    {
      v16 = @"placeTypeSource";
      goto LABEL_18;
    }

LABEL_19:
    v11 = 0;
    goto LABEL_24;
  }

  v22 = 0;
  *buf = 0;
  v21 = 0;
  v11 = [(RTPlaceInferenceManager *)self _inferUserSpecificPlaceTypeForInferredMapItem:itemCopy userSpecificPlaceType:buf userSpecificPlaceTypeSource:&v22 error:&v21];
  v12 = v21;
  v13 = v12;
  if (v11)
  {
    *type = [RTPlaceInferenceManager learnedPlaceTypeFromUserSpecificPlaceType:*buf];
    v14 = [RTPlaceInferenceManager learnedPlaceTypeSourceFromUserSpecificPlaceTypeSource:v22];
  }

  else
  {
    if (error)
    {
      v19 = v12;
      *error = v13;
    }

    v14 = 0;
    *type = 0;
  }

  *source = v14;

LABEL_24:
  return v11;
}

- (BOOL)_inferUserSpecificPlaceTypeForInferredMapItem:(id)item userSpecificPlaceType:(unint64_t *)type userSpecificPlaceTypeSource:(unint64_t *)source error:(id *)error
{
  itemCopy = item;
  if (!itemCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItem", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_19;
    }

    v17 = @"inferredMapItem";
    goto LABEL_18;
  }

  if (!type)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: userSpecificPlaceType", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_19;
    }

    v17 = @"userSpecificPlaceType";
LABEL_18:
    _RTErrorInvalidParameterCreate(v17);
    *error = v13 = 0;
    goto LABEL_24;
  }

  if (!source)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: userSpecificPlaceTypeSource", buf, 2u);
    }

    if (error)
    {
      v17 = @"userSpecificPlaceTypeSource";
      goto LABEL_18;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_24;
  }

  v23 = 0;
  *buf = 0;
  learnedLocationStore = [(RTPlaceInferenceManager *)self learnedLocationStore];
  mapItem = [itemCopy mapItem];
  v22 = 0;
  v13 = [learnedLocationStore placeTypeForMapItem:mapItem placeType:buf placeTypeSource:&v23 error:&v22];
  v14 = v22;

  if (v13)
  {
    *type = [RTPlaceInferenceManager userSpecificPlaceTypeFromLearnedPlaceType:*buf];
    v15 = [RTPlaceInferenceManager userSpecificPlaceTypeSourceFromLearnedPlaceTypeSource:v23];
  }

  else
  {
    if (error)
    {
      v20 = v14;
      *error = v14;
    }

    v15 = 0;
    *type = 0;
  }

  *source = v15;

LABEL_24:
  return v13;
}

- (id)_placeInferenceFromInferredMapItem:(id)item referenceLocation:(id)location error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  locationCopy = location;
  if (itemCopy)
  {
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v11 = [(RTPlaceInferenceManager *)self _inferUserSpecificPlaceTypeForInferredMapItem:itemCopy userSpecificPlaceType:&v29 userSpecificPlaceTypeSource:&v28 error:&v27];
    v12 = v27;
    if (!v11)
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(a2);
        *buf = 138412803;
        v31 = v26;
        v32 = 2117;
        v33 = itemCopy;
        v34 = 2112;
        v35 = v12;
        _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, failed to infer user specific place type for inferredMapItem, %{sensitive}@ error, %@", buf, 0x20u);
      }

      if (error)
      {
        v14 = v12;
        *error = v12;
      }

      v28 = 0;
      v29 = 0;
    }

    v15 = [(RTPlaceInferenceManager *)self _loiIdentifierForInferredMapItem:itemCopy];
    v16 = MEMORY[0x277D011D8];
    mapItem = [itemCopy mapItem];
    v18 = [v16 placeInferencePlaceTypeFromMapItem:mapItem userType:0 source:{objc_msgSend(itemCopy, "source")}];

    v19 = objc_alloc(MEMORY[0x277D011D8]);
    mapItem2 = [itemCopy mapItem];
    v22 = v28;
    v21 = v29;
    [itemCopy confidence];
    v23 = [v19 initWithMapItem:mapItem2 userType:v21 userTypeSource:v22 placeType:v18 referenceLocation:locationCopy confidence:v15 loiIdentifier:?];
  }

  else
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItem", buf, 2u);
    }

    v23 = 0;
  }

  return v23;
}

- (id)_loiIdentifierForInferredMapItem:(id)item
{
  v53[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__3;
  v48 = __Block_byref_object_dispose__3;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__3;
  v42 = __Block_byref_object_dispose__3;
  v43 = 0;
  v6 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTPlaceInferenceManager *)self learnedLocationStore];
  mapItem = [itemCopy mapItem];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __60__RTPlaceInferenceManager__loiIdentifierForInferredMapItem___block_invoke;
  v34[3] = &unk_2788C4B58;
  v36 = &v44;
  v37 = &v38;
  v9 = v6;
  v35 = v9;
  [learnedLocationStore fetchLocationOfInterestWithMapItem:mapItem handler:v34];

  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v11];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_3];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [callStackSymbols filteredArrayUsingPredicate:v17];
    firstObject = [v19 firstObject];

    [v16 submitToCoreAnalytics:firstObject type:1 duration:v15];
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v53[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v53 count:1];
    v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

    if (v24)
    {
      v25 = v24;

      v26 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = 1;
LABEL_8:

  v27 = v24;
  if ((v26 & 1) == 0)
  {
    objc_storeStrong(v39 + 5, v24);
  }

  if (!v39[5])
  {
    goto LABEL_15;
  }

  v28 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v32 = NSStringFromSelector(a2);
    v33 = v39[5];
    *buf = 138412546;
    *&buf[4] = v32;
    v51 = 2112;
    v52 = v33;
    _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
  }

  if (v39[5])
  {
    v29 = 0;
  }

  else
  {
LABEL_15:
    v29 = v45[5];
  }

  v30 = v29;

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  return v30;
}

void __60__RTPlaceInferenceManager__loiIdentifierForInferredMapItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 identifier];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)sendPlaceInferenceMetrics:(id)metrics inferredMapItems:(id)items fusedMapItems:(id)mapItems fallbackInferredMapItems:(id)inferredMapItems finalPlaceInferences:(id)inferences referenceLocation:(id)location
{
  v146 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  itemsCopy = items;
  mapItemsCopy = mapItems;
  inferredMapItemsCopy = inferredMapItems;
  inferencesCopy = inferences;
  locationCopy = location;
  v79 = [inferredMapItemsCopy count];
  v135 = 0;
  v136 = &v135;
  v137 = 0x2020000000;
  v138 = 0;
  v131 = 0;
  v132 = &v131;
  v133 = 0x2020000000;
  v134 = 0;
  v127 = 0;
  v128 = &v127;
  v129 = 0x2020000000;
  v130 = 0;
  v123 = 0;
  v124 = &v123;
  v125 = 0x2020000000;
  v126 = 0;
  v119 = 0;
  v120 = &v119;
  v121 = 0x2020000000;
  v122 = 0;
  v115 = 0;
  v116 = &v115;
  v117 = 0x2020000000;
  v118 = 0;
  v109 = 0;
  v110 = &v109;
  v111 = 0x3032000000;
  v112 = __Block_byref_object_copy__3;
  v113 = __Block_byref_object_dispose__3;
  v114 = 0;
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = __Block_byref_object_copy__3;
  v107 = __Block_byref_object_dispose__3;
  v108 = objc_opt_new();
  v102[0] = MEMORY[0x277D85DD0];
  v102[1] = 3221225472;
  v102[2] = __148__RTPlaceInferenceManager_sendPlaceInferenceMetrics_inferredMapItems_fusedMapItems_fallbackInferredMapItems_finalPlaceInferences_referenceLocation___block_invoke;
  v102[3] = &unk_2788C4BD0;
  v102[4] = &v109;
  v102[5] = &v115;
  v102[6] = &v123;
  v102[7] = &v131;
  v102[8] = &v135;
  v102[9] = &v103;
  v102[10] = &v119;
  v102[11] = &v127;
  [itemsCopy enumerateObjectsUsingBlock:v102];
  v82 = itemsCopy;
  v80 = [mapItemsCopy count];
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __148__RTPlaceInferenceManager_sendPlaceInferenceMetrics_inferredMapItems_fusedMapItems_fallbackInferredMapItems_finalPlaceInferences_referenceLocation___block_invoke_2;
  v97[3] = &unk_2788C4BF8;
  v97[4] = &v98;
  [mapItemsCopy enumerateObjectsUsingBlock:v97];
  if (self->_visitEntryTime)
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    [v16 timeIntervalSinceDate:self->_visitEntryTime];
    v18 = v17;

    v19 = vcvtad_u64_f64(v18);
    v20 = 1;
    goto LABEL_19;
  }

  if (self->_clientMappingIndex != 2)
  {
    v20 = 0;
    v19 = -1;
    goto LABEL_19;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v140 = 0x3032000000;
  v141 = __Block_byref_object_copy__3;
  v142 = __Block_byref_object_dispose__3;
  v143 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = __Block_byref_object_copy__3;
  v95 = __Block_byref_object_dispose__3;
  v96 = 0;
  v21 = dispatch_semaphore_create(0);
  visitStore = [(RTPlaceInferenceManager *)self visitStore];
  v23 = objc_alloc(MEMORY[0x277D01340]);
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
  v25 = [MEMORY[0x277CBEB98] setWithObject:&unk_28459C648];
  v26 = [v23 initWithAscending:0 confidence:v24 dateInterval:0 labelVisit:1 limit:&unk_28459C630 sources:v25];
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __148__RTPlaceInferenceManager_sendPlaceInferenceMetrics_inferredMapItems_fusedMapItems_fallbackInferredMapItems_finalPlaceInferences_referenceLocation___block_invoke_261;
  v87[3] = &unk_2788C4490;
  p_buf = &buf;
  v90 = &v91;
  v27 = v21;
  v88 = v27;
  [visitStore fetchVisitsWithOptions:v26 handler:v87];

  v28 = v27;
  v29 = [MEMORY[0x277CBEAA8] now];
  v30 = dispatch_time(0, 3600000000000);
  if (!dispatch_semaphore_wait(v28, v30))
  {
    v41 = v29;
    v39 = 0;
LABEL_12:
    v42 = 1;
    goto LABEL_13;
  }

  v78 = [MEMORY[0x277CBEAA8] now];
  [v78 timeIntervalSinceDate:v29];
  v32 = v31;
  v76 = objc_opt_new();
  v77 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_3];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  v34 = [callStackSymbols filteredArrayUsingPredicate:v77];
  firstObject = [v34 firstObject];

  [v76 submitToCoreAnalytics:firstObject type:1 duration:v32];
  v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
  {
    *v145 = 0;
    _os_log_fault_impl(&dword_2304B3000, v36, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v145, 2u);
  }

  v37 = MEMORY[0x277CCA9B8];
  v144 = *MEMORY[0x277CCA450];
  *v145 = @"semaphore wait timeout";
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:&v144 count:1];
  v39 = [v37 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v38];

  if (!v39)
  {
    v41 = v29;
    goto LABEL_12;
  }

  v40 = v39;

  v41 = v29;
  v42 = 0;
LABEL_13:

  v43 = v39;
  if ((v42 & 1) == 0)
  {
    objc_storeStrong(v92 + 5, v39);
  }

  type = [*(*(&buf + 1) + 40) type];
  v20 = type == 1;
  if (type == 1)
  {
    v45 = [MEMORY[0x277CBEAA8] now];
    entry = [*(*(&buf + 1) + 40) entry];
    [v45 timeIntervalSinceDate:entry];
    v48 = v47;

    v19 = vcvtad_u64_f64(v48);
  }

  else
  {
    v19 = -1;
  }

  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&buf, 8);

LABEL_19:
  v49 = v19 < 0xE11 && v20;
  if (v19 >= 0xE11)
  {
    v50 = 3600;
  }

  else
  {
    v50 = v19;
  }

  [metricsCopy setPlaceInferences:inferencesCopy];
  [metricsCopy setTopPersonalizedLabelsInferredMapItems:v104[5] topBluePOIInferredMapItem:v110[5]];
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v99 + 6)];
  [metricsCopy setObject:v51 forKey:@"afterFusionCount"];

  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(itemsCopy, "count")}];
  [metricsCopy setObject:v52 forKey:@"beforeFusionCount"];

  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v50];
  [metricsCopy setObject:v53 forKey:@"callEntryLatency"];

  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_clientMappingIndex];
  [metricsCopy setObject:v54 forKey:@"clientIdMappingIndex"];

  v55 = [MEMORY[0x277CCABB0] numberWithInt:v110[5] != 0];
  [metricsCopy setObject:v55 forKey:@"hasBluePOIResults"];

  v56 = [MEMORY[0x277CCABB0] numberWithBool:*(v120 + 24)];
  [metricsCopy setObject:v56 forKey:@"hasConfidentLocalHints"];

  v57 = [MEMORY[0x277CCABB0] numberWithBool:*(v136 + 24)];
  [metricsCopy setObject:v57 forKey:@"hasCurrentPOIResult"];

  v58 = [MEMORY[0x277CCABB0] numberWithBool:*(v132 + 24)];
  [metricsCopy setObject:v58 forKey:@"hasLearnedPlaceInResults"];

  v59 = [MEMORY[0x277CCABB0] numberWithBool:*(v128 + 24)];
  [metricsCopy setObject:v59 forKey:@"hasMapSupportResults"];

  v60 = [MEMORY[0x277CCABB0] numberWithBool:*(v124 + 24)];
  [metricsCopy setObject:v60 forKey:@"hasRevGeocodeInResults"];

  v61 = [MEMORY[0x277CCABB0] numberWithBool:v80 != 0];
  [metricsCopy setObject:v61 forKey:@"hasFusedResults"];

  v62 = [MEMORY[0x277CCABB0] numberWithBool:v79 != 0];
  [metricsCopy setObject:v62 forKey:@"hasFallbackResults"];

  v63 = [MEMORY[0x277CCABB0] numberWithBool:v49];
  [metricsCopy setObject:v63 forKey:@"isInVisit"];

  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v116 + 6)];
  [metricsCopy setObject:v64 forKey:@"sourceCount"];

  if (locationCopy && [inferencesCopy count] && (objc_msgSend(inferencesCopy, "objectAtIndexedSubscript:", 0), v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "referenceLocation"), v66 = objc_claimAutoreleasedReturnValue(), v67 = v66 == 0, v66, v65, !v67))
  {
    distanceCalculator = [(RTPlaceInferenceManager *)self distanceCalculator];
    v69 = [inferencesCopy objectAtIndexedSubscript:0];
    referenceLocation = [v69 referenceLocation];
    v86 = 0;
    [distanceCalculator distanceFromLocation:locationCopy toLocation:referenceLocation error:&v86];
    v72 = v71;

    v73 = v72;
  }

  else
  {
    v73 = -1;
  }

  v74 = [MEMORY[0x277CCABB0] numberWithInteger:v73];
  [metricsCopy setObject:v74 forKey:@"distanceBetweenReferenceLocationAndUpdatedReferenceLocation"];

  [metricsCopy submitMetrics];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v75 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = metricsCopy;
      _os_log_impl(&dword_2304B3000, v75, OS_LOG_TYPE_INFO, "metrics, %@", &buf, 0xCu);
    }
  }

  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(&v103, 8);

  _Block_object_dispose(&v109, 8);
  _Block_object_dispose(&v115, 8);
  _Block_object_dispose(&v119, 8);
  _Block_object_dispose(&v123, 8);
  _Block_object_dispose(&v127, 8);
  _Block_object_dispose(&v131, 8);
  _Block_object_dispose(&v135, 8);
}

void __148__RTPlaceInferenceManager_sendPlaceInferenceMetrics_inferredMapItems_fusedMapItems_fallbackInferredMapItems_finalPlaceInferences_referenceLocation___block_invoke(void *a1, void *a2)
{
  v6 = a2;
  if (([v6 source] & 0x4000) != 0 || (objc_msgSend(v6, "source") & 0x80000) != 0)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    ++*(*(a1[5] + 8) + 24);
    goto LABEL_16;
  }

  if (([v6 source] & 1) != 0 || (objc_msgSend(v6, "source") & 0x40000) != 0)
  {
    v5 = a1[6];
    goto LABEL_15;
  }

  if (([v6 source] & 0x2000) != 0)
  {
    ++*(*(a1[5] + 8) + 24);
    v5 = a1[7];
    goto LABEL_15;
  }

  v4 = [v6 source];
  ++*(*(a1[5] + 8) + 24);
  if ((v4 & 0x10000) != 0)
  {
    v5 = a1[8];
    goto LABEL_15;
  }

  [*(*(a1[9] + 8) + 40) addObject:v6];
  if (([v6 source] & 0x40) != 0)
  {
    *(*(a1[10] + 8) + 24) = 1;
  }

  if (([v6 source] & 0x10) != 0 || (objc_msgSend(v6, "source") & 0x40) != 0 || (objc_msgSend(v6, "source") & 0x80) != 0)
  {
    v5 = a1[11];
LABEL_15:
    *(*(v5 + 8) + 24) = 1;
  }

LABEL_16:
}

void __148__RTPlaceInferenceManager_sendPlaceInferenceMetrics_inferredMapItems_fusedMapItems_fallbackInferredMapItems_finalPlaceInferences_referenceLocation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 mapItem];

  if (v3)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

void __148__RTPlaceInferenceManager_sendPlaceInferenceMetrics_inferredMapItems_fusedMapItems_fallbackInferredMapItems_finalPlaceInferences_referenceLocation___block_invoke_261(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 firstObject];
      v15 = 138740227;
      v16 = v8;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "fetched visit, %{sensitive}@, error, %@", &v15, 0x16u);
    }
  }

  v9 = [v5 firstObject];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v6;
  v14 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_onVisitManagerVisitIncidentNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  v5 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
  v6 = [name isEqualToString:v5];

  v7 = notificationCopy;
  if (v6)
  {
    visitIncident = [notificationCopy visitIncident];
    if ([visitIncident type] == 1)
    {
      entry = [visitIncident entry];
    }

    else
    {
      if ([visitIncident type] != 3)
      {
LABEL_7:

        v7 = notificationCopy;
        goto LABEL_8;
      }

      entry = 0;
    }

    visitEntryTime = self->_visitEntryTime;
    self->_visitEntryTime = entry;

    goto LABEL_7;
  }

LABEL_8:
}

- (void)onVisitManagerVisitIncidentNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__RTPlaceInferenceManager_onVisitManagerVisitIncidentNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onPointOfInterestVisitNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  v5 = +[(RTNotification *)RTPointOfInterestMonitorVisitNotification];
  v6 = [name isEqualToString:v5];

  v7 = notificationCopy;
  if (v6)
  {
    visit = [notificationCopy visit];
    if ([visit type] == 1)
    {
      entry = [visit entry];
      visitEntryTime = self->_visitEntryTime;
      self->_visitEntryTime = entry;
    }

    v7 = notificationCopy;
  }
}

- (void)onPointOfInterestVisitNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__RTPlaceInferenceManager_onPointOfInterestVisitNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onDailyMetricsNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = notificationCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, received notification, %@", &v9, 0x16u);
    }
  }

  dailyMetrics = [(RTPlaceInferenceManager *)self dailyMetrics];
  [dailyMetrics submit];
}

- (void)onDailyMetricsNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__RTPlaceInferenceManager_onDailyMetricsNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (unint64_t)_getMappingIndexForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy hasSuffix:@"CoreRoutine"])
  {
    v4 = 1;
  }

  else if ([identifierCopy hasSuffix:@"DoNotDisturb.bundle"])
  {
    v4 = 3;
  }

  else if ([identifierCopy hasSuffix:@"Emergency SOS.bundle"])
  {
    v4 = 4;
  }

  else if ([identifierCopy hasSuffix:@"findmy"])
  {
    v4 = 5;
  }

  else if ([identifierCopy hasSuffix:@"GeocorrectionDLocationBundle.bundle"])
  {
    v4 = 7;
  }

  else if ([identifierCopy hasSuffix:@"HomeKitDaemon.framework"])
  {
    v4 = 6;
  }

  else if ([identifierCopy hasSuffix:@"CoreParsec.framework"])
  {
    v4 = 2;
  }

  else if ([identifierCopy hasSuffix:@"VoiceMemos"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)learnedPlaceTypeFromUserSpecificPlaceType:(unint64_t)type
{
  if (type - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

+ (unint64_t)userSpecificPlaceTypeFromLearnedPlaceType:(unint64_t)type
{
  if (type - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

+ (unint64_t)userSpecificPlaceTypeFromLocationOfInterestType:(int64_t)type
{
  if ((type + 1) < 5)
  {
    return type + 1;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)learnedPlaceTypeFromLocationOfInterestType:(int64_t)type
{
  if ((type + 1) < 5)
  {
    return type + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  v10 = completionCopy;
  if (type > 1)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  else
  {
    placeInferenceQueryStore = [(RTPlaceInferenceManager *)self placeInferenceQueryStore];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__RTPlaceInferenceManager__performPurgeOfType_referenceDate_completion___block_invoke;
    v12[3] = &unk_2788C48C0;
    v13 = v10;
    [placeInferenceQueryStore purgePlaceInferenceQueriesPredating:dateCopy handler:v12];
  }
}

- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__RTPlaceInferenceManager_performPurgeOfType_referenceDate_completion___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = dateCopy;
  v15 = completionCopy;
  typeCopy = type;
  v11 = completionCopy;
  v12 = dateCopy;
  dispatch_async(queue, v13);
}

@end