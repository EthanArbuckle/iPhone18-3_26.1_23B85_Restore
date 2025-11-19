@interface SMSuggestionsHelper
+ (BOOL)isContactBlocked:(id)a3 error:(id *)a4;
+ (id)createMasqueradingReferenceLocationFromFenceInfo:(id)a3 placeInference:(id)a4 error:(id *)a5;
+ (id)createMasqueradingReferenceLocationFromFenceRadius:(double)a3 location:(id)a4 error:(id *)a5;
+ (id)dedupeSessionConfigurations:(id)a3;
+ (id)getSMContactInformationFromSMHandle:(id)a3;
+ (id)getSMHandlesFromFAFamilyMembers:(id)a3 error:(id *)a4;
+ (id)getSMHandlesFromRTContact:(id)a3 error:(id *)a4;
+ (id)getSMHandlesFromRTContacts:(id)a3 error:(id *)a4;
+ (id)placeInferenceFromNPLOI:(id)a3;
- (SMSuggestionsHelper)initWithAuthorizationManager:(id)a3 contactsManager:(id)a4 deviceLocationPredictor:(id)a5 distanceCalculator:(id)a6 healthKitManager:(id)a7 learnedLocationStore:(id)a8 learnedLocationManager:(id)a9 locationManager:(id)a10 mapServiceManager:(id)a11 navigationManager:(id)a12 sessionStore:(id)a13 eligibilityChecker:(id)a14;
- (id)_dedupePlaceInferencesWithOrder:(id)a3;
- (id)_placeInferenceFromLOI:(id)a3;
- (id)_submitMetricForFetchMostLikelyReceiverHandlesDidComplete:(BOOL)a3 didFetchSessionConfigurations:(BOOL)a4 didFetchEmergencyContacts:(BOOL)a5 didFetchICloudFamily:(BOOL)a6 didFetchFavorites:(BOOL)a7 timeout:(double)a8;
- (id)_submitMetricForFetchMostLikelySessionDestinationsWithRefreshedLocationDidComplete:(BOOL)a3 didFetchNavigationRouteSummary:(BOOL)a4 didFetchLOIs:(BOOL)a5 didFetchNPLOIs:(BOOL)a6 didFetchSessionConfigurations:(BOOL)a7 timeout:(double)a8;
- (id)canonicalizeHandles:(id)a3;
- (void)_computeMostlikelySessionDestinations:(id)a3 closestHome:(id)a4 distanceToClosestHome:(double)a5 nploisWithValidDistanceAndHighConfidence:(id)a6 fenceSizeForMapItem:(id)a7 placeInferences:(id)a8 errors:(id)a9 handler:(id)a10;
- (void)_fetchMostLikelyReceiverHandlesWithHandler:(id)a3;
- (void)_fetchMostLikelyReceiverHandlesWithOptions:(id)a3 handler:(id)a4;
- (void)_fetchMostLikelySessionDestinationsWithHandler:(id)a3;
- (void)_fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler:(id)a3;
- (void)_filterHandles:(id)a3 options:(id)a4 handler:(id)a5;
- (void)_getFAFamilyMembersFromAAAFamilyWithHandler:(id)a3;
- (void)_getNPLOIsWithOnlyHighConfidence:(BOOL)a3 location:(id)a4 date:(id)a5 handler:(id)a6;
- (void)_getSessionConfigurationsWithOptions:(id)a3 handler:(id)a4;
- (void)_onAuthorizationNotification:(id)a3;
- (void)_refreshCurrentLocationWithHandler:(id)a3;
- (void)fetchMostLikelyReceiverHandlesWithHandler:(id)a3;
- (void)fetchMostLikelyReceiverHandlesWithOptions:(id)a3 handler:(id)a4;
- (void)fetchMostLikelySessionDestinationsWithHandler:(id)a3;
- (void)fetchNumEmergencyRecipientsWithReceiverHandles:(id)a3 handler:(id)a4;
- (void)fetchNumFavoriteRecipientsWithReceiverHandles:(id)a3 handler:(id)a4;
- (void)fetchNumiCloudFamilyRecipientsWithReceiverHandles:(id)a3 handler:(id)a4;
- (void)getEmergencyHandles:(id)a3;
- (void)getFavoriteContactHandles:(id)a3;
- (void)getFavoriteHandles:(id)a3;
- (void)getNPLOIsWithOnlyHighConfidence:(BOOL)a3 location:(id)a4 date:(id)a5 handler:(id)a6;
- (void)getSessionConfigurationsWithOptions:(id)a3 handler:(id)a4;
- (void)getiCloudFamilyHandles:(id)a3;
- (void)onAuthorizationNotification:(id)a3;
- (void)refreshCurrentLocationWithHandler:(id)a3;
@end

@implementation SMSuggestionsHelper

- (SMSuggestionsHelper)initWithAuthorizationManager:(id)a3 contactsManager:(id)a4 deviceLocationPredictor:(id)a5 distanceCalculator:(id)a6 healthKitManager:(id)a7 learnedLocationStore:(id)a8 learnedLocationManager:(id)a9 locationManager:(id)a10 mapServiceManager:(id)a11 navigationManager:(id)a12 sessionStore:(id)a13 eligibilityChecker:(id)a14
{
  v54 = a3;
  v41 = a4;
  v19 = a4;
  v47 = a5;
  v42 = a6;
  v46 = a6;
  v43 = a7;
  v20 = a7;
  v44 = a8;
  v21 = a8;
  v49 = a9;
  v53 = a10;
  v52 = a11;
  v51 = a12;
  v50 = a13;
  v22 = a14;
  v48 = v22;
  if (!v54)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
    }

    v34 = 0;
    v23 = v19;
    v24 = v46;
    v25 = v47;
    v26 = v21;
    goto LABEL_22;
  }

  v23 = v19;
  if (!v19)
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v24 = v46;
    v25 = v47;
    v26 = v21;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contactsManager", buf, 2u);
    }

    v34 = 0;
LABEL_22:
    v27 = v49;
LABEL_45:
    v33 = self;
    goto LABEL_46;
  }

  v24 = v46;
  v25 = v47;
  v26 = v21;
  if (!v47)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v27 = v49;
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v38 = "Invalid parameter not satisfying: deviceLocationPredictor";
LABEL_43:
    _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, v38, buf, 2u);
    goto LABEL_44;
  }

  v27 = v49;
  if (!v46)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v38 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_43;
  }

  if (!v20)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v38 = "Invalid parameter not satisfying: healthKitManager";
    goto LABEL_43;
  }

  if (!v26)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v38 = "Invalid parameter not satisfying: learnedLocationStore";
    goto LABEL_43;
  }

  if (!v49)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v38 = "Invalid parameter not satisfying: learnedLocationManager";
    goto LABEL_43;
  }

  if (!v53)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v38 = "Invalid parameter not satisfying: locationManager";
    goto LABEL_43;
  }

  if (!v52)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v38 = "Invalid parameter not satisfying: mapServiceManager";
    goto LABEL_43;
  }

  if (!v51)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v38 = "Invalid parameter not satisfying: navigationManager";
    goto LABEL_43;
  }

  if (!v50)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v38 = "Invalid parameter not satisfying: sessionStore";
    goto LABEL_43;
  }

  if (!v22)
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v38 = "Invalid parameter not satisfying: eligibilityChecker";
      goto LABEL_43;
    }

LABEL_44:

    v34 = 0;
    goto LABEL_45;
  }

  v55.receiver = self;
  v55.super_class = SMSuggestionsHelper;
  v28 = [(RTNotifier *)&v55 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_authorizationManager, a3);
    objc_storeStrong(&v29->_contactsManager, v41);
    objc_storeStrong(&v29->_deviceLocationPredictor, a5);
    objc_storeStrong(&v29->_distanceCalculator, v42);
    objc_storeStrong(&v29->_healthKitManager, v43);
    objc_storeStrong(&v29->_learnedLocationStore, v44);
    objc_storeStrong(&v29->_learnedLocationManager, a9);
    objc_storeStrong(&v29->_locationManager, a10);
    objc_storeStrong(&v29->_mapServiceManager, a11);
    objc_storeStrong(&v29->_navigationManager, a12);
    objc_storeStrong(&v29->_sessionStore, a13);
    objc_storeStrong(&v29->_eligibilityChecker, a14);
    latestLocationOfTheDevice = v29->_latestLocationOfTheDevice;
    v29->_latestLocationOfTheDevice = 0;
  }

  v31 = [(SMSuggestionsHelper *)v29 authorizationManager];
  v32 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  [v31 addObserver:v29 selector:sel_onAuthorizationNotification_ name:v32];

  v33 = v29;
  v34 = v33;
  v27 = v49;
LABEL_46:

  return v34;
}

- (void)_getFAFamilyMembersFromAAAFamilyWithHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = objc_alloc_init(MEMORY[0x277D08280]);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__SMSuggestionsHelper__getFAFamilyMembersFromAAAFamilyWithHandler___block_invoke;
    v7[3] = &unk_2788C9C60;
    v8 = v4;
    v9 = v3;
    v6 = v4;
    [v5 startRequestWithCompletionHandler:v7];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[SMSuggestionsHelper _getFAFamilyMembersFromAAAFamilyWithHandler:]";
      v12 = 1024;
      v13 = 139;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

uint64_t __67__SMSuggestionsHelper__getFAFamilyMembersFromAAAFamilyWithHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v5 = *(a1 + 32);
    v6 = [a2 members];
    [v5 addObjectsFromArray:v6];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)fetchMostLikelyReceiverHandlesWithOptions:(id)a3 handler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__SMSuggestionsHelper_fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke;
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
      *buf = 136315394;
      v14 = "[SMSuggestionsHelper fetchMostLikelyReceiverHandlesWithOptions:handler:]";
      v15 = 1024;
      v16 = 160;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)fetchMostLikelyReceiverHandlesWithHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__SMSuggestionsHelper_fetchMostLikelyReceiverHandlesWithHandler___block_invoke;
    v7[3] = &unk_2788C4938;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v5, v7);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[SMSuggestionsHelper fetchMostLikelyReceiverHandlesWithHandler:]";
      v11 = 1024;
      v12 = 174;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)_fetchMostLikelyReceiverHandlesWithHandler:(id)a3
{
  v4 = MEMORY[0x277D4AB18];
  v5 = a3;
  v6 = [v4 defaultOptions];
  [(SMSuggestionsHelper *)self _fetchMostLikelyReceiverHandlesWithOptions:v6 handler:v5];
}

- (void)_fetchMostLikelyReceiverHandlesWithOptions:(id)a3 handler:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v28 = a4;
  if (v28)
  {
    v7 = dispatch_group_create();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v10;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, starting", buf, 0x16u);
      }
    }

    v12 = objc_opt_new();
    v13 = objc_alloc(MEMORY[0x277D4AB80]);
    LOBYTE(v27) = 0;
    oslog = [v13 initWithBatchSize:*MEMORY[0x277D4AF00] fetchLimit:*MEMORY[0x277D4AF00] sortBySessionStartDate:1 ascending:0 sessionTypes:0 timeInADayInterval:0 pickOneConfigInTimeInADayInterval:v27 dateInterval:0 startBoundingBoxLocation:0 destinationBoundingBoxLocation:0 boundingBoxRadius:0 sessionIdentifier:0];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v67 = 0;
    dispatch_group_enter(v7);
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke;
    v61[3] = &unk_2788C9770;
    v61[4] = self;
    v64 = buf;
    v14 = v7;
    v62 = v14;
    v65 = a2;
    v15 = v12;
    v63 = v15;
    [(SMSuggestionsHelper *)self _getSessionConfigurationsWithOptions:oslog handler:v61];
    v59[0] = 0;
    v59[1] = v59;
    v59[2] = 0x2020000000;
    v60 = 0;
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x2020000000;
    v58 = 0;
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x2020000000;
    v56 = 0;
    v16 = objc_opt_new();
    v17 = objc_opt_new();
    v18 = objc_opt_new();
    if (([v30 requireOnlyPastSessionRecipients] & 1) == 0)
    {
      dispatch_group_enter(v14);
      if ([v30 requireOnlyFavoritedHandles])
      {
        v19 = v54;
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_55;
        v54[3] = &unk_2788C9568;
        v54[6] = v59;
        v54[4] = v16;
        v54[5] = v14;
        [(SMSuggestionsHelper *)self getFavoriteHandles:v54];
      }

      else
      {
        v19 = v53;
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_2_56;
        v53[3] = &unk_2788C9568;
        v53[6] = v59;
        v53[4] = v16;
        v53[5] = v14;
        [(SMSuggestionsHelper *)self getFavoriteContactHandles:v53];
      }

      dispatch_group_enter(v14);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_3;
      v49[3] = &unk_2788C9568;
      v52 = v57;
      v50 = v17;
      v20 = v14;
      v51 = v20;
      [(SMSuggestionsHelper *)self getEmergencyHandles:v49];
      dispatch_group_enter(v20);
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_4;
      v45[3] = &unk_2788C9568;
      v48 = v55;
      v46 = v18;
      v47 = v20;
      [(SMSuggestionsHelper *)self getiCloudFamilyHandles:v45];
    }

    v21 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_5;
    block[3] = &unk_2788C9D00;
    v32 = v14;
    v33 = self;
    v40 = buf;
    v41 = v57;
    v42 = v55;
    v43 = v59;
    v44 = a2;
    v34 = v15;
    v35 = v17;
    v36 = v18;
    v37 = v16;
    v38 = v30;
    v39 = v28;
    v22 = v16;
    v23 = v18;
    v24 = v17;
    v25 = v15;
    v26 = v14;
    dispatch_async(v21, block);

    _Block_object_dispose(v55, 8);
    _Block_object_dispose(v57, 8);
    _Block_object_dispose(v59, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    oslog = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMSuggestionsHelper _fetchMostLikelyReceiverHandlesWithOptions:handler:]";
      *&buf[12] = 1024;
      *&buf[14] = 193;
      _os_log_error_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_2;
  block[3] = &unk_2788C9C88;
  v18 = *(a1 + 56);
  v13 = v6;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v19 = *(a1 + 64);
  v16 = v5;
  v17 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_2(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 72) + 8) + 24) = 1;
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    dispatch_group_leave(v2);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = objc_opt_class();
        v5 = NSStringFromClass(v4);
        v6 = NSStringFromSelector(*(a1 + 80));
        v7 = [*(a1 + 56) count];
        *buf = 138412802;
        v43 = v5;
        v44 = 2112;
        v45 = v6;
        v46 = 2048;
        v47 = v7;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, %@, fetched sessionConfigurations count, %lu", buf, 0x20u);
      }
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = a1;
    v8 = *(a1 + 56);
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v38;
      *&v10 = 138412802;
      v34 = v10;
      do
      {
        v13 = 0;
        do
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v37 + 1) + 8 * v13);
          v15 = objc_autoreleasePoolPush();
          v16 = [v14 conversation];

          if (v16)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v25 = objc_opt_class();
                v26 = NSStringFromClass(v25);
                v27 = NSStringFromSelector(*(v36 + 80));
                v35 = [v14 conversation];
                v28 = [v35 receiverHandles];
                *buf = v34;
                v43 = v26;
                v44 = 2112;
                v45 = v27;
                v46 = 2112;
                v47 = v28;
                _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "%@, %@, sessionConfig handles, %@", buf, 0x20u);
              }
            }

            v18 = [v14 conversation];
            v19 = [v18 receiverHandles];
            v20 = [v19 count];

            if (v20 <= 1)
            {
              v21 = *(v36 + 64);
              v22 = [v14 conversation];
              v23 = [v22 receiverHandles];
              v24 = [v23 firstObject];
              [v21 addObject:v24];
            }
          }

          objc_autoreleasePoolPop(v15);
          ++v13;
        }

        while (v11 != v13);
        v11 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v11);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = NSStringFromSelector(*(v36 + 80));
        v33 = [*(v36 + 64) count];
        *buf = 138412802;
        v43 = v31;
        v44 = 2112;
        v45 = v32;
        v46 = 2048;
        v47 = v33;
        _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@, %@, session configuration handles count, %lu", buf, 0x20u);
      }
    }

    dispatch_group_leave(*(v36 + 40));
  }
}

void __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_55(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  if (v6 && [v6 count])
  {
    [*(a1 + 32) addObjectsFromArray:v6];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_2_56(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  if (v6 && [v6 count])
  {
    [*(a1 + 32) addObjectsFromArray:v6];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  if (v6 && [v6 count])
  {
    [*(a1 + 32) addObjectsFromArray:v6];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  if (v6 && [v6 count])
  {
    [*(a1 + 32) addObjectsFromArray:v6];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = dispatch_time(0, 5000000000);
  v4 = dispatch_group_wait(v2, v3) == 0;
  v5 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v6 = *(a1 + 112);
  v19 = *(a1 + 96);
  block[2] = __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_6;
  block[3] = &unk_2788C9CD8;
  v23 = v4;
  v20 = v6;
  v7 = *(a1 + 128);
  v21 = 0x4014000000000000;
  v22 = v7;
  v12 = *(a1 + 40);
  v8 = *(&v12 + 1);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v14 = v12;
  v15 = v11;
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  dispatch_async(v5, block);
}

void __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_6(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _submitMetricForFetchMostLikelyReceiverHandlesDidComplete:*(a1 + 136) didFetchSessionConfigurations:*(*(*(a1 + 88) + 8) + 24) didFetchEmergencyContacts:*(*(*(a1 + 96) + 8) + 24) didFetchICloudFamily:*(*(*(a1 + 104) + 8) + 24) didFetchFavorites:*(*(*(a1 + 112) + 8) + 24) timeout:*(a1 + 120)];
  if ((*(a1 + 136) & 1) == 0)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(*(a1 + 128));
      *buf = 138412802;
      v38 = v26;
      v39 = 2112;
      v40 = v27;
      v41 = 2112;
      v42 = v2;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@, %@, timed out waiting for completion, metric, %@", buf, 0x20u);
    }
  }

  v4 = objc_opt_new();
  [v4 addObjectsFromArray:*(a1 + 40)];
  [v4 addObjectsFromArray:*(a1 + 48)];
  [v4 addObjectsFromArray:*(a1 + 56)];
  [v4 addObjectsFromArray:*(a1 + 64)];
  v5 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      v10 = 0;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 canonicalizedHandle];
        if (v13)
        {
          [v5 addObject:v13];
        }

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  v14 = objc_opt_new();
  v15 = objc_opt_new();
  if ([v5 count])
  {
    v16 = 0;
    do
    {
      v17 = objc_autoreleasePoolPush();
      v18 = [v5 objectAtIndexedSubscript:v16];
      v19 = [v15 containsObject:v18];

      if ((v19 & 1) == 0)
      {
        v20 = [v5 objectAtIndexedSubscript:v16];
        [v15 addObject:v20];

        v21 = [v5 objectAtIndexedSubscript:v16];
        [v14 addObject:v21];
      }

      objc_autoreleasePoolPop(v17);
      ++v16;
    }

    while (v16 < [v5 count]);
  }

  v22 = *(a1 + 32);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_58;
  v28[3] = &unk_2788C9CB0;
  v31 = *(a1 + 128);
  v28[4] = v22;
  v29 = v14;
  v23 = *(a1 + 72);
  v30 = *(a1 + 80);
  v24 = v14;
  [v22 _filterHandles:v24 options:v23 handler:v28];
}

void __74__SMSuggestionsHelper__fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_58(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(*(a1 + 56));
      v8 = [*(a1 + 40) count];
      v11 = 138412802;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, deduped handles count, %lu", &v11, 0x20u);
    }
  }

  v9 = *(a1 + 48);
  v10 = [v3 copy];
  (*(v9 + 16))(v9, v10, 0);
}

- (void)_filterHandles:(id)a3 options:(id)a4 handler:(id)a5
{
  v93 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v36 = v9;
  v35 = v8;
  if ([v9 hasNoFilters])
  {
    v10[2](v10, v8, 0);
  }

  else
  {
    v34 = v10;
    v11 = dispatch_group_create();
    v82[0] = 0;
    v82[1] = v82;
    v82[2] = 0x3032000000;
    v82[3] = __Block_byref_object_copy__61;
    v82[4] = __Block_byref_object_dispose__61;
    v83 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v80[0] = 0;
    v80[1] = v80;
    v80[2] = 0x3032000000;
    v80[3] = __Block_byref_object_copy__61;
    v80[4] = __Block_byref_object_dispose__61;
    v81 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v74 = 0;
    v75 = &v74;
    v76 = 0x3032000000;
    v77 = __Block_byref_object_copy__61;
    v78 = __Block_byref_object_dispose__61;
    v12 = v8;
    v79 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if ([v9 requireEligibility])
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = v8;
      v13 = [obj countByEnumeratingWithState:&v70 objects:v92 count:16];
      if (v13)
      {
        v14 = *v71;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v71 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v70 + 1) + 8 * i);
            dispatch_group_enter(v11);
            v17 = [(SMSuggestionsHelper *)self eligibilityChecker];
            v66[0] = MEMORY[0x277D85DD0];
            v66[1] = 3221225472;
            v66[2] = __54__SMSuggestionsHelper__filterHandles_options_handler___block_invoke;
            v66[3] = &unk_2788C9D50;
            v66[4] = self;
            v66[5] = v16;
            v68 = v82;
            v69 = a2;
            v67 = v11;
            [v17 checkReceiverEligibility:v16 handler:v66];
          }

          v13 = [obj countByEnumeratingWithState:&v70 objects:v92 count:16];
        }

        while (v13);
      }

      v12 = v35;
    }

    if ([v36 requireContact])
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      obja = v12;
      v18 = [obja countByEnumeratingWithState:&v62 objects:v91 count:16];
      if (v18)
      {
        v19 = *v63;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v63 != v19)
            {
              objc_enumerationMutation(obja);
            }

            v21 = *(*(&v62 + 1) + 8 * j);
            dispatch_group_enter(v11);
            v22 = [(SMSuggestionsHelper *)self contactsManager];
            v23 = [v21 primaryHandle];
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __54__SMSuggestionsHelper__filterHandles_options_handler___block_invoke_61;
            v58[3] = &unk_2788C9DA0;
            v58[4] = self;
            v58[5] = v21;
            v60 = v80;
            v61 = a2;
            v59 = v11;
            [v22 fetchContactsFromEmailOrPhoneNumberString:v23 handler:v58];
          }

          v18 = [obja countByEnumeratingWithState:&v62 objects:v91 count:16];
        }

        while (v18);
      }

      v12 = v35;
    }

    if ([v36 requireNonBlockedContact])
    {
      dispatch_group_enter(v11);
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v38 = v12;
      v24 = [v38 countByEnumeratingWithState:&v54 objects:v90 count:16];
      if (v24)
      {
        objb = *v55;
        do
        {
          for (k = 0; k != v24; ++k)
          {
            if (*v55 != objb)
            {
              objc_enumerationMutation(v38);
            }

            v26 = *(*(&v54 + 1) + 8 * k);
            v27 = [SMSuggestionsHelper getSMContactInformationFromSMHandle:v26];
            v53 = 0;
            v28 = [SMSuggestionsHelper isContactBlocked:v27 error:&v53];
            v29 = v53;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                v31 = NSStringFromSelector(a2);
                *buf = 138412802;
                v85 = v31;
                v86 = 2112;
                v87 = v26;
                v88 = 1024;
                v89 = v28;
                v37 = v31;
                _os_log_debug_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEBUG, "%@, handle, %@, isContactBlocked, %{Bool}d", buf, 0x1Cu);
              }
            }

            if (!v28)
            {
              [v75[5] addObject:v26];
            }
          }

          v24 = [v38 countByEnumeratingWithState:&v54 objects:v90 count:16];
        }

        while (v24);
      }

      dispatch_group_leave(v11);
      v12 = v35;
    }

    v32 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SMSuggestionsHelper__filterHandles_options_handler___block_invoke_64;
    block[3] = &unk_2788C9DF0;
    v44 = v11;
    v45 = self;
    v46 = v12;
    v47 = v36;
    v49 = v82;
    v50 = v80;
    v51 = &v74;
    v52 = a2;
    v48 = v34;
    v33 = v11;
    dispatch_async(v32, block);

    _Block_object_dispose(&v74, 8);
    _Block_object_dispose(v80, 8);

    _Block_object_dispose(v82, 8);
    v10 = v34;
  }
}

void __54__SMSuggestionsHelper__filterHandles_options_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SMSuggestionsHelper__filterHandles_options_handler___block_invoke_2;
  block[3] = &unk_2788C9D28;
  v8 = *(a1 + 40);
  v15 = *(a1 + 64);
  v16 = a2;
  block[4] = v8;
  v13 = v6;
  v11 = *(a1 + 48);
  v9 = v11;
  v14 = v11;
  v10 = v6;
  dispatch_async(v7, block);
}

void __54__SMSuggestionsHelper__filterHandles_options_handler___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 72);
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = 138413058;
      v8 = v3;
      v9 = 2112;
      v10 = v5;
      v11 = 2048;
      v12 = v4;
      v13 = 2112;
      v14 = v6;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "%@, handle, %@, eligibility, %ld, error, %@", &v7, 0x2Au);
    }
  }

  if (*(a1 + 72) == 1)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:*(a1 + 32)];
  }

  dispatch_group_leave(*(a1 + 48));
}

void __54__SMSuggestionsHelper__filterHandles_options_handler___block_invoke_61(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SMSuggestionsHelper__filterHandles_options_handler___block_invoke_2_62;
  block[3] = &unk_2788C9D78;
  v11 = *(a1 + 64);
  block[4] = *(a1 + 40);
  v9 = v3;
  v7 = *(a1 + 48);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void __54__SMSuggestionsHelper__filterHandles_options_handler___block_invoke_2_62(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = NSStringFromSelector(*(a1 + 64));
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) firstObject];
      *v7 = 138412802;
      *&v7[4] = v4;
      v8 = 2112;
      v9 = v5;
      v10 = 1024;
      v11 = v6 != 0;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "%@, handle, %@, isContact, %{Bool}d", v7, 0x1Cu);
    }
  }

  v3 = [*(a1 + 40) firstObject];

  if (v3)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:*(a1 + 32)];
  }

  dispatch_group_leave(*(a1 + 48));
}

void __54__SMSuggestionsHelper__filterHandles_options_handler___block_invoke_64(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = dispatch_time(0, 5000000000);
  v4 = dispatch_group_wait(v2, v3) == 0;
  v5 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SMSuggestionsHelper__filterHandles_options_handler___block_invoke_2_65;
  block[3] = &unk_2788C9DC8;
  v11 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = *(a1 + 64);
  v15 = *(a1 + 80);
  v17 = v4;
  v7 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v16 = *(a1 + 96);
  v8 = v9;
  v14 = v9;
  dispatch_async(v5, block);
}

void __54__SMSuggestionsHelper__filterHandles_options_handler___block_invoke_2_65(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB40] orderedSetWithArray:*(a1 + 32)];
  if ([*(a1 + 40) requireEligibility])
  {
    [v2 intersectSet:*(*(*(a1 + 64) + 8) + 40)];
  }

  if ([*(a1 + 40) requireContact])
  {
    [v2 intersectSet:*(*(*(a1 + 72) + 8) + 40)];
  }

  if ([*(a1 + 40) requireNonBlockedContact])
  {
    [v2 intersectSet:*(*(*(a1 + 80) + 8) + 40)];
  }

  if (*(a1 + 96))
  {
    if (![*(a1 + 40) firstResultOnly] || !objc_msgSend(v2, "count"))
    {
      v9 = *(a1 + 56);
      v4 = [v2 array];
      (*(v9 + 16))(v9, v4, 0);
      goto LABEL_18;
    }

    v3 = *(a1 + 56);
    v4 = [v2 firstObject];
    v13 = v4;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v13;
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(*(a1 + 88));
      *buf = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, %@, timed out waiting for completion", buf, 0x16u);
    }

    if (![*(a1 + 40) firstResultOnly] || !objc_msgSend(v2, "count"))
    {
      (*(*(a1 + 56) + 16))();
      goto LABEL_20;
    }

    v3 = *(a1 + 56);
    v4 = [v2 firstObject];
    v14 = v4;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v14;
  }

  v8 = [v5 arrayWithObjects:v6 count:{1, v13, v14}];
  (*(v3 + 16))(v3, v8, 0);

LABEL_18:
LABEL_20:
}

+ (id)getSMContactInformationFromSMHandle:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "+[SMSuggestionsHelper getSMContactInformationFromSMHandle:]";
      v18 = 1024;
      v19 = 505;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handle (in %s:%d)", &v16, 0x12u);
    }
  }

  v5 = MEMORY[0x277D4AAE8];
  v6 = [v3 primaryHandle];
  v7 = [v5 getSMHandleTypeWithHandle:v6];

  if (v7 == 1)
  {
    v13 = objc_alloc(MEMORY[0x277D4AA88]);
    v9 = [v3 primaryHandle];
    v10 = v13;
    v11 = 0;
    v12 = v9;
    goto LABEL_9;
  }

  if (v7 == 2)
  {
    v8 = objc_alloc(MEMORY[0x277D4AA88]);
    v9 = [v3 primaryHandle];
    v10 = v8;
    v11 = v9;
    v12 = 0;
LABEL_9:
    v14 = [v10 initWithEmail:v11 phoneNumber:v12];

    goto LABEL_11;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

+ (BOOL)isContactBlocked:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 email];

    if (v8)
    {
      v11 = [v7 email];
      v9 = CMFItemCreateWithEmailAddress();

      IsItemBlocked = CMFBlockListIsItemBlocked();
      LOBYTE(v11) = IsItemBlocked != 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          v15 = NSStringFromSelector(a2);
          v16 = v15;
          v17 = @"NO";
          v33 = 138413058;
          v34 = v14;
          v35 = 2112;
          if (IsItemBlocked)
          {
            v17 = @"YES";
          }

          v36 = v15;
          v37 = 2112;
          v38 = v9;
          v39 = 2112;
          v40 = v17;
          _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, email, %@, isBlocked, %@", &v33, 0x2Au);
        }
      }

      if (v9)
      {
        v18 = v9;
LABEL_28:
        CFRelease(v18);
      }
    }

    else
    {
      v11 = [v7 phoneNumber];

      if (v11)
      {
        v20 = CPPhoneNumberCopyHomeCountryCode();
        v21 = [v7 phoneNumber];
        v22 = [v7 phoneNumber];
        [v22 containsString:@"+"];
        v23 = CFPhoneNumberCreate();

        v24 = CMFItemCreateWithPhoneNumber();
        v25 = CMFBlockListIsItemBlocked();
        LOBYTE(v11) = v25 != 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            v29 = NSStringFromSelector(a2);
            v30 = v29;
            v33 = 138413314;
            v31 = @"NO";
            v34 = v28;
            v35 = 2112;
            if (v25)
            {
              v31 = @"YES";
            }

            v36 = v29;
            v37 = 2112;
            v38 = v24;
            v39 = 2112;
            v40 = v20;
            v41 = 2112;
            v42 = v31;
            _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, %@, phoneNumber, %@, countryCode, %@, isBlocked, %@", &v33, 0x34u);
          }
        }

        if (v20)
        {
          CFRelease(v20);
        }

        if (v24)
        {
          CFRelease(v24);
        }

        if (v23)
        {
          v18 = v23;
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v33) = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contactInformation", &v33, 2u);
    }

    if (a4)
    {
      _RTErrorInvalidParameterCreate(@"contactInformation");
      *a4 = LOBYTE(v11) = 0;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

- (void)getFavoriteHandles:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [(SMSuggestionsHelper *)self contactsManager];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__SMSuggestionsHelper_getFavoriteHandles___block_invoke;
    v9[3] = &unk_2788C6260;
    v9[4] = self;
    v11 = v5;
    v12 = a2;
    v10 = v6;
    v8 = v6;
    [v7 fetchFavoriteHandlesWithHandler:v9];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[SMSuggestionsHelper getFavoriteHandles:]";
      v15 = 1024;
      v16 = 576;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __42__SMSuggestionsHelper_getFavoriteHandles___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__SMSuggestionsHelper_getFavoriteHandles___block_invoke_2;
  v13[3] = &unk_2788C6238;
  v14 = v6;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v18 = v8;
  v19 = v9;
  v10 = *(a1 + 40);
  v15 = *(a1 + 32);
  v16 = v5;
  v17 = v10;
  v11 = v5;
  v12 = v6;
  dispatch_async(v7, v13);
}

void __42__SMSuggestionsHelper_getFavoriteHandles___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 64) + 16);

    v2();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = objc_opt_class();
        v5 = NSStringFromClass(v4);
        v6 = NSStringFromSelector(*(a1 + 72));
        v7 = [*(a1 + 48) count];
        *buf = 138412802;
        v25 = v5;
        v26 = 2112;
        v27 = v6;
        v28 = 2048;
        v29 = v7;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, %@, fetched favorite handles count, %lu", buf, 0x20u);
      }
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = *(a1 + 48);
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      v12 = MEMORY[0x277CBEBF8];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = objc_alloc(MEMORY[0x277D4AAE8]);
          v16 = [v15 initWithPrimaryHandle:v14 secondaryHandles:{v12, v19}];
          [*(a1 + 56) addObject:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v17 = *(a1 + 64);
    v18 = [*(a1 + 56) copy];
    (*(v17 + 16))(v17, v18, 0);
  }
}

- (void)getFavoriteContactHandles:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [(SMSuggestionsHelper *)self contactsManager];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__SMSuggestionsHelper_getFavoriteContactHandles___block_invoke;
    v9[3] = &unk_2788C6260;
    v9[4] = self;
    v11 = v5;
    v12 = a2;
    v10 = v6;
    v8 = v6;
    [v7 fetchFavoriteContactsWithHandler:v9];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[SMSuggestionsHelper getFavoriteContactHandles:]";
      v15 = 1024;
      v16 = 606;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __49__SMSuggestionsHelper_getFavoriteContactHandles___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__SMSuggestionsHelper_getFavoriteContactHandles___block_invoke_2;
  v13[3] = &unk_2788C6238;
  v14 = v6;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v18 = v8;
  v19 = v9;
  v10 = *(a1 + 40);
  v15 = *(a1 + 32);
  v16 = v5;
  v17 = v10;
  v11 = v5;
  v12 = v6;
  dispatch_async(v7, v13);
}

void __49__SMSuggestionsHelper_getFavoriteContactHandles___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 64) + 16);

    v2();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = objc_opt_class();
        v5 = NSStringFromClass(v4);
        v6 = NSStringFromSelector(*(a1 + 72));
        v7 = [*(a1 + 48) count];
        *buf = 138412802;
        v20 = v5;
        v21 = 2112;
        v22 = v6;
        v23 = 2048;
        v24 = v7;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, %@, fetched favorite contacts count, %lu", buf, 0x20u);
      }
    }

    v8 = *(a1 + 48);
    v18 = 0;
    v9 = [SMSuggestionsHelper getSMHandlesFromRTContacts:v8 error:&v18];
    v10 = v18;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(*(a1 + 72));
        v15 = [v9 count];
        *buf = 138412802;
        v20 = v13;
        v21 = 2112;
        v22 = v14;
        v23 = 2048;
        v24 = v15;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, favorites contacts handles count, %lu", buf, 0x20u);
      }
    }

    if (v10)
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      if (v9 && [v9 count])
      {
        [*(a1 + 56) addObjectsFromArray:v9];
      }

      v16 = *(a1 + 64);
      v17 = [*(a1 + 56) copy];
      (*(v16 + 16))(v16, v17, 0);
    }
  }
}

- (void)getEmergencyHandles:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [(SMSuggestionsHelper *)self healthKitManager];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__SMSuggestionsHelper_getEmergencyHandles___block_invoke;
    v9[3] = &unk_2788C6260;
    v9[4] = self;
    v11 = v5;
    v12 = a2;
    v10 = v6;
    v8 = v6;
    [v7 fetchEmergencyContactsWithHandler:v9];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[SMSuggestionsHelper getEmergencyHandles:]";
      v15 = 1024;
      v16 = 651;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __43__SMSuggestionsHelper_getEmergencyHandles___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__SMSuggestionsHelper_getEmergencyHandles___block_invoke_2;
  v13[3] = &unk_2788C6238;
  v14 = v6;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v18 = v8;
  v19 = v9;
  v10 = *(a1 + 40);
  v15 = *(a1 + 32);
  v16 = v5;
  v17 = v10;
  v11 = v5;
  v12 = v6;
  dispatch_async(v7, v13);
}

void __43__SMSuggestionsHelper_getEmergencyHandles___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 64) + 16);

    v2();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = objc_opt_class();
        v5 = NSStringFromClass(v4);
        v6 = NSStringFromSelector(*(a1 + 72));
        v7 = [*(a1 + 48) count];
        *buf = 138412802;
        v20 = v5;
        v21 = 2112;
        v22 = v6;
        v23 = 2048;
        v24 = v7;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, %@, fetched emergency contacts count, %lu", buf, 0x20u);
      }
    }

    v8 = *(a1 + 48);
    v18 = 0;
    v9 = [SMSuggestionsHelper getSMHandlesFromRTContacts:v8 error:&v18];
    v10 = v18;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(*(a1 + 72));
        v15 = [v9 count];
        *buf = 138412802;
        v20 = v13;
        v21 = 2112;
        v22 = v14;
        v23 = 2048;
        v24 = v15;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, emergency contacts handles count, %lu", buf, 0x20u);
      }
    }

    if (v10)
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      if (v9 && [v9 count])
      {
        [*(a1 + 56) addObjectsFromArray:v9];
      }

      v16 = *(a1 + 64);
      v17 = [*(a1 + 56) copy];
      (*(v16 + 16))(v16, v17, 0);
    }
  }
}

- (void)getiCloudFamilyHandles:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = objc_opt_new();
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__SMSuggestionsHelper_getiCloudFamilyHandles___block_invoke;
    v8[3] = &unk_2788C6260;
    v8[4] = self;
    v11 = a2;
    v9 = v6;
    v10 = v5;
    v7 = v6;
    [(SMSuggestionsHelper *)self _getFAFamilyMembersFromAAAFamilyWithHandler:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[SMSuggestionsHelper getiCloudFamilyHandles:]";
      v14 = 1024;
      v15 = 697;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __46__SMSuggestionsHelper_getiCloudFamilyHandles___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SMSuggestionsHelper_getiCloudFamilyHandles___block_invoke_2;
  block[3] = &unk_2788C4CC0;
  v8 = *(a1 + 32);
  v14 = v6;
  v15 = v8;
  v12 = *(a1 + 48);
  v9 = v12;
  v18 = v12;
  v16 = v5;
  v17 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void __46__SMSuggestionsHelper_getiCloudFamilyHandles___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = NSStringFromSelector(*(a1 + 72));
      v27 = *(a1 + 32);
      *buf = 138412802;
      v35 = v25;
      v36 = 2112;
      v37 = v26;
      v38 = 2112;
      v39 = v27;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "%@, %@, iCloud family query errored, %@", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v3 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v4 = *(a1 + 48);
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v30;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v29 + 1) + 8 * i);
          if (![v9 memberType] && (objc_msgSend(v9, "isMe") & 1) == 0)
          {
            [v3 addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v6);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(*(a1 + 72));
        v14 = [v3 count];
        *buf = 138412802;
        v35 = v12;
        v36 = 2112;
        v37 = v13;
        v38 = 2048;
        v39 = v14;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, Adult iCloud family members count, %lu", buf, 0x20u);
      }
    }

    v28 = 0;
    v15 = [SMSuggestionsHelper getSMHandlesFromFAFamilyMembers:v3 error:&v28];
    v16 = v28;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = NSStringFromSelector(*(a1 + 72));
        v21 = [v15 count];
        *buf = 138412802;
        v35 = v19;
        v36 = 2112;
        v37 = v20;
        v38 = 2048;
        v39 = v21;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, %@, iCloud family handles count, %lu", buf, 0x20u);
      }
    }

    if (v16)
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      if (v15 && [v15 count])
      {
        [*(a1 + 56) addObjectsFromArray:v15];
      }

      v22 = *(a1 + 64);
      v23 = [*(a1 + 56) copy];
      (*(v22 + 16))(v22, v23, 0);
    }
  }
}

- (id)canonicalizeHandles:(id)a3
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

        v10 = [*(*(&v12 + 1) + 8 * i) canonicalizedHandle];
        if (v10)
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

- (void)fetchNumFavoriteRecipientsWithReceiverHandles:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__SMSuggestionsHelper_fetchNumFavoriteRecipientsWithReceiverHandles_handler___block_invoke;
  v11[3] = &unk_2788C9E18;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v14 = a2;
  v9 = v7;
  v10 = v8;
  [(SMSuggestionsHelper *)self getFavoriteContactHandles:v11];
}

void __77__SMSuggestionsHelper_fetchNumFavoriteRecipientsWithReceiverHandles_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 48) + 16);
LABEL_11:
    v7();
    goto LABEL_12;
  }

  if (!v5 || ![v5 count])
  {
    v7 = *(*(a1 + 48) + 16);
    goto LABEL_11;
  }

  v8 = [*(a1 + 32) canonicalizeHandles:*(a1 + 40)];
  v9 = [*(a1 + 32) canonicalizeHandles:v5];
  v10 = [MEMORY[0x277CBEB58] setWithArray:v8];
  v11 = [MEMORY[0x277CBEB98] setWithArray:v9];
  [v10 intersectSet:v11];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(*(a1 + 56));
      v16 = 138412802;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      v20 = 2048;
      v21 = [v10 count];
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, Common handle count between receiverHandles & favorite handles: %lu", &v16, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), [v10 count], 0);

LABEL_12:
}

- (void)fetchNumEmergencyRecipientsWithReceiverHandles:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__SMSuggestionsHelper_fetchNumEmergencyRecipientsWithReceiverHandles_handler___block_invoke;
  v11[3] = &unk_2788C9E18;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v14 = a2;
  v9 = v7;
  v10 = v8;
  [(SMSuggestionsHelper *)self getEmergencyHandles:v11];
}

void __78__SMSuggestionsHelper_fetchNumEmergencyRecipientsWithReceiverHandles_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 48) + 16);
LABEL_11:
    v7();
    goto LABEL_12;
  }

  if (!v5 || ![v5 count])
  {
    v7 = *(*(a1 + 48) + 16);
    goto LABEL_11;
  }

  v8 = [*(a1 + 32) canonicalizeHandles:*(a1 + 40)];
  v9 = [*(a1 + 32) canonicalizeHandles:v5];
  v10 = [MEMORY[0x277CBEB58] setWithArray:v8];
  v11 = [MEMORY[0x277CBEB98] setWithArray:v9];
  [v10 intersectSet:v11];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(*(a1 + 56));
      v16 = 138412802;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      v20 = 2048;
      v21 = [v10 count];
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, Common handle count between receiverHandles & emergency handles: %lu", &v16, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), [v10 count], 0);

LABEL_12:
}

- (void)fetchNumiCloudFamilyRecipientsWithReceiverHandles:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__SMSuggestionsHelper_fetchNumiCloudFamilyRecipientsWithReceiverHandles_handler___block_invoke;
  v11[3] = &unk_2788C9E18;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v14 = a2;
  v9 = v7;
  v10 = v8;
  [(SMSuggestionsHelper *)self getiCloudFamilyHandles:v11];
}

void __81__SMSuggestionsHelper_fetchNumiCloudFamilyRecipientsWithReceiverHandles_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 48) + 16);
LABEL_11:
    v7();
    goto LABEL_12;
  }

  if (!v5 || ![v5 count])
  {
    v7 = *(*(a1 + 48) + 16);
    goto LABEL_11;
  }

  v8 = [*(a1 + 32) canonicalizeHandles:*(a1 + 40)];
  v9 = [*(a1 + 32) canonicalizeHandles:v5];
  v10 = [MEMORY[0x277CBEB58] setWithArray:v8];
  v11 = [MEMORY[0x277CBEB98] setWithArray:v9];
  [v10 intersectSet:v11];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(*(a1 + 56));
      v16 = 138412802;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      v20 = 2048;
      v21 = [v10 count];
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, Common handle count between receiverHandles & iCloud family handles: %lu", &v16, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), [v10 count], 0);

LABEL_12:
}

- (id)_submitMetricForFetchMostLikelyReceiverHandlesDidComplete:(BOOL)a3 didFetchSessionConfigurations:(BOOL)a4 didFetchEmergencyContacts:(BOOL)a5 didFetchICloudFamily:(BOOL)a6 didFetchFavorites:(BOOL)a7 timeout:(double)a8
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v25[6] = *MEMORY[0x277D85DE8];
  v24[0] = @"didComplete";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v25[0] = v13;
  v24[1] = @"didFetchSessionConfigurations";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v12];
  v25[1] = v14;
  v24[2] = @"didFetchEmergencyContacts";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v11];
  v25[2] = v15;
  v24[3] = @"didFetchICloudFamily";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  v25[3] = v16;
  v24[4] = @"didFetchFavorites";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  v25[4] = v17;
  v24[5] = @"timeout";
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:a8];
  v25[5] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:6];

  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v21 = [v20 initWithCString:RTAnalyticsEventSafetyMonitorFetchMostLikelyReceiverHandlesCompletion encoding:1];
  log_analytics_submission(v21, v19);
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v21];
  AnalyticsSendEvent();

  return v19;
}

- (void)fetchMostLikelySessionDestinationsWithHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__SMSuggestionsHelper_fetchMostLikelySessionDestinationsWithHandler___block_invoke;
    v7[3] = &unk_2788C4938;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v5, v7);
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[SMSuggestionsHelper fetchMostLikelySessionDestinationsWithHandler:]";
      v11 = 1024;
      v12 = 885;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)_fetchMostLikelySessionDestinationsWithHandler:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if ([(SMSuggestionsHelper *)self routineEnabled])
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __70__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithHandler___block_invoke;
      v15[3] = &unk_2788C9E40;
      v15[4] = self;
      v17 = a2;
      v16 = v5;
      [(SMSuggestionsHelper *)self _refreshCurrentLocationWithHandler:v15];
    }

    else
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = *MEMORY[0x277D01448];
      v24 = *MEMORY[0x277CCA450];
      v25[0] = @"Significant Locations disabled";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v10 = [v7 errorWithDomain:v8 code:2 userInfo:v9];

      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        *buf = 138412802;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        v22 = 2112;
        v23 = @"Significant Locations disabled";
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, %@, authorization error, %@", buf, 0x20u);
      }

      (*(v5 + 2))(v5, 0, 0, MEMORY[0x277CBEBF8], v10);
    }
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[SMSuggestionsHelper _fetchMostLikelySessionDestinationsWithHandler:]";
      v20 = 1024;
      LODWORD(v21) = 899;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __70__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithHandler___block_invoke_2;
  block[3] = &unk_2788C4C20;
  v6 = *(a1 + 32);
  v11 = v4;
  v12 = v6;
  v9 = *(a1 + 40);
  v7 = v9;
  v13 = v9;
  v8 = v4;
  dispatch_async(v5, block);
}

void __70__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 56));
      v7 = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v2;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@, %@, location error, %@", &v7, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 40) _fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler:*(a1 + 48)];
  }
}

- (void)_fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler:(id)a3
{
  v128 = *MEMORY[0x277D85DE8];
  v36 = a3;
  if (v36)
  {
    v5 = dispatch_group_create();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v125 = __Block_byref_object_copy__61;
    v126 = __Block_byref_object_dispose__61;
    v127 = 0;
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v121[0] = 0;
    v121[1] = v121;
    v121[2] = 0x3032000000;
    v121[3] = __Block_byref_object_copy__61;
    v121[4] = __Block_byref_object_dispose__61;
    v122 = 0;
    v119[0] = 0;
    v119[1] = v119;
    v119[2] = 0x3032000000;
    v119[3] = __Block_byref_object_copy__61;
    v119[4] = __Block_byref_object_dispose__61;
    v120 = 0;
    v117[0] = 0;
    v117[1] = v117;
    v117[2] = 0x3032000000;
    v117[3] = __Block_byref_object_copy__61;
    v117[4] = __Block_byref_object_dispose__61;
    v118 = 0;
    v115[0] = 0;
    v115[1] = v115;
    v115[2] = 0x2020000000;
    v116 = 0;
    dispatch_group_enter(v5);
    v8 = [(SMSuggestionsHelper *)self navigationManager];
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke;
    v106[3] = &unk_2788C9E90;
    v106[4] = self;
    v110 = v115;
    v111 = v121;
    v112 = v119;
    v114 = a2;
    v38 = v7;
    v107 = v38;
    v37 = v6;
    v108 = v37;
    v113 = v117;
    v9 = v5;
    v109 = v9;
    [v8 fetchNavigationRouteSummaryWithHandler:v106];
    v39 = a2;
    v40 = self;

    v105[0] = 0;
    v105[1] = v105;
    v105[2] = 0x2020000000;
    v105[3] = 0x7FEFFFFFFFFFFFFFLL;
    v103[0] = 0;
    v103[1] = v103;
    v103[2] = 0x3032000000;
    v103[3] = __Block_byref_object_copy__61;
    v103[4] = __Block_byref_object_dispose__61;
    v104 = 0;
    v99 = 0;
    v100 = &v99;
    v101 = 0x2020000000;
    v102 = 0;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v10 = [&unk_2845A0DA0 countByEnumeratingWithState:&v95 objects:v123 count:16];
    if (v10)
    {
      v11 = *v96;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v96 != v11)
          {
            objc_enumerationMutation(&unk_2845A0DA0);
          }

          v13 = *(*(&v95 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v89 = 0;
          v90 = &v89;
          v91 = 0x3032000000;
          v92 = __Block_byref_object_copy__61;
          v93 = __Block_byref_object_dispose__61;
          v94 = 0;
          ++*(v100 + 6);
          dispatch_group_enter(v9);
          v15 = [(SMSuggestionsHelper *)v40 learnedLocationManager];
          v16 = [v13 unsignedIntegerValue];
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_127;
          v78[3] = &unk_2788C9EE0;
          v78[4] = v40;
          v83 = &v99;
          v84 = buf;
          v85 = &v89;
          v88 = a2;
          v79 = v38;
          v80 = v9;
          v81 = v13;
          v86 = v105;
          v87 = v103;
          v82 = v37;
          [v15 fetchLocationsOfInterestWithPlaceType:v16 handler:v78];

          _Block_object_dispose(&v89, 8);
          objc_autoreleasePoolPop(v14);
        }

        v10 = [&unk_2845A0DA0 countByEnumeratingWithState:&v95 objects:v123 count:16];
      }

      while (v10);
    }

    v89 = 0;
    v90 = &v89;
    v91 = 0x3032000000;
    v92 = __Block_byref_object_copy__61;
    v93 = __Block_byref_object_dispose__61;
    v94 = objc_opt_new();
    v76[0] = 0;
    v76[1] = v76;
    v76[2] = 0x2020000000;
    v77 = 0;
    dispatch_group_enter(v9);
    v17 = [(SMSuggestionsHelper *)v40 latestLocationOfTheDevice];
    v18 = [MEMORY[0x277CBEAA8] date];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_131;
    v69[3] = &unk_2788C9F30;
    v69[4] = v40;
    v73 = v76;
    v75 = a2;
    v19 = v38;
    v70 = v19;
    v20 = v37;
    v71 = v20;
    v74 = &v89;
    v21 = v9;
    v72 = v21;
    [(SMSuggestionsHelper *)v40 _getNPLOIsWithOnlyHighConfidence:0 location:v17 date:v18 handler:v69];

    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x2020000000;
    v68 = 0;
    dispatch_group_enter(v21);
    v22 = objc_alloc(MEMORY[0x277D4AB80]);
    LOBYTE(v35) = 0;
    v23 = [v22 initWithBatchSize:*MEMORY[0x277D4AF00] fetchLimit:*MEMORY[0x277D4AF00] sortBySessionStartDate:1 ascending:0 sessionTypes:&unk_2845A0DB8 timeInADayInterval:0 pickOneConfigInTimeInADayInterval:v35 dateInterval:0 startBoundingBoxLocation:0 destinationBoundingBoxLocation:0 boundingBoxRadius:0 sessionIdentifier:0];
    v65[0] = 0;
    v65[1] = v65;
    v65[2] = 0x3032000000;
    v65[3] = __Block_byref_object_copy__61;
    v65[4] = __Block_byref_object_dispose__61;
    v66 = 0;
    v24 = objc_opt_new();
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_138;
    v57[3] = &unk_2788C9FF8;
    v57[4] = v40;
    v62 = v65;
    v64 = a2;
    v25 = v19;
    v58 = v25;
    v26 = v20;
    v59 = v26;
    v27 = v24;
    v60 = v27;
    v28 = v21;
    v61 = v28;
    v63 = v67;
    [(SMSuggestionsHelper *)v40 _getSessionConfigurationsWithOptions:v23 handler:v57];
    v29 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_2_148;
    block[3] = &unk_2788CA048;
    v42 = v28;
    v43 = v40;
    v49 = &v99;
    v50 = v76;
    v51 = v67;
    v52 = v117;
    v53 = v103;
    v54 = v105;
    v55 = &v89;
    v56 = v39;
    v44 = v27;
    v45 = v26;
    v48 = v115;
    v46 = v25;
    v47 = v36;
    v30 = v25;
    v31 = v26;
    v32 = v27;
    v33 = v28;
    dispatch_async(v29, block);

    _Block_object_dispose(v65, 8);
    _Block_object_dispose(v67, 8);

    _Block_object_dispose(v76, 8);
    _Block_object_dispose(&v89, 8);

    _Block_object_dispose(&v99, 8);
    _Block_object_dispose(v103, 8);

    _Block_object_dispose(v105, 8);
    _Block_object_dispose(v115, 8);
    _Block_object_dispose(v117, 8);

    _Block_object_dispose(v119, 8);
    _Block_object_dispose(v121, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMSuggestionsHelper _fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler:]";
      *&buf[12] = 1024;
      *&buf[14] = 940;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_2;
  block[3] = &unk_2788C9E68;
  v22 = *(a1 + 64);
  v8 = *(a1 + 80);
  v18 = v5;
  v19 = v6;
  v9 = *(a1 + 96);
  v23 = v8;
  v25 = v9;
  v16 = *(a1 + 32);
  v10 = *(&v16 + 1);
  v11 = *(a1 + 48);
  v24 = *(a1 + 88);
  v12 = *(a1 + 56);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  v20 = v16;
  v21 = v13;
  v14 = v6;
  v15 = v5;
  dispatch_async(v7, block);
}

void __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_2(uint64_t a1)
{
  v119[1] = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 80) + 8) + 24) = 1;
  objc_storeStrong((*(*(a1 + 88) + 8) + 40), *(a1 + 32));
  objc_storeStrong((*(*(a1 + 96) + 8) + 40), *(a1 + 40));
  if (*(*(*(a1 + 96) + 8) + 40))
  {
    v1 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v80 = objc_opt_class();
      v81 = NSStringFromClass(v80);
      v82 = NSStringFromSelector(*(a1 + 112));
      v83 = *(*(*(a1 + 96) + 8) + 40);
      *buf = 138412802;
      *&buf[4] = v81;
      *&buf[12] = 2112;
      *&buf[14] = v82;
      *&buf[22] = 2112;
      v116 = v83;
      _os_log_error_impl(&dword_2304B3000, v1, OS_LOG_TYPE_ERROR, "%@, %@, navigation error, %@", buf, 0x20u);
    }

    [*(a1 + 56) addObject:*(*(*(a1 + 96) + 8) + 40)];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 112));
      v6 = [*(*(*(a1 + 88) + 8) + 40) count];
      *buf = 138412802;
      *&buf[4] = v4;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      *&buf[22] = 2048;
      v116 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, %@, route summaries count, %lu", buf, 0x20u);
    }
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = *(*(*(a1 + 88) + 8) + 40);
  v93 = [obj countByEnumeratingWithState:&v106 objects:v118 count:16];
  if (v93)
  {
    v92 = *v107;
    v85 = *MEMORY[0x277D01448];
    v86 = *MEMORY[0x277CCA450];
    do
    {
      v7 = 0;
      do
      {
        if (*v107 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v106 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [*(a1 + 48) distanceCalculator];
        v11 = [*(a1 + 48) latestLocationOfTheDevice];
        v12 = [v8 destinationMapItem];
        v13 = [v12 location];
        v105 = 0;
        [v10 distanceFromLocation:v11 toLocation:v13 error:&v105];
        v15 = v14;
        v16 = v105;

        if (v16)
        {
          v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v50 = objc_opt_class();
            v51 = NSStringFromClass(v50);
            v52 = NSStringFromSelector(*(a1 + 112));
            *buf = 138412802;
            *&buf[4] = v51;
            *&buf[12] = 2112;
            *&buf[14] = v52;
            *&buf[22] = 2112;
            v116 = v16;
            _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@, %@, distanceToRouteSummaryDestinationError, %@", buf, 0x20u);
          }

          [*(a1 + 56) addObject:v16];
        }

        else
        {
          v18 = [*(a1 + 48) latestLocationOfTheDevice];
          if (!v18 || ([v8 destinationMapItem], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "location"), v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v19, v18, v21))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v45 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                v46 = objc_opt_class();
                v47 = NSStringFromClass(v46);
                dsemaa = NSStringFromSelector(*(a1 + 112));
                if (v15 == 1.79769313e308)
                {
                  v48 = @"DBL_MAX";
                }

                else
                {
                  v87 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&v15];
                  v48 = v87;
                }

                v65 = [*(a1 + 48) latestLocationOfTheDevice];
                v66 = [v8 destinationMapItem];
                v67 = [v66 location];
                *buf = 138413315;
                *&buf[4] = v47;
                *&buf[12] = 2112;
                *&buf[14] = dsemaa;
                *&buf[22] = 2112;
                v116 = v48;
                *v117 = 2117;
                *&v117[2] = v65;
                *&v117[10] = 2117;
                *&v117[12] = v67;
                _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_INFO, "%@, %@, distance, %@, latestLocationOfTheDevice, %{sensitive}@, routeSummary.destinationMapItem.location, %{sensitive}@", buf, 0x34u);

                if (v15 != 1.79769313e308)
                {
                }
              }
            }
          }

          else if (v15 < 0.0 || v15 == 1.79769313e308)
          {
            v49 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              v68 = objc_opt_class();
              v69 = NSStringFromClass(v68);
              v70 = NSStringFromSelector(*(a1 + 112));
              v71 = @"DBL_MAX";
              if (v15 != 1.79769313e308)
              {
                v84 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&v15];
                v71 = v84;
              }

              *buf = 138412802;
              *&buf[4] = v69;
              *&buf[12] = 2112;
              *&buf[14] = v70;
              *&buf[22] = 2112;
              v116 = v71;
              _os_log_error_impl(&dword_2304B3000, v49, OS_LOG_TYPE_ERROR, "%@, %@, invalid distance value, %@", buf, 0x20u);
              if (v15 != 1.79769313e308)
              {
              }
            }
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                v23 = objc_opt_class();
                v24 = NSStringFromClass(v23);
                v25 = NSStringFromSelector(*(a1 + 112));
                v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&v15];
                *buf = 138413314;
                *&buf[4] = v24;
                *&buf[12] = 2112;
                *&buf[14] = v25;
                *&buf[22] = 2112;
                v116 = v26;
                *v117 = 2048;
                *&v117[2] = 0x407F400000000000;
                *&v117[10] = 2048;
                *&v117[12] = 0x41124F8000000000;
                _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, %@, navigation route, added, distance, %@, min threshold, %.3f, max threshold, %.3f", buf, 0x34u);
              }
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v116 = __Block_byref_object_copy__61;
            *v117 = __Block_byref_object_dispose__61;
            *&v117[8] = 0;
            v99 = 0;
            v100 = &v99;
            v101 = 0x3032000000;
            v102 = __Block_byref_object_copy__61;
            v103 = __Block_byref_object_dispose__61;
            v104 = 0;
            v27 = dispatch_semaphore_create(0);
            v28 = [*(a1 + 48) learnedLocationStore];
            v29 = [v8 destinationMapItem];
            v95[0] = MEMORY[0x277D85DD0];
            v95[1] = 3221225472;
            v95[2] = __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_118;
            v95[3] = &unk_2788C4B58;
            v97 = buf;
            v98 = &v99;
            v30 = v27;
            v96 = v30;
            [v28 fetchLocationOfInterestWithMapItem:v29 handler:v95];

            dsema = v30;
            v31 = [MEMORY[0x277CBEAA8] now];
            v32 = dispatch_time(0, 3600000000000);
            if (dispatch_semaphore_wait(dsema, v32))
            {
              v88 = [MEMORY[0x277CBEAA8] now];
              [v88 timeIntervalSinceDate:v31];
              v34 = v33;
              v35 = objc_opt_new();
              v36 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_366];
              v37 = [MEMORY[0x277CCACC8] callStackSymbols];
              v38 = [v37 filteredArrayUsingPredicate:v36];
              v39 = [v38 firstObject];

              [v35 submitToCoreAnalytics:v39 type:1 duration:v34];
              v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
              {
                *v110 = 0;
                _os_log_fault_impl(&dword_2304B3000, v40, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v110, 2u);
              }

              v41 = MEMORY[0x277CCA9B8];
              v119[0] = v86;
              *v110 = @"semaphore wait timeout";
              v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v119 count:1];
              v43 = [v41 errorWithDomain:v85 code:15 userInfo:v42];

              if (v43)
              {
                v44 = v43;
              }
            }

            else
            {
              v43 = 0;
            }

            v53 = v43;
            if (v100[5])
            {
              v54 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v72 = objc_opt_class();
                v73 = NSStringFromClass(v72);
                v74 = NSStringFromSelector(*(a1 + 112));
                v75 = v100[5];
                *v110 = 138412802;
                *&v110[4] = v73;
                v111 = 2112;
                v112 = v74;
                v113 = 2112;
                v114 = v75;
                _os_log_error_impl(&dword_2304B3000, v54, OS_LOG_TYPE_ERROR, "%@, %@, navigationLOIError, %@", v110, 0x20u);
              }

              [*(a1 + 56) addObject:v100[5]];
            }

            if (v53)
            {
              v55 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                v76 = objc_opt_class();
                v77 = NSStringFromClass(v76);
                v78 = NSStringFromSelector(*(a1 + 112));
                *v110 = 138412802;
                *&v110[4] = v77;
                v111 = 2112;
                v112 = v78;
                v113 = 2112;
                v114 = v53;
                _os_log_error_impl(&dword_2304B3000, v55, OS_LOG_TYPE_ERROR, "%@, %@, navigationLOISemaError, %@", v110, 0x20u);
              }

              [*(a1 + 56) addObject:v53];
            }

            if (*(*&buf[8] + 40) && ([*(a1 + 48) _placeInferenceFromLOI:?], (v56 = objc_claimAutoreleasedReturnValue()) != 0) || (v57 = objc_alloc(MEMORY[0x277D011D8]), objc_msgSend(v8, "destinationMapItem"), v58 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "destinationMapItem"), v59 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v59, "location"), v60 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCAD78], "UUID"), v61 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v57, "initWithMapItem:userType:userTypeSource:placeType:referenceLocation:confidence:loiIdentifier:", v58, 0, 0, 0, v60, v61, 0.0), v61, v60, v59, v58, v56))
            {
              [*(a1 + 64) addObject:v56];
              v62 = *(*(a1 + 104) + 8);
              v64 = *(v62 + 40);
              v63 = (v62 + 40);
              if (!v64)
              {
                objc_storeStrong(v63, v56);
              }
            }

            _Block_object_dispose(&v99, 8);
            _Block_object_dispose(buf, 8);
          }
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v93 != v7);
      v79 = [obj countByEnumeratingWithState:&v106 objects:v118 count:16];
      v93 = v79;
    }

    while (v79);
  }

  dispatch_group_leave(*(a1 + 72));
}

void __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_118(uint64_t a1, void *a2, void *a3)
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

void __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_127(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_2_128;
  block[3] = &unk_2788C9EB8;
  v21 = *(a1 + 72);
  v8 = *(a1 + 88);
  v16 = v5;
  v17 = v6;
  v9 = *(a1 + 112);
  v22 = v8;
  v24 = v9;
  v14 = *(a1 + 32);
  v10 = *(&v14 + 1);
  *&v11 = *(a1 + 48);
  *(&v11 + 1) = *(a1 + 56);
  v18 = v14;
  v19 = v11;
  v23 = *(a1 + 96);
  v20 = *(a1 + 64);
  v12 = v6;
  v13 = v5;
  dispatch_async(v7, block);
}

void __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_2_128(uint64_t a1)
{
  v1 = a1;
  v94 = *MEMORY[0x277D85DE8];
  --*(*(*(a1 + 88) + 8) + 24);
  objc_storeStrong((*(*(a1 + 96) + 8) + 40), *(a1 + 32));
  objc_storeStrong((*(*(v1 + 104) + 8) + 40), *(v1 + 40));
  if (!*(*(*(v1 + 104) + 8) + 40))
  {
    v69 = v1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = objc_opt_class();
        v5 = NSStringFromClass(v4);
        v6 = NSStringFromSelector(*(v1 + 128));
        v7 = +[RTLearnedPlace placeTypeToString:](RTLearnedPlace, "placeTypeToString:", [*(v1 + 72) unsignedIntegerValue]);
        v8 = [*(*(*(v69 + 96) + 8) + 40) count];
        *buf = 138413058;
        v80 = v5;
        v81 = 2112;
        v82 = v6;
        v83 = 2112;
        v84 = v7;
        v85 = 2048;
        v86 = v8;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, %@, fetched learned LOIs of type, %@, count, %lu,", buf, 0x2Au);

        v1 = v69;
      }
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v9 = *(*(*(v1 + 96) + 8) + 40);
    v72 = [v9 countByEnumeratingWithState:&v75 objects:v93 count:16];
    if (!v72)
    {
LABEL_61:

      goto LABEL_62;
    }

    v71 = *v76;
    v68 = v9;
LABEL_11:
    v10 = 0;
    while (1)
    {
      if (*v76 != v71)
      {
        objc_enumerationMutation(v9);
      }

      v11 = *(*(&v75 + 1) + 8 * v10);
      context = objc_autoreleasePoolPush();
      v12 = [*(v1 + 48) distanceCalculator];
      v13 = [*(v1 + 48) latestLocationOfTheDevice];
      v14 = [(__CFString *)v11 location];
      v15 = [v14 location];
      v74 = 0;
      [v12 distanceFromLocation:v13 toLocation:v15 error:&v74];
      v17 = v16;
      v18 = v74;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v22 = NSStringFromSelector(*(v1 + 128));
          if (v17 == 1.79769313e308)
          {
            v23 = @"DBL_MAX";
          }

          else
          {
            v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&v17];
            v70 = v23;
          }

          v24 = [*(v1 + 48) latestLocationOfTheDevice];
          v25 = [(__CFString *)v11 location];
          v26 = [v25 location];
          *buf = 138413571;
          v80 = v21;
          v81 = 2112;
          v82 = v22;
          v83 = 2112;
          v84 = v23;
          v85 = 2117;
          v86 = v24;
          v87 = 2117;
          v88 = v26;
          v89 = 2112;
          v90 = v18;
          _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@, %@, distance, %@, latestLocationOfTheDevice, %{sensitive}@, learnedLOI.location.location, %{sensitive}@, error, %@", buf, 0x3Eu);

          if (v17 != 1.79769313e308)
          {
          }

          v9 = v68;
          v1 = v69;
        }
      }

      if (v18)
      {
        v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          v46 = NSStringFromSelector(*(v1 + 128));
          *buf = 138412802;
          v80 = v45;
          v81 = 2112;
          v82 = v46;
          v83 = 2112;
          v84 = v18;
          _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, %@, distanceError, %@", buf, 0x20u);
        }

        [*(v1 + 56) addObject:v18];
        goto LABEL_59;
      }

      v28 = [(__CFString *)v11 location];
      v29 = [v28 location];

      if (!v29)
      {
        v36 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v52 = objc_opt_class();
          v53 = NSStringFromClass(v52);
          v54 = NSStringFromSelector(*(v1 + 128));
          *buf = 138412803;
          v80 = v53;
          v81 = 2112;
          v82 = v54;
          v83 = 2117;
          v84 = v11;
          _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "%@, %@, location not found in learned LOI, %{sensitive}@", buf, 0x20u);
        }

        goto LABEL_59;
      }

      if (v17 < 0.0 || v17 == 1.79769313e308)
      {
        v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          v34 = NSStringFromSelector(*(v1 + 128));
          v35 = @"DBL_MAX";
          if (v17 != 1.79769313e308)
          {
            v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&v17];
            v35 = v63;
          }

          *buf = 138412802;
          v80 = v33;
          v81 = 2112;
          v82 = v34;
          v83 = 2112;
          v84 = v35;
          _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@, %@, invalid distance value, %@", buf, 0x20u);
          if (v17 != 1.79769313e308)
          {
          }

          goto LABEL_54;
        }
      }

      else
      {
        v37 = [*(v1 + 48) _placeInferenceFromLOI:v11];
        v31 = v37;
        if (!v37)
        {
          v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v55 = objc_opt_class();
            v56 = NSStringFromClass(v55);
            v57 = NSStringFromSelector(*(v1 + 128));
            v58 = +[RTLearnedPlace placeTypeToString:](RTLearnedPlace, "placeTypeToString:", [*(v69 + 72) unsignedIntegerValue]);
            *buf = 138413059;
            v80 = v56;
            v81 = 2112;
            v82 = v57;
            v83 = 2112;
            v84 = v58;
            v85 = 2117;
            v86 = v11;
            _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, %@, learned place type, %@, placeInference is null, learned LOI, %{sensitive}@", buf, 0x2Au);

            v1 = v69;
          }

          goto LABEL_54;
        }

        if ([v37 userType]== 1 && v17 < *(*(*(v1 + 112) + 8) + 24))
        {
          objc_storeStrong((*(*(v1 + 120) + 8) + 40), v31);
          *(*(*(v1 + 112) + 8) + 24) = v17;
        }

        v38 = [SMSuggestionsHelper isValidDistance:v17];
        v39 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
        if (v38)
        {
          if (v39)
          {
            v40 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              v41 = objc_opt_class();
              v67 = NSStringFromClass(v41);
              v65 = NSStringFromSelector(*(v1 + 128));
              v66 = [(__CFString *)v11 place];
              v64 = +[RTLearnedPlace placeTypeToString:](RTLearnedPlace, "placeTypeToString:", [v66 type]);
              v42 = [(__CFString *)v11 identifier];
              v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&v17];
              *buf = 138413826;
              v80 = v67;
              v81 = 2112;
              v82 = v65;
              v83 = 2112;
              v84 = v64;
              v85 = 2112;
              v86 = v42;
              v87 = 2112;
              v88 = v43;
              v89 = 2048;
              v90 = 0x407F400000000000;
              v91 = 2048;
              v92 = 0x41124F8000000000;
              _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "%@, %@, learned placeType, %@, LOI with identifier, %@, added, distance, %@, min threshold, %.3f, max threshold, %.3f", buf, 0x48u);
            }
          }

          [*(v1 + 80) addObject:v31];
          goto LABEL_58;
        }

        if (v39)
        {
          v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v47 = objc_opt_class();
            v48 = NSStringFromClass(v47);
            v49 = NSStringFromSelector(*(v1 + 128));
            v50 = [(__CFString *)v11 identifier];
            v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&v17];
            *buf = 138413570;
            v80 = v48;
            v81 = 2112;
            v82 = v49;
            v83 = 2112;
            v84 = v50;
            v85 = 2112;
            v86 = v51;
            v87 = 2048;
            v88 = 0x407F400000000000;
            v89 = 2048;
            v90 = 0x41124F8000000000;
            _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "%@, %@, LOI with identifier, %@, skipped, distance, %@, min threshold, %.3f, max threshold, %.3f", buf, 0x3Eu);

            v1 = v69;
          }

LABEL_54:
        }
      }

LABEL_58:

LABEL_59:
      objc_autoreleasePoolPop(context);
      if (v72 == ++v10)
      {
        v72 = [v9 countByEnumeratingWithState:&v75 objects:v93 count:16];
        if (!v72)
        {
          goto LABEL_61;
        }

        goto LABEL_11;
      }
    }
  }

  v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v59 = objc_opt_class();
    v60 = NSStringFromClass(v59);
    v61 = NSStringFromSelector(*(v1 + 128));
    v62 = *(*(*(v1 + 104) + 8) + 40);
    *buf = 138412802;
    v80 = v60;
    v81 = 2112;
    v82 = v61;
    v83 = 2112;
    v84 = v62;
    _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "%@, %@, placeTypeError, %@", buf, 0x20u);
  }

  [*(v1 + 56) addObject:*(*(*(v1 + 104) + 8) + 40)];
LABEL_62:
  dispatch_group_leave(*(v1 + 64));
}

void __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_131(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_2_132;
  block[3] = &unk_2788C9F08;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v19 = v6;
  v20 = v8;
  v25 = *(a1 + 80);
  v16 = *(a1 + 64);
  v21 = v9;
  v22 = v5;
  v10 = *(a1 + 48);
  *&v11 = v16;
  *(&v11 + 1) = *(a1 + 72);
  v17 = v11;
  v12 = *(a1 + 56);
  *&v13 = v10;
  *(&v13 + 1) = v12;
  v24 = v17;
  v23 = v13;
  v14 = v5;
  v15 = v6;
  dispatch_async(v7, block);
}

void __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_2_132(uint64_t a1)
{
  v84 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 80) + 8) + 24) = 1;
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      v52 = NSStringFromSelector(*(a1 + 96));
      v53 = *(a1 + 32);
      *buf = 138412802;
      v70 = v51;
      v71 = 2112;
      v72 = v52;
      v73 = 2112;
      v74 = v53;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "%@, %@, nploiError, %@", buf, 0x20u);
    }

    [*(a1 + 48) addObject:*(a1 + 32)];
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v3 = *(a1 + 56);
  v63 = [v3 countByEnumeratingWithState:&v65 objects:v83 count:16];
  if (v63)
  {
    v62 = *v66;
    v61 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v66 != v62)
        {
          objc_enumerationMutation(v3);
        }

        v5 = *(*(&v65 + 1) + 8 * v4);
        v6 = objc_autoreleasePoolPush();
        v7 = [*(a1 + 40) distanceCalculator];
        v8 = [*(a1 + 40) latestLocationOfTheDevice];
        v9 = [(__CFString *)v5 locationOfInterest];
        v10 = [v9 location];
        v64 = 0;
        [v7 distanceFromLocation:v8 toLocation:v10 error:&v64];
        v12 = v11;
        v13 = v64;

        if (v13)
        {
          v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v37 = objc_opt_class();
            v38 = NSStringFromClass(v37);
            v39 = NSStringFromSelector(*(a1 + 96));
            *buf = 138412802;
            v70 = v38;
            v71 = 2112;
            v72 = v39;
            v73 = 2112;
            v74 = v13;
            _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, %@, distanceToNPLOIError, %@", buf, 0x20u);
          }

          [*(a1 + 48) addObject:v13];
        }

        else
        {
          v15 = [*(a1 + 40) latestLocationOfTheDevice];
          if (!v15 || (v16 = v15, -[__CFString locationOfInterest](v5, "locationOfInterest"), v17 = objc_claimAutoreleasedReturnValue(), [v17 location], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v16, !v18))
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_14;
            }

            v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = objc_opt_class();
              v60 = NSStringFromClass(v28);
              v29 = NSStringFromSelector(*(a1 + 96));
              if (v12 == 1.79769313e308)
              {
                v30 = @"DBL_MAX";
              }

              else
              {
                v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&v12];
                v58 = v30;
              }

              v40 = [*(a1 + 40) latestLocationOfTheDevice];
              v41 = [(__CFString *)v5 locationOfInterest];
              v42 = [v41 location];
              *buf = 138413315;
              v70 = v60;
              v71 = 2112;
              v72 = v29;
              v73 = 2112;
              v74 = v30;
              v75 = 2117;
              v76 = v40;
              v77 = 2117;
              v78 = v42;
              _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, %@, distance, %@, latestLocationOfTheDevice, %{sensitive}@, nploi.locationOfInterest.location, %{sensitive}@", buf, 0x34u);

              if (v12 != 1.79769313e308)
              {
              }

              v3 = v61;
            }

LABEL_53:

            goto LABEL_14;
          }

          v19 = [SMSuggestionsHelper isValidDistance:v12];
          v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
          if (!v19)
          {
            v3 = v61;
            if (!v20)
            {
              goto LABEL_14;
            }

            v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v31 = objc_opt_class();
              v32 = NSStringFromClass(v31);
              v33 = NSStringFromSelector(*(a1 + 96));
              v34 = [(__CFString *)v5 locationOfInterest];
              v35 = [v34 identifier];
              if (v12 == 1.79769313e308)
              {
                v36 = @"DBL_MAX";
              }

              else
              {
                v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&v12];
                v36 = v55;
              }

              *buf = 138413570;
              v70 = v32;
              v71 = 2112;
              v72 = v33;
              v73 = 2112;
              v74 = v35;
              v75 = 2112;
              v76 = v36;
              v77 = 2048;
              v78 = 0x407F400000000000;
              v79 = 2048;
              v80 = 0x41124F8000000000;
              _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, %@, LOI with identifier, %@, skipped, distance, %@, min threshold, %.3f, max threshold, %.3f", buf, 0x3Eu);
              if (v12 != 1.79769313e308)
              {
              }
            }

            goto LABEL_53;
          }

          if (v20)
          {
            v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = objc_opt_class();
              v59 = NSStringFromClass(v22);
              v57 = NSStringFromSelector(*(a1 + 96));
              v56 = [(__CFString *)v5 locationOfInterest];
              v23 = +[RTLearnedPlace placeTypeToString:](RTLearnedPlace, "placeTypeToString:", +[RTPlaceInferenceManager learnedPlaceTypeFromLocationOfInterestType:](RTPlaceInferenceManager, "learnedPlaceTypeFromLocationOfInterestType:", [v56 type]));
              v24 = [(__CFString *)v5 locationOfInterest];
              v25 = [v24 identifier];
              if (v12 == 1.79769313e308)
              {
                v26 = @"DBL_MAX";
              }

              else
              {
                v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&v12];
                v26 = v54;
              }

              *buf = 138413826;
              v70 = v59;
              v71 = 2112;
              v72 = v57;
              v73 = 2112;
              v74 = v23;
              v75 = 2112;
              v76 = v25;
              v77 = 2112;
              v78 = v26;
              v79 = 2048;
              v80 = 0x407F400000000000;
              v81 = 2048;
              v82 = 0x41124F8000000000;
              _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, %@, nploi placeType, %@, LOI with identifier, %@, added, distance, %@, min threshold, %.3f, max threshold, %.3f", buf, 0x48u);
              v3 = v61;
              if (v12 != 1.79769313e308)
              {
              }
            }

            else
            {
              v3 = v61;
            }
          }

          else
          {
            v3 = v61;
          }

          v43 = [SMSuggestionsHelper placeInferenceFromNPLOI:v5];
          if (v43)
          {
            [*(a1 + 64) addObject:v43];
            [(__CFString *)v5 confidence];
            if (v44 == 1.0)
            {
              [*(*(*(a1 + 88) + 8) + 40) addObject:v5];
            }
          }

          else
          {
            v45 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v46 = objc_opt_class();
              v47 = NSStringFromClass(v46);
              v48 = NSStringFromSelector(*(a1 + 96));
              *buf = 138412803;
              v70 = v47;
              v71 = 2112;
              v72 = v48;
              v73 = 2117;
              v74 = v5;
              _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "%@, %@, placeInference is nil, nploi, %{sensitive}@", buf, 0x20u);

              v3 = v61;
            }
          }
        }

LABEL_14:

        objc_autoreleasePoolPop(v6);
        ++v4;
      }

      while (v63 != v4);
      v49 = [v3 countByEnumeratingWithState:&v65 objects:v83 count:16];
      v63 = v49;
    }

    while (v49);
  }

  dispatch_group_leave(*(a1 + 72));
}

void __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_138(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_2_139;
  v17[3] = &unk_2788C9FD0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v18 = v6;
  v19 = v8;
  v25 = *(a1 + 88);
  v10 = *(a1 + 72);
  v20 = v9;
  v21 = v5;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  *&v13 = *(a1 + 64);
  *(&v13 + 1) = v10;
  *&v14 = v11;
  *(&v14 + 1) = v12;
  v22 = v14;
  v23 = v13;
  v24 = *(a1 + 80);
  v15 = v5;
  v16 = v6;
  dispatch_async(v7, v17);
}

void __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_2_139(uint64_t a1)
{
  v94 = *MEMORY[0x277D85DE8];
  v2 = a1 + 88;
  objc_storeStrong((*(*(a1 + 88) + 8) + 40), *(a1 + 32));
  if (*(*(*v2 + 8) + 40))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      v57 = NSStringFromSelector(*(a1 + 104));
      v58 = *(*(*(a1 + 88) + 8) + 40);
      *buf = 138412802;
      *&buf[4] = v56;
      *&buf[12] = 2112;
      *&buf[14] = v57;
      *&buf[22] = 2112;
      v89 = v58;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@, %@, sessionConfigError, %@", buf, 0x20u);
    }

    [*(a1 + 48) addObject:*(*(*(a1 + 88) + 8) + 40)];
  }

  v4 = [SMSuggestionsHelper dedupeSessionConfigurations:*(a1 + 56)];
  group = dispatch_group_create();
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
  if (v5)
  {
    v68 = *v85;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v85 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v84 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [*(a1 + 40) distanceCalculator];
        v10 = [*(a1 + 40) latestLocationOfTheDevice];
        v11 = [v7 destination];
        v12 = [v11 location];
        v83 = 0;
        [v9 distanceFromLocation:v10 toLocation:v12 error:&v83];
        v14 = v13;
        v15 = v83;

        if (v15)
        {
          v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            v38 = NSStringFromSelector(*(a1 + 104));
            *buf = 138412802;
            *&buf[4] = v37;
            *&buf[12] = 2112;
            *&buf[14] = v38;
            *&buf[22] = 2112;
            v89 = v15;
            _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%@, %@, distanceError, %@", buf, 0x20u);
          }

          [*(a1 + 48) addObject:v15];
        }

        else
        {
          v17 = [*(a1 + 40) latestLocationOfTheDevice];
          if (!v17 || ([v7 destination], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "location"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 == 0, v19, v18, v17, v20))
          {
            v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v39 = objc_opt_class();
              v65 = NSStringFromClass(v39);
              v62 = NSStringFromSelector(*(a1 + 104));
              v40 = @"DBL_MAX";
              if (v14 != 1.79769313e308)
              {
                v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&v14];
                v40 = v59;
              }

              v41 = v40;
              v42 = [*(a1 + 40) latestLocationOfTheDevice];
              v43 = [v7 destination];
              v44 = [v43 location];
              *buf = 138413315;
              *&buf[4] = v65;
              *&buf[12] = 2112;
              *&buf[14] = v62;
              *&buf[22] = 2112;
              v89 = v41;
              *v90 = 2117;
              *&v90[2] = v42;
              *&v90[10] = 2117;
              *&v90[12] = v44;
              _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "%@, %@, distance, %@, latestLocationOfTheDevice, %{sensitive}@, sessionConfiguration.destination.location, %{sensitive}@", buf, 0x34u);

              if (v14 != 1.79769313e308)
              {
              }
            }

LABEL_42:

            goto LABEL_43;
          }

          v21 = [SMSuggestionsHelper isValidDistance:v14];
          v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
          if (!v21)
          {
            if (!v22)
            {
              goto LABEL_43;
            }

            v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v30 = objc_opt_class();
              v31 = NSStringFromClass(v30);
              v32 = NSStringFromSelector(*(a1 + 104));
              v33 = [v7 destination];
              v34 = [v33 location];
              if (v14 == 1.79769313e308)
              {
                v35 = @"DBL_MAX";
              }

              else
              {
                v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&v14];
                v35 = v61;
              }

              *buf = 138413571;
              *&buf[4] = v31;
              *&buf[12] = 2112;
              *&buf[14] = v32;
              *&buf[22] = 2117;
              v89 = v34;
              *v90 = 2112;
              *&v90[2] = v35;
              *&v90[10] = 2048;
              *&v90[12] = 0x407F400000000000;
              v91 = 2048;
              v92 = 0x41124F8000000000;
              _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@, %@, location, %{sensitive}@, skipped, distance, %@, min threshold, %.3f, max threshold, %.3f", buf, 0x3Eu);
              if (v14 != 1.79769313e308)
              {
              }
            }

            goto LABEL_42;
          }

          if (v22)
          {
            v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = objc_opt_class();
              v64 = NSStringFromClass(v24);
              v25 = NSStringFromSelector(*(a1 + 104));
              v26 = [v7 destination];
              v27 = [v26 location];
              if (v14 == 1.79769313e308)
              {
                v28 = @"DBL_MAX";
              }

              else
              {
                v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&v14];
                v28 = v60;
              }

              *buf = 138413571;
              *&buf[4] = v64;
              *&buf[12] = 2112;
              *&buf[14] = v25;
              *&buf[22] = 2117;
              v89 = v27;
              *v90 = 2112;
              *&v90[2] = v28;
              *&v90[10] = 2048;
              *&v90[12] = 0x407F400000000000;
              v91 = 2048;
              v92 = 0x41124F8000000000;
              _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@, %@, session location, %{sensitive}@, added, distance, %@, min threshold, %.3f, max threshold, %.3f", buf, 0x3Eu);
              if (v14 != 1.79769313e308)
              {
              }
            }
          }

          dispatch_group_enter(group);
          v45 = objc_alloc(MEMORY[0x277D011B0]);
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          v66 = [v45 initWithUseBackgroundTraits:0 analyticsIdentifier:v47];

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v89 = __Block_byref_object_copy__61;
          *v90 = __Block_byref_object_dispose__61;
          *&v90[8] = 0;
          v81[0] = 0;
          v81[1] = v81;
          v81[2] = 0x3032000000;
          v81[3] = __Block_byref_object_copy__61;
          v81[4] = __Block_byref_object_dispose__61;
          v82 = 0;
          v48 = [*(a1 + 40) mapServiceManager];
          v49 = [v7 destination];
          v50 = [v49 destinationMapItem];
          v72[0] = MEMORY[0x277D85DD0];
          v72[1] = 3221225472;
          v72[2] = __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_141;
          v72[3] = &unk_2788C9FA8;
          v51 = *(a1 + 48);
          v72[4] = *(a1 + 40);
          v78 = buf;
          v79 = v81;
          v80 = *(a1 + 104);
          v73 = v51;
          v74 = group;
          v75 = v7;
          v76 = *(a1 + 64);
          v77 = *(a1 + 72);
          [v48 fetchMapItemFromHandle:v50 options:v66 handler:v72];

          _Block_object_dispose(v81, 8);
          _Block_object_dispose(buf, 8);
        }

LABEL_43:

        objc_autoreleasePoolPop(v8);
      }

      v5 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
    }

    while (v5);
  }

  v52 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_147;
  block[3] = &unk_2788C4FD8;
  v53 = *(a1 + 80);
  v54 = *(a1 + 96);
  v70 = v53;
  v71 = v54;
  dispatch_group_notify(group, v52, block);
}

void __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_141(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_2_142;
  block[3] = &unk_2788C9F58;
  v20 = *(a1 + 80);
  v14 = v5;
  v15 = v6;
  v21 = *(a1 + 96);
  v12 = *(a1 + 32);
  v8 = *(&v12 + 1);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = *(a1 + 56);
  v16 = v12;
  v17 = v9;
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_2_142(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(*(a1 + 96) + 8) + 40), *(a1 + 32));
  objc_storeStrong((*(*(a1 + 104) + 8) + 40), *(a1 + 40));
  if (*(*(*(a1 + 104) + 8) + 40))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 112));
      v14 = *(*(*(a1 + 104) + 8) + 40);
      *buf = 138412802;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      *&buf[22] = 2112;
      v32 = v14;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "%@, %@, mapItemError, %@", buf, 0x20u);
    }

    [*(a1 + 56) addObject:*(*(*(a1 + 104) + 8) + 40)];
LABEL_5:
    dispatch_group_leave(*(a1 + 64));
    return;
  }

  if (!*(*(*(a1 + 96) + 8) + 40))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(*(a1 + 112));
      v18 = *(*(*(a1 + 96) + 8) + 40);
      v19 = *(*(*(a1 + 104) + 8) + 40);
      *buf = 138413059;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      *&buf[22] = 2117;
      v32 = v18;
      LOWORD(v33) = 2112;
      *(&v33 + 2) = v19;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%@, %@, error creating mapItem, %{sensitive}@, error, %@", buf, 0x2Au);
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(*(a1 + 96) + 8) + 40);
      v5 = *(a1 + 72);
      *buf = 138740227;
      *&buf[4] = v4;
      *&buf[12] = 2117;
      *&buf[14] = v5;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "Hydrated mapItem, %{sensitive}@ session configuration, %{sensitive}@", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = __Block_byref_object_copy__61;
  *&v33 = __Block_byref_object_dispose__61;
  *(&v33 + 1) = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__61;
  v29[4] = __Block_byref_object_dispose__61;
  v30 = 0;
  v6 = [*(a1 + 48) learnedLocationStore];
  v7 = *(*(*(a1 + 96) + 8) + 40);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_143;
  v21[3] = &unk_2788C9F80;
  v26 = v29;
  v27 = buf;
  v28 = *(a1 + 112);
  v20 = *(a1 + 48);
  v8 = *(&v20 + 1);
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = *(a1 + 72);
  v22 = v20;
  v23 = v9;
  v24 = *(a1 + 80);
  v25 = *(a1 + 88);
  [v6 fetchLocationOfInterestWithMapItem:v7 handler:v21];

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(buf, 8);
}

void __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_143(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_2_144;
  block[3] = &unk_2788C9F58;
  v20 = *(a1 + 80);
  v14 = v5;
  v15 = v6;
  v21 = *(a1 + 96);
  v12 = *(a1 + 32);
  v8 = *(&v12 + 1);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = *(a1 + 56);
  v16 = v12;
  v17 = v9;
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_2_144(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(*(a1 + 96) + 8) + 40), *(a1 + 32));
  objc_storeStrong((*(*(a1 + 104) + 8) + 40), *(a1 + 40));
  if (*(*(*(a1 + 104) + 8) + 40))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = NSStringFromSelector(*(a1 + 112));
      v40 = *(*(*(a1 + 104) + 8) + 40);
      v46 = 138412802;
      v47 = v38;
      v48 = 2112;
      v49 = v39;
      v50 = 2112;
      v51 = v40;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "%@, %@, sessionConfigLOIError, %@", &v46, 0x20u);
    }

    [*(a1 + 56) addObject:*(*(*(a1 + 104) + 8) + 40)];
LABEL_5:
    dispatch_group_leave(*(a1 + 64));
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 112));
      v7 = *(*(*(a1 + 96) + 8) + 40);
      v8 = *(a1 + 72);
      v46 = 138413059;
      v47 = v5;
      v48 = 2112;
      v49 = v6;
      v50 = 2117;
      v51 = v7;
      v52 = 2117;
      v53 = v8;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, %@, fetched learned LOI, %{sensitive}@, configuration, %{sensitive}@", &v46, 0x2Au);
    }
  }

  v9 = *(*(*(a1 + 96) + 8) + 40);
  if (!v9)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 112));
      v14 = [*(*(*(a1 + 96) + 8) + 40) place];
      v15 = +[RTLearnedPlace placeTypeToString:](RTLearnedPlace, "placeTypeToString:", [v14 type]);
      v16 = [*(a1 + 72) destination];
      v17 = [v16 location];
      v46 = 138413059;
      v47 = v12;
      v48 = 2112;
      v49 = v13;
      v50 = 2112;
      v51 = v15;
      v52 = 2117;
      v53 = v17;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, place type, %@, location, %{sensitive}@", &v46, 0x2Au);
    }

    v9 = *(*(*(a1 + 96) + 8) + 40);
  }

  v18 = [*(a1 + 48) _placeInferenceFromLOI:v9];
  v19 = v18;
  if (!v18 || ([v18 mapItem], v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = NSStringFromSelector(*(a1 + 112));
      v36 = *(*(*(a1 + 96) + 8) + 40);
      v46 = 138413059;
      v47 = v34;
      v48 = 2112;
      v49 = v35;
      v50 = 2112;
      v51 = v19;
      v52 = 2117;
      v53 = v36;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, %@, place inference is nill or it doens't have map item, %@, destinationLearnedLOI, %{sensitive}@", &v46, 0x2Au);
    }

    goto LABEL_24;
  }

  [*(a1 + 80) addObject:v19];
  v21 = *(a1 + 88);
  v22 = [v19 mapItem];
  v23 = [v21 objectForKey:v22];
  if (!v23)
  {

LABEL_23:
    v41 = [SMFenceInfo alloc];
    v32 = [*(a1 + 72) sessionStartDate];
    v42 = [*(a1 + 72) destination];
    [v42 radius];
    v43 = [(SMFenceInfo *)v41 initWithDate:v32 fenceRadius:?];
    v44 = *(a1 + 88);
    v45 = [v19 mapItem];
    [v44 setObject:v43 forKeyedSubscript:v45];

LABEL_24:
    goto LABEL_25;
  }

  v24 = v23;
  v25 = *(a1 + 88);
  v26 = [v19 mapItem];
  v27 = [v25 objectForKey:v26];
  v28 = [v27 date];
  v29 = [*(a1 + 72) sessionStartDate];
  v30 = [v28 laterDate:v29];
  v31 = [*(a1 + 72) sessionStartDate];

  if (v30 == v31)
  {
    goto LABEL_23;
  }

LABEL_25:
  dispatch_group_leave(*(a1 + 64));
}

void __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_2_148(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = dispatch_time(0, 5000000000);
  v4 = dispatch_group_wait(v2, v3) == 0;
  v5 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v6 = *(a1 + 96);
  v18 = *(a1 + 80);
  v19 = v6;
  v7 = *(a1 + 128);
  v20 = *(a1 + 112);
  block[2] = __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_3;
  block[3] = &unk_2788CA020;
  v24 = v4;
  v8 = *(a1 + 144);
  v22 = 0x4014000000000000;
  v23 = v8;
  v21 = v7;
  v13 = *(a1 + 40);
  v9 = *(&v13 + 1);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v15 = v13;
  v16 = v12;
  v17 = *(a1 + 72);
  dispatch_async(v5, block);
}

void __91__SMSuggestionsHelper__fetchMostLikelySessionDestinationsWithRefreshedLocationWithHandler___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _submitMetricForFetchMostLikelySessionDestinationsWithRefreshedLocationDidComplete:*(a1 + 152) didFetchNavigationRouteSummary:*(*(*(a1 + 72) + 8) + 24) didFetchLOIs:*(*(*(a1 + 80) + 8) + 24) == 0 didFetchNPLOIs:*(*(*(a1 + 88) + 8) + 24) didFetchSessionConfigurations:*(*(*(a1 + 96) + 8) + 24) timeout:*(a1 + 136)];
  if ((*(a1 + 152) & 1) == 0)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(*(a1 + 144));
      *buf = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v2;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "%@, %@, timed out waiting for completion, metric, %@", buf, 0x20u);
    }
  }

  [*(a1 + 32) _computeMostlikelySessionDestinations:*(*(*(a1 + 104) + 8) + 40) closestHome:*(*(*(a1 + 112) + 8) + 40) distanceToClosestHome:*(*(*(a1 + 128) + 8) + 40) nploisWithValidDistanceAndHighConfidence:*(a1 + 40) fenceSizeForMapItem:*(a1 + 48) placeInferences:*(a1 + 56) errors:*(*(*(a1 + 120) + 8) + 24) handler:*(a1 + 64)];
}

- (id)_submitMetricForFetchMostLikelySessionDestinationsWithRefreshedLocationDidComplete:(BOOL)a3 didFetchNavigationRouteSummary:(BOOL)a4 didFetchLOIs:(BOOL)a5 didFetchNPLOIs:(BOOL)a6 didFetchSessionConfigurations:(BOOL)a7 timeout:(double)a8
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v25[6] = *MEMORY[0x277D85DE8];
  v24[0] = @"didComplete";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v25[0] = v13;
  v24[1] = @"didFetchNavigationRouteSummary";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v12];
  v25[1] = v14;
  v24[2] = @"didFetchLOIs";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v11];
  v25[2] = v15;
  v24[3] = @"didFetchNPLOIs";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  v25[3] = v16;
  v24[4] = @"didFetchSessionConfigurations";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  v25[4] = v17;
  v24[5] = @"timeout";
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:a8];
  v25[5] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:6];

  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v21 = [v20 initWithCString:RTAnalyticsEventSafetyMonitorFetchMostLikelySessionDestinationsWithRefreshedLocationCompletion encoding:1];
  log_analytics_submission(v21, v19);
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v21];
  AnalyticsSendEvent();

  return v19;
}

- (void)_computeMostlikelySessionDestinations:(id)a3 closestHome:(id)a4 distanceToClosestHome:(double)a5 nploisWithValidDistanceAndHighConfidence:(id)a6 fenceSizeForMapItem:(id)a7 placeInferences:(id)a8 errors:(id)a9 handler:(id)a10
{
  v132 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v106 = a6;
  v116 = a7;
  v108 = a8;
  v107 = a9;
  v103 = a10;
  if (v16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        *buf = 138412803;
        v125 = v20;
        v126 = 2112;
        v127 = v21;
        v128 = 2117;
        v129 = v16;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, %@, setting navigation session destination as mostLikelySessionDestination, %{sensitive}@", buf, 0x20u);
      }
    }

    v22 = v16;
    v23 = 3;
LABEL_7:
    v102 = v23;
    goto LABEL_8;
  }

  if (v17)
  {
    if ([SMSuggestionsHelper isValidDistance:a5])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v83 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
        {
          v84 = objc_opt_class();
          v85 = NSStringFromClass(v84);
          v86 = NSStringFromSelector(a2);
          *buf = 138413059;
          v125 = v85;
          v126 = 2112;
          v127 = v86;
          v128 = 2117;
          v129 = v17;
          v130 = 2048;
          v131 = a5;
          _os_log_impl(&dword_2304B3000, v83, OS_LOG_TYPE_INFO, "%@, %@, setting closest home as mostLikelySessionDestination, %{sensitive}@, distance to home, %.3f", buf, 0x2Au);
        }
      }

      v22 = v17;
      v23 = 2;
      goto LABEL_7;
    }

    if ([v106 count])
    {
      v87 = [v106 firstObject];
      v88 = [SMSuggestionsHelper placeInferenceFromNPLOI:v87];

      v22 = v88;
      if (!v22)
      {
        v89 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          v98 = objc_opt_class();
          v99 = NSStringFromClass(v98);
          v100 = NSStringFromSelector(a2);
          v101 = [v106 firstObject];
          *buf = 138412803;
          v125 = v99;
          v126 = 2112;
          v127 = v100;
          v128 = 2117;
          v129 = v101;
          _os_log_error_impl(&dword_2304B3000, v89, OS_LOG_TYPE_ERROR, "%@, %@, placeInference is nil, nploi, %{sensitive}@", buf, 0x20u);
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v90 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
        {
          v91 = objc_opt_class();
          v92 = NSStringFromClass(v91);
          v93 = NSStringFromSelector(a2);
          *buf = 138412803;
          v125 = v92;
          v126 = 2112;
          v127 = v93;
          v128 = 2117;
          v129 = v22;
          _os_log_impl(&dword_2304B3000, v90, OS_LOG_TYPE_INFO, "%@, %@, setting first nploi with high confidence as mostLikelySessionDestination, %{sensitive}@", buf, 0x20u);
        }
      }

      v23 = 1;
      goto LABEL_7;
    }
  }

  v102 = 0;
  v22 = 0;
LABEL_8:
  v24 = [v22 mapItem];
  v25 = [v116 objectForKey:v24];

  if (v25)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v29 = NSStringFromSelector(a2);
        *buf = 138412803;
        v125 = v28;
        v126 = 2112;
        v127 = v29;
        v128 = 2117;
        v129 = v22;
        _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, %@, session configuration for mostLikelySessionDestination exists, %{sensitive}@", buf, 0x20u);
      }
    }

    v122 = 0;
    v30 = [SMSuggestionsHelper createMasqueradingReferenceLocationFromFenceInfo:v25 placeInference:v22 error:&v122];
    v31 = v122;
    if (v31 || !v30)
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v94 = objc_opt_class();
        v95 = NSStringFromClass(v94);
        NSStringFromSelector(a2);
        v97 = v96 = v22;
        *buf = 138412802;
        v125 = v95;
        v126 = 2112;
        v127 = v97;
        v128 = 2112;
        v129 = v96;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, %@, error creating masquerading place inference, defaulting to original, %@", buf, 0x20u);

        v22 = v96;
      }

      v33 = v22;
      [v107 addObject:v31];
      v30 = v33;
    }

    v22 = v30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = NSStringFromSelector(a2);
      *buf = 138412803;
      v125 = v36;
      v126 = 2112;
      v127 = v37;
      v128 = 2117;
      v129 = v22;
      _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%@, %@, final mostLikelySessionDestination, %{sensitive}@", buf, 0x20u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = NSStringFromSelector(a2);
      v42 = [v108 count];
      *buf = 138412802;
      v125 = v40;
      v126 = 2112;
      v127 = v41;
      v128 = 2048;
      v129 = v42;
      _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, %@, final place inferences count, %lu", buf, 0x20u);
    }
  }

  v43 = [(SMSuggestionsHelper *)self _dedupePlaceInferencesWithOrder:v108];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v44 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = NSStringFromSelector(a2);
      v48 = [v43 count];
      *buf = 138412802;
      v125 = v46;
      v126 = 2112;
      v127 = v47;
      v128 = 2048;
      v129 = v48;
      _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, "%@, %@, final deduped place inferences count, %lu", buf, 0x20u);
    }
  }

  v109 = v22;
  v104 = v17;
  v105 = v16;
  v112 = objc_opt_new();
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = v43;
  v49 = [obj countByEnumeratingWithState:&v118 objects:v123 count:16];
  if (v49)
  {
    v50 = v49;
    v115 = *v119;
    v51 = MEMORY[0x277D86220];
    do
    {
      v52 = 0;
      v53 = v25;
      do
      {
        if (*v119 != v115)
        {
          objc_enumerationMutation(obj);
        }

        v54 = *(*(&v118 + 1) + 8 * v52);
        v55 = objc_autoreleasePoolPush();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v56 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = objc_opt_class();
            v58 = NSStringFromClass(v57);
            v59 = NSStringFromSelector(a2);
            *buf = 138412803;
            v125 = v58;
            v126 = 2112;
            v127 = v59;
            v128 = 2117;
            v129 = v54;
            _os_log_impl(&dword_2304B3000, v56, OS_LOG_TYPE_INFO, "%@, %@, deduped place inference, %{sensitive}@", buf, 0x20u);
          }
        }

        v60 = [v54 mapItem];
        v25 = [v116 objectForKey:v60];

        v61 = v54;
        v62 = v61;
        if (v25)
        {
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            v63 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              v64 = objc_opt_class();
              v65 = NSStringFromClass(v64);
              v66 = NSStringFromSelector(a2);
              *buf = 138412803;
              v125 = v65;
              v126 = 2112;
              v127 = v66;
              v128 = 2117;
              v129 = v62;
              _os_log_impl(&dword_2304B3000, v63, OS_LOG_TYPE_INFO, "%@, %@, session configuration for place inference exists, %{sensitive}@", buf, 0x20u);
            }
          }

          v117 = 0;
          v67 = [SMSuggestionsHelper createMasqueradingReferenceLocationFromFenceInfo:v25 placeInference:v62 error:&v117];
          v68 = v117;
          if (v68 || !v67)
          {
            v69 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              v78 = objc_opt_class();
              v110 = NSStringFromClass(v78);
              v79 = NSStringFromSelector(a2);
              *buf = 138412802;
              v125 = v110;
              v126 = 2112;
              v127 = v79;
              v80 = v79;
              v128 = 2112;
              v129 = v109;
              _os_log_error_impl(&dword_2304B3000, v69, OS_LOG_TYPE_ERROR, "%@, %@, error creating masquerading place inference, defaulting to original, %@", buf, 0x20u);
            }
          }

          if (v67)
          {
LABEL_51:
            [v112 addObject:v67];
            goto LABEL_56;
          }
        }

        else
        {
          v67 = v61;
          if (v61)
          {
            goto LABEL_51;
          }
        }

        v70 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v75 = objc_opt_class();
          v76 = NSStringFromClass(v75);
          v77 = NSStringFromSelector(a2);
          *buf = 138412546;
          v125 = v76;
          v126 = 2112;
          v127 = v77;
          _os_log_error_impl(&dword_2304B3000, v70, OS_LOG_TYPE_ERROR, "%@, %@, finalCandidateSessionDestination is nil", buf, 0x16u);
        }

LABEL_56:
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v71 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
          {
            v72 = objc_opt_class();
            v73 = NSStringFromClass(v72);
            v74 = NSStringFromSelector(a2);
            *buf = 138412803;
            v125 = v73;
            v126 = 2112;
            v127 = v74;
            v128 = 2117;
            v129 = v67;
            _os_log_impl(&dword_2304B3000, v71, OS_LOG_TYPE_INFO, "%@, %@, final candidate session destination, %{sensitive}@", buf, 0x20u);
          }
        }

        objc_autoreleasePoolPop(v55);
        ++v52;
        v53 = v25;
      }

      while (v50 != v52);
      v50 = [obj countByEnumeratingWithState:&v118 objects:v123 count:16];
    }

    while (v50);
  }

  v81 = _RTSafeArray();
  v82 = _RTMultiErrorCreate();
  v103[2](v103, v109, v102, v112, v82);
}

- (void)onAuthorizationNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SMSuggestionsHelper_onAuthorizationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onAuthorizationNotification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 name];
  v7 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    -[SMSuggestionsHelper setRoutineEnabled:](self, "setRoutineEnabled:", [v5 enabled]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(SMSuggestionsHelper *)self routineEnabled];
        v11 = @"NO";
        if (v10)
        {
          v11 = @"YES";
        }

        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "Updated routine enabled %@", &v14, 0xCu);
      }

LABEL_10:
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(a2);
      v13 = [v5 name];
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, unhandled notification, %@", &v14, 0x16u);
    }

    goto LABEL_10;
  }
}

- (void)refreshCurrentLocationWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__SMSuggestionsHelper_refreshCurrentLocationWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_refreshCurrentLocationWithHandler:(id)a3
{
  v5 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__61;
  v20[4] = __Block_byref_object_dispose__61;
  v21 = 0;
  v6 = objc_autoreleasePoolPush();
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__61;
  v18[4] = __Block_byref_object_dispose__61;
  v19 = 0;
  v7 = [RTLocationRequestOptions alloc];
  v8 = [(RTLocationRequestOptions *)v7 initWithDesiredAccuracy:1 horizontalAccuracy:1 maxAge:*MEMORY[0x277CE4208] yieldLastLocation:100.0 timeout:60.0 fallback:4.0 fallbackHorizontalAccuracy:100.0 fallbackMaxAge:3600.0];
  v9 = [(SMSuggestionsHelper *)self locationManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__SMSuggestionsHelper__refreshCurrentLocationWithHandler___block_invoke;
  v12[3] = &unk_2788CA098;
  v12[4] = self;
  v15 = v20;
  v16 = v18;
  v17 = a2;
  v10 = v8;
  v13 = v10;
  v11 = v5;
  v14 = v11;
  [v9 fetchCurrentLocationWithOptions:v10 handler:v12];

  _Block_object_dispose(v18, 8);
  objc_autoreleasePoolPop(v6);
  _Block_object_dispose(v20, 8);
}

void __58__SMSuggestionsHelper__refreshCurrentLocationWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SMSuggestionsHelper__refreshCurrentLocationWithHandler___block_invoke_2;
  v11[3] = &unk_2788CA070;
  v17 = *(a1 + 56);
  v12 = v6;
  v13 = v5;
  v8 = *(a1 + 40);
  v14 = *(a1 + 32);
  v18 = *(a1 + 72);
  v15 = v8;
  v16 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

void __58__SMSuggestionsHelper__refreshCurrentLocationWithHandler___block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 32));
  v2 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:*(a1 + 40)];
  v3 = *(*(a1 + 80) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 80) + 8) + 40);
  v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v6)
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(*(a1 + 88));
        v11 = *(a1 + 56);
        v12 = *(*(*(a1 + 80) + 8) + 40);
        v13 = [v12 date];
        [v13 timeIntervalSinceNow];
        v29 = 138413315;
        v30 = v9;
        v31 = 2112;
        v32 = v10;
        v33 = 2112;
        v34 = v11;
        v35 = 2117;
        v36 = v12;
        v37 = 2048;
        v38 = -v14;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, Success, YES, options, %@, location, %{sensitive}@, age, %.3f", &v29, 0x34u);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(*(a1 + 88));
        v19 = *(*(*(a1 + 80) + 8) + 40);
        v29 = 138412803;
        v30 = v17;
        v31 = 2112;
        v32 = v18;
        v33 = 2117;
        v34 = v19;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, %@, setting latestLocationOfTheDevice as fetchedLastLocation, %{sensitive}@", &v29, 0x20u);
      }
    }

    v20 = *(*(*(a1 + 80) + 8) + 40);
  }

  else
  {
    if (v6)
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = NSStringFromSelector(*(a1 + 88));
        v25 = *(a1 + 56);
        v26 = *(*(*(a1 + 72) + 8) + 40);
        v29 = 138413058;
        v30 = v23;
        v31 = 2112;
        v32 = v24;
        v33 = 2112;
        v34 = v25;
        v35 = 2112;
        v36 = v26;
        _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "%@, %@, Success, NO, options, %@, error, %@", &v29, 0x2Au);
      }
    }

    v20 = 0;
  }

  [*(a1 + 48) setLatestLocationOfTheDevice:v20];
  v27 = *(a1 + 64);
  v28 = [*(a1 + 48) latestLocationOfTheDevice];
  (*(v27 + 16))(v27, v28, *(a1 + 32));
}

- (void)getSessionConfigurationsWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SMSuggestionsHelper_getSessionConfigurationsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_getSessionConfigurationsWithOptions:(id)a3 handler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[SMSuggestionsHelper _getSessionConfigurationsWithOptions:handler:]";
      v20 = 1024;
      v21 = 1818;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
    }

    v10 = [MEMORY[0x277CBEA60] array];
    v8[2](v8, v10, 0);
  }

  v11 = [(SMSuggestionsHelper *)self sessionStore];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__SMSuggestionsHelper__getSessionConfigurationsWithOptions_handler___block_invoke;
  v14[3] = &unk_2788C5A70;
  v14[4] = self;
  v15 = v7;
  v16 = v8;
  v17 = a2;
  v12 = v8;
  v13 = v7;
  [v11 fetchSessionConfigurationsWithOptions:v13 handler:v14];
}

void __68__SMSuggestionsHelper__getSessionConfigurationsWithOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 56));
      v11 = *(a1 + 40);
      v12 = 138413571;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2048;
      v19 = [v5 count];
      v20 = 2117;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, options, %@, session configurations count, %lu, fetched session configurations, %{sensitive}@, fetch error, %@", &v12, 0x3Eu);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)getNPLOIsWithOnlyHighConfidence:(BOOL)a3 location:(id)a4 date:(id)a5 handler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SMSuggestionsHelper_getNPLOIsWithOnlyHighConfidence_location_date_handler___block_invoke;
  block[3] = &unk_2788C6440;
  v21 = a3;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

- (void)_getNPLOIsWithOnlyHighConfidence:(BOOL)a3 location:(id)a4 date:(id)a5 handler:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__61;
  v26[4] = __Block_byref_object_dispose__61;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__61;
  v24[4] = __Block_byref_object_dispose__61;
  v25 = [MEMORY[0x277CBEA60] array];
  v14 = [(SMSuggestionsHelper *)self deviceLocationPredictor];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__SMSuggestionsHelper__getNPLOIsWithOnlyHighConfidence_location_date_handler___block_invoke;
  v17[3] = &unk_2788CA0E0;
  v20 = v24;
  v21 = v26;
  v15 = v13;
  v19 = v15;
  v17[4] = self;
  v22 = a2;
  v23 = a3;
  v16 = v11;
  v18 = v16;
  [v14 fetchNextPredictedLocationsOfInterestFromLocation:v16 startDate:v12 timeInterval:v17 handler:3600.0];

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);
}

void __78__SMSuggestionsHelper__getNPLOIsWithOnlyHighConfidence_location_date_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v8 = *(a1 + 48);
    v9 = [MEMORY[0x277CBEA60] array];
    (*(v8 + 16))(v8, v9, *(*(*(a1 + 64) + 8) + 40));
  }

  v10 = *(*(*(a1 + 56) + 8) + 40);
  v11 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_46];
  v12 = [v10 filteredArrayUsingPredicate:v11];

  v13 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_165];
  v14 = [v12 filteredArrayUsingPredicate:v13];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      NSStringFromClass(v16);
      v17 = v24 = v7;
      v18 = NSStringFromSelector(*(a1 + 72));
      v19 = [*(*(*(a1 + 56) + 8) + 40) count];
      v20 = [v12 count];
      if (*(a1 + 80))
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v22 = [v14 count];
      v23 = *(a1 + 40);
      *buf = 138413827;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      v29 = 2048;
      v30 = v19;
      v31 = 2048;
      v32 = v20;
      v33 = 2112;
      v34 = v21;
      v35 = 2048;
      v36 = v22;
      v37 = 2117;
      v38 = v23;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, %@, nplois fetched count, %lu, nploisWithoutOnlyVehicleSource count, %lu, only high confidence, %@, nploisWithOnlyHighConfidenceAndWithoutOnlyVehicleSource, %lu, w.r.t the location, %{sensitive}@", buf, 0x48u);

      v7 = v24;
    }
  }

  (*(*(a1 + 48) + 16))();
}

uint64_t __78__SMSuggestionsHelper__getNPLOIsWithOnlyHighConfidence_location_date_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 sources];
  if ([v3 count] == 1)
  {
    v4 = [v2 sources];
    v5 = [v4 firstObject];
    objc_opt_class();
    v6 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

+ (id)getSMHandlesFromRTContacts:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "+[SMSuggestionsHelper getSMHandlesFromRTContacts:error:]";
      v38 = 1024;
      LODWORD(v39) = 1904;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contacts (in %s:%d)", buf, 0x12u);
    }
  }

  v9 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    aSelector = a2;
    obj = v10;
    v13 = 0;
    v14 = *v33;
    while (2)
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v32 + 1) + 8 * v15);
        v18 = objc_autoreleasePoolPush();
        v31 = v16;
        v19 = [a1 getSMHandlesFromRTContact:v17 error:&v31];
        v13 = v31;

        if (a4 && v13)
        {
          v20 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            v28 = NSStringFromSelector(aSelector);
            *buf = 138412802;
            v37 = v27;
            v38 = 2112;
            v39 = v28;
            v40 = 2112;
            v41 = v13;
            _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
          }

          v21 = v13;
          *a4 = v13;
          v22 = v9;

          objc_autoreleasePoolPop(v18);
          v10 = obj;

          goto LABEL_22;
        }

        [v9 addObjectsFromArray:v19];

        objc_autoreleasePoolPop(v18);
        ++v15;
        v16 = v13;
      }

      while (v12 != v15);
      v10 = obj;
      v12 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

  if (a4)
  {
    v23 = v13;
    *a4 = v13;
  }

  v24 = v9;
LABEL_22:

  return v9;
}

+ (id)getSMHandlesFromRTContact:(id)a3 error:(id *)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v51 = "+[SMSuggestionsHelper getSMHandlesFromRTContact:error:]";
      v52 = 1024;
      LODWORD(v53) = 1923;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contact (in %s:%d)", buf, 0x12u);
    }
  }

  v6 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v37 = v4;
  v7 = [v4 phoneNumbers];
  v8 = [v7 countByEnumeratingWithState:&v45 objects:v56 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v46;
    do
    {
      v11 = 0;
      do
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v45 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [MEMORY[0x277D1A968] validateAndCleanupID:v12];
        if (v14)
        {
          v15 = objc_alloc(MEMORY[0x277D4AAE8]);
          v16 = [MEMORY[0x277CBEA60] array];
          v17 = [v15 initWithPrimaryHandle:v14 secondaryHandles:v16];
          [v6 addObject:v17];
        }

        else
        {
          v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v18 = objc_opt_class();
            v38 = NSStringFromClass(v18);
            v19 = NSStringFromSelector(a2);
            *buf = 138412802;
            v51 = v38;
            v52 = 2112;
            v53 = v19;
            v20 = v19;
            v54 = 2112;
            v55 = v12;
            _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%@, %@, failed to sanitize handle, %@", buf, 0x20u);
          }
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v45 objects:v56 count:16];
    }

    while (v9);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v21 = [v37 emailAddresses];
  v22 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v42;
    do
    {
      v25 = 0;
      do
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v41 + 1) + 8 * v25);
        v27 = objc_autoreleasePoolPush();
        v28 = [MEMORY[0x277D1A968] validateAndCleanupID:v26];
        if (v28)
        {
          v29 = objc_alloc(MEMORY[0x277D4AAE8]);
          v30 = [MEMORY[0x277CBEA60] array];
          v31 = [v29 initWithPrimaryHandle:v28 secondaryHandles:v30];
          [v6 addObject:v31];
        }

        else
        {
          v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v32 = objc_opt_class();
            v39 = NSStringFromClass(v32);
            v33 = NSStringFromSelector(a2);
            *buf = 138412802;
            v51 = v39;
            v52 = 2112;
            v53 = v33;
            v34 = v33;
            v54 = 2112;
            v55 = v26;
            _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@, %@, failed to sanitize handle, %@", buf, 0x20u);
          }
        }

        objc_autoreleasePoolPop(v27);
        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v23);
  }

  if (a4)
  {
    *a4 = 0;
  }

  return v6;
}

+ (id)getSMHandlesFromFAFamilyMembers:(id)a3 error:(id *)a4
{
  v57 = a4;
  v87 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v81 = "+[SMSuggestionsHelper getSMHandlesFromFAFamilyMembers:error:]";
      v82 = 1024;
      LODWORD(v83) = 1964;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: familyMembers (in %s:%d)", buf, 0x12u);
    }
  }

  v6 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v75;
    v58 = *v75;
    do
    {
      v10 = 0;
      v59 = v8;
      do
      {
        if (*v75 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v74 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        if (([v11 isMe] & 1) == 0)
        {
          v61 = v12;
          v62 = v10;
          v13 = [v11 contactIncludingImage:0];
          v63 = v13;
          if (v13)
          {
            v14 = [v13 phoneNumbers];
            v15 = [v14 valueForKey:@"value"];

            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v16 = v15;
            v17 = [v16 countByEnumeratingWithState:&v70 objects:v79 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v71;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v71 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v70 + 1) + 8 * i);
                  v22 = [v21 stringValue];

                  if (v22)
                  {
                    v23 = MEMORY[0x277D1A968];
                    v24 = [v21 stringValue];
                    v25 = [v23 validateAndCleanupID:v24];

                    if (v25)
                    {
                      v26 = objc_alloc(MEMORY[0x277D4AAE8]);
                      v27 = [MEMORY[0x277CBEA60] array];
                      v28 = [v26 initWithPrimaryHandle:v25 secondaryHandles:v27];
                      [v6 addObject:v28];
                    }

                    else
                    {
                      v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                      {
                        v29 = objc_opt_class();
                        v30 = NSStringFromClass(v29);
                        v31 = NSStringFromSelector(a2);
                        v32 = [v21 stringValue];
                        *buf = 138412802;
                        v81 = v30;
                        v82 = 2112;
                        v83 = v31;
                        v84 = 2112;
                        v85 = v32;
                        _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, %@, failed to sanitize handle, %@", buf, 0x20u);
                      }
                    }
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v70 objects:v79 count:16];
              }

              while (v18);
            }

            v33 = [v63 emailAddresses];
            v34 = [v33 valueForKey:@"value"];

            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v35 = v34;
            v36 = [v35 countByEnumeratingWithState:&v66 objects:v78 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v67;
              do
              {
                for (j = 0; j != v37; ++j)
                {
                  if (*v67 != v38)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v40 = *(*(&v66 + 1) + 8 * j);
                  if (v40)
                  {
                    v41 = [MEMORY[0x277D1A968] validateAndCleanupID:*(*(&v66 + 1) + 8 * j)];
                    if (v41)
                    {
                      v42 = objc_alloc(MEMORY[0x277D4AAE8]);
                      v43 = [MEMORY[0x277CBEA60] array];
                      v44 = [v42 initWithPrimaryHandle:v41 secondaryHandles:v43];
                      [v6 addObject:v44];
                    }

                    else
                    {
                      v43 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                      {
                        v45 = objc_opt_class();
                        v64 = NSStringFromClass(v45);
                        v46 = NSStringFromSelector(a2);
                        *buf = 138412802;
                        v81 = v64;
                        v82 = 2112;
                        v83 = v46;
                        v47 = v46;
                        v84 = 2112;
                        v85 = v40;
                        _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "%@, %@, failed to sanitize handle, %@", buf, 0x20u);
                      }
                    }
                  }
                }

                v37 = [v35 countByEnumeratingWithState:&v66 objects:v78 count:16];
              }

              while (v37);
            }

            v9 = v58;
            v8 = v59;
          }

          else
          {
            v48 = MEMORY[0x277D1A968];
            v49 = [v11 appleID];
            v16 = [v48 validateAndCleanupID:v49];

            if (v16)
            {
              v50 = objc_alloc(MEMORY[0x277D4AAE8]);
              v35 = [MEMORY[0x277CBEA60] array];
              v51 = [v50 initWithPrimaryHandle:v16 secondaryHandles:v35];
              [v6 addObject:v51];
            }

            else
            {
              v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v52 = objc_opt_class();
                v53 = NSStringFromClass(v52);
                v54 = NSStringFromSelector(a2);
                v55 = [v11 appleID];
                *buf = 138412802;
                v81 = v53;
                v82 = 2112;
                v83 = v54;
                v84 = 2112;
                v85 = v55;
                _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "%@, %@, failed to sanitize handle, %@", buf, 0x20u);
              }

              v16 = 0;
            }
          }

          v12 = v61;
          v10 = v62;
        }

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
    }

    while (v8);
  }

  if (v57)
  {
    *v57 = 0;
  }

  return v6;
}

+ (id)placeInferenceFromNPLOI:(id)a3
{
  v3 = MEMORY[0x277D011D8];
  v4 = a3;
  v19 = [v3 alloc];
  v20 = [v4 locationOfInterest];
  v5 = [v20 mapItem];
  v6 = [v4 locationOfInterest];
  v7 = +[RTPlaceInferenceManager userSpecificPlaceTypeFromLocationOfInterestType:](RTPlaceInferenceManager, "userSpecificPlaceTypeFromLocationOfInterestType:", [v6 type]);
  v8 = [v4 locationOfInterest];
  v9 = +[RTPlaceInferenceManager userSpecificPlaceTypeSourceFromLocationOfInterestTypeSource:](RTPlaceInferenceManager, "userSpecificPlaceTypeSourceFromLocationOfInterestTypeSource:", [v8 typeSource]);
  v10 = [v4 locationOfInterest];
  v11 = [v10 location];
  v12 = [v4 locationOfInterest];
  [v12 confidence];
  v14 = v13;
  v15 = [v4 locationOfInterest];

  v16 = [v15 identifier];
  v17 = [v19 initWithMapItem:v5 userType:v7 userTypeSource:v9 placeType:0 referenceLocation:v11 confidence:v16 loiIdentifier:v14];

  return v17;
}

+ (id)createMasqueradingReferenceLocationFromFenceInfo:(id)a3 placeInference:(id)a4 error:(id *)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fenceInfo", buf, 2u);
    }

    if (a5)
    {
      v13 = @"fenceInfo";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!v9)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeInference", buf, 2u);
    }

    if (a5)
    {
      v13 = @"placeInference";
      goto LABEL_16;
    }

LABEL_17:
    v16 = 0;
    goto LABEL_28;
  }

  [v8 fenceRadius];
  if (v11 < 0.0)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fenceInfo.fenceRadius >= 0", buf, 2u);
    }

    if (a5)
    {
      v13 = @"fenceInfo.fenceRadius >= 0";
LABEL_16:
      _RTErrorInvalidParameterCreate(v13);
      *a5 = v16 = 0;
      goto LABEL_28;
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(a2);
      [v8 fenceRadius];
      v22 = v21;
      v23 = [v8 date];
      *buf = 138413315;
      v46 = v19;
      v47 = 2112;
      v48 = v20;
      v49 = 2117;
      v50 = v10;
      v51 = 2048;
      v52 = v22;
      v53 = 2112;
      v54 = v23;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, %@, adjusting place inference, %{sensitive}@, with fence radius, %f, from session configuration date, %@", buf, 0x34u);
    }
  }

  [v8 fenceRadius];
  v25 = v24;
  v26 = [v10 referenceLocation];
  v44 = 0;
  v27 = [SMSuggestionsHelper createMasqueradingReferenceLocationFromFenceRadius:v26 location:&v44 error:v25];
  v28 = v44;

  if (v28)
  {
    if (a5)
    {
      v29 = v28;
      v16 = 0;
      *a5 = v28;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v30 = objc_alloc(MEMORY[0x277D011D8]);
    v31 = [v10 mapItem];
    v32 = [v10 finerGranularityMapItem];
    v43 = [v10 userType];
    v33 = [v10 userTypeSource];
    v34 = [v10 placeType];
    [v10 confidence];
    v36 = v35;
    [v10 finerGranularityMapItemConfidence];
    v38 = v37;
    v39 = [v10 loiIdentifier];
    v40 = v30;
    v41 = v31;
    v16 = [v40 initWithMapItem:v31 finerGranularityMapItem:v32 userType:v43 userTypeSource:v33 placeType:v34 referenceLocation:v27 confidence:v36 finerGranularityMapItemConfidence:v38 loiIdentifier:v39];
  }

LABEL_28:

  return v16;
}

+ (id)createMasqueradingReferenceLocationFromFenceRadius:(double)a3 location:(id)a4 error:(id *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (!v8)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", &v24, 2u);
    }

    if (a5)
    {
      v10 = @"location";
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if (a3 < 0.0)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fenceRadius >= 0", &v24, 2u);
    }

    if (a5)
    {
      v10 = @"fenceRadius >= 0";
LABEL_11:
      _RTErrorInvalidParameterCreate(v10);
      *a5 = v12 = 0;
      goto LABEL_17;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v13 = objc_alloc(MEMORY[0x277D01160]);
  [v8 latitude];
  v15 = v14;
  [v8 longitude];
  v17 = v16;
  v18 = [v8 date];
  v12 = [v13 initWithLatitude:v18 longitude:objc_msgSend(v8 horizontalUncertainty:"referenceFrame") date:v15 referenceFrame:{v17, a3}];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      v24 = 138412803;
      v25 = v21;
      v26 = 2112;
      v27 = v22;
      v28 = 2117;
      v29 = v12;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@, %@, masquerading location, %{sensitive}@", &v24, 0x20u);
    }
  }

LABEL_17:

  return v12;
}

+ (id)dedupeSessionConfigurations:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v41;
    *&v6 = 138412802;
    v30 = v6;
    v32 = *v41;
    v33 = v4;
    do
    {
      v9 = 0;
      v34 = v7;
      do
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v40 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 destination];
        v13 = [v12 destinationMapItem];

        if (!v13)
        {
          v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = objc_opt_class();
            v26 = NSStringFromClass(v25);
            v27 = NSStringFromSelector(a2);
            *buf = v30;
            v45 = v26;
            v46 = 2112;
            v47 = v27;
            v48 = 2112;
            v49 = v10;
            _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@, %@, session configuration doesn't have destination map item, %@", buf, 0x20u);

            goto LABEL_14;
          }

LABEL_15:

          goto LABEL_16;
        }

        v14 = [v10 destination];
        v15 = [v14 destinationMapItem];
        v16 = [v4 objectForKey:v15];
        if (!v16)
        {

LABEL_13:
          v24 = [v10 destination];
          v26 = [v24 destinationMapItem];
          [v4 setObject:v10 forKeyedSubscript:v26];
LABEL_14:

          goto LABEL_15;
        }

        v17 = v16;
        v39 = [v10 destination];
        v38 = [v39 destinationMapItem];
        v18 = [v4 objectForKey:v38];
        v19 = [v18 sessionStartDate];
        v20 = [v10 sessionStartDate];
        [v19 laterDate:v20];
        v22 = v21 = v11;
        [v10 sessionStartDate];
        v23 = v37 = v14;
        v36 = [v22 isEqualToDate:v23];

        v11 = v21;
        v4 = v33;

        v7 = v34;
        v8 = v32;

        if (v36)
        {
          goto LABEL_13;
        }

LABEL_16:
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v7);
  }

  v28 = [v4 allValues];

  return v28;
}

- (id)_placeInferenceFromLOI:(id)a3
{
  v3 = MEMORY[0x277D011D8];
  v4 = a3;
  v18 = [v3 alloc];
  v19 = [v4 place];
  v5 = [v19 mapItem];
  v6 = [v4 place];
  v7 = +[RTPlaceInferenceManager userSpecificPlaceTypeFromLearnedPlaceType:](RTPlaceInferenceManager, "userSpecificPlaceTypeFromLearnedPlaceType:", [v6 type]);
  v8 = [v4 place];
  v9 = +[RTPlaceInferenceManager userSpecificPlaceTypeSourceFromLearnedPlaceTypeSource:](RTPlaceInferenceManager, "userSpecificPlaceTypeSourceFromLearnedPlaceTypeSource:", [v8 typeSource]);
  v10 = [v4 location];
  v11 = [v10 location];
  v12 = [v4 location];
  [v12 confidence];
  v14 = v13;
  v15 = [v4 identifier];

  v16 = [v18 initWithMapItem:v5 userType:v7 userTypeSource:v9 placeType:0 referenceLocation:v11 confidence:v15 loiIdentifier:v14];

  return v16;
}

- (id)_dedupePlaceInferencesWithOrder:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 loiIdentifier];

        if (v12)
        {
          v13 = [v10 loiIdentifier];
          v14 = [v4 objectForKey:v13];

          if (v14)
          {
            goto LABEL_12;
          }

          v15 = [v10 loiIdentifier];
          [v4 setObject:v10 forKeyedSubscript:v15];
        }

        else
        {
          v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = objc_opt_class();
            v17 = NSStringFromClass(v16);
            v18 = NSStringFromSelector(a2);
            *buf = 138412802;
            v27 = v17;
            v28 = 2112;
            v29 = v18;
            v30 = 2112;
            v31 = v10;
            _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@, %@, place inference doesn't have LOI identifier, %@", buf, 0x20u);
          }
        }

LABEL_12:
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v7);
  }

  v19 = [v4 allValues];

  return v19;
}

@end