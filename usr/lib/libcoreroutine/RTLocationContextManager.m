@interface RTLocationContextManager
- (BOOL)_clearTimerWithError:(id *)a3;
- (BOOL)_filterPlaceInference:(id)a3;
- (BOOL)_isSyncAllowedForPlaceInference:(id)a3;
- (BOOL)_isSyncAllowedForVisit:(id)a3;
- (BOOL)_postLocationContextNotificationUsingData:(id)a3 error:(id *)a4;
- (BOOL)_resetTimerWitherror:(id *)a3;
- (RTLocationContextManager)initWithAuthorizationManager:(id)a3 defaultsManager:(id)a4 distanceCalculator:(id)a5 learnedLocationManager:(id)a6 learnedLocationStore:(id)a7 locationManager:(id)a8 placeInferenceManager:(id)a9 platform:(id)a10 timerManager:(id)a11 visitManager:(id)a12 companionLinkManager:(id)a13;
- (id)_getFamIndexResultWithGranularity:(unint64_t)a3 location:(id)a4 error:(id *)a5;
- (id)_getLearnedLOIForVisit:(id)a3 error:(id *)a4;
- (id)_getPlaceInferencesAtLocation:(id)a3 error:(id *)a4;
- (void)_handleLabeledVisitEvent:(id)a3;
- (void)_handlePOIUpdateEvent:(id)a3;
- (void)_onAuthorizationNotification:(id)a3;
- (void)_onLearnedLocationManagerNotification:(id)a3;
- (void)_onLeechedLocationNotification:(id)a3;
- (void)_onVisitManagerNotification:(id)a3;
- (void)_syncPlaceInferenceAOI:(id)a3 placeInferencePOI:(id)a4;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)onAuthorizationNotification:(id)a3;
- (void)onLearnedLocationManagerNotification:(id)a3;
- (void)onLeechedLocationNotification:(id)a3;
- (void)onVisitManagerNotification:(id)a3;
- (void)setLocationContextMonitoringEnabled:(BOOL)a3;
@end

@implementation RTLocationContextManager

- (RTLocationContextManager)initWithAuthorizationManager:(id)a3 defaultsManager:(id)a4 distanceCalculator:(id)a5 learnedLocationManager:(id)a6 learnedLocationStore:(id)a7 locationManager:(id)a8 placeInferenceManager:(id)a9 platform:(id)a10 timerManager:(id)a11 visitManager:(id)a12 companionLinkManager:(id)a13
{
  v18 = a3;
  v46 = a4;
  v19 = a4;
  v47 = a5;
  v52 = a5;
  v48 = a6;
  v20 = a6;
  v49 = a7;
  v21 = a7;
  v50 = a8;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v53 = v18;
  v51 = v27;
  if (v18)
  {
    v28 = v19;
    if (v19)
    {
      v29 = v52;
      if (v52)
      {
        if (v20)
        {
          if (v21)
          {
            if (v22)
            {
              if (v23)
              {
                if (v24)
                {
                  if (v25)
                  {
                    if (v26)
                    {
                      if (v27)
                      {
                        v55.receiver = self;
                        v55.super_class = RTLocationContextManager;
                        v30 = [(RTNotifier *)&v55 init];
                        v31 = v30;
                        if (v30)
                        {
                          objc_storeStrong(&v30->_authorizationManager, a3);
                          objc_storeStrong(&v31->_defaultsManager, v46);
                          objc_storeStrong(&v31->_distanceCalculator, v47);
                          objc_storeStrong(&v31->_learnedLocationManager, v48);
                          objc_storeStrong(&v31->_learnedLocationStore, v49);
                          objc_storeStrong(&v31->_locationManager, v50);
                          objc_storeStrong(&v31->_placeInferenceManager, a9);
                          objc_storeStrong(&v31->_platform, a10);
                          objc_storeStrong(&v31->_timerManager, a11);
                          objc_storeStrong(&v31->_visitManager, a12);
                          objc_storeStrong(&v31->_companionLinkManager, a13);
                          v31->_locationContextMonitoringEnabled = 0;
                          v31->_inLowConfidenceVisit = 0;
                          v31->_inHighConfidenceVisit = 0;
                          lastPublishedLocation = v31->_lastPublishedLocation;
                          v31->_lastPublishedLocation = 0;

                          latestValidLocation = v31->_latestValidLocation;
                          v31->_latestValidLocation = 0;

                          lastPublishedPlaceInference = v31->_lastPublishedPlaceInference;
                          v31->_lastPublishedPlaceInference = 0;

                          timer = v31->_timer;
                          v31->_timer = 0;

                          v36 = [MEMORY[0x277CBEAA8] distantPast];
                          aoiSyncDate = v31->_aoiSyncDate;
                          v31->_aoiSyncDate = v36;

                          v38 = [MEMORY[0x277CBEAA8] distantPast];
                          poiSyncDate = v31->_poiSyncDate;
                          v31->_poiSyncDate = v38;

                          [(RTService *)v31 setup];
                        }

                        v40 = v31;
                        self = v40;
                        goto LABEL_40;
                      }

                      v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        v43 = "Invalid parameter not satisfying: companionLinkManager";
                        goto LABEL_38;
                      }

LABEL_39:

                      v40 = 0;
                      goto LABEL_40;
                    }

                    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_39;
                    }

                    *buf = 0;
                    v43 = "Invalid parameter not satisfying: visitManager";
                  }

                  else
                  {
                    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_39;
                    }

                    *buf = 0;
                    v43 = "Invalid parameter not satisfying: timerManager";
                  }
                }

                else
                {
                  v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_39;
                  }

                  *buf = 0;
                  v43 = "Invalid parameter not satisfying: platform";
                }
              }

              else
              {
                v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_39;
                }

                *buf = 0;
                v43 = "Invalid parameter not satisfying: placeInferenceManager";
              }
            }

            else
            {
              v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_39;
              }

              *buf = 0;
              v43 = "Invalid parameter not satisfying: locationManager";
            }
          }

          else
          {
            v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }

            *buf = 0;
            v43 = "Invalid parameter not satisfying: learnedLocationStore";
          }
        }

        else
        {
          v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_39;
          }

          *buf = 0;
          v43 = "Invalid parameter not satisfying: learnedLocationManager";
        }
      }

      else
      {
        v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        *buf = 0;
        v43 = "Invalid parameter not satisfying: distanceCalculator";
      }
    }

    else
    {
      v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v29 = v52;
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 0;
      v43 = "Invalid parameter not satisfying: defaultsManager";
    }

LABEL_38:
    _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, v43, buf, 2u);
    goto LABEL_39;
  }

  v28 = v19;
  v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
  }

  v40 = 0;
  v29 = v52;
LABEL_40:

  return v40;
}

- (void)_handleLabeledVisitEvent:(id)a3
{
  v81[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v71 = "[RTLocationContextManager _handleLabeledVisitEvent:]";
      v72 = 1024;
      LODWORD(v73) = 182;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit (in %s:%d)", buf, 0x12u);
    }
  }

  v7 = [(RTLocationContextManager *)self companionLinkManager];
  v8 = [v7 dailyBlueSkyMetrics];
  [v8 increaseCountForKey:@"BlueSkyDailyNumVisitsReceived"];

  if ([v5 type] == 3)
  {
    v9 = objc_alloc(MEMORY[0x277D011D8]);
    v10 = [v5 location];
    v11 = [v9 initWithMapItem:0 finerGranularityMapItem:0 userType:0 userTypeSource:0 placeType:0 referenceLocation:v10 confidence:0.0 finerGranularityMapItemConfidence:0.0 loiIdentifier:0 preferredName:0];

    v69 = 0;
    v67 = [(RTLocationContextManager *)self _postLocationContextNotificationUsingData:v11 error:&v69];
    v12 = v69;
    goto LABEL_30;
  }

  v13 = [v5 placeInference];
  v14 = [v13 finerGranularityMapItem];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277D011D8]);
    v16 = [v13 finerGranularityMapItem];
    v17 = [v13 userType];
    v18 = [v13 userTypeSource];
    [v5 location];
    v20 = v19 = a2;
    [v13 finerGranularityMapItemConfidence];
    v11 = [v15 initWithMapItem:v16 finerGranularityMapItem:0 userType:v17 userTypeSource:v18 placeType:3 referenceLocation:v20 confidence:0 finerGranularityMapItemConfidence:0 loiIdentifier:? preferredName:?];

    a2 = v19;
    v81[0] = v11;
    v81[1] = v13;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
  }

  else
  {
    v80 = v13;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
    v11 = 0;
  }

  v22 = [(RTLocationContextManager *)self placeInferenceManager];
  [v22 onSyncedPlaceInferences:v21];

  v68 = 0;
  v65 = v21;
  v67 = [(RTLocationContextManager *)self _postLocationContextNotificationUsingData:v21 error:&v68];
  v12 = v68;
  v23 = [(RTLocationContextManager *)self visitManager];
  v24 = [v5 location];
  [v23 injectSyncedVisitLocation:v24];

  v25 = [v13 mapItem];

  v26 = MEMORY[0x277D0E830];
  v66 = v12;
  if (!v25)
  {
    goto LABEL_21;
  }

  v27 = [v13 mapItem];
  v28 = [v27 mapItemPlaceType];

  if (v28 == 1)
  {
    v29 = @"BlueSkyDailyNumAOILabels";
LABEL_15:
    v32 = [(RTLocationContextManager *)self companionLinkManager];
    v33 = [v32 dailyBlueSkyMetrics];
    [v33 increaseCountForKey:v29];

    goto LABEL_16;
  }

  v30 = [v13 mapItem];
  v31 = [v30 mapItemPlaceType];

  if (v31 == 2)
  {
    v29 = @"BlueSkyDailyNumPOILabels";
    goto LABEL_15;
  }

LABEL_16:
  v34 = [v13 mapItem];
  v35 = [v34 category];
  v26 = MEMORY[0x277D0E830];
  if ([v35 isEqualToString:*MEMORY[0x277D0E830]])
  {
LABEL_19:

    v12 = v66;
LABEL_20:
    v38 = [(RTLocationContextManager *)self companionLinkManager];
    v39 = [v38 dailyBlueSkyMetrics];
    [v39 increaseCountForKey:@"BlueSkyDailyNumCategoriesOfInterest"];

    goto LABEL_21;
  }

  v36 = [v13 mapItem];
  v37 = [v36 category];
  if ([v37 isEqualToString:*MEMORY[0x277D0E990]])
  {

    v26 = MEMORY[0x277D0E830];
    goto LABEL_19;
  }

  v57 = [v13 mapItem];
  [v57 category];
  v58 = v63 = a2;
  v61 = [v58 isEqualToString:*MEMORY[0x277D0E898]];

  a2 = v63;
  v12 = v66;
  v26 = MEMORY[0x277D0E830];
  if (v61)
  {
    goto LABEL_20;
  }

LABEL_21:
  v40 = [v13 finerGranularityMapItem];

  if (v40)
  {
    v41 = [v13 finerGranularityMapItem];
    v42 = [v41 mapItemPlaceType];

    if (v42 == 2)
    {
      v43 = [(RTLocationContextManager *)self companionLinkManager];
      v44 = [v43 dailyBlueSkyMetrics];
      [v44 increaseCountForKey:@"BlueSkyDailyNumPOILabels"];
    }

    v45 = [v13 mapItem];
    v46 = [v45 category];
    if (([v46 isEqualToString:*v26] & 1) == 0)
    {
      v47 = [v13 mapItem];
      v48 = [v47 category];
      if (([v48 isEqualToString:*MEMORY[0x277D0E990]] & 1) == 0)
      {
        v59 = [v13 mapItem];
        [v59 category];
        v60 = v64 = a2;
        v62 = [v60 isEqualToString:*MEMORY[0x277D0E898]];

        a2 = v64;
        v12 = v66;
        if ((v62 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    v12 = v66;
LABEL_28:
    v49 = [(RTLocationContextManager *)self companionLinkManager];
    v50 = [v49 dailyBlueSkyMetrics];
    [v50 increaseCountForKey:@"BlueSkyDailyNumCategoriesOfInterest"];
  }

LABEL_29:

LABEL_30:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v51 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      v54 = NSStringFromSelector(a2);
      v55 = v54;
      *buf = 138413315;
      v56 = @"NO";
      v71 = v53;
      v72 = 2112;
      if (v67)
      {
        v56 = @"YES";
      }

      v73 = v54;
      v74 = 2117;
      v75 = v5;
      v76 = 2112;
      v77 = v56;
      v78 = 2112;
      v79 = v12;
      _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_INFO, "%@, %@, Received visit event from companion link, %{sensitive}@, publish status, %@, error, %@", buf, 0x34u);
    }
  }
}

- (void)_handlePOIUpdateEvent:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    aSelector = a2;
    v6 = [(RTLocationContextManager *)self companionLinkManager];
    v7 = [v6 dailyBlueSkyMetrics];
    [v7 increaseCountForKey:@"BlueSkyDailyNumPlaceInferencesReceived"];

    v44 = 0;
    v36 = [(RTLocationContextManager *)self _postLocationContextNotificationUsingData:v5 error:&v44];
    v38 = v5;
    v39 = v44;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v53 count:16];
    v10 = self;
    if (v9)
    {
      v11 = v9;
      v12 = *v41;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v40 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v31 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v33 = objc_opt_class();
              v34 = NSStringFromClass(v33);
              v35 = NSStringFromSelector(aSelector);
              *buf = 138412546;
              v46 = v34;
              v47 = 2112;
              v48 = v35;
              _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@, %@, unexpected non-place inference in POI update", buf, 0x16u);
            }

            v5 = v38;
            v25 = v39;
            v24 = v8;
            goto LABEL_25;
          }

          v15 = v14;
          v16 = [v15 mapItem];
          v17 = [v16 mapItemPlaceType];

          v18 = @"BlueSkyDailyNumAOILabels";
          if (v17 == 1 || ([v15 mapItem], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "mapItemPlaceType"), v19, v18 = @"BlueSkyDailyNumPOILabels", v20 == 2))
          {
            v21 = [(RTLocationContextManager *)self companionLinkManager];
            v22 = [v21 dailyBlueSkyMetrics];
            [v22 increaseCountForKey:v18];

            self = v10;
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v40 objects:v53 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v23 = [(RTLocationContextManager *)self placeInferenceManager];
    [v23 onSyncedPlaceInferences:v8];

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = v38;
      v25 = v39;
      goto LABEL_26;
    }

    v24 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    v25 = v39;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(aSelector);
      v29 = v28;
      v30 = @"NO";
      *buf = 138413058;
      v46 = v27;
      v47 = 2112;
      if (v36)
      {
        v30 = @"YES";
      }

      v48 = v28;
      v49 = 2112;
      v50 = v30;
      v51 = 2112;
      v52 = v39;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, %@, Received POI update event from companion link, post status, %@, error, %@", buf, 0x2Au);
    }

    v5 = v38;
  }

  else
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "[RTLocationContextManager _handlePOIUpdateEvent:]";
      v47 = 1024;
      LODWORD(v48) = 260;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: event (in %s:%d)", buf, 0x12u);
    }

    v25 = [(RTLocationContextManager *)self companionLinkManager];
    v24 = [v25 dailyBlueSkyMetrics];
    [v24 increaseCountForKey:@"BlueSkyDailyNumPlaceInferencesReceived"];
  }

LABEL_25:

LABEL_26:
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (_os_feature_enabled_impl())
  {
    v7 = +[(RTNotification *)RTLocationContextManagerPlaceInferencesNotification];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      [(RTLocationContextManager *)self setLocationContextMonitoringEnabled:[(RTNotifier *)self getNumberOfObservers:v6]!= 0];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v14, 0xCu);
      }
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@, %@, feature not enabled", &v14, 0x16u);
    }
  }
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = +[(RTNotification *)RTLocationContextManagerPlaceInferencesNotification];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    [(RTLocationContextManager *)self setLocationContextMonitoringEnabled:[(RTNotifier *)self getNumberOfObservers:v5]!= 0];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v9, 0xCu);
    }
  }
}

- (void)onAuthorizationNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__RTLocationContextManager_onAuthorizationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onAuthorizationNotification:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[RTLocationContextManager setRoutineEnabled:](self, "setRoutineEnabled:", [v5 enabled]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(RTLocationContextManager *)self routineEnabled];
        v8 = @"NO";
        if (v7)
        {
          v8 = @"YES";
        }

        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Updated routine enabled %@", &v11, 0xCu);
      }

LABEL_10:
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      v10 = [v5 name];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, unhandled notification, %@", &v11, 0x16u);
    }

    goto LABEL_10;
  }
}

- (void)onLearnedLocationManagerNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__RTLocationContextManager_onLearnedLocationManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onLearnedLocationManagerNotification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        v10 = [v5 available];
        v11 = @"NO";
        v12 = 138412802;
        v13 = v8;
        v14 = 2112;
        if (v10)
        {
          v11 = @"YES";
        }

        v15 = v9;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, learned location manager available, %@", &v12, 0x20u);
      }
    }
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412802;
      v13 = v4;
      v14 = 2080;
      v15 = "[RTLocationContextManager _onLearnedLocationManagerNotification:]";
      v16 = 1024;
      LODWORD(v17) = 394;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", &v12, 0x1Cu);
    }
  }
}

- (void)onVisitManagerNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__RTLocationContextManager_onVisitManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onVisitManagerNotification:(id)a3
{
  v131 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 visitIncident];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(a2);
        *buf = 138412802;
        v122 = v10;
        v123 = 2112;
        v124 = v11;
        v125 = 2112;
        v126 = v7;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, received visit notification, %@", buf, 0x20u);
      }
    }

    if ([(__CFString *)v7 type]!= 1 || [(RTLocationContextManager *)self inHighConfidenceVisit]|| [(RTLocationContextManager *)self inLowConfidenceVisit])
    {
      if ([(__CFString *)v7 type]!= 3 || [(RTLocationContextManager *)self inHighConfidenceVisit])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = objc_opt_class();
            aSelector = NSStringFromClass(v13);
            v14 = NSStringFromSelector(a2);
            v15 = [MEMORY[0x277D01428] stringFromVisitIncidentType:{-[__CFString type](v7, "type")}];
            v16 = v6;
            if ([(RTLocationContextManager *)self inLowConfidenceVisit])
            {
              v17 = @"YES";
            }

            else
            {
              v17 = @"NO";
            }

            v18 = [(RTLocationContextManager *)self inHighConfidenceVisit];
            *buf = 138413314;
            if (v18)
            {
              v19 = @"YES";
            }

            else
            {
              v19 = @"NO";
            }

LABEL_94:
            v6 = v16;
            v122 = aSelector;
            v123 = 2112;
            v124 = v14;
            v125 = 2112;
            v126 = v15;
            v127 = 2112;
            v128 = v17;
            v129 = 2112;
            v130 = v19;
            _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, invalid state, visit type, %@, in low confidence visit, %@, in high confidence visit, %@", buf, 0x34u);

            goto LABEL_112;
          }

          goto LABEL_112;
        }

        goto LABEL_113;
      }

      v82 = 0;
    }

    else
    {
      v82 = 1;
    }

    [(RTLocationContextManager *)self setInLowConfidenceVisit:v82];
    [(RTLocationContextManager *)self setInHighConfidenceVisit:0];
    v119 = 0;
    v85 = [(RTLocationContextManager *)self _postLocationContextNotificationUsingData:v7 error:&v119];
    v12 = v119;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v86 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
      {
        v87 = objc_opt_class();
        v88 = NSStringFromClass(v87);
        v89 = a2;
        v90 = v88;
        v91 = NSStringFromSelector(v89);
        v92 = v91;
        v93 = @"NO";
        *buf = 138413058;
        v122 = v90;
        v123 = 2112;
        if (v85)
        {
          v93 = @"YES";
        }

        v124 = v91;
        v125 = 2112;
        v126 = v93;
        v127 = 2112;
        v128 = v12;
        _os_log_impl(&dword_2304B3000, v86, OS_LOG_TYPE_INFO, "%@, %@, publish place inference status, %@, error, %@", buf, 0x2Au);
      }
    }

    goto LABEL_112;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 visitIncident];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(a2);
        *buf = 138412802;
        v122 = v22;
        v123 = 2112;
        v124 = v23;
        v125 = 2112;
        v126 = v7;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, %@, received visit notification, %@", buf, 0x20u);
      }
    }

    if ([(__CFString *)v7 type]== 1 && ![(RTLocationContextManager *)self inHighConfidenceVisit])
    {
      v24 = 1;
    }

    else
    {
      if ([(__CFString *)v7 type]!= 3)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v83 = objc_opt_class();
            aSelector = NSStringFromClass(v83);
            v14 = NSStringFromSelector(a2);
            v15 = [MEMORY[0x277D01428] stringFromVisitIncidentType:{-[__CFString type](v7, "type")}];
            v16 = v6;
            if ([(RTLocationContextManager *)self inLowConfidenceVisit])
            {
              v17 = @"YES";
            }

            else
            {
              v17 = @"NO";
            }

            v84 = [(RTLocationContextManager *)self inHighConfidenceVisit];
            *buf = 138413314;
            if (v84)
            {
              v19 = @"YES";
            }

            else
            {
              v19 = @"NO";
            }

            goto LABEL_94;
          }

LABEL_112:
        }

LABEL_113:

        goto LABEL_114;
      }

      v24 = 0;
    }

    [(RTLocationContextManager *)self setInHighConfidenceVisit:v24];
    [(RTLocationContextManager *)self setInLowConfidenceVisit:0];
    v118 = 0;
    v94 = [(RTLocationContextManager *)self _postLocationContextNotificationUsingData:v7 error:&v118];
    v12 = v118;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v95 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
      {
        v96 = objc_opt_class();
        v97 = NSStringFromClass(v96);
        v98 = a2;
        v99 = v97;
        v100 = NSStringFromSelector(v98);
        v101 = self;
        v102 = v100;
        v103 = @"NO";
        *buf = 138413058;
        v122 = v99;
        v123 = 2112;
        if (v94)
        {
          v103 = @"YES";
        }

        v124 = v100;
        v125 = 2112;
        v126 = v103;
        v127 = 2112;
        v128 = v12;
        _os_log_impl(&dword_2304B3000, v95, OS_LOG_TYPE_INFO, "%@, %@, publish inside visit place inference status, %@, error, %@", buf, 0x2Au);

        self = v101;
      }
    }

    if (_os_feature_enabled_impl() && [(RTLocationContextManager *)self _isSyncAllowedForVisit:v7])
    {
      v104 = [(RTLocationContextManager *)self companionLinkManager];
      v116[0] = MEMORY[0x277D85DD0];
      v116[1] = 3221225472;
      v116[2] = __56__RTLocationContextManager__onVisitManagerNotification___block_invoke;
      v116[3] = &unk_2788C9890;
      v117 = v7;
      [v104 sendEvent:v117 identifier:@"labeledVisit" handler:v116];
    }

    goto LABEL_112;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 placeInference];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = NSStringFromSelector(a2);
        *buf = 138412802;
        v122 = v27;
        v123 = 2112;
        v124 = v28;
        v125 = 2112;
        v126 = v7;
        _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, %@, received POI update notification, %@", buf, 0x20u);
      }
    }

    v115 = 0;
    v29 = [(RTLocationContextManager *)self _postLocationContextNotificationUsingData:v7 error:&v115];
    v12 = v115;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = a2;
        v34 = v32;
        v35 = NSStringFromSelector(v33);
        v36 = self;
        v37 = v35;
        v38 = @"NO";
        *buf = 138413058;
        v122 = v34;
        v123 = 2112;
        if (v29)
        {
          v38 = @"YES";
        }

        v124 = v35;
        v125 = 2112;
        v126 = v38;
        v127 = 2112;
        v128 = v12;
        _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@, %@, publish inside visit POI status, %@, error, %@", buf, 0x2Au);

        self = v36;
      }
    }

    [(RTLocationContextManager *)self _syncPlaceInferenceAOI:0 placeInferencePOI:v7];
    goto LABEL_112;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v5;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v40 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = NSStringFromSelector(a2);
        *buf = 138412802;
        v122 = v42;
        v123 = 2112;
        v124 = v43;
        v125 = 2112;
        v126 = v39;
        _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "%@, %@, received place inference update notification, %@", buf, 0x20u);
      }
    }

    v44 = [(__CFString *)v39 placeInferences];
    v45 = [v44 count];

    aSelectora = a2;
    if (v45)
    {
      v46 = [(__CFString *)v39 placeInferences];
      v114 = 0;
      v47 = [(RTLocationContextManager *)self _postLocationContextNotificationUsingData:v46 error:&v114];
      v48 = v114;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v49 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = objc_opt_class();
          v51 = NSStringFromClass(v50);
          v52 = NSStringFromSelector(a2);
          v53 = v52;
          v54 = @"NO";
          *buf = 138413058;
          v122 = v51;
          v123 = 2112;
          if (v47)
          {
            v54 = @"YES";
          }

          v124 = v52;
          v125 = 2112;
          v126 = v54;
          v127 = 2112;
          v128 = v48;
          _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "%@, %@, place inferences update, publish status, %@, error, %@", buf, 0x2Au);
        }
      }
    }

    v105 = self;
    v106 = v39;
    v107 = v5;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v55 = [(__CFString *)v39 placeInferences];
    v56 = [v55 countByEnumeratingWithState:&v110 objects:v120 count:16];
    if (!v56)
    {
      v58 = 0;
      v59 = 0;
      goto LABEL_118;
    }

    v57 = v56;
    v58 = 0;
    v59 = 0;
    v60 = *v111;
    v61 = MEMORY[0x277D86220];
    while (1)
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v111 != v60)
        {
          objc_enumerationMutation(v55);
        }

        v63 = *(*(&v110 + 1) + 8 * i);
        v64 = [v63 mapItem];
        if (!v64)
        {
          continue;
        }

        v65 = v64;
        [v63 confidence];
        v67 = v66;

        if (v67 < 0.5)
        {
          continue;
        }

        v68 = [v63 mapItem];
        if ([v68 mapItemPlaceType]!= 1)
        {
          v73 = v59;
LABEL_69:

          goto LABEL_70;
        }

        if (v59)
        {
          [v63 confidence];
          v70 = v69;
          [v59 confidence];
          v72 = v71;

          if (v70 <= v72)
          {
            goto LABEL_71;
          }
        }

        else
        {
        }

        v73 = v63;

        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          v68 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            v80 = NSStringFromSelector(aSelectora);
            *buf = 138412547;
            v122 = v80;
            v123 = 2117;
            v124 = v73;
            _os_log_debug_impl(&dword_2304B3000, v68, OS_LOG_TYPE_DEBUG, "%@, highest confidence AOI, highConfidencePlaceInferenceAOI, %{sensitive}@", buf, 0x16u);
          }

          goto LABEL_69;
        }

LABEL_70:
        v59 = v73;
LABEL_71:
        v74 = [v63 mapItem];
        if ([v74 mapItemPlaceType]!= 2)
        {
          v79 = v58;
          goto LABEL_80;
        }

        if (!v58)
        {

LABEL_77:
          v79 = v63;

          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            v74 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
            {
              v81 = NSStringFromSelector(aSelectora);
              *buf = 138412547;
              v122 = v81;
              v123 = 2117;
              v124 = v79;
              _os_log_debug_impl(&dword_2304B3000, v74, OS_LOG_TYPE_DEBUG, "%@, highest confidence POI, highConfidencePlaceInferencePOI, %{sensitive}@", buf, 0x16u);
            }

LABEL_80:
          }

          v58 = v79;
          continue;
        }

        [v63 confidence];
        v76 = v75;
        [v58 confidence];
        v78 = v77;

        if (v76 > v78)
        {
          goto LABEL_77;
        }
      }

      v57 = [v55 countByEnumeratingWithState:&v110 objects:v120 count:16];
      if (!v57)
      {
LABEL_118:

        [(RTLocationContextManager *)v105 _syncPlaceInferenceAOI:v59 placeInferencePOI:v58];
        v6 = v106;
        v5 = v107;
        goto LABEL_114;
      }
    }
  }

  v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v122 = v5;
    v123 = 2080;
    v124 = "[RTLocationContextManager _onVisitManagerNotification:]";
    v125 = 1024;
    LODWORD(v126) = 605;
    _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", buf, 0x1Cu);
  }

LABEL_114:
}

void __56__RTLocationContextManager__onVisitManagerNotification___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"failure";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"success";
    }

    v7 = 138740227;
    v8 = v6;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "send visit entry event %{sensitive}@ over companion link, %@", &v7, 0x16u);
  }
}

- (void)_syncPlaceInferenceAOI:(id)a3 placeInferencePOI:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (_os_feature_enabled_impl() && (v7 && [(RTLocationContextManager *)self _isSyncAllowedForPlaceInference:v7]|| v8 && [(RTLocationContextManager *)self _isSyncAllowedForPlaceInference:v8]))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@, sync allowed", buf, 0xCu);
    }

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = v11;
    if (v8)
    {
      [v11 addObject:v8];
    }

    if (v7)
    {
      [v12 addObject:v7];
    }

    v13 = [MEMORY[0x277CBEA60] arrayWithArray:v12];
    v14 = [(RTLocationContextManager *)self companionLinkManager];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__RTLocationContextManager__syncPlaceInferenceAOI_placeInferencePOI___block_invoke;
    v16[3] = &unk_2788CF7D0;
    v17 = v12;
    v18 = v7;
    v19 = self;
    v20 = v8;
    v15 = v12;
    [v14 sendEvent:v13 identifier:@"POIArrayUpdate" handler:v16];

    goto LABEL_15;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 138412290;
    v22 = v15;
    _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "%@, sync blocked", buf, 0xCu);
LABEL_15:
  }
}

void __69__RTLocationContextManager__syncPlaceInferenceAOI_placeInferencePOI___block_invoke(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = MEMORY[0x277D86220];
      v6 = *v21;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            v9 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
            {
              v10 = [v8 mapItem];
              v11 = [v10 mapItemPlaceType];
              *buf = 138740483;
              v12 = @"POI";
              if (v11 == 1)
              {
                v12 = @"AOI";
              }

              v25 = v8;
              v26 = 2112;
              v27 = v12;
              v28 = 2112;
              v29 = @"success";
              _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "sent place inference %{sensitive}@, (%@), over companion link, %@", buf, 0x20u);
            }
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v4);
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = [v13 mapItem];
      [*(a1 + 48) setLastSyncedAOIMapItem:v14];

      v15 = [MEMORY[0x277CBEAA8] now];
      [*(a1 + 48) setAoiSyncDate:v15];
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      v17 = [v16 mapItem];
      [*(a1 + 48) setLastSyncedPOIMapItem:v17];

      v18 = [MEMORY[0x277CBEAA8] now];
      [*(a1 + 48) setPoiSyncDate:v18];
    }
  }
}

- (BOOL)_filterPlaceInference:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[RTLocationContextManager _filterPlaceInference:]";
      v13 = 1024;
      v14 = 657;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeInference (in %s:%d)", &v11, 0x12u);
    }
  }

  if ([v3 userType] == 1 || objc_msgSend(v3, "userType") == 2)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 mapItem];
    v7 = [v6 category];
    if (v7)
    {
      v8 = [v3 mapItem];
      if ([v8 mapItemPlaceType] == 1)
      {
        v5 = 0;
      }

      else
      {
        v9 = [v3 mapItem];
        v5 = [v9 mapItemPlaceType] != 2;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)_isSyncAllowedForVisit:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v63 = "[RTLocationContextManager _isSyncAllowedForVisit:]";
      v64 = 1024;
      *v65 = 672;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit (in %s:%d)", buf, 0x12u);
    }
  }

  if ([v5 type] != 1)
  {
    if ([v5 type] == 3)
    {
      goto LABEL_12;
    }

    v13 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v14 = NSStringFromSelector(a2);
    v39 = [v5 type];
    *buf = 138412546;
    v63 = v14;
    v64 = 1024;
    *v65 = v39;
    v36 = "%@, sync blocked, visit type: %d";
    v37 = v13;
    v38 = 18;
LABEL_22:
    _os_log_impl(&dword_2304B3000, v37, OS_LOG_TYPE_DEFAULT, v36, buf, v38);
    goto LABEL_23;
  }

  v7 = [v5 placeInference];
  if (!v7 || (v8 = v7, [v5 placeInference], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "mapItem"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, !v10))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v14 = NSStringFromSelector(a2);
    *buf = 138412290;
    v63 = v14;
    v36 = "%@, sync blocked, No place inference for visit";
    v37 = v13;
    v38 = 12;
    goto LABEL_22;
  }

  v11 = [v5 placeInference];
  v12 = [(RTLocationContextManager *)self _filterPlaceInference:v11];

  if (v12)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      v15 = [v5 type];
      v16 = [v5 placeInference];
      v17 = [v16 userType];
      v18 = [v5 placeInference];
      v19 = [v18 mapItem];
      v20 = [v19 category];
      *buf = 138413058;
      v63 = v14;
      v64 = 1024;
      *v65 = v15;
      *&v65[4] = 2048;
      *&v65[6] = v17;
      *&v65[14] = 2112;
      *&v65[16] = v20;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEFAULT, "%@, sync blocked, visit type: %d, place inference user type: %lu, category: %@", buf, 0x26u);

LABEL_23:
    }

LABEL_24:
    v40 = 0;
    goto LABEL_42;
  }

LABEL_12:
  v21 = objc_opt_new();
  v22 = [(RTLocationContextManager *)self defaultsManager];
  v23 = [v22 objectForKey:@"RTDefaultsLocationContextManagerSyncDates"];

  v24 = MEMORY[0x277CBEB98];
  v25 = objc_opt_class();
  [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  v55 = v61 = 0;
  v56 = v23;
  v26 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:? fromData:? error:?];
  v27 = 0;
  if (v27)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v63 = v27;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "error while decoding visit sync dates, %@", buf, 0xCu);
    }
  }

  v53 = v27;
  v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __51__RTLocationContextManager__isSyncAllowedForVisit___block_invoke;
  v58[3] = &unk_2788CF7F8;
  v30 = v29;
  v59 = v30;
  v13 = v21;
  v60 = v13;
  v54 = v26;
  [v26 enumerateObjectsUsingBlock:v58];
  v31 = [(RTLocationContextManager *)self defaultsManager];
  v32 = [v31 objectForKey:@"RTDefaultsLocationContextManagerMaxDailySyncCount"];

  if (v32)
  {
    v33 = [(RTLocationContextManager *)self defaultsManager];
    v34 = [v33 objectForKey:@"RTDefaultsLocationContextManagerMaxDailySyncCount"];
    v35 = [v34 unsignedIntegerValue];
  }

  else
  {
    v35 = 200;
  }

  v41 = [v13 count];
  v40 = v41 < v35;
  if (v41 >= v35)
  {
    v43 = [(RTLocationContextManager *)self companionLinkManager];
    v44 = [v43 dailyBlueSkyMetrics];
    [v44 increaseCountForKey:@"BlueSkyDailyQualifiedVisitsOverLimit"];
    goto LABEL_31;
  }

  v42 = [MEMORY[0x277CBEAA8] now];
  [v13 addObject:v42];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v43 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
LABEL_32:

      goto LABEL_33;
    }

    v44 = NSStringFromSelector(a2);
    v45 = [v13 count];
    *buf = 138412802;
    v63 = v44;
    v64 = 2048;
    *v65 = v45;
    *&v65[8] = 2048;
    *&v65[10] = v35;
    _os_log_debug_impl(&dword_2304B3000, v43, OS_LOG_TYPE_DEBUG, "%@, sync allowed, current count %lu < max%lu", buf, 0x20u);
LABEL_31:

    goto LABEL_32;
  }

LABEL_33:
  v46 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = NSStringFromSelector(a2);
    if (v41 >= v35)
    {
      v48 = @"blocked";
    }

    else
    {
      v48 = @"allowed";
    }

    v49 = [v13 count];
    *buf = 138413058;
    v63 = v47;
    v64 = 2112;
    *v65 = v48;
    *&v65[8] = 2048;
    *&v65[10] = v49 - 1;
    *&v65[18] = 2048;
    *&v65[20] = v35;
    _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_DEFAULT, "%@, sync %@, count %lu, max daily %lu", buf, 0x2Au);
  }

  v57 = 0;
  v50 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v57];
  if (v41 < v35 && !v57)
  {
    v51 = [(RTLocationContextManager *)self defaultsManager];
    [v51 setObject:v50 forKey:@"RTDefaultsLocationContextManagerSyncDates"];
  }

LABEL_42:
  return v40;
}

void __51__RTLocationContextManager__isSyncAllowedForVisit___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAfterDate:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (BOOL)_isSyncAllowedForPlaceInference:(id)a3
{
  v82 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v75 = "[RTLocationContextManager _isSyncAllowedForPlaceInference:]";
      v76 = 1024;
      LODWORD(v77) = 751;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeInference (in %s:%d)", buf, 0x12u);
    }
  }

  v7 = [v5 mapItem];

  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v75 = "[RTLocationContextManager _isSyncAllowedForPlaceInference:]";
      v76 = 1024;
      LODWORD(v77) = 752;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeInference.mapItem (in %s:%d)", buf, 0x12u);
    }
  }

  if (![(RTLocationContextManager *)self _filterPlaceInference:v5])
  {
    v9 = [(RTLocationContextManager *)self lastSyncedAOIMapItem];
    v10 = [v5 mapItem];
    if ([v9 isEqualToMapItem:v10])
    {
    }

    else
    {
      v11 = [(RTLocationContextManager *)self lastSyncedPOIMapItem];
      v12 = [v5 mapItem];
      v13 = [v11 isEqualToMapItem:v12];

      if (!v13)
      {
        v23 = [(RTLocationContextManager *)self defaultsManager];
        v24 = [v23 objectForKey:@"RTDefaultsLocationContextManagerPOISyncMinSyncInterval"];

        if (v24)
        {
          v25 = [(RTLocationContextManager *)self defaultsManager];
          v26 = [v25 objectForKey:@"RTDefaultsLocationContextManagerPOISyncMinSyncInterval"];
          v27 = [v26 unsignedIntegerValue];
        }

        else
        {
          v27 = 5;
        }

        v14 = [MEMORY[0x277CBEAA8] now];
        v28 = [(RTLocationContextManager *)self aoiSyncDate];
        [v14 timeIntervalSinceDate:v28];
        v30 = v29;

        v31 = [(RTLocationContextManager *)self poiSyncDate];
        [v14 timeIntervalSinceDate:v31];
        v33 = v32;

        v34 = [v5 mapItem];
        v35 = [v34 mapItemPlaceType];

        if (v35 == 1)
        {
          v36 = v30 / 60.0;
        }

        else
        {
          v36 = v33 / 60.0;
          v37 = [v5 mapItem];
          v38 = [v37 mapItemPlaceType];

          if (v38 != 2)
          {
            v36 = 0.0;
          }
        }

        if (v36 >= v27)
        {
          v41 = objc_opt_new();
          v42 = [(RTLocationContextManager *)self defaultsManager];
          v43 = [v42 objectForKey:@"RTDefaultsLocationContextManagerSyncDates"];

          v44 = MEMORY[0x277CBEB98];
          v45 = objc_opt_class();
          [v44 setWithObjects:{v45, objc_opt_class(), 0}];
          v67 = v73 = 0;
          v68 = v43;
          v46 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:? fromData:? error:?];
          v47 = 0;
          if (v47)
          {
            v48 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v75 = v47;
              _os_log_error_impl(&dword_2304B3000, v48, OS_LOG_TYPE_ERROR, "error while decoding POI sync dates, %@", buf, 0xCu);
            }
          }

          v49 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __60__RTLocationContextManager__isSyncAllowedForPlaceInference___block_invoke;
          v70[3] = &unk_2788CF7F8;
          v50 = v49;
          v71 = v50;
          v39 = v41;
          v72 = v39;
          v66 = v46;
          [v46 enumerateObjectsUsingBlock:v70];
          v51 = [(RTLocationContextManager *)self defaultsManager];
          v52 = [v51 objectForKey:@"RTDefaultsLocationContextManagerMaxDailySyncCount"];

          v65 = v47;
          if (v52)
          {
            v53 = [(RTLocationContextManager *)self defaultsManager];
            v54 = [v53 objectForKey:@"RTDefaultsLocationContextManagerMaxDailySyncCount"];
            v55 = [v54 unsignedIntegerValue];
          }

          else
          {
            v55 = 200;
          }

          v56 = [v39 count];
          v22 = v56 < v55;
          if (v56 < v55)
          {
            v57 = [MEMORY[0x277CBEAA8] now];
            [v39 addObject:v57];
          }

          v58 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = NSStringFromSelector(a2);
            if (v56 >= v55)
            {
              v60 = @"blocked";
            }

            else
            {
              v60 = @"allowed";
            }

            v61 = [v39 count];
            *buf = 138413058;
            v75 = v59;
            v76 = 2112;
            v77 = *&v60;
            v78 = 2048;
            v79 = v61;
            v80 = 2048;
            v81 = v55;
            _os_log_impl(&dword_2304B3000, v58, OS_LOG_TYPE_DEFAULT, "%@, sync %@, updated count %lu, max daily %lu", buf, 0x2Au);
          }

          v69 = 0;
          v62 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v39 requiringSecureCoding:1 error:&v69];
          if (!v69)
          {
            v63 = [(RTLocationContextManager *)self defaultsManager];
            [v63 setObject:v62 forKey:@"RTDefaultsLocationContextManagerSyncDates"];
          }
        }

        else
        {
          v39 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = NSStringFromSelector(a2);
            *buf = 138412802;
            v75 = v40;
            v76 = 2048;
            v77 = v36;
            v78 = 1024;
            LODWORD(v79) = v27;
            _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_DEFAULT, "%@, sync blocked, elapsed time since last sync (in mins): %f, sync interval: %d", buf, 0x1Cu);
          }

          v22 = 0;
        }

        goto LABEL_47;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = NSStringFromSelector(a2);
      v16 = [v5 userType];
      v17 = [v5 mapItem];
      v18 = [v17 category];
      v19 = MEMORY[0x277D011A0];
      v20 = [v5 mapItem];
      v21 = [v19 placeTypeToString:{objc_msgSend(v20, "mapItemPlaceType")}];
      *buf = 138413058;
      v75 = v15;
      v76 = 2048;
      v77 = *&v16;
      v78 = 2112;
      v79 = v18;
      v80 = 2112;
      v81 = v21;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, place inference blocked, userType: %lu, category: %@, placeType: %@ or previously synced", buf, 0x2Au);
    }

    v22 = 0;
LABEL_47:

    goto LABEL_48;
  }

  v22 = 0;
LABEL_48:

  return v22;
}

void __60__RTLocationContextManager__isSyncAllowedForPlaceInference___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAfterDate:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (void)onLeechedLocationNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RTLocationContextManager_onLeechedLocationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onLeechedLocationNotification:(id)a3
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      [v5 name];
      v11 = v10 = self;
      *buf = 138412802;
      v83 = v8;
      v84 = 2112;
      v85 = v9;
      v86 = 2112;
      v87 = v11;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, notification name, %@", buf, 0x20u);

      self = v10;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 leechedLocations];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v12 = v81 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v78 objects:v94 count:16];
    if (v13)
    {
      v14 = v13;
      v68 = self;
      v69 = a2;
      v72 = v5;
      v15 = 0;
      v16 = *v79;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v79 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v78 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          if (v18)
          {
            if (!v15 || ([v15 timestamp], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "timestamp"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "compare:", v21), v21, v20, v22 == -1))
            {
              v23 = v18;

              v15 = v23;
            }
          }

          objc_autoreleasePoolPop(v19);
        }

        v14 = [v12 countByEnumeratingWithState:&v78 objects:v94 count:16];
      }

      while (v14);

      if (!v15)
      {
        a2 = v69;
        v5 = v72;
        self = v68;
LABEL_22:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v25 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            v28 = NSStringFromSelector(a2);
            v70 = a2;
            v73 = v5;
            v29 = @"NO";
            if ([(RTLocationContextManager *)self inLowConfidenceVisit])
            {
              v30 = @"YES";
            }

            else
            {
              v30 = @"NO";
            }

            if ([(RTLocationContextManager *)self inHighConfidenceVisit])
            {
              v29 = @"YES";
            }

            v31 = [(RTLocationContextManager *)self lastPublishedLocation];
            v32 = [(RTLocationContextManager *)self latestValidLocation];
            *buf = 138413571;
            v83 = v27;
            v84 = 2112;
            v85 = v28;
            v86 = 2112;
            v87 = v30;
            v88 = 2112;
            v89 = v29;
            a2 = v70;
            v5 = v73;
            v90 = 2117;
            v91 = v31;
            v92 = 2117;
            v93 = v32;
            _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, %@, in low confidence visit, %@, in high confidence visit, %@, lastPublishedLocation, %{sensitive}@, latestValidLocation, %{sensitive}@", buf, 0x3Eu);
          }
        }

        v33 = [(RTLocationContextManager *)self lastPublishedLocation];
        if (v33)
        {
          v34 = v33;
          [(RTLocationContextManager *)self latestValidLocation];
          v36 = v35 = self;
          if (v36 && ![(RTLocationContextManager *)v35 inLowConfidenceVisit])
          {
            v48 = [(RTLocationContextManager *)v35 inHighConfidenceVisit];

            self = v35;
            if (!v48)
            {
              v49 = [(RTLocationContextManager *)v35 distanceCalculator];
              v50 = [(RTLocationContextManager *)v35 lastPublishedLocation];
              v51 = v35;
              v52 = [(RTLocationContextManager *)v35 latestValidLocation];
              v77 = 0;
              [v49 distanceFromLocation:v50 toLocation:v52 error:&v77];
              v54 = v53;
              v39 = v77;

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v55 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
                if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                {
                  v56 = objc_opt_class();
                  v74 = NSStringFromClass(v56);
                  v71 = NSStringFromSelector(a2);
                  v57 = [(RTLocationContextManager *)v51 lastPublishedLocation];
                  v58 = [(RTLocationContextManager *)v51 latestValidLocation];
                  if (v54 == 1.79769313e308)
                  {
                    v59 = @"DBL_MAX";
                  }

                  else
                  {
                    v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&v54];
                  }

                  *buf = 138413571;
                  v83 = v74;
                  v84 = 2112;
                  v85 = v71;
                  v86 = 2117;
                  v87 = v57;
                  v88 = 2117;
                  v89 = v58;
                  v90 = 2112;
                  v91 = v59;
                  v92 = 2112;
                  v93 = v39;
                  _os_log_impl(&dword_2304B3000, v55, OS_LOG_TYPE_INFO, "%@, %@, last published location, %{sensitive}@, latest valid location, %{sensitive}@, distance, %@, error, %@", buf, 0x3Eu);
                  if (v54 != 1.79769313e308)
                  {
                  }
                }
              }

              if (v39 || v54 == 1.79769313e308)
              {
                goto LABEL_38;
              }

              self = v51;
              if (v54 > 500.0)
              {
                v60 = [(RTLocationContextManager *)v51 latestValidLocation];
                v76 = 0;
                v61 = [(RTLocationContextManager *)v51 _postLocationContextNotificationUsingData:v60 error:&v76];
                v39 = v76;

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v62 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                  {
                    v63 = objc_opt_class();
                    v64 = NSStringFromClass(v63);
                    v65 = NSStringFromSelector(a2);
                    v66 = v65;
                    v67 = @"NO";
                    *buf = 138413058;
                    v83 = v64;
                    v84 = 2112;
                    if (v61)
                    {
                      v67 = @"YES";
                    }

                    v85 = v65;
                    v86 = 2112;
                    v87 = v67;
                    v88 = 2112;
                    v89 = v39;
                    _os_log_impl(&dword_2304B3000, v62, OS_LOG_TYPE_INFO, "%@, %@, publish outside visit after meeting distance threshold status, %@, error, %@", buf, 0x2Au);
                  }

                  self = v51;
                }

                if (v39)
                {
                  goto LABEL_38;
                }
              }
            }
          }

          else
          {

            self = v35;
          }
        }

        v37 = [(RTLocationContextManager *)self lastPublishedLocation];
        if (v37)
        {
          v38 = v37;
          v39 = 0;
        }

        else
        {
          v40 = [(RTLocationContextManager *)self latestValidLocation];

          if (!v40)
          {
            v39 = 0;
            goto LABEL_38;
          }

          v41 = [(RTLocationContextManager *)self latestValidLocation];
          v75 = 0;
          v42 = [(RTLocationContextManager *)self _postLocationContextNotificationUsingData:v41 error:&v75];
          v39 = v75;

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_38:

            goto LABEL_39;
          }

          v38 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v43 = objc_opt_class();
            v44 = NSStringFromClass(v43);
            v45 = NSStringFromSelector(a2);
            v46 = v45;
            v47 = @"NO";
            *buf = 138413058;
            v83 = v44;
            v84 = 2112;
            if (v42)
            {
              v47 = @"YES";
            }

            v85 = v45;
            v86 = 2112;
            v87 = v47;
            v88 = 2112;
            v89 = v39;
            _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, %@, publish outside visit after first location status, %@, error, %@", buf, 0x2Au);
          }
        }

        goto LABEL_38;
      }

      v24 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:v15];
      self = v68;
      [(RTLocationContextManager *)v68 setLatestValidLocation:v24];
      a2 = v69;
      v5 = v72;
    }

    else
    {
      v15 = 0;
      v24 = v12;
    }

    goto LABEL_22;
  }

LABEL_39:
}

- (void)setLocationContextMonitoringEnabled:(BOOL)a3
{
  v32 = *MEMORY[0x277D85DE8];
  if (self->_locationContextMonitoringEnabled != a3)
  {
    v3 = a3;
    self->_locationContextMonitoringEnabled = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        if (self->_locationContextMonitoringEnabled)
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        *buf = 138412290;
        v31 = v6;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "location context monitoring enabled, %@", buf, 0xCu);
      }

      if (!self->_locationContextMonitoringEnabled)
      {
        goto LABEL_9;
      }
    }

    else if (!v3)
    {
LABEL_9:
      v7 = [(RTLocationContextManager *)self visitManager];
      v8 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
      [v7 removeObserver:self fromNotification:v8];

      v9 = [(RTLocationContextManager *)self authorizationManager];
      [v9 removeObserver:self];

      v10 = [(RTLocationContextManager *)self visitManager];
      v11 = +[(RTNotification *)RTVisitManagerLowConfidenceVisitIncidentNotification];
      [v10 removeObserver:self fromNotification:v11];

      v12 = [(RTLocationContextManager *)self learnedLocationManager];
      [v12 removeObserver:self];

      v13 = [(RTLocationContextManager *)self locationManager];
      [v13 removeObserver:self];

      v28 = 0;
      [(RTLocationContextManager *)self _clearTimerWithError:&v28];
      return;
    }

    v14 = [(RTLocationContextManager *)self visitManager];
    v15 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
    [v14 addObserver:self selector:sel_onVisitManagerNotification_ name:v15];

    v16 = [(RTLocationContextManager *)self authorizationManager];
    v17 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
    [v16 addObserver:self selector:sel_onAuthorizationNotification_ name:v17];

    v18 = [(RTLocationContextManager *)self visitManager];
    v19 = +[(RTNotification *)RTVisitManagerLowConfidenceVisitIncidentNotification];
    [v18 addObserver:self selector:sel_onVisitManagerNotification_ name:v19];

    v20 = [(RTLocationContextManager *)self visitManager];
    v21 = +[(RTNotification *)RTVisitManagerPointOfInterestUpdateNotification];
    [v20 addObserver:self selector:sel_onVisitManagerNotification_ name:v21];

    v22 = [(RTLocationContextManager *)self placeInferenceManager];
    v23 = +[(RTNotification *)RTPlaceInferenceUpdateNotification];
    [v22 addObserver:self selector:sel_onVisitManagerNotification_ name:v23];

    v24 = [(RTLocationContextManager *)self learnedLocationManager];
    v25 = +[(RTNotification *)RTLearnedLocationManagerNotificationAvailabilityDidChange];
    [v24 addObserver:self selector:sel_onLearnedLocationManagerNotification_ name:v25];

    v26 = [(RTLocationContextManager *)self locationManager];
    v27 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
    [v26 addObserver:self selector:sel_onLeechedLocationNotification_ name:v27];

    v29 = 0;
    [(RTLocationContextManager *)self _resetTimerWitherror:&v29];
  }
}

- (BOOL)_postLocationContextNotificationUsingData:(id)a3 error:(id *)a4
{
  v101[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: data", buf, 2u);
    }

    if (a4)
    {
      *a4 = _RTErrorInvalidParameterCreate(@"data");
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v81 = 0;
    v9 = [(RTLocationContextManager *)self _getPlaceInferencesAtLocation:v7 error:&v81];
    v10 = v81;
LABEL_35:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v40 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [v9 count];
        *buf = 134218242;
        v83 = v41;
        v84 = 2112;
        v85 = v10;
        _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "final place inferences count, %lu, error, %@", buf, 0x16u);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __76__RTLocationContextManager__postLocationContextNotificationUsingData_error___block_invoke;
      v75[3] = &__block_descriptor_40_e33_v32__0__RTPlaceInference_8Q16_B24l;
      v75[4] = a2;
      [v9 enumerateObjectsUsingBlock:v75];
    }

    if (a4 && v10)
    {
      v42 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v65 = objc_opt_class();
        v66 = NSStringFromClass(v65);
        v67 = NSStringFromSelector(a2);
        *buf = 138412802;
        v83 = v66;
        v84 = 2112;
        v85 = v67;
        v86 = 2112;
        v87 = v10;
        _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v43 = v10;
      *a4 = v10;

      goto LABEL_46;
    }

    v44 = [(RTLocationContextManager *)self lastPublishedPlaceInference];
    v45 = [v9 firstObject];
    v46 = [v44 isEqual:v45];

    if (v46)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v47 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = objc_opt_class();
          v49 = NSStringFromClass(v48);
          v50 = NSStringFromSelector(a2);
          *buf = 138412803;
          v83 = v49;
          v84 = 2112;
          v85 = v50;
          v86 = 2117;
          v87 = v9;
          _os_log_impl(&dword_2304B3000, v47, OS_LOG_TYPE_INFO, "%@, %@, place inference already published, skipping place inference, %{sensitive}@", buf, 0x20u);
        }
      }

      if (a4)
      {
        v51 = v10;
        *a4 = v10;
      }

      v39 = v10 == 0;
    }

    else
    {
      v52 = [[RTLocationContextManagerPlaceInferencesNotification alloc] initWithPlaceInferences:v9];
      [(RTNotifier *)self postNotification:v52];
      v53 = [v9 firstObject];
      [(RTLocationContextManager *)self setLastPublishedPlaceInference:v53];

      v54 = [v9 firstObject];
      v55 = [v54 referenceLocation];
      [(RTLocationContextManager *)self setLastPublishedLocation:v55];

      v74 = v10;
      v56 = [(RTLocationContextManager *)self _resetTimerWitherror:&v74];
      v57 = v74;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v58 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          v59 = objc_opt_class();
          v73 = NSStringFromClass(v59);
          v71 = NSStringFromSelector(a2);
          v69 = [(RTLocationContextManager *)self lastPublishedLocation];
          v60 = [(RTLocationContextManager *)self lastPublishedPlaceInference];
          v61 = @"NO";
          *buf = 138413571;
          v83 = v73;
          v84 = 2112;
          if (v56)
          {
            v61 = @"YES";
          }

          v85 = v71;
          v86 = 2117;
          v87 = v69;
          v88 = 2117;
          v89 = v60;
          v62 = v60;
          v90 = 2112;
          v91 = v61;
          v92 = 2112;
          v93 = v57;
          _os_log_impl(&dword_2304B3000, v58, OS_LOG_TYPE_INFO, "%@, %@, last published location, %{sensitive}@, last published place inference, %{sensitive}@, timer status, %@, error, %@", buf, 0x3Eu);
        }
      }

      if (a4)
      {
        v63 = v57;
        *a4 = v57;
      }

      v39 = v57 == 0;

      v10 = v57;
    }

    goto LABEL_64;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v7 placeInference];

    if (v11)
    {
      v12 = [v7 placeInference];
      v101[0] = v12;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:1];
LABEL_34:

      v10 = 0;
      goto LABEL_35;
    }

    v28 = [v7 location];

    if (v28)
    {
      v29 = [v7 location];
      v80 = 0;
      v9 = [(RTLocationContextManager *)self _getPlaceInferencesAtLocation:v29 error:&v80];
      v10 = v80;

      goto LABEL_35;
    }

    v34 = objc_alloc(MEMORY[0x277CCA9B8]);
    v35 = *MEMORY[0x277D01448];
    v99 = *MEMORY[0x277CCA450];
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid visit passed, %@", v7];
    v100 = v36;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    v10 = [v34 initWithDomain:v35 code:7 userInfo:v37];

    v33 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *buf = 138412290;
    v83 = v10;
LABEL_66:
    _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "error, %@", buf, 0xCu);
    goto LABEL_30;
  }

  v72 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v76 objects:v98 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v77;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v77 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v76 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v9 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v76 objects:v98 count:16];
      }

      while (v15);
    }

    v10 = 0;
    a2 = v72;
    goto LABEL_35;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v7;
    v19 = [v12 finerGranularityMapItem];

    if (v19)
    {
      v70 = objc_alloc(MEMORY[0x277D011D8]);
      v20 = [v12 finerGranularityMapItem];
      v68 = [v12 userType];
      v21 = [v12 userTypeSource];
      v22 = [v12 referenceLocation];
      [v12 finerGranularityMapItemConfidence];
      v24 = v23;
      v25 = [v12 loiIdentifier];
      v26 = [v12 preferredName];
      v27 = [v70 initWithMapItem:v20 finerGranularityMapItem:0 userType:v68 userTypeSource:v21 placeType:3 referenceLocation:v22 confidence:v24 finerGranularityMapItemConfidence:0.0 loiIdentifier:v25 preferredName:v26];

      v96[0] = v27;
      v96[1] = v12;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:2];
    }

    else
    {
      v97 = v12;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];
    }

    a2 = v72;
    goto LABEL_34;
  }

  v30 = objc_alloc(MEMORY[0x277CCA9B8]);
  v31 = *MEMORY[0x277D01448];
  v94 = *MEMORY[0x277CCA450];
  v95 = @"invalid data type is passed";
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
  v10 = [v30 initWithDomain:v31 code:7 userInfo:v32];

  v33 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v83 = v10;
    goto LABEL_66;
  }

LABEL_30:

  if (!a4)
  {
LABEL_46:
    v39 = 0;
    goto LABEL_64;
  }

  v38 = v10;
  v39 = 0;
  *a4 = v10;
LABEL_64:

  return v39;
}

void __76__RTLocationContextManager__postLocationContextNotificationUsingData_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = NSStringFromSelector(*(a1 + 32));
      v8 = 138412803;
      v9 = v7;
      v10 = 2048;
      v11 = a3 + 1;
      v12 = 2117;
      v13 = v5;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@, place inference %lu, %{sensitive}@", &v8, 0x20u);
    }
  }
}

- (BOOL)_resetTimerWitherror:(id *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v10 = [(RTLocationContextManager *)self timer];
      *buf = 138412802;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, reset timer called, %@", buf, 0x20u);
    }
  }

  v11 = [(RTLocationContextManager *)self timer];

  if (v11)
  {
    v12 = [(RTLocationContextManager *)self timer];
    [v12 invalidate];

    [(RTLocationContextManager *)self setTimer:0];
  }

  objc_initWeak(buf, self);
  v13 = [(RTLocationContextManager *)self timerManager];
  v14 = [(RTNotifier *)self queue];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __49__RTLocationContextManager__resetTimerWitherror___block_invoke;
  v22 = &unk_2788CF820;
  objc_copyWeak(v23, buf);
  v23[1] = a2;
  v15 = [v13 timerWithIdentifier:@"com.apple.routined.locationContextManagerAlarm" queue:v14 handler:&v19];
  [(RTLocationContextManager *)self setTimer:v15, v19, v20, v21, v22];

  v16 = [(RTLocationContextManager *)self timer];
  [v16 fireWithInterval:300.0];

  v17 = [(RTLocationContextManager *)self timer];
  [v17 resume];

  if (a3)
  {
    *a3 = 0;
  }

  objc_destroyWeak(v23);
  objc_destroyWeak(buf);
  return 1;
}

void __49__RTLocationContextManager__resetTimerWitherror___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained latestValidLocation];
  v12 = 0;
  v4 = [WeakRetained _postLocationContextNotificationUsingData:v3 error:&v12];
  v5 = v12;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 40));
      v10 = v9;
      v11 = @"NO";
      *buf = 138413058;
      v14 = v8;
      v15 = 2112;
      if (v4)
      {
        v11 = @"YES";
      }

      v16 = v9;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, timer expired, notification status, %@, error, %@", buf, 0x2Au);
    }
  }
}

- (BOOL)_clearTimerWithError:(id *)a3
{
  v5 = [(RTLocationContextManager *)self timer];

  if (v5)
  {
    v6 = [(RTLocationContextManager *)self timer];
    [v6 invalidate];

    [(RTLocationContextManager *)self setTimer:0];
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 1;
}

- (id)_getPlaceInferencesAtLocation:(id)a3 error:(id *)a4
{
  v65[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", buf, 2u);
    }

    if (a4)
    {
      *a4 = _RTErrorInvalidParameterCreate(@"location");
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      *buf = 138412803;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      *&buf[22] = 2117;
      v61 = v6;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, location, %{sensitive}@,", buf, 0x20u);
    }
  }

  v12 = objc_alloc(MEMORY[0x277D011E0]);
  v13 = [objc_alloc(MEMORY[0x277CE41F8]) initWithRTLocation:v6];
  v64 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
  v15 = [v12 initWithFidelityPolicy:0 locations:v14 accessPoints:MEMORY[0x277CBEBF8] clientIdentifier:@"com.apple.CoreRoutine.LocationContextManager"];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v61 = __Block_byref_object_copy__136;
  v62 = __Block_byref_object_dispose__136;
  v63 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__136;
  v54 = __Block_byref_object_dispose__136;
  v55 = 0;
  v16 = dispatch_semaphore_create(0);
  v17 = [(RTLocationContextManager *)self placeInferenceManager];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __64__RTLocationContextManager__getPlaceInferencesAtLocation_error___block_invoke;
  v46[3] = &unk_2788C4490;
  v48 = buf;
  v49 = &v50;
  v18 = v16;
  v47 = v18;
  [v17 fetchPlaceInferencesForOptions:v15 handler:v46];

  v19 = v18;
  v20 = [MEMORY[0x277CBEAA8] now];
  v21 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v19, v21))
  {
    v22 = [MEMORY[0x277CBEAA8] now];
    [v22 timeIntervalSinceDate:v20];
    v24 = v23;
    v25 = objc_opt_new();
    v26 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_111];
    v27 = [MEMORY[0x277CCACC8] callStackSymbols];
    v28 = [v27 filteredArrayUsingPredicate:v26];
    v29 = [v28 firstObject];

    [v25 submitToCoreAnalytics:v29 type:1 duration:v24];
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *v57 = 0;
      _os_log_fault_impl(&dword_2304B3000, v30, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v57, 2u);
    }

    v31 = MEMORY[0x277CCA9B8];
    v65[0] = *MEMORY[0x277CCA450];
    *v57 = @"semaphore wait timeout";
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v65 count:1];
    v33 = [v31 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v32];

    if (v33)
    {
      v34 = v33;
    }
  }

  else
  {
    v33 = 0;
  }

  v35 = v33;
  if (v35)
  {
    objc_storeStrong(v51 + 5, v33);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [*(*&buf[8] + 40) count];
      v38 = v51[5];
      *v57 = 134218242;
      *&v57[4] = v37;
      v58 = 2112;
      v59 = v38;
      _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "fetched place inferences count, %lu, error, %@", v57, 0x16u);
    }
  }

  if (![*(*&buf[8] + 40) count])
  {
    v39 = [objc_alloc(MEMORY[0x277D011D8]) initWithMapItem:0 userType:0 userTypeSource:0 placeType:0 referenceLocation:v6 confidence:0 loiIdentifier:1.0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v40 = _rt_log_facility_get_os_log(RTLogFacilityLocationContext);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *v57 = 138739971;
        *&v57[4] = v39;
        _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "created a place inference using location, %{sensitive}@,", v57, 0xCu);
      }
    }

    v56 = v39;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    v42 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v41;
  }

  if (a4)
  {
    *a4 = v51[5];
  }

  v43 = *(*&buf[8] + 40);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(buf, 8);

  return v43;
}

void __64__RTLocationContextManager__getPlaceInferencesAtLocation_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_getLearnedLOIForVisit:(id)a3 error:(id *)a4
{
  v60[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__136;
  v53 = __Block_byref_object_dispose__136;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__136;
  v47 = __Block_byref_object_dispose__136;
  v48 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = [(RTLocationContextManager *)self learnedLocationManager];
  v9 = [v6 placeInference];
  v10 = [v9 loiIdentifier];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __57__RTLocationContextManager__getLearnedLOIForVisit_error___block_invoke;
  v39[3] = &unk_2788C4B58;
  v41 = &v43;
  v42 = &v49;
  v11 = v7;
  v40 = v11;
  [v8 fetchLocationOfInterestWithIdentifier:v10 handler:v39];

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_111];
    v20 = [MEMORY[0x277CCACC8] callStackSymbols];
    v21 = [v20 filteredArrayUsingPredicate:v19];
    v22 = [v21 firstObject];

    [v18 submitToCoreAnalytics:v22 type:1 duration:v17];
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v24 = MEMORY[0x277CCA9B8];
    v60[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v60 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

    if (v26)
    {
      v27 = v26;
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = v26;
  v29 = v28;
  if (a4 && v28)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v36;
      v56 = 2112;
      v57 = v37;
      v58 = 2112;
      v59 = v29;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v31 = v29;
    v32 = 0;
    *a4 = v29;
  }

  else
  {
    if (a4)
    {
      *a4 = v50[5];
    }

    if (v50[5])
    {
      v33 = 0;
    }

    else
    {
      v33 = v44[5];
    }

    v32 = v33;
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);

  return v32;
}

void __57__RTLocationContextManager__getLearnedLOIForVisit_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_getFamIndexResultWithGranularity:(unint64_t)a3 location:(id)a4 error:(id *)a5
{
  aSelector = a2;
  v63[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = objc_alloc(MEMORY[0x277D010F8]);
  [v8 horizontalUncertainty];
  v11 = [v9 initWithDateInterval:0 lookbackInterval:a3 spatialGranularity:v8 referenceLocation:0 referenceLocationSummary:604800.0 distance:v10];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__136;
  v56 = __Block_byref_object_dispose__136;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__136;
  v50 = __Block_byref_object_dispose__136;
  v51 = 0;
  v12 = dispatch_semaphore_create(0);
  v13 = [(RTLocationContextManager *)self learnedLocationManager];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __77__RTLocationContextManager__getFamIndexResultWithGranularity_location_error___block_invoke;
  v42[3] = &unk_2788C4490;
  v44 = &v46;
  v45 = &v52;
  v14 = v12;
  v43 = v14;
  [v13 fetchFamiliarityIndexResultsWithOptions:v11 handler:v42];
  v41 = v11;

  v15 = v14;
  v16 = [MEMORY[0x277CBEAA8] now];
  v17 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v15, v17))
  {
    v18 = [MEMORY[0x277CBEAA8] now];
    [v18 timeIntervalSinceDate:v16];
    v20 = v19;
    v21 = objc_opt_new();
    v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_111];
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
    v63[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v63 count:1];
    v29 = [v27 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v28];

    if (v29)
    {
      v30 = v29;
    }
  }

  else
  {
    v29 = 0;
  }

  v31 = v29;
  v32 = v31;
  if (a5 && v31)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = NSStringFromSelector(aSelector);
      *buf = 138412802;
      *&buf[4] = v38;
      v59 = 2112;
      v60 = v39;
      v61 = 2112;
      v62 = v32;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v34 = v32;
    v35 = 0;
    *a5 = v32;
  }

  else
  {
    if (a5)
    {
      *a5 = v53[5];
    }

    v35 = v47[5];
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);

  return v35;
}

void __77__RTLocationContextManager__getFamIndexResultWithGranularity_location_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 lastObject];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

@end