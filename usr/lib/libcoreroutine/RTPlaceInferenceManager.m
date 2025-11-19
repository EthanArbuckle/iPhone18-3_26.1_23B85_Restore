@interface RTPlaceInferenceManager
+ (unint64_t)learnedPlaceTypeFromLocationOfInterestType:(int64_t)a3;
+ (unint64_t)learnedPlaceTypeFromUserSpecificPlaceType:(unint64_t)a3;
+ (unint64_t)userSpecificPlaceTypeFromLearnedPlaceType:(unint64_t)a3;
+ (unint64_t)userSpecificPlaceTypeFromLocationOfInterestType:(int64_t)a3;
+ (void)sanityCheckMapItemProviders:(id)a3;
- (BOOL)_inferUserSpecificPlaceTypeForInferredMapItem:(id)a3 userSpecificPlaceType:(unint64_t *)a4 userSpecificPlaceTypeSource:(unint64_t *)a5 error:(id *)a6;
- (BOOL)_learnedPlaceTypeForInferredMapItem:(id)a3 placeType:(unint64_t *)a4 placeTypeSource:(unint64_t *)a5 error:(id *)a6;
- (BOOL)_savePlaceInferenceQueriesFromInferredMapItems:(id)a3 inferenceErrorCode:(int64_t)a4 referenceLocation:(id)a5 options:(id)a6 outError:(id *)a7;
- (RTPlaceInferenceManager)initWithDefaultsManager:(id)a3 bluePOIMetricManager:(id)a4 bluePOIMonitor:(id)a5 bluePOITileManager:(id)a6 distanceCalculator:(id)a7 eventManager:(id)a8 fingerprintManager:(id)a9 inferredMapItemFuser:(id)a10 learnedLocationStore:(id)a11 locationManager:(id)a12 mapItemManager:(id)a13 mapServiceManager:(id)a14 mapsSupportManager:(id)a15 metricManager:(id)a16 motionActivityManager:(id)a17 placeInferenceQueryStore:(id)a18 platform:(id)a19 portraitManager:(id)a20 userCurationStore:(id)a21 visitStore:(id)a22;
- (id)_closestCachedLocationForLocation:(id)a3;
- (id)_estimatedLocationFromSortedLocations:(id)a3;
- (id)_filterLocalBluePOIMapItems:(id)a3;
- (id)_getFallbackMapItemProviderForOptions:(id)a3;
- (id)_loiIdentifierForInferredMapItem:(id)a3;
- (id)_placeInferenceFromInferredMapItem:(id)a3 referenceLocation:(id)a4 error:(id *)a5;
- (id)_placeInferencesForOptions:(id)a3 error:(id *)a4;
- (id)_removeCurrentPOIMapItems:(id)a3;
- (id)_selectBestCandidateAndUpdateReferenceLocation:(id)a3;
- (id)_selectLastLocationFromLocations:(id)a3 maxHorizontalUncertainty:(double)a4;
- (id)_selectMapItemProvidersForOptions:(id)a3 targetProvider:(unint64_t)a4;
- (id)createAllMapItemProvidersWithDefaultManager:(id)a3 bluePOIMetricManager:(id)a4 bluePOIMonitor:(id)a5 bluePOITileManager:(id)a6 distanceCalculator:(id)a7 eventManager:(id)a8 fingerprintManager:(id)a9 learnedLocationStore:(id)a10 locationManager:(id)a11 mapItemManager:(id)a12 mapServiceManager:(id)a13 mapsSupportManager:(id)a14 motionActivityManager:(id)a15 platform:(id)a16 portraitManager:(id)a17 userCurationStore:(id)a18 visitStore:(id)a19;
- (unint64_t)_getMappingIndexForClientIdentifier:(id)a3;
- (void)_addMapItemProviderFromArray:(id)a3 toSet:(id)a4;
- (void)_onBluePOIMonitorEstimateUpdateNotification:(id)a3;
- (void)_onDailyMetricsNotification:(id)a3;
- (void)_onPointOfInterestVisitNotification:(id)a3;
- (void)_onSyncedPlaceInferences:(id)a3;
- (void)_onVisitManagerVisitIncidentNotification:(id)a3;
- (void)_performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
- (void)_registerForDailyMetricsNotifications;
- (void)_setup;
- (void)_shutdownWithHandler:(id)a3;
- (void)_unRegisterForDailyMetricsNotifications;
- (void)_updateCachedLocationsWithLocation:(id)a3;
- (void)fetchPlaceInferencesForOptions:(id)a3 handler:(id)a4;
- (void)onBluePOIMonitorEstimateUpdateNotification:(id)a3;
- (void)onDailyMetricsNotification:(id)a3;
- (void)onPointOfInterestVisitNotification:(id)a3;
- (void)onSyncedPlaceInferences:(id)a3;
- (void)onVisitManagerVisitIncidentNotification:(id)a3;
- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
- (void)sendPlaceInferenceMetrics:(id)a3 inferredMapItems:(id)a4 fusedMapItems:(id)a5 fallbackInferredMapItems:(id)a6 finalPlaceInferences:(id)a7 referenceLocation:(id)a8;
- (void)setVisitManager:(id)a3;
@end

@implementation RTPlaceInferenceManager

- (RTPlaceInferenceManager)initWithDefaultsManager:(id)a3 bluePOIMetricManager:(id)a4 bluePOIMonitor:(id)a5 bluePOITileManager:(id)a6 distanceCalculator:(id)a7 eventManager:(id)a8 fingerprintManager:(id)a9 inferredMapItemFuser:(id)a10 learnedLocationStore:(id)a11 locationManager:(id)a12 mapItemManager:(id)a13 mapServiceManager:(id)a14 mapsSupportManager:(id)a15 metricManager:(id)a16 motionActivityManager:(id)a17 placeInferenceQueryStore:(id)a18 platform:(id)a19 portraitManager:(id)a20 userCurationStore:(id)a21 visitStore:(id)a22
{
  v60 = a3;
  obj = a4;
  v26 = a4;
  v59 = a5;
  v55 = a6;
  v61 = a6;
  v57 = a7;
  v78 = a7;
  v27 = v26;
  v28 = a8;
  v77 = a9;
  v29 = a10;
  v64 = a11;
  v75 = a12;
  v74 = a13;
  v73 = a14;
  v72 = a15;
  v58 = a16;
  v71 = a17;
  v70 = a18;
  v69 = a19;
  v68 = a20;
  v67 = a21;
  v30 = a22;
  v63 = v27;
  v62 = v30;
  if (!v27)
  {
    v31 = v59;
    v44 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bluePOIMetricManager", buf, 2u);
    }

    v43 = 0;
    v32 = v60;
    v33 = v61;
    v45 = v78;
    v46 = v28;
    v34 = v29;
    goto LABEL_31;
  }

  v31 = v59;
  if (!v59)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v32 = v60;
    v45 = v78;
    v34 = v29;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bluePOIMonitor", buf, 2u);
    }

    v43 = 0;
    v33 = v61;
    v46 = v28;
LABEL_31:
    v35 = v64;
    v48 = v58;
    goto LABEL_70;
  }

  v32 = v60;
  v33 = v61;
  v34 = v29;
  if (v61)
  {
    v53 = v28;
    if (v60)
    {
      v35 = v64;
      if (v78)
      {
        if (v53)
        {
          if (v77)
          {
            if (v29)
            {
              if (v64)
              {
                if (v75)
                {
                  if (v74)
                  {
                    if (v73)
                    {
                      if (v72)
                      {
                        if (v71)
                        {
                          if (v70)
                          {
                            if (v69)
                            {
                              if (v68)
                              {
                                if (v67)
                                {
                                  if (v30)
                                  {
                                    v79.receiver = self;
                                    v79.super_class = RTPlaceInferenceManager;
                                    v66 = [(RTNotifier *)&v79 init];
                                    if (v66)
                                    {
                                      objc_storeStrong(&v66->_bluePOIMetricManager, obj);
                                      objc_storeStrong(&v66->_bluePOIMonitor, a5);
                                      objc_storeStrong(&v66->_bluePOITileManager, v55);
                                      objc_storeStrong(&v66->_defaultsManager, a3);
                                      objc_storeStrong(&v66->_distanceCalculator, v57);
                                      objc_storeStrong(&v66->_metricManager, a16);
                                      objc_storeStrong(&v66->_inferredMapItemFuser, a10);
                                      objc_storeStrong(&v66->_learnedLocationStore, a11);
                                      v66->_placeInferencesLimit = 50;
                                      v36 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
                                      cachedLocations = v66->_cachedLocations;
                                      v66->_cachedLocations = v36;

                                      v66->_cachedLocationIndex = 0;
                                      objc_storeStrong(&v66->_locationManager, a12);
                                      objc_storeStrong(&v66->_mapItemManager, a13);
                                      objc_storeStrong(&v66->_mapServiceManager, a14);
                                      objc_storeStrong(&v66->_visitStore, a22);
                                      objc_storeStrong(&v66->_placeInferenceQueryStore, a18);
                                      v38 = [(RTDefaultsManager *)v66->_defaultsManager objectForKey:@"RTDefaultsPlaceInferenceManagerPlaceInferencesLimit"];
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v66->_placeInferencesLimit = [v38 unsignedIntegerValue];
                                      }

                                      v66->_clientMappingIndex = 0;
                                      v39 = [[RTPlaceInferenceDailyMetrics alloc] initWithDefaultsManager:v60];
                                      dailyMetrics = v66->_dailyMetrics;
                                      v66->_dailyMetrics = v39;

                                      v35 = v64;
                                      v41 = [(RTPlaceInferenceManager *)v66 createAllMapItemProvidersWithDefaultManager:v60 bluePOIMetricManager:v63 bluePOIMonitor:v59 bluePOITileManager:v61 distanceCalculator:v78 eventManager:v53 fingerprintManager:v77 learnedLocationStore:v64 locationManager:v75 mapItemManager:v74 mapServiceManager:v73 mapsSupportManager:v72 motionActivityManager:v71 platform:v69 portraitManager:v68 userCurationStore:v67 visitStore:v62];
                                      mapItemProviders = v66->_mapItemProviders;
                                      v66->_mapItemProviders = v41;

                                      [(RTService *)v66 setup];
                                      v34 = v29;
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
                                  v45 = v78;
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
      v35 = v64;
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
  v46 = v28;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v49, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bluePOITileManager", buf, 2u);
  }

  v43 = 0;
  v35 = v64;
  v48 = v58;
  v45 = v78;
LABEL_70:

  return v43;
}

- (id)createAllMapItemProvidersWithDefaultManager:(id)a3 bluePOIMetricManager:(id)a4 bluePOIMonitor:(id)a5 bluePOITileManager:(id)a6 distanceCalculator:(id)a7 eventManager:(id)a8 fingerprintManager:(id)a9 learnedLocationStore:(id)a10 locationManager:(id)a11 mapItemManager:(id)a12 mapServiceManager:(id)a13 mapsSupportManager:(id)a14 motionActivityManager:(id)a15 platform:(id)a16 portraitManager:(id)a17 userCurationStore:(id)a18 visitStore:(id)a19
{
  v86 = a3;
  v24 = a4;
  v25 = a5;
  v87 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v29 = a10;
  v79 = a11;
  v30 = a12;
  v31 = a13;
  v78 = a14;
  v85 = a15;
  v84 = a16;
  v83 = a17;
  v80 = a18;
  v81 = a19;
  v32 = v24;
  v77 = v29;
  if (!v24)
  {
    v33 = v25;
    v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
LABEL_38:

      v82 = 0;
      v55 = v87;
      v56 = v28;
      v51 = v78;
      v52 = v79;
      goto LABEL_82;
    }

    *buf = 0;
    v54 = "Invalid parameter not satisfying: bluePOIMetricManager";
LABEL_59:
    _os_log_error_impl(&dword_2304B3000, v53, OS_LOG_TYPE_ERROR, v54, buf, 2u);
    goto LABEL_38;
  }

  v33 = v25;
  if (!v25)
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

  v73 = v26;
  if (v87)
  {
    v34 = v25;
    if (!v86)
    {
      v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v59, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
      }

      v82 = 0;
      v56 = v28;
      v51 = v78;
      v52 = v79;
      goto LABEL_80;
    }

    if (!v73)
    {
      v60 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v75 = v28;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v60, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distanceCalculator", buf, 2u);
      }

      v82 = 0;
      v51 = v78;
      v52 = v79;
      v26 = 0;
      goto LABEL_48;
    }

    v35 = v28;
    v36 = v27;
    if (v27)
    {
      v37 = v30;
      v38 = v31;
      v39 = v35;
      if (v35)
      {
        v40 = v36;
        if (v29)
        {
          if (v79)
          {
            if (v37)
            {
              if (v31)
              {
                if (v78)
                {
                  if (v85)
                  {
                    if (v84)
                    {
                      if (v83)
                      {
                        if (v80)
                        {
                          if (v81)
                          {
                            v82 = objc_opt_new();
                            v71 = [RTMapItemProviderBluePOI alloc];
                            v69 = [(RTPlaceInferenceManager *)self placeInferenceQueryStore];
                            v72 = [(RTMapItemProviderBluePOI *)v71 initWithDefaultsManager:v86 bluePOIMetricManager:v24 bluePOIMonitor:v33 bluePOITileManager:v87 distanceCalculator:v73 fingerprintManager:v39 locationManager:v79 mapItemManager:v37 mapServiceManager:v31 motionActivityManager:v85 placeInferenceQueryStore:v69 platform:v84];

                            if (v72)
                            {
                              [v82 setObject:v72 forKey:&unk_28459C570];
                            }

                            v70 = [[RTMapItemProviderEventKit alloc] initWithDefaultsManager:v86 distanceCalculator:v73 eventManager:v36 mapServiceManager:v31];
                            if (v70)
                            {
                              [v82 setObject:v70 forKey:&unk_28459C588];
                            }

                            v68 = [[RTMapItemProviderLearnedPlace alloc] initWithDefaultsManager:v86 distanceCalculator:v73 learnedLocationStore:v29];
                            if (v68)
                            {
                              [v82 setObject:v68 forKey:&unk_28459C5A0];
                            }

                            v41 = [[RTMapItemProviderMapsSupport alloc] initWithDefaultsManager:v86 distanceCalculator:v73 mapsSupportManager:v78];
                            if (v41)
                            {
                              [v82 setObject:v41 forKey:&unk_28459C5B8];
                            }

                            v67 = v41;
                            v42 = [RTMapItemProviderCurrentPOI alloc];
                            v43 = [(RTPlaceInferenceManager *)self placeInferenceQueryStore];
                            v44 = [(RTMapItemProviderCurrentPOI *)v42 initWithDefaultsManager:v86 distanceCalculator:v73 placeInferenceQueryStore:v43 visitStore:v81];

                            if (v44)
                            {
                              [v82 setObject:v44 forKey:&unk_28459C5D0];
                            }

                            v66 = v44;
                            v75 = v39;
                            v45 = [[RTMapItemProviderProactiveExperts alloc] initWithDefaultsManager:v86 distanceCalculator:v73 mapServiceManager:v31 personalizationPortraitManager:v83];
                            if (v45)
                            {
                              [v82 setObject:v45 forKey:&unk_28459C5E8];
                            }

                            v46 = v40;
                            v47 = v38;
                            v48 = [[RTMapItemProviderReverseGeocode alloc] initWithDefaultsManager:v86 mapServiceManager:v38];
                            if (v48)
                            {
                              [v82 setObject:v48 forKey:&unk_28459C600];
                            }

                            v32 = v24;
                            v30 = v37;
                            v49 = v34;
                            v50 = [[RTMapItemProviderUserCuration alloc] initWithDefaultsManager:v86 distanceCalculator:v73 userCurationStore:v80 visitStore:v81];
                            if (v50)
                            {
                              [v82 setObject:v50 forKey:&unk_28459C618];
                            }

                            v26 = v73;
                            v33 = v49;
                            v51 = v78;
                            v52 = v79;
                            v31 = v47;
                            v27 = v46;
LABEL_48:
                            v56 = v75;
LABEL_81:
                            v55 = v87;
                            goto LABEL_82;
                          }

                          v56 = v35;
                          v27 = v40;
                          v32 = v24;
                          v51 = v78;
                          v30 = v37;
                          v52 = v79;
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
                        v27 = v40;
                        v32 = v24;
                        v51 = v78;
                        v30 = v37;
                        v52 = v79;
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
                        v26 = v73;
                        goto LABEL_81;
                      }

                      v56 = v35;
                      v27 = v40;
                      v32 = v24;
                      v51 = v78;
                      v30 = v37;
                      v52 = v79;
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
                      v27 = v40;
                      v32 = v24;
                      v51 = v78;
                      v30 = v37;
                      v52 = v79;
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
                    v27 = v40;
                    v32 = v24;
                    v51 = v78;
                    v30 = v37;
                    v52 = v79;
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
                  v27 = v40;
                  v32 = v24;
                  v51 = 0;
                  v30 = v37;
                  v52 = v79;
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
                v27 = v40;
                v32 = v24;
                v51 = v78;
                v31 = 0;
                v30 = v37;
                v52 = v79;
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
              v27 = v40;
              v32 = v24;
              v51 = v78;
              v30 = 0;
              v52 = v79;
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
            v27 = v40;
            v32 = v24;
            v51 = v78;
            v30 = v37;
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
          v27 = v40;
          v32 = v24;
          v51 = v78;
          v30 = v37;
          v52 = v79;
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
      v30 = v37;
      v52 = v79;
      v62 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v51 = v78;
      v27 = v36;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v62, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fingerprintManager", buf, 2u);
      }

      v82 = 0;
      v26 = v73;
    }

    else
    {
      v76 = v28;
      v61 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v52 = v79;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v61, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: eventManager", buf, 2u);
      }

      v82 = 0;
      v51 = v78;
      v26 = v73;
    }

    v55 = v87;
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
  v58 = v28;
  v51 = v78;
  v52 = v79;
  v55 = 0;
  v56 = v58;
LABEL_82:

  return v82;
}

- (void)_setup
{
  [(RTPlaceInferenceManager *)self _registerForDailyMetricsNotifications];
  v4 = [(RTPlaceInferenceManager *)self bluePOIMonitor];
  v3 = +[(RTNotification *)RTBluePOIMonitorEstimateUpdateNotification];
  [v4 addObserver:self selector:sel_onBluePOIMonitorEstimateUpdateNotification_ name:v3];
}

- (void)setVisitManager:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__RTPlaceInferenceManager_setVisitManager___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_onDailyMetricsNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];
}

- (void)_shutdownWithHandler:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = self;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@ %@", &v13, 0x16u);
    }
  }

  [(RTPlaceInferenceManager *)self _unRegisterForDailyMetricsNotifications];
  v8 = [(RTPlaceInferenceManager *)self visitManager];

  if (v8)
  {
    v9 = [(RTPlaceInferenceManager *)self visitManager];
    v10 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
    [v9 removeObserver:self fromNotification:v10];

    v11 = [(RTPlaceInferenceManager *)self visitManager];
    v12 = +[(RTNotification *)RTPointOfInterestMonitorVisitNotification];
    [v11 removeObserver:self fromNotification:v12];
  }

  if (v5)
  {
    v5[2](v5, 0);
  }
}

- (void)_unRegisterForDailyMetricsNotifications
{
  v4 = [(RTPlaceInferenceManager *)self locationManager];
  v3 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
  [v4 removeObserver:self fromNotification:v3];
}

- (void)fetchPlaceInferencesForOptions:(id)a3 handler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
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

    goto LABEL_11;
  }

  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = self;
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

    v7[2](v7, 0, v9);
LABEL_11:

    goto LABEL_12;
  }

  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RTPlaceInferenceManager_fetchPlaceInferencesForOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v16 = v6;
  v17 = v7;
  dispatch_async(v8, block);

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

- (id)_selectLastLocationFromLocations:(id)a3 maxHorizontalUncertainty:(double)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![v5 count])
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

  if ([v5 count])
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
    *&v10[5] = a4;
    v10[4] = buf;
    [v5 enumerateObjectsWithOptions:2 usingBlock:v10];
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

- (void)_updateCachedLocationsWithLocation:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
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
      v16 = v5;
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
    [(NSMutableArray *)cachedLocations replaceObjectAtIndex:self->_cachedLocationIndex withObject:v5];
  }

  else
  {
    [(NSMutableArray *)cachedLocations addObject:v5];
  }

  self->_cachedLocationIndex = (self->_cachedLocationIndex + 1) % 0xA;
}

- (id)_closestCachedLocationForLocation:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v27 = a3;
  if (v27)
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
          v14 = [(RTPlaceInferenceManager *)self distanceCalculator];
          v28 = v6;
          [v14 distanceFromLocation:v27 toLocation:v13 error:&v28];
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
        v38 = v27;
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

- (void)onSyncedPlaceInferences:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__RTPlaceInferenceManager_onSyncedPlaceInferences___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onSyncedPlaceInferences:(id)a3
{
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
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
  obj = v3;
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

        v11 = [(RTPlaceInferenceManager *)self learnedLocationStore];
        v12 = [v9 mapItem];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __52__RTPlaceInferenceManager__onSyncedPlaceInferences___block_invoke;
        v40[3] = &unk_2788C4AC0;
        v45 = v56;
        v44 = v46;
        v40[4] = v9;
        v41 = v36;
        v42 = self;
        v13 = v10;
        v43 = v13;
        [v11 processExternalMapItem:v12 handler:v40];

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

- (void)_onBluePOIMonitorEstimateUpdateNotification:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = objc_alloc(MEMORY[0x277D011E0]);
    v7 = [v5 locations];
    v8 = [v5 accessPoints];
    v9 = [v6 initWithFidelityPolicy:32 locations:v7 accessPoints:v8];

    v10 = [v5 inferredMapItems];
    v34 = v5;
    v11 = [v5 referenceLocation];
    v39 = 0;
    v29 = v9;
    [(RTPlaceInferenceManager *)self _savePlaceInferenceQueriesFromInferredMapItems:v10 inferenceErrorCode:-1 referenceLocation:v11 options:v9 outError:&v39];
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
    v33 = self;
    v30 = v4;
    v32 = [MEMORY[0x277CBEB18] array];
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
          v20 = [v18 mapItem];
          v21 = [v19 placeInferencePlaceTypeFromMapItem:v20 userType:0 source:0x4000];

          v22 = [(RTPlaceInferenceManager *)v33 _loiIdentifierForInferredMapItem:v18];
          v23 = objc_alloc(MEMORY[0x277D011D8]);
          v24 = [v18 mapItem];
          v25 = [v34 referenceLocation];
          [v18 confidence];
          v26 = [v23 initWithMapItem:v24 userType:0 userTypeSource:0 placeType:v21 referenceLocation:v25 confidence:v22 loiIdentifier:?];

          [v32 addObject:v26];
        }

        v15 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v15);
    }

    v27 = [[RTPlaceInferenceUpdateNotification alloc] initWithPlaceInferences:v32];
    [(RTNotifier *)v33 postNotification:v27];

    v4 = v30;
  }
}

- (void)onBluePOIMonitorEstimateUpdateNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__RTPlaceInferenceManager_onBluePOIMonitorEstimateUpdateNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)_filterLocalBluePOIMapItems:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
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

- (id)_removeCurrentPOIMapItems:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
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

- (id)_placeInferencesForOptions:(id)a3 error:(id *)a4
{
  v176[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 locations];
  v8 = [v7 count];

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

  v10 = [v6 locations];
  v11 = [v10 count];

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = NSStringFromSelector(a2);
        v14 = [v6 fidelityPolicy];
        v15 = a4;
        v16 = [MEMORY[0x277D011E0] fidelityPolicyMaskToString:{objc_msgSend(v6, "fidelityPolicy")}];
        v17 = [v6 locations];
        v18 = [v17 count];
        *buf = 138413058;
        *&buf[4] = v13;
        v169 = 2048;
        v170 = v14;
        v171 = 2112;
        v172 = v16;
        v173 = 2048;
        v174 = v18;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, fidelity policy, %lu (%@), location count, %lu", buf, 0x2Au);

        a4 = v15;
      }
    }

    v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1];
    v20 = [v6 locations];
    v131 = v19;
    v167 = v19;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v167 count:1];
    v22 = [v20 sortedArrayUsingDescriptors:v21];

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

      if (!a4)
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
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
      [v36 errorWithDomain:v37 code:7 userInfo:v25];
      *a4 = v34 = 0;
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
    if (([v6 fidelityPolicy] & 8) != 0 && (objc_msgSend(v6, "fidelityPolicy") & 2) != 0)
    {
      v24 = [(RTPlaceInferenceManager *)self _estimatedLocationFromSortedLocations:v22];

      [(RTPlaceInferenceManager *)self _updateCachedLocationsWithLocation:v24];
      v142 = v24;
    }

    if (([v6 fidelityPolicy] & 0x10) != 0)
    {
      if (([v6 fidelityPolicy] & 8) != 0 && (objc_msgSend(v6, "fidelityPolicy") & 2) == 0)
      {
        v38 = [(RTPlaceInferenceManager *)self _closestCachedLocationForLocation:v142];

        v142 = v38;
      }

      v39 = [objc_alloc(MEMORY[0x277D011D8]) initWithMapItem:0 finerGranularityMapItem:0 userType:0 userTypeSource:0 placeType:0 referenceLocation:v142 confidence:0.0 finerGranularityMapItemConfidence:0.0 loiIdentifier:0 preferredName:0];
      v25 = v39;
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

    v25 = [MEMORY[0x277CBEB18] array];
    v130 = [MEMORY[0x277CBEB18] array];
    v134 = [MEMORY[0x277CBEB18] array];
    v26 = [v22 firstObject];
    v140 = [v26 timestamp];

    v27 = [v22 lastObject];
    v139 = [v27 timestamp];

    v28 = [(RTPlaceInferenceManager *)self placeInferencesLimit];
    if ([v6 limit] >= 1)
    {
      v28 = [v6 limit];
    }

    v138 = v28;
    context = objc_autoreleasePoolPush();
    v29 = [v6 clientIdentifier];
    if (v29)
    {
      v30 = [v6 clientIdentifier];
    }

    else
    {
      v30 = @"unknown";
    }

    v125 = [[RTPlaceInferenceMetrics alloc] initWithClientIdentifier:v30 placeInferenceOptions:v6];
    v126 = v30;
    self->_clientMappingIndex = [(RTPlaceInferenceManager *)self _getMappingIndexForClientIdentifier:?];
    v40 = [(RTPlaceInferenceManager *)self _selectMapItemProvidersForOptions:v6];
    v128 = v23;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v41 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = [v6 fidelityPolicy];
        v43 = [v40 count];
        *buf = 134218240;
        *&buf[4] = v42;
        v169 = 2048;
        v170 = v43;
        _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_INFO, "fidelity policy %lu has %lu providers", buf, 0x16u);
      }
    }

    v143 = v6;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v44 = v40;
    v45 = [v44 countByEnumeratingWithState:&v158 objects:v163 count:16];
    obj = v44;
    v129 = a4;
    if (v45)
    {
      v46 = v45;
      v137 = v25;
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
            v52 = [v143 fidelityPolicy];
            v53 = [v143 accessPoints];
            v54 = [v143 clientIdentifier];
            LOBYTE(v124) = 0;
            v55 = [v51 initWithFidelityPolicy:v52 locations:v141 accessPoints:v53 distance:v142 location:v140 startDate:v139 endDate:50.0 limit:v138 useBackground:v124 clientIdentifier:v54];

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
                v63 = [v57 code];
                v156 = 0;
                [(RTPlaceInferenceManager *)self _savePlaceInferenceQueriesFromInferredMapItems:v56 inferenceErrorCode:v63 referenceLocation:v142 options:v143 outError:&v156];
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
              [v134 addObject:v57];
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
        v6 = v143;
        a4 = v129;
        v25 = v137;
LABEL_80:
        v72 = [v6 fidelityPolicy];
        v73 = [v6 fidelityPolicy] & 0x20;
        if ([v6 fidelityPolicy] & 0x40 | v73)
        {
          v74 = 1;
        }

        else
        {
          v74 = v72 == 7;
        }

        v75 = !v74;
        if ([v25 count])
        {
          v76 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v25, "count")}];
          v77 = v25;
          if ([v25 count])
          {
            v78 = 0;
            v79 = 0;
            v80 = v25;
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
                [v134 addObject:v79];
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

          v89 = [(RTPlaceInferenceManager *)self inferredMapItemFuser];
          v153 = v79;
          v88 = [v89 fusedInferredMapItemsUsingCandidates:v76 referenceLocation:v142 snapToBestKnownPlace:v75 snapToBestAoi:0 error:&v153];
          v90 = v153;

          if (v90)
          {
            [v134 addObject:v90];
          }

          v6 = v143;
          a4 = v129;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v91 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
            if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
            {
              v92 = [v77 count];
              v93 = [v88 count];
              *buf = 134218498;
              *&buf[4] = v92;
              a4 = v129;
              v169 = 2048;
              v170 = v93;
              v171 = 2112;
              v172 = v90;
              _os_log_impl(&dword_2304B3000, v91, OS_LOG_TYPE_INFO, "fusion, inferred mapitems, %lu, fused mapitems, %lu, error, %@", buf, 0x20u);
            }
          }

          v25 = v77;
        }

        else
        {
          v88 = MEMORY[0x277CBEBF8];
        }

        if ([v88 count])
        {
          v94 = [v88 firstObject];
          v95 = [v94 mapItem];

          if (v95)
          {
            goto LABEL_122;
          }
        }

        v96 = [(RTPlaceInferenceManager *)self _getFallbackMapItemProviderForOptions:v6];
        if (!v96)
        {
          goto LABEL_122;
        }

        v97 = v96;
        v98 = v88;
        v99 = a4;
        v100 = objc_alloc(MEMORY[0x277D011E0]);
        v101 = [v6 fidelityPolicy];
        v102 = [v6 accessPoints];
        v103 = [v6 clientIdentifier];
        LOBYTE(v124) = 0;
        v104 = [v100 initWithFidelityPolicy:v101 locations:v141 accessPoints:v102 distance:v142 location:v140 startDate:v139 endDate:50.0 limit:v138 useBackground:v124 clientIdentifier:v103];

        v152 = 0;
        v105 = [v97 mapItemsWithOptions:v104 error:&v152];
        v106 = v152;
        if (v106)
        {
          [v134 addObject:v106];
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

            v6 = v143;
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

        a4 = v99;
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
          v150 = v130;
          v114 = v151;
          v151[0] = v134;
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
        v146 = v130;
        v114 = v147;
        v147[0] = v134;
        v147[1] = v138;
        [v88 enumerateObjectsUsingBlock:v144];
        v108 = MEMORY[0x277CBEBF8];
LABEL_123:

        v19 = v131;
        if (([v6 fidelityPolicy] & 8) != 0 && (objc_msgSend(v6, "fidelityPolicy") & 2) == 0)
        {
          v115 = [(RTPlaceInferenceManager *)self _selectBestCandidateAndUpdateReferenceLocation:v130];
          [v130 removeAllObjects];
          if (v115)
          {
            [v130 addObject:v115];
          }
        }

        if (v132)
        {
          v116 = [[RTPlaceInferenceUpdateNotification alloc] initWithPlaceInferences:v130];
          [(RTNotifier *)self postNotification:v116];
        }

        v117 = [(RTPlaceInferenceManager *)self dailyMetrics];
        [v117 increaseCountForClientMappingIndex:LODWORD(self->_clientMappingIndex)];

        v118 = v130;
        [(RTPlaceInferenceManager *)self sendPlaceInferenceMetrics:v125 inferredMapItems:v25 fusedMapItems:v88 fallbackInferredMapItems:v108 finalPlaceInferences:v130 referenceLocation:v142];

        objc_autoreleasePoolPop(context);
        if (a4 && [v134 count] && !objc_msgSend(v130, "count"))
        {
          v119 = _RTSafeArray();
          *a4 = _RTMultiErrorCreate();

          v118 = v130;
        }

        v34 = v118;

        v23 = v128;
        goto LABEL_135;
      }

      v6 = v143;
      a4 = v129;
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

      v25 = [(RTPlaceInferenceManager *)self _removeCurrentPOIMapItems:v137];
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

  if (!a4)
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
  *a4 = v34 = 0;
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

- (BOOL)_savePlaceInferenceQueriesFromInferredMapItems:(id)a3 inferenceErrorCode:(int64_t)a4 referenceLocation:(id)a5 options:(id)a6 outError:(id *)a7
{
  v118[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v92 = a5;
  v91 = a6;
  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__3;
  v110 = __Block_byref_object_dispose__3;
  v111 = 0;
  v82 = v10;
  v81 = a7;
  if (![v10 count])
  {
    v51 = dispatch_semaphore_create(0);
    v52 = [objc_alloc(MEMORY[0x277D011D8]) initWithMapItem:0 finerGranularityMapItem:0 userType:0 userTypeSource:0 placeType:0 referenceLocation:v92 confidence:0.0 finerGranularityMapItemConfidence:0.0 loiIdentifier:0];
    v53 = objc_alloc(MEMORY[0x277D011E8]);
    v54 = [MEMORY[0x277CCAD78] UUID];
    v55 = [v92 date];
    v56 = [v91 fidelityPolicy];
    v57 = [v91 clientIdentifier];
    v58 = [v53 initWithIdentifier:v54 date:v55 errorCode:a4 fidelityPolicyMask:v56 placeInference:v52 sourceIdentifier:v57];

    v59 = [(RTPlaceInferenceManager *)self placeInferenceQueryStore];
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __128__RTPlaceInferenceManager__savePlaceInferenceQueriesFromInferredMapItems_inferenceErrorCode_referenceLocation_options_outError___block_invoke;
    v103[3] = &unk_2788C4618;
    v105 = &v106;
    v60 = v51;
    v104 = v60;
    [v59 storePlaceInferenceQuery:v58 handler:v103];

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
      v68 = [MEMORY[0x277CCACC8] callStackSymbols];
      v69 = [v68 filteredArrayUsingPredicate:v67];
      v70 = [v69 firstObject];

      [v66 submitToCoreAnalytics:v70 type:1 duration:v65];
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

        if (v81)
        {
          *v81 = v107[5];
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
  obj = v10;
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
        v16 = [v14 mapItem];
        v17 = [v15 placeInferencePlaceTypeFromMapItem:v16 userType:0 source:0x4000];

        v94 = [(RTPlaceInferenceManager *)self _loiIdentifierForInferredMapItem:v14];
        v18 = objc_alloc(MEMORY[0x277D011D8]);
        v19 = [v14 mapItem];
        [v14 confidence];
        v20 = [v18 initWithMapItem:v19 userType:0 userTypeSource:0 placeType:v17 referenceLocation:v92 confidence:v94 loiIdentifier:?];

        v21 = objc_alloc(MEMORY[0x277D011E8]);
        v22 = [MEMORY[0x277CCAD78] UUID];
        v23 = [v92 date];
        v24 = [v91 fidelityPolicy];
        v25 = [v91 clientIdentifier];
        v26 = [v21 initWithIdentifier:v22 date:v23 errorCode:a4 fidelityPolicyMask:v24 placeInference:v20 sourceIdentifier:v25];

        v27 = dispatch_semaphore_create(0);
        v28 = [(RTPlaceInferenceManager *)self placeInferenceQueryStore];
        v96[0] = MEMORY[0x277D85DD0];
        v96[1] = 3221225472;
        v96[2] = __128__RTPlaceInferenceManager__savePlaceInferenceQueriesFromInferredMapItems_inferenceErrorCode_referenceLocation_options_outError___block_invoke_234;
        v96[3] = &unk_2788C4618;
        v98 = &v106;
        v29 = v27;
        v97 = v29;
        [v28 storePlaceInferenceQuery:v26 handler:v96];

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
        v37 = [MEMORY[0x277CCACC8] callStackSymbols];
        v38 = [v37 filteredArrayUsingPredicate:v36];
        v39 = [v38 firstObject];

        [v35 submitToCoreAnalytics:v39 type:1 duration:v34];
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
          if (v81)
          {
            *v81 = v49;
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

  if (v81)
  {
    *v81 = 0;
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

- (id)_selectBestCandidateAndUpdateReferenceLocation:(id)a3
{
  v93[1] = *MEMORY[0x277D85DE8];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = a3;
  v68 = [obj countByEnumeratingWithState:&v81 objects:v92 count:16];
  if (!v68)
  {
    v61 = 0;
    v57 = 0;
    v46 = obj;
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

      v8 = [v5 loiIdentifier];
      v9 = v8 == 0;

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
        v11 = [(RTPlaceInferenceManager *)self learnedLocationStore];
        v12 = [v5 loiIdentifier];
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __74__RTPlaceInferenceManager__selectBestCandidateAndUpdateReferenceLocation___block_invoke;
        v71[3] = &unk_2788C4B58;
        v73 = &v75;
        v74 = buf;
        v13 = v10;
        v72 = v13;
        [v11 fetchLocationOfInterestWithIdentifier:v12 handler:v71];

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
          v22 = [MEMORY[0x277CCACC8] callStackSymbols];
          v23 = [v22 filteredArrayUsingPredicate:v21];
          v24 = [v23 firstObject];

          [v20 submitToCoreAnalytics:v24 type:1 duration:v19];
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
          v32 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = NSStringFromSelector(a2);
            v34 = *(*&buf[8] + 40);
            *v85 = 138412546;
            *&v85[4] = v33;
            v86 = 2112;
            v87 = v34;
            _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, error, %@", v85, 0x16u);
          }

LABEL_28:

          goto LABEL_29;
        }

        v32 = [v76[5] location];
        v35 = [v32 location];
        if ([v35 sourceAccuracy] != 2)
        {

          goto LABEL_28;
        }

        v36 = [v76[5] location];
        v37 = [v36 location];
        [v37 horizontalUncertainty];
        v39 = v38 > 40.0;

        if (v39 || ([v5 confidence], v40 <= v3))
        {
LABEL_29:
          v41 = v69;
        }

        else
        {
          v41 = v5;

          v42 = [v76[5] location];
          v43 = [v42 location];

          [v41 confidence];
          v3 = v44;
          v61 = v43;
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
    v46 = [v69 mapItem];
    v47 = [v69 finerGranularityMapItem];
    v48 = [v69 userType];
    v49 = [v69 userTypeSource];
    v50 = [v69 placeType];
    [v69 confidence];
    v52 = v51;
    [v69 finerGranularityMapItemConfidence];
    v54 = v53;
    v55 = [v69 loiIdentifier];
    v56 = [v69 preferredName];
    v57 = [v45 initWithMapItem:v46 finerGranularityMapItem:v47 userType:v48 userTypeSource:v49 placeType:v50 referenceLocation:v61 confidence:v52 finerGranularityMapItemConfidence:v54 loiIdentifier:v55 preferredName:v56];

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

- (id)_estimatedLocationFromSortedLocations:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = v4;
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
        v16 = [MEMORY[0x277CBEB38] dictionary];
        v18 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
        [v16 setObject:v18 forKey:@"kRTLocationSmootherAverageMovingSpeed"];

        v19 = MEMORY[0x277CBEC38];
        [v16 setObject:MEMORY[0x277CBEC38] forKey:@"kRTLocationSmootherEnableFallbackModel"];
        [v16 setObject:v19 forKey:@"kRTLocationSmootherPreciseLocationOnlyMode"];
        v20 = [(RTPlaceInferenceManager *)self locationManager];
        v21 = [v20 locationSmoother];
        v22 = [v5 objectAtIndexedSubscript:0];
        v23 = [v22 timestamp];
        [v23 timeIntervalSinceReferenceDate];
        v24 = [v21 estimateLocationWithLocations:v5 timestamp:v16 parameters:0 meta:?];

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

  v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locations.count", buf, 2u);
  }

  v17 = 0;
LABEL_20:

  return v17;
}

- (id)_getFallbackMapItemProviderForOptions:(id)a3
{
  v4 = a3;
  if (([v4 fidelityPolicy] & 4) != 0)
  {
    v6 = [(RTPlaceInferenceManager *)self _selectMapItemProvidersForOptions:v4 targetProvider:7];
    if ([v6 count])
    {
      v5 = [v6 firstObject];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_selectMapItemProvidersForOptions:(id)a3 targetProvider:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = [MEMORY[0x277CBEB58] set];
    v9 = [(RTPlaceInferenceManager *)self defaultsManager];
    v10 = [v9 objectForKey:@"RTDefaultsMapItemProviderDenyList"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(RTPlaceInferenceManager *)self _addMapItemProviderFromArray:v10 toSet:v8];
    }

    v11 = [MEMORY[0x277D0EB00] sharedConfiguration];
    v12 = [v11 defaultForKey:@"RTDefaultsMapItemProviderDenyList" defaultValue:MEMORY[0x277CBEBF8]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(RTPlaceInferenceManager *)self _addMapItemProviderFromArray:v12 toSet:v8];
    }

    v13 = [v6 fidelityPolicy];
    v14 = v13;
    if ((v13 & 0x20) != 0 || (v13 & 0x40) != 0)
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = [v8 containsObject:v21];

      if ((v22 & 1) == 0)
      {
        v23 = [(RTPlaceInferenceManager *)self mapItemProviders];
        v24 = [v23 objectForKeyedSubscript:&unk_28459C570];

        if (v24)
        {
          [v7 addObject:v24];
        }
      }

      goto LABEL_71;
    }

    if (a4 > 3)
    {
      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_36;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (a4 && a4 != 3)
      {
        goto LABEL_36;
      }

      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v8 containsObject:v16];

      if ((v17 & 1) == 0)
      {
        v18 = [(RTPlaceInferenceManager *)self mapItemProviders];
        v19 = [v18 objectForKeyedSubscript:&unk_28459C5A0];

        if (v19)
        {
          [v7 addObject:v19];
        }
      }

      if (a4)
      {
        goto LABEL_36;
      }
    }

    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = [v8 containsObject:v27];

    if ((v28 & 1) == 0)
    {
      v29 = [(RTPlaceInferenceManager *)self mapItemProviders];
      v30 = [v29 objectForKeyedSubscript:&unk_28459C5B8];

      if (v30)
      {
        [v7 addObject:v30];
      }
    }

    if (!a4)
    {
LABEL_32:
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = [v8 containsObject:v32];

      if ((v33 & 1) == 0)
      {
        v34 = [(RTPlaceInferenceManager *)self mapItemProviders];
        v35 = [v34 objectForKeyedSubscript:&unk_28459C5D0];

        if (v35)
        {
          [v7 addObject:v35];
        }
      }
    }

LABEL_36:
    if ((v14 & 3) != 0)
    {
      if (a4 <= 1)
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = [v8 containsObject:v37];

        if ((v38 & 1) == 0)
        {
          v39 = [(RTPlaceInferenceManager *)self mapItemProviders];
          v40 = [v39 objectForKeyedSubscript:&unk_28459C570];

          if (v40)
          {
            [v7 addObject:v40];
          }
        }
      }

      if ((a4 | 2) == 2)
      {
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = [v8 containsObject:v42];

        if ((v43 & 1) == 0)
        {
          v44 = [(RTPlaceInferenceManager *)self mapItemProviders];
          v45 = [v44 objectForKeyedSubscript:&unk_28459C588];

          if (v45)
          {
            [v7 addObject:v45];
          }
        }
      }
    }

    if ((v14 & 2) != 0)
    {
      if (a4 > 6)
      {
        if (a4 != 7)
        {
          if (a4 != 9)
          {
LABEL_70:
            [RTPlaceInferenceManager sanityCheckMapItemProviders:v7];
LABEL_71:

            goto LABEL_72;
          }

LABEL_61:
          v51 = objc_opt_class();
          v52 = NSStringFromClass(v51);
          v53 = [v8 containsObject:v52];

          if ((v53 & 1) == 0)
          {
            v54 = [(RTPlaceInferenceManager *)self mapItemProviders];
            v55 = [v54 objectForKeyedSubscript:&unk_28459C618];

            if (v55)
            {
              [v7 addObject:v55];
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
          v59 = [(RTPlaceInferenceManager *)self mapItemProviders];
          v60 = [v59 objectForKeyedSubscript:&unk_28459C600];

          if (v60)
          {
            [v7 addObject:v60];
          }
        }

        goto LABEL_70;
      }

      if (a4 && a4 != 6)
      {
        goto LABEL_70;
      }

      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = [v8 containsObject:v47];

      if ((v48 & 1) == 0)
      {
        v49 = [(RTPlaceInferenceManager *)self mapItemProviders];
        v50 = [v49 objectForKeyedSubscript:&unk_28459C5E8];

        if (v50)
        {
          [v7 addObject:v50];
        }
      }
    }

    if (a4 == 9)
    {
      goto LABEL_61;
    }

    if (a4 != 7)
    {
      if (a4)
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

  v7 = 0;
LABEL_72:

  return v7;
}

+ (void)sanityCheckMapItemProviders:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __55__RTPlaceInferenceManager_sanityCheckMapItemProviders___block_invoke;
    v4[3] = &unk_2788C4B80;
    v5 = v3;
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

- (void)_addMapItemProviderFromArray:(id)a3 toSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__RTPlaceInferenceManager__addMapItemProviderFromArray_toSet___block_invoke;
    v7[3] = &unk_2788C4BA8;
    v8 = v6;
    [v5 enumerateObjectsUsingBlock:v7];
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

- (BOOL)_learnedPlaceTypeForInferredMapItem:(id)a3 placeType:(unint64_t *)a4 placeTypeSource:(unint64_t *)a5 error:(id *)a6
{
  v10 = a3;
  if (!v10)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItem", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_19;
    }

    v16 = @"inferredMapItem";
    goto LABEL_18;
  }

  if (!a4)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeType", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_19;
    }

    v16 = @"placeType";
LABEL_18:
    _RTErrorInvalidParameterCreate(v16);
    *a6 = v11 = 0;
    goto LABEL_24;
  }

  if (!a5)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeTypeSource", buf, 2u);
    }

    if (a6)
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
  v11 = [(RTPlaceInferenceManager *)self _inferUserSpecificPlaceTypeForInferredMapItem:v10 userSpecificPlaceType:buf userSpecificPlaceTypeSource:&v22 error:&v21];
  v12 = v21;
  v13 = v12;
  if (v11)
  {
    *a4 = [RTPlaceInferenceManager learnedPlaceTypeFromUserSpecificPlaceType:*buf];
    v14 = [RTPlaceInferenceManager learnedPlaceTypeSourceFromUserSpecificPlaceTypeSource:v22];
  }

  else
  {
    if (a6)
    {
      v19 = v12;
      *a6 = v13;
    }

    v14 = 0;
    *a4 = 0;
  }

  *a5 = v14;

LABEL_24:
  return v11;
}

- (BOOL)_inferUserSpecificPlaceTypeForInferredMapItem:(id)a3 userSpecificPlaceType:(unint64_t *)a4 userSpecificPlaceTypeSource:(unint64_t *)a5 error:(id *)a6
{
  v10 = a3;
  if (!v10)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItem", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_19;
    }

    v17 = @"inferredMapItem";
    goto LABEL_18;
  }

  if (!a4)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: userSpecificPlaceType", buf, 2u);
    }

    if (!a6)
    {
      goto LABEL_19;
    }

    v17 = @"userSpecificPlaceType";
LABEL_18:
    _RTErrorInvalidParameterCreate(v17);
    *a6 = v13 = 0;
    goto LABEL_24;
  }

  if (!a5)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: userSpecificPlaceTypeSource", buf, 2u);
    }

    if (a6)
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
  v11 = [(RTPlaceInferenceManager *)self learnedLocationStore];
  v12 = [v10 mapItem];
  v22 = 0;
  v13 = [v11 placeTypeForMapItem:v12 placeType:buf placeTypeSource:&v23 error:&v22];
  v14 = v22;

  if (v13)
  {
    *a4 = [RTPlaceInferenceManager userSpecificPlaceTypeFromLearnedPlaceType:*buf];
    v15 = [RTPlaceInferenceManager userSpecificPlaceTypeSourceFromLearnedPlaceTypeSource:v23];
  }

  else
  {
    if (a6)
    {
      v20 = v14;
      *a6 = v14;
    }

    v15 = 0;
    *a4 = 0;
  }

  *a5 = v15;

LABEL_24:
  return v13;
}

- (id)_placeInferenceFromInferredMapItem:(id)a3 referenceLocation:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v11 = [(RTPlaceInferenceManager *)self _inferUserSpecificPlaceTypeForInferredMapItem:v9 userSpecificPlaceType:&v29 userSpecificPlaceTypeSource:&v28 error:&v27];
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
        v33 = v9;
        v34 = 2112;
        v35 = v12;
        _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, failed to infer user specific place type for inferredMapItem, %{sensitive}@ error, %@", buf, 0x20u);
      }

      if (a5)
      {
        v14 = v12;
        *a5 = v12;
      }

      v28 = 0;
      v29 = 0;
    }

    v15 = [(RTPlaceInferenceManager *)self _loiIdentifierForInferredMapItem:v9];
    v16 = MEMORY[0x277D011D8];
    v17 = [v9 mapItem];
    v18 = [v16 placeInferencePlaceTypeFromMapItem:v17 userType:0 source:{objc_msgSend(v9, "source")}];

    v19 = objc_alloc(MEMORY[0x277D011D8]);
    v20 = [v9 mapItem];
    v22 = v28;
    v21 = v29;
    [v9 confidence];
    v23 = [v19 initWithMapItem:v20 userType:v21 userTypeSource:v22 placeType:v18 referenceLocation:v10 confidence:v15 loiIdentifier:?];
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

- (id)_loiIdentifierForInferredMapItem:(id)a3
{
  v53[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
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
  v7 = [(RTPlaceInferenceManager *)self learnedLocationStore];
  v8 = [v5 mapItem];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __60__RTPlaceInferenceManager__loiIdentifierForInferredMapItem___block_invoke;
  v34[3] = &unk_2788C4B58;
  v36 = &v44;
  v37 = &v38;
  v9 = v6;
  v35 = v9;
  [v7 fetchLocationOfInterestWithMapItem:v8 handler:v34];

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

- (void)sendPlaceInferenceMetrics:(id)a3 inferredMapItems:(id)a4 fusedMapItems:(id)a5 fallbackInferredMapItems:(id)a6 finalPlaceInferences:(id)a7 referenceLocation:(id)a8
{
  v146 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v83 = a5;
  v15 = a6;
  v85 = a7;
  v84 = a8;
  v79 = [v15 count];
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
  [v14 enumerateObjectsUsingBlock:v102];
  v82 = v14;
  v80 = [v83 count];
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __148__RTPlaceInferenceManager_sendPlaceInferenceMetrics_inferredMapItems_fusedMapItems_fallbackInferredMapItems_finalPlaceInferences_referenceLocation___block_invoke_2;
  v97[3] = &unk_2788C4BF8;
  v97[4] = &v98;
  [v83 enumerateObjectsUsingBlock:v97];
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
  v22 = [(RTPlaceInferenceManager *)self visitStore];
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
  [v22 fetchVisitsWithOptions:v26 handler:v87];

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
  v33 = [MEMORY[0x277CCACC8] callStackSymbols];
  v34 = [v33 filteredArrayUsingPredicate:v77];
  v35 = [v34 firstObject];

  [v76 submitToCoreAnalytics:v35 type:1 duration:v32];
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

  v44 = [*(*(&buf + 1) + 40) type];
  v20 = v44 == 1;
  if (v44 == 1)
  {
    v45 = [MEMORY[0x277CBEAA8] now];
    v46 = [*(*(&buf + 1) + 40) entry];
    [v45 timeIntervalSinceDate:v46];
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

  [v13 setPlaceInferences:v85];
  [v13 setTopPersonalizedLabelsInferredMapItems:v104[5] topBluePOIInferredMapItem:v110[5]];
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v99 + 6)];
  [v13 setObject:v51 forKey:@"afterFusionCount"];

  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
  [v13 setObject:v52 forKey:@"beforeFusionCount"];

  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v50];
  [v13 setObject:v53 forKey:@"callEntryLatency"];

  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_clientMappingIndex];
  [v13 setObject:v54 forKey:@"clientIdMappingIndex"];

  v55 = [MEMORY[0x277CCABB0] numberWithInt:v110[5] != 0];
  [v13 setObject:v55 forKey:@"hasBluePOIResults"];

  v56 = [MEMORY[0x277CCABB0] numberWithBool:*(v120 + 24)];
  [v13 setObject:v56 forKey:@"hasConfidentLocalHints"];

  v57 = [MEMORY[0x277CCABB0] numberWithBool:*(v136 + 24)];
  [v13 setObject:v57 forKey:@"hasCurrentPOIResult"];

  v58 = [MEMORY[0x277CCABB0] numberWithBool:*(v132 + 24)];
  [v13 setObject:v58 forKey:@"hasLearnedPlaceInResults"];

  v59 = [MEMORY[0x277CCABB0] numberWithBool:*(v128 + 24)];
  [v13 setObject:v59 forKey:@"hasMapSupportResults"];

  v60 = [MEMORY[0x277CCABB0] numberWithBool:*(v124 + 24)];
  [v13 setObject:v60 forKey:@"hasRevGeocodeInResults"];

  v61 = [MEMORY[0x277CCABB0] numberWithBool:v80 != 0];
  [v13 setObject:v61 forKey:@"hasFusedResults"];

  v62 = [MEMORY[0x277CCABB0] numberWithBool:v79 != 0];
  [v13 setObject:v62 forKey:@"hasFallbackResults"];

  v63 = [MEMORY[0x277CCABB0] numberWithBool:v49];
  [v13 setObject:v63 forKey:@"isInVisit"];

  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v116 + 6)];
  [v13 setObject:v64 forKey:@"sourceCount"];

  if (v84 && [v85 count] && (objc_msgSend(v85, "objectAtIndexedSubscript:", 0), v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "referenceLocation"), v66 = objc_claimAutoreleasedReturnValue(), v67 = v66 == 0, v66, v65, !v67))
  {
    v68 = [(RTPlaceInferenceManager *)self distanceCalculator];
    v69 = [v85 objectAtIndexedSubscript:0];
    v70 = [v69 referenceLocation];
    v86 = 0;
    [v68 distanceFromLocation:v84 toLocation:v70 error:&v86];
    v72 = v71;

    v73 = v72;
  }

  else
  {
    v73 = -1;
  }

  v74 = [MEMORY[0x277CCABB0] numberWithInteger:v73];
  [v13 setObject:v74 forKey:@"distanceBetweenReferenceLocationAndUpdatedReferenceLocation"];

  [v13 submitMetrics];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v75 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v13;
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

- (void)_onVisitManagerVisitIncidentNotification:(id)a3
{
  v11 = a3;
  v4 = [v11 name];
  v5 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
  v6 = [v4 isEqualToString:v5];

  v7 = v11;
  if (v6)
  {
    v8 = [v11 visitIncident];
    if ([v8 type] == 1)
    {
      v9 = [v8 entry];
    }

    else
    {
      if ([v8 type] != 3)
      {
LABEL_7:

        v7 = v11;
        goto LABEL_8;
      }

      v9 = 0;
    }

    visitEntryTime = self->_visitEntryTime;
    self->_visitEntryTime = v9;

    goto LABEL_7;
  }

LABEL_8:
}

- (void)onVisitManagerVisitIncidentNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__RTPlaceInferenceManager_onVisitManagerVisitIncidentNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onPointOfInterestVisitNotification:(id)a3
{
  v11 = a3;
  v4 = [v11 name];
  v5 = +[(RTNotification *)RTPointOfInterestMonitorVisitNotification];
  v6 = [v4 isEqualToString:v5];

  v7 = v11;
  if (v6)
  {
    v8 = [v11 visit];
    if ([v8 type] == 1)
    {
      v9 = [v8 entry];
      visitEntryTime = self->_visitEntryTime;
      self->_visitEntryTime = v9;
    }

    v7 = v11;
  }
}

- (void)onPointOfInterestVisitNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__RTPlaceInferenceManager_onPointOfInterestVisitNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onDailyMetricsNotification:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, received notification, %@", &v9, 0x16u);
    }
  }

  v8 = [(RTPlaceInferenceManager *)self dailyMetrics];
  [v8 submit];
}

- (void)onDailyMetricsNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__RTPlaceInferenceManager_onDailyMetricsNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (unint64_t)_getMappingIndexForClientIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 hasSuffix:@"CoreRoutine"])
  {
    v4 = 1;
  }

  else if ([v3 hasSuffix:@"DoNotDisturb.bundle"])
  {
    v4 = 3;
  }

  else if ([v3 hasSuffix:@"Emergency SOS.bundle"])
  {
    v4 = 4;
  }

  else if ([v3 hasSuffix:@"findmy"])
  {
    v4 = 5;
  }

  else if ([v3 hasSuffix:@"GeocorrectionDLocationBundle.bundle"])
  {
    v4 = 7;
  }

  else if ([v3 hasSuffix:@"HomeKitDaemon.framework"])
  {
    v4 = 6;
  }

  else if ([v3 hasSuffix:@"CoreParsec.framework"])
  {
    v4 = 2;
  }

  else if ([v3 hasSuffix:@"VoiceMemos"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)learnedPlaceTypeFromUserSpecificPlaceType:(unint64_t)a3
{
  if (a3 - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (unint64_t)userSpecificPlaceTypeFromLearnedPlaceType:(unint64_t)a3
{
  if (a3 - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (unint64_t)userSpecificPlaceTypeFromLocationOfInterestType:(int64_t)a3
{
  if ((a3 + 1) < 5)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)learnedPlaceTypeFromLocationOfInterestType:(int64_t)a3
{
  if ((a3 + 1) < 5)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3 > 1)
  {
    (*(v9 + 2))(v9, 0);
  }

  else
  {
    v11 = [(RTPlaceInferenceManager *)self placeInferenceQueryStore];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__RTPlaceInferenceManager__performPurgeOfType_referenceDate_completion___block_invoke;
    v12[3] = &unk_2788C48C0;
    v13 = v10;
    [v11 purgePlaceInferenceQueriesPredating:v8 handler:v12];
  }
}

- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__RTPlaceInferenceManager_performPurgeOfType_referenceDate_completion___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

@end