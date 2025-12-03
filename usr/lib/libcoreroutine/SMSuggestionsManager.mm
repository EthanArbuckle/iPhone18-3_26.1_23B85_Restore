@interface SMSuggestionsManager
- (BOOL)_checkInitiatorEligibilityWithError:(id *)error;
- (BOOL)_checkReceiverEligibilityForHandle:(id)handle error:(id *)error;
- (BOOL)_deleteProactiveNotificationUponNavigationDestination:(id)destination error:(id *)error;
- (BOOL)_deleteProactiveNotificationWithDestinationLocation:(id)location error:(id *)error;
- (BOOL)_deleteProactiveNotificationWithError:(id *)error;
- (BOOL)_didInteractInPastWithHandle:(id)handle timeInterval:(double)interval error:(id *)error;
- (BOOL)_isEffectivePairedDeviceNearby;
- (BOOL)_isFirstTimeUserOfZelkovaWithError:(id *)error;
- (BOOL)_isSessionConfigurationSimilarToTheSuggestion:(id)suggestion sessionConfiguration:(id)configuration error:(id *)error;
- (BOOL)_isUserInActiveSessionWithError:(id *)error;
- (BOOL)_isWalkingBoutDetectedByAppendingPedometerData:(id)data;
- (BOOL)_reRegisterForPedometerNotificationsForLearnedLocationOfInterest:(id)interest startDate:(id)date error:(id *)error;
- (BOOL)_refreshCurrentLocationWithError:(id *)error;
- (BOOL)_registerForPedometerNotificationsForLearnedLocationOfInterest:(id)interest startDate:(id)date error:(id *)error;
- (BOOL)_resetStatesForPedometerData;
- (BOOL)_setupPedometerDataHandler;
- (BOOL)_setupPedometerNotificationsIfExists:(id *)exists;
- (BOOL)_shouldShowProactiveSuggestions;
- (BOOL)_showSuggestionsDetectionUIWithSuggestion:(id)suggestion error:(id *)error;
- (BOOL)_unregisterForPedometerNotificationsWithError:(id *)error;
- (BOOL)isZelkovaSuggestionsFeatureEnabledWithError:(id *)error;
- (BOOL)suggestionEnabledForUserType:(unint64_t)type;
- (SMSuggestionsManager)initWithAuthorizationManager:(id)manager contactsManager:(id)contactsManager defaultsManager:(id)defaultsManager deviceLocationPredictor:(id)predictor distanceCalculator:(id)calculator healthKitManager:(id)kitManager learnedLocationStore:(id)store learnedLocationManager:(id)self0 locationManager:(id)self1 mapServiceManager:(id)self2 messagingService:(id)self3 motionActivityManager:(id)self4 navigationManager:(id)self5 platform:(id)self6 visitManager:(id)self7 visitConsolidator:(id)self8 sessionStore:(id)self9 suggestionsStore:(id)suggestionsStore suggestionsHelper:(id)helper appDeletionManager:(id)deletionManager trialManager:(id)trialManager;
- (id)_generatePersonalizedSuggestionForFirstTimeUserFromContext:(id)context error:(id *)error;
- (id)_generatePersonalizedSuggestionForOccasionalUserFromContext:(id)context error:(id *)error;
- (id)_generatePersonalizedSuggestionForRegularUserFromContext:(id)context error:(id *)error;
- (id)_generatePersonalizedSuggestionForWorkoutUserFromContext:(id)context error:(id *)error;
- (id)_generatePersonalizedSuggestionFromContext:(id)context error:(id *)error;
- (id)_getCurrentDateFromContext:(id)context error:(id *)error;
- (id)_getFirstEligibleHandleFromSessionConfigurations:(id)configurations error:(id *)error;
- (id)_getMessagesURLFromSessionConfig:(id)config payloadType:(int64_t)type error:(id *)error;
- (id)_getNPLOIsToHomeWithOnlyHighConfidence:(BOOL)confidence location:(id)location date:(id)date error:(id *)error;
- (id)_getNPLOIsWithOnlyHighConfidence:(BOOL)confidence location:(id)location date:(id)date error:(id *)error;
- (id)_getNotificationExpirationDateForSuggestion:(id)suggestion error:(id *)error;
- (id)_getSessionConfigurationsWithOptions:(id)options error:(id *)error;
- (id)_getSourceLocationFromContext:(id)context error:(id *)error;
- (id)_getSuggestionBodyWithPlaceInference:(id)inference;
- (id)_getSuggestionTitleWithHandle:(id)handle error:(id *)error;
- (id)_getSuggestionsFooter:(id)footer;
- (id)_getSunriseDateAtLocation:(id)location date:(id)date error:(id *)error;
- (id)_getSunsetDateAtLocation:(id)location date:(id)date error:(id *)error;
- (id)_getSystemVersionUpdateDate;
- (id)_getValuesFromDefaultsIfExists:(id)exists error:(id *)error;
- (id)_runProactiveSuggestionsEngineWithContext:(id)context shouldStoreSuggestions:(BOOL)suggestions error:(id *)error;
- (unint64_t)_getSuggestionTriggerFromContext:(id)context error:(id *)error;
- (unint64_t)_suppressSuggestion:(id)suggestion context:(id)context error:(id *)error;
- (void)_changeWidgetVisibilityForMessagesInstallationState:(BOOL)state;
- (void)_considerShowingAlwaysOnPromptWithConfiguration:(id)configuration;
- (void)_fetchSuggestedCheckInURLForWorkoutSuggestionWithHandler:(id)handler;
- (void)_fetchSuggestedSessionConfigurationWithHandler:(id)handler;
- (void)_generateSuggestionFromCurrentHealthKitWorkoutSnapshot:(id)snapshot;
- (void)_launchSessionInitiationUIWithConfiguration:(id)configuration handler:(id)handler;
- (void)_logStatesForPedometerData;
- (void)_onAuthorizationNotification:(id)notification;
- (void)_onHealthKitNotification:(id)notification;
- (void)_onLearnedLocationManagerNotification:(id)notification;
- (void)_onNavigationNotification:(id)notification;
- (void)_onSessionStartedWithConfiguration:(id)configuration;
- (void)_onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device;
- (void)_onVehicleConnectedNotification:(id)notification;
- (void)_onVisitManagerNotification:(id)notification;
- (void)_sendTipsSignal;
- (void)_setup;
- (void)_shouldShowKeyboardSuggestionsForInitiator:(id)initiator receiver:(id)receiver handler:(id)handler;
- (void)_shouldShowTipKitSuggestionsForInitiator:(id)initiator receiver:(id)receiver handler:(id)handler;
- (void)_triggerCheckInWorkoutURLUpdateWithShouldGenerateURL:(BOOL)l;
- (void)_updateSafetyMonitorWorkoutSuggestionWidget;
- (void)_updateSystemVersionInDefaults;
- (void)fetchShouldShowProactiveSuggestionsWithHandler:(id)handler;
- (void)fetchSuggestedCheckInURLForWorkoutSuggestionWithHandler:(id)handler;
- (void)fetchSuggestedSessionConfigurationWithHandler:(id)handler;
- (void)launchSessionInitiationUIWithConfiguration:(id)configuration handler:(id)handler;
- (void)onAuthorizationNotification:(id)notification;
- (void)onHealthKitNotification:(id)notification;
- (void)onLearnedLocationManagerNotification:(id)notification;
- (void)onMessagesAppInstalled;
- (void)onMessagesAppUninstalled;
- (void)onNavigationNotification:(id)notification;
- (void)onSessionEndedForActiveDevice:(BOOL)device;
- (void)onSessionStartedWithConfiguration:(id)configuration;
- (void)onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device;
- (void)onVehicleConnectedNotification:(id)notification;
- (void)onVisitManagerNotification:(id)notification;
- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion;
- (void)quickReplySuggestionURLWithCompletionHandler:(id)handler;
- (void)runProactiveSuggestionsEngineWithContext:(id)context shouldStoreSuggestions:(BOOL)suggestions handler:(id)handler;
- (void)shouldShowKeyboardSuggestionsForInitiator:(id)initiator receiver:(id)receiver handler:(id)handler;
- (void)shouldShowTipKitSuggestionsForInitiator:(id)initiator receiver:(id)receiver handler:(id)handler;
- (void)showAlwaysOnPromptWithConfiguration:(id)configuration handler:(id)handler;
- (void)showSuggestionsDetectionUIWithSuggestion:(id)suggestion handler:(id)handler;
@end

@implementation SMSuggestionsManager

- (void)quickReplySuggestionURLWithCompletionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB57188);
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_230ACA6FC();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_230AFD8E8;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_230AFD8F8;
  v11[5] = v10;
  selfCopy = self;
  sub_2304C6B18(0, 0, v6, &unk_230AFD908, v11);
}

- (void)_sendTipsSignal
{
  if (qword_27DB59E40 != -1)
  {
    swift_once();
  }

  v0 = sub_230ACA57C();
  __swift_project_value_buffer(v0, qword_27DB59E48);
  v1 = sub_230ACA56C();
  v2 = sub_230ACA71C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_2304C71DC(0xD000000000000011, 0x8000000230B7A1F0, &v11);
    _os_log_impl(&dword_2304B3000, v1, v2, "%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x23191C0C0](v4, -1, -1);
    MEMORY[0x23191C0C0](v3, -1, -1);
  }

  discoverability = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  signals = [discoverability Signals];
  swift_unknownObjectRelease();
  source = [signals source];

  v8 = objc_allocWithZone(MEMORY[0x277CF1168]);
  v9 = sub_230ACA5DC();
  v10 = [v8 initWithContentIdentifier:v9 context:0 osBuild:0 userInfo:0];

  [source sendEvent_];
}

- (SMSuggestionsManager)initWithAuthorizationManager:(id)manager contactsManager:(id)contactsManager defaultsManager:(id)defaultsManager deviceLocationPredictor:(id)predictor distanceCalculator:(id)calculator healthKitManager:(id)kitManager learnedLocationStore:(id)store learnedLocationManager:(id)self0 locationManager:(id)self1 mapServiceManager:(id)self2 messagingService:(id)self3 motionActivityManager:(id)self4 navigationManager:(id)self5 platform:(id)self6 visitManager:(id)self7 visitConsolidator:(id)self8 sessionStore:(id)self9 suggestionsStore:(id)suggestionsStore suggestionsHelper:(id)helper appDeletionManager:(id)deletionManager trialManager:(id)trialManager
{
  managerCopy = manager;
  contactsManagerCopy = contactsManager;
  contactsManagerCopy2 = contactsManager;
  defaultsManagerCopy = defaultsManager;
  defaultsManagerCopy2 = defaultsManager;
  predictorCopy = predictor;
  calculatorCopy = calculator;
  calculatorCopy2 = calculator;
  kitManagerCopy = kitManager;
  storeCopy = store;
  locationManagerCopy = locationManager;
  v83 = a11;
  serviceManagerCopy = serviceManager;
  serviceCopy = service;
  activityManagerCopy = activityManager;
  navigationManagerCopy = navigationManager;
  platformCopy = platform;
  visitManagerCopy = visitManager;
  consolidatorCopy = consolidator;
  sessionStoreCopy = sessionStore;
  suggestionsStoreCopy = suggestionsStore;
  helperCopy = helper;
  deletionManagerCopy = deletionManager;
  trialManagerCopy = trialManager;
  v69 = trialManagerCopy;
  if (!managerCopy)
  {
    v30 = contactsManagerCopy2;
    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v50, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
    }

    v49 = 0;
    v51 = 0;
    v31 = defaultsManagerCopy2;
    goto LABEL_29;
  }

  v30 = contactsManagerCopy2;
  if (!contactsManagerCopy2)
  {
    v52 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v31 = defaultsManagerCopy2;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: contactsManager", buf, 2u);
    }

    v49 = 0;
    v51 = managerCopy;
LABEL_29:
    v32 = predictorCopy;
LABEL_30:
    v33 = calculatorCopy2;
    v34 = kitManagerCopy;
    v54 = locationManagerCopy;
    v53 = storeCopy;
    goto LABEL_31;
  }

  v31 = defaultsManagerCopy2;
  if (!defaultsManagerCopy2)
  {
    v57 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    v32 = predictorCopy;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v57, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
    }

    v49 = 0;
    v51 = managerCopy;
    goto LABEL_30;
  }

  v32 = predictorCopy;
  if (predictorCopy)
  {
    v33 = calculatorCopy2;
    v34 = kitManagerCopy;
    if (calculatorCopy2)
    {
      if (kitManagerCopy)
      {
        if (storeCopy)
        {
          if (locationManagerCopy)
          {
            if (v83)
            {
              if (serviceManagerCopy)
              {
                if (navigationManagerCopy)
                {
                  if (platformCopy)
                  {
                    if (visitManagerCopy)
                    {
                      if (consolidatorCopy)
                      {
                        if (sessionStoreCopy)
                        {
                          if (suggestionsStoreCopy)
                          {
                            if (helperCopy)
                            {
                              if (deletionManagerCopy)
                              {
                                if (trialManagerCopy)
                                {
                                  v87.receiver = self;
                                  v87.super_class = SMSuggestionsManager;
                                  v35 = [(RTNotifier *)&v87 init];
                                  v36 = v35;
                                  if (v35)
                                  {
                                    objc_storeStrong(&v35->_authorizationManager, manager);
                                    objc_storeStrong(&v36->_contactsManager, contactsManagerCopy);
                                    objc_storeStrong(&v36->_defaultsManager, defaultsManagerCopy);
                                    objc_storeStrong(&v36->_deviceLocationPredictor, predictor);
                                    objc_storeStrong(&v36->_distanceCalculator, calculatorCopy);
                                    objc_storeStrong(&v36->_healthKitManager, kitManager);
                                    objc_storeStrong(&v36->_learnedLocationStore, store);
                                    objc_storeStrong(&v36->_learnedLocationManager, locationManager);
                                    objc_storeStrong(&v36->_locationManager, a11);
                                    objc_storeStrong(&v36->_mapServiceManager, serviceManager);
                                    objc_storeStrong(&v36->_messagingService, service);
                                    objc_storeStrong(&v36->_motionActivityManager, activityManager);
                                    objc_storeStrong(&v36->_navigationManager, navigationManager);
                                    v37 = objc_opt_new();
                                    notificationHelper = v36->_notificationHelper;
                                    v36->_notificationHelper = v37;

                                    objc_storeStrong(&v36->_platform, platform);
                                    v73 = objc_alloc(MEMORY[0x277D4AAC0]);
                                    v39 = dispatch_queue_create("com.apple.CoreRoutine.SuggestionsManager.EligibilityChecker", 0);
                                    v40 = [v73 initWithQueue:v39];
                                    eligibilityChecker = v36->_eligibilityChecker;
                                    v36->_eligibilityChecker = v40;

                                    objc_storeStrong(&v36->_sessionStore, sessionStore);
                                    objc_storeStrong(&v36->_suggestionsStore, suggestionsStore);
                                    objc_storeStrong(&v36->_visitManager, visitManager);
                                    objc_storeStrong(&v36->_visitConsolidator, consolidator);
                                    objc_storeStrong(&v36->_suggestionsHelper, helper);
                                    objc_storeStrong(&v36->_appDeletionManager, deletionManager);
                                    objc_storeStrong(&v36->_trialManager, trialManager);
                                    latestLocationOfTheDevice = v36->_latestLocationOfTheDevice;
                                    v36->_latestLocationOfTheDevice = 0;

                                    v43 = objc_opt_new();
                                    pedometerUUIDs = v36->_pedometerUUIDs;
                                    v36->_pedometerUUIDs = v43;

                                    previousPedometerData = v36->_previousPedometerData;
                                    v36->_previousPedometerData = 0;

                                    currentLOI = v36->_currentLOI;
                                    v36->_currentLOI = 0;

                                    v36->_isPedometerNotificationsSetupAfterRoutineStarted = 0;
                                    v47 = [[SMSuggestionsMetricsManager alloc] initWithDefaultsManager:defaultsManagerCopy2 deviceLocationPredictor:predictorCopy sessionStore:sessionStoreCopy suggestionsStore:suggestionsStoreCopy];
                                    suggestionsMetricsManager = v36->_suggestionsMetricsManager;
                                    v36->_suggestionsMetricsManager = v47;

                                    [(RTService *)v36 setup];
                                  }

                                  v49 = v36;
                                  self = v49;
                                  goto LABEL_71;
                                }

                                v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 0;
                                  v60 = "Invalid parameter not satisfying: trialManager";
                                  goto LABEL_69;
                                }

LABEL_70:

                                v49 = 0;
LABEL_71:
                                v53 = storeCopy;
                                v51 = managerCopy;
                                v55 = serviceCopy;
                                v54 = locationManagerCopy;
                                goto LABEL_32;
                              }

                              v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                              if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_70;
                              }

                              *buf = 0;
                              v60 = "Invalid parameter not satisfying: appDeletionManager";
                            }

                            else
                            {
                              v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                              if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_70;
                              }

                              *buf = 0;
                              v60 = "Invalid parameter not satisfying: suggestionsHelper";
                            }
                          }

                          else
                          {
                            v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                            if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_70;
                            }

                            *buf = 0;
                            v60 = "Invalid parameter not satisfying: suggestionsStore";
                          }
                        }

                        else
                        {
                          v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                          if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_70;
                          }

                          *buf = 0;
                          v60 = "Invalid parameter not satisfying: sessionStore";
                        }
                      }

                      else
                      {
                        v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                        if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_70;
                        }

                        *buf = 0;
                        v60 = "Invalid parameter not satisfying: visitConsolidator";
                      }
                    }

                    else
                    {
                      v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                      if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_70;
                      }

                      *buf = 0;
                      v60 = "Invalid parameter not satisfying: visitManager";
                    }
                  }

                  else
                  {
                    v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_70;
                    }

                    *buf = 0;
                    v60 = "Invalid parameter not satisfying: platform";
                  }
                }

                else
                {
                  v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_70;
                  }

                  *buf = 0;
                  v60 = "Invalid parameter not satisfying: navigationManager";
                }
              }

              else
              {
                v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_70;
                }

                *buf = 0;
                v60 = "Invalid parameter not satisfying: mapServiceManager";
              }
            }

            else
            {
              v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_70;
              }

              *buf = 0;
              v60 = "Invalid parameter not satisfying: locationManager";
            }
          }

          else
          {
            v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_70;
            }

            *buf = 0;
            v60 = "Invalid parameter not satisfying: learnedLocationManager";
          }
        }

        else
        {
          v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_70;
          }

          *buf = 0;
          v60 = "Invalid parameter not satisfying: learnedLocationStore";
        }
      }

      else
      {
        v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        *buf = 0;
        v60 = "Invalid parameter not satisfying: healthKitManager";
      }
    }

    else
    {
      v59 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      *buf = 0;
      v60 = "Invalid parameter not satisfying: distanceCalculator";
    }

LABEL_69:
    _os_log_error_impl(&dword_2304B3000, v59, OS_LOG_TYPE_ERROR, v60, buf, 2u);
    goto LABEL_70;
  }

  v58 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  v33 = calculatorCopy2;
  v34 = kitManagerCopy;
  v54 = locationManagerCopy;
  v53 = storeCopy;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v58, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: deviceLocationPredictor", buf, 2u);
  }

  v49 = 0;
  v51 = managerCopy;
LABEL_31:
  v55 = serviceCopy;
LABEL_32:

  return v49;
}

- (void)_setup
{
  if ([(SMSuggestionsManager *)self isZelkovaSuggestionsFeatureEnabledWithError:0])
  {
    authorizationManager = [(SMSuggestionsManager *)self authorizationManager];
    v4 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
    [authorizationManager addObserver:self selector:sel_onAuthorizationNotification_ name:v4];

    visitManager = [(SMSuggestionsManager *)self visitManager];
    v6 = +[(RTNotification *)RTVisitManagerLowConfidenceVisitIncidentNotification];
    [visitManager addObserver:self selector:sel_onVisitManagerNotification_ name:v6];

    healthKitManager = [(SMSuggestionsManager *)self healthKitManager];
    v8 = +[(RTNotification *)RTHealthKitManagerWorkoutOngoingChangedNotification];
    [healthKitManager addObserver:self selector:sel_onHealthKitNotification_ name:v8];

    healthKitManager2 = [(SMSuggestionsManager *)self healthKitManager];
    v10 = +[(RTNotification *)RTHealthKitManagerNewWorkoutForSMSuggestionsNotification];
    [healthKitManager2 addObserver:self selector:sel_onHealthKitNotification_ name:v10];

    navigationManager = [(SMSuggestionsManager *)self navigationManager];
    v12 = +[(RTNotification *)RTNavigationManagerRouteSummaryNotification];
    [navigationManager addObserver:self selector:sel_onNavigationNotification_ name:v12];

    motionActivityManager = [(SMSuggestionsManager *)self motionActivityManager];
    v14 = +[(RTNotification *)RTMotionActivityManagerNotificationVehicleConnected];
    [motionActivityManager addObserver:self selector:sel_onVehicleConnectedNotification_ name:v14];

    learnedLocationManager = [(SMSuggestionsManager *)self learnedLocationManager];
    v16 = +[(RTNotification *)RTLearnedLocationManagerNotificationAvailabilityDidChange];
    [learnedLocationManager addObserver:self selector:sel_onLearnedLocationManagerNotification_ name:v16];

    [(SMSuggestionsManager *)self _setupPedometerDataHandler];
    [(SMSuggestionsManager *)self _updateSystemVersionInDefaults];
    appDeletionManager = [(SMSuggestionsManager *)self appDeletionManager];
    [appDeletionManager addObserver:self];
  }
}

- (void)_updateSystemVersionInDefaults
{
  v33 = *MEMORY[0x277D85DE8];
  defaultsManager = [(SMSuggestionsManager *)self defaultsManager];
  v5 = [defaultsManager objectForKey:@"RTDefaultsSuggestionsManagerSystemVersion"];

  defaultsManager2 = [(SMSuggestionsManager *)self defaultsManager];
  v7 = [defaultsManager2 objectForKey:@"RTDefaultsSuggestionsManagerSystemVersionUpdateDate"];

  platform = [(SMSuggestionsManager *)self platform];
  systemVersion = [platform systemVersion];
  v10 = [v5 isEqualToString:systemVersion];

  if (v10 && v7)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      date = v7;
      systemVersion2 = v5;
      goto LABEL_12;
    }

    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      stringFromDate = [v7 stringFromDate];
      v25 = 138413058;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v5;
      v31 = 2112;
      v32 = stringFromDate;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, skipping version update - current values, systemVersion, %@, systemVersionUpdateDate, %@", &v25, 0x2Au);
    }

    date = v7;
    systemVersion2 = v5;
    goto LABEL_10;
  }

  platform2 = [(SMSuggestionsManager *)self platform];
  systemVersion2 = [platform2 systemVersion];

  defaultsManager3 = [(SMSuggestionsManager *)self defaultsManager];
  [defaultsManager3 setObject:systemVersion2 forKey:@"RTDefaultsSuggestionsManagerSystemVersion"];

  date = [MEMORY[0x277CBEAA8] date];

  defaultsManager4 = [(SMSuggestionsManager *)self defaultsManager];
  [defaultsManager4 setObject:date forKey:@"RTDefaultsSuggestionsManagerSystemVersionUpdateDate"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromSelector(a2);
      stringFromDate2 = [date stringFromDate];
      v25 = 138413058;
      v26 = v22;
      v27 = 2112;
      v28 = v23;
      v29 = 2112;
      v30 = systemVersion2;
      v31 = 2112;
      v32 = stringFromDate2;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, setting RTDefaultsSuggestionsManagerSystemVersion, %@, RTDefaultsSuggestionsManagerSystemVersionUpdateDate, %@", &v25, 0x2Au);
    }

LABEL_10:
  }

LABEL_12:
}

- (id)_getSystemVersionUpdateDate
{
  v17 = *MEMORY[0x277D85DE8];
  defaultsManager = [(SMSuggestionsManager *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"RTDefaultsSuggestionsManagerSystemVersionUpdateDate"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(a2);
      stringFromDate = [v4 stringFromDate];
      v11 = 138412802;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = stringFromDate;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, %@, RTDefaultsSuggestionsManagerSystemVersionUpdateDate, %@", &v11, 0x20u);
    }
  }

  return v4;
}

- (void)onAuthorizationNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SMSuggestionsManager_onAuthorizationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onAuthorizationNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    -[SMSuggestionsManager setRoutineEnabled:](self, "setRoutineEnabled:", [notificationCopy enabled]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        routineEnabled = [(SMSuggestionsManager *)self routineEnabled];
        v11 = @"NO";
        if (routineEnabled)
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
      name2 = [notificationCopy name];
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = name2;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, unhandled notification, %@", &v14, 0x16u);
    }

    goto LABEL_10;
  }
}

- (void)onLearnedLocationManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__SMSuggestionsManager_onLearnedLocationManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onLearnedLocationManagerNotification:(id)notification
{
  v25 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTLearnedLocationManagerNotificationAvailabilityDidChange];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    v9 = notificationCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        if ([v9 available])
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        *buf = 138413058;
        if ([(SMSuggestionsManager *)self isPedometerNotificationsSetupAfterRoutineStarted])
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        v18 = v12;
        v19 = 2112;
        v20 = v13;
        v21 = 2112;
        v22 = v14;
        v23 = 2112;
        v24 = v15;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, learned location manager available, %@, isPedometerNotificationsSetupAfterRoutineStarted, %@", buf, 0x2Au);
      }
    }

    if ([v9 available]&& ![(SMSuggestionsManager *)self isPedometerNotificationsSetupAfterRoutineStarted])
    {
      v16 = 0;
      [(SMSuggestionsManager *)self _setupPedometerNotificationsIfExists:&v16];
      [(SMSuggestionsManager *)self setIsPedometerNotificationsSetupAfterRoutineStarted:1];
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v18 = notificationCopy;
      v19 = 2080;
      v20 = "[SMSuggestionsManager _onLearnedLocationManagerNotification:]";
      v21 = 1024;
      LODWORD(v22) = 400;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)onVisitManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SMSuggestionsManager_onVisitManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onVisitManagerNotification:(id)notification
{
  v98[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTVisitManagerLowConfidenceVisitIncidentNotification];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    v9 = notificationCopy;
    visitIncident = [v9 visitIncident];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        *buf = 138412803;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        *&buf[22] = 2117;
        v96 = visitIncident;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, received visit notification, %{sensitive}@", buf, 0x20u);
      }
    }

    if ([visitIncident type] == 1)
    {
      location = [visitIncident location];
      v87 = 0;
      v16 = [(SMSuggestionsManager *)self _deleteProactiveNotificationWithDestinationLocation:location error:&v87];
      v17 = v87;

      if (v17)
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v21 = NSStringFromSelector(a2);
          v22 = v21;
          v23 = @"NO";
          *buf = 138413058;
          *&buf[4] = v20;
          *&buf[12] = 2112;
          if (v16)
          {
            v23 = @"YES";
          }

          *&buf[14] = v21;
          *&buf[22] = 2112;
          v96 = v23;
          LOWORD(v97) = 2112;
          *(&v97 + 2) = v17;
          _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "%@, %@, delete proactive notification status, %@, error, %@,", buf, 0x2Au);
        }

        goto LABEL_44;
      }

      v36 = dispatch_semaphore_create(0);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v96 = __Block_byref_object_copy__119;
      *&v97 = __Block_byref_object_dispose__119;
      *(&v97 + 1) = 0;
      v81 = 0;
      v82 = &v81;
      v83 = 0x3032000000;
      v84 = __Block_byref_object_copy__119;
      v85 = __Block_byref_object_dispose__119;
      v86 = 0;
      learnedLocationManager = [(SMSuggestionsManager *)self learnedLocationManager];
      placeInference = [visitIncident placeInference];
      loiIdentifier = [placeInference loiIdentifier];
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __52__SMSuggestionsManager__onVisitManagerNotification___block_invoke;
      v77[3] = &unk_2788C4B58;
      v79 = buf;
      v80 = &v81;
      v40 = v36;
      v78 = v40;
      [learnedLocationManager fetchLocationOfInterestWithIdentifier:loiIdentifier handler:v77];

      v18 = v40;
      v73 = [MEMORY[0x277CBEAA8] now];
      v41 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v18, v41))
      {
        v72 = [MEMORY[0x277CBEAA8] now];
        [v72 timeIntervalSinceDate:v73];
        v43 = v42;
        v71 = objc_opt_new();
        v44 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v46 = [callStackSymbols filteredArrayUsingPredicate:v44];
        firstObject = [v46 firstObject];

        [v71 submitToCoreAnalytics:firstObject type:1 duration:v43];
        v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
        {
          *v88 = 0;
          _os_log_fault_impl(&dword_2304B3000, v48, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", v88, 2u);
        }

        v49 = MEMORY[0x277CCA9B8];
        v98[0] = *MEMORY[0x277CCA450];
        *v88 = @"semaphore wait timeout";
        v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v98 count:1];
        v51 = [v49 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v50];

        if (v51)
        {
          v52 = v51;
        }
      }

      else
      {
        v51 = 0;
      }

      v57 = v51;
      if (v57 || v82[5])
      {
        v58 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v67 = objc_opt_class();
          v68 = NSStringFromClass(v67);
          v69 = NSStringFromSelector(a2);
          v70 = v82[5];
          *v88 = 138413058;
          *&v88[4] = v68;
          v89 = 2112;
          v90 = v69;
          v91 = 2112;
          v92 = v57;
          v93 = 2112;
          v94 = v70;
          _os_log_error_impl(&dword_2304B3000, v58, OS_LOG_TYPE_ERROR, "%@, %@, sema error, %@, fetch loi error, %@", v88, 0x2Au);
        }

        v17 = 0;
      }

      else
      {
        v59 = *(*&buf[8] + 40);
        v60 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1800.0];
        v76 = 0;
        v61 = [(SMSuggestionsManager *)self _reRegisterForPedometerNotificationsForLearnedLocationOfInterest:v59 startDate:v60 error:&v76];
        v17 = v76;

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_41;
        }

        v58 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          v62 = objc_opt_class();
          v63 = NSStringFromClass(v62);
          v64 = NSStringFromSelector(a2);
          v65 = v64;
          v66 = @"NO";
          *v88 = 138413058;
          *&v88[4] = v63;
          v89 = 2112;
          if (v61)
          {
            v66 = @"YES";
          }

          v90 = v64;
          v91 = 2112;
          v92 = v66;
          v93 = 2112;
          v94 = v17;
          _os_log_impl(&dword_2304B3000, v58, OS_LOG_TYPE_INFO, "%@, %@, register for pedometer notifications status, %@, error, %@", v88, 0x2Au);
        }
      }

LABEL_41:
      _Block_object_dispose(&v81, 8);

      _Block_object_dispose(buf, 8);
LABEL_44:

      goto LABEL_45;
    }

    if ([visitIncident type] != 3)
    {
LABEL_45:

      goto LABEL_46;
    }

    exit = [visitIncident exit];
    entry = [visitIncident entry];
    [exit timeIntervalSinceDate:entry];
    v27 = v26;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = NSStringFromSelector(a2);
        *buf = 138413058;
        *&buf[4] = v30;
        *&buf[12] = 2112;
        *&buf[14] = v31;
        *&buf[22] = 2048;
        v96 = *&v27;
        LOWORD(v97) = 2048;
        *(&v97 + 2) = 0x408C200000000000;
        _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@, %@, visit duration, %f, kSMSuggestionVisitExitTriggerMinDuration, %f", buf, 0x2Au);
      }
    }

    if (v27 >= 900.0)
    {
      v75 = 0;
      v32 = [(SMSuggestionsManager *)self _runProactiveSuggestionsEngineWithContext:visitIncident shouldStoreSuggestions:1 error:&v75];
      v18 = v75;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v53 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = objc_opt_class();
          v55 = NSStringFromClass(v54);
          v56 = NSStringFromSelector(a2);
          *buf = 138413058;
          *&buf[4] = v55;
          *&buf[12] = 2112;
          *&buf[14] = v56;
          *&buf[22] = 2112;
          v96 = v32;
          LOWORD(v97) = 2112;
          *(&v97 + 2) = v18;
          _os_log_impl(&dword_2304B3000, v53, OS_LOG_TYPE_INFO, "%@, %@, suggestion from suggestions engine, %@, error, %@", buf, 0x2Au);
        }
      }
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v18 = 0;
        goto LABEL_43;
      }

      v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v34;
        *&buf[12] = 2112;
        *&buf[14] = v35;
        _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@, %@, proactive engine not triggered", buf, 0x16u);
      }

      v18 = 0;
    }

LABEL_43:
    v74 = v18;
    [(SMSuggestionsManager *)self _unregisterForPedometerNotificationsWithError:&v74];
    v17 = v74;
    goto LABEL_44;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    *&buf[4] = notificationCopy;
    *&buf[12] = 2080;
    *&buf[14] = "[SMSuggestionsManager _onVisitManagerNotification:]";
    *&buf[22] = 1024;
    LODWORD(v96) = 513;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", buf, 0x1Cu);
  }

LABEL_46:
}

void __52__SMSuggestionsManager__onVisitManagerNotification___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)onHealthKitNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SMSuggestionsManager_onHealthKitNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onHealthKitNotification:(id)notification
{
  v43 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTHealthKitManagerNewWorkoutForSMSuggestionsNotification];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    healthKitManager = [(SMSuggestionsManager *)self healthKitManager];
    healthKitManager2 = [(SMSuggestionsManager *)self healthKitManager];
    _getWorkoutDefaultStartDateForRaceRoute = [healthKitManager2 _getWorkoutDefaultStartDateForRaceRoute];
    healthKitManager3 = [(SMSuggestionsManager *)self healthKitManager];
    _getRTWorkoutDefaultTypesForSMSuggestions = [healthKitManager3 _getRTWorkoutDefaultTypesForSMSuggestions];
    v34 = 0;
    v14 = [healthKitManager getLatestWorkoutWithStartDate:_getWorkoutDefaultStartDateForRaceRoute nearLocation:0 distanceThreshold:0 onlySourcedFromFitnessApp:0 includePastureModeRoutes:_getRTWorkoutDefaultTypesForSMSuggestions workoutTypes:&v34 error:1.79769313e308];
    v15 = v34;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(a2);
        *buf = 138412802;
        v36 = v18;
        v37 = 2112;
        v38 = v19;
        v39 = 2112;
        v40 = v14;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, %@, received workout notification for new workout, %@", buf, 0x20u);
      }
    }

    v33 = v15;
    v20 = [(SMSuggestionsManager *)self _runProactiveSuggestionsEngineWithContext:v14 shouldStoreSuggestions:1 error:&v33];
    v21 = v33;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = NSStringFromSelector(a2);
        *buf = 138413058;
        v36 = v24;
        v37 = 2112;
        v38 = v25;
        v39 = 2112;
        v40 = v20;
        v41 = 2112;
        v42 = v21;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, %@, suggestion from suggestions engine, %@, error, %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    name2 = [notificationCopy name];
    v27 = +[(RTNotification *)RTHealthKitManagerWorkoutOngoingChangedNotification];
    v28 = [name2 isEqualToString:v27];

    if (v28)
    {
      defaultsManager = [(SMSuggestionsManager *)self defaultsManager];
      v30 = [defaultsManager objectForKey:@"RTDefaultsWorkoutOngoing"];
      bOOLValue = [v30 BOOLValue];

      [(SMSuggestionsManager *)self _triggerCheckInWorkoutURLUpdateWithShouldGenerateURL:bOOLValue];
    }

    else
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v36 = notificationCopy;
        v37 = 2080;
        v38 = "[SMSuggestionsManager _onHealthKitNotification:]";
        v39 = 1024;
        LODWORD(v40) = 560;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", buf, 0x1Cu);
      }
    }
  }
}

- (void)_triggerCheckInWorkoutURLUpdateWithShouldGenerateURL:(BOOL)l
{
  lCopy = l;
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 1024;
      v17 = lCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, shouldGenerateURL: %{Bool}d", buf, 0x1Cu);
    }
  }

  if (lCopy)
  {
    healthKitManager = [(SMSuggestionsManager *)self healthKitManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__SMSuggestionsManager__triggerCheckInWorkoutURLUpdateWithShouldGenerateURL___block_invoke;
    v11[3] = &unk_2788CE708;
    v11[4] = self;
    [healthKitManager fetchCurrentWorkoutSnapshotWithHandler:v11];
  }

  else
  {
    [(SMSuggestionsManager *)self _updateSafetyMonitorWorkoutSuggestionWidget];
  }
}

void __77__SMSuggestionsManager__triggerCheckInWorkoutURLUpdateWithShouldGenerateURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__SMSuggestionsManager__triggerCheckInWorkoutURLUpdateWithShouldGenerateURL___block_invoke_2;
  v6[3] = &unk_2788C4A70;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __77__SMSuggestionsManager__triggerCheckInWorkoutURLUpdateWithShouldGenerateURL___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _generateSuggestionFromCurrentHealthKitWorkoutSnapshot:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _updateSafetyMonitorWorkoutSuggestionWidget];
}

- (void)_generateSuggestionFromCurrentHealthKitWorkoutSnapshot:(id)snapshot
{
  v21 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  if (snapshotCopy)
  {
    v12 = 0;
    v6 = [(SMSuggestionsManager *)self _runProactiveSuggestionsEngineWithContext:snapshotCopy shouldStoreSuggestions:1 error:&v12];
    v7 = v12;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(a2);
        *buf = 138413058;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, suggestion from suggestions engine, %@, error, %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }
}

- (void)onNavigationNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SMSuggestionsManager_onNavigationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onNavigationNotification:(id)notification
{
  v36 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTNavigationManagerRouteSummaryNotification];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    v9 = notificationCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        *buf = 138412802;
        v31 = v12;
        v32 = 2112;
        v33 = v13;
        v34 = 2112;
        v35 = v9;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, received maps navigation start with notification, %@", buf, 0x20u);
      }
    }

    v14 = objc_alloc(MEMORY[0x277D01160]);
    [(__CFString *)v9 destinationLatitude];
    v16 = v15;
    [(__CFString *)v9 destinationLongitude];
    v18 = v17;
    date = [MEMORY[0x277CBEAA8] date];
    v20 = [v14 initWithLatitude:date longitude:v16 horizontalUncertainty:v18 date:0.0];

    v29 = 0;
    v21 = [(SMSuggestionsManager *)self _deleteProactiveNotificationUponNavigationDestination:v20 error:&v29];
    v22 = v29;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = NSStringFromSelector(a2);
        v27 = v26;
        v28 = @"NO";
        *buf = 138412802;
        v31 = v25;
        v32 = 2112;
        if (v21)
        {
          v28 = @"YES";
        }

        v33 = v26;
        v34 = 2112;
        v35 = v28;
        _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@, %@, proactive notification deletion status, %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v31 = notificationCopy;
      v32 = 2080;
      v33 = "[SMSuggestionsManager _onNavigationNotification:]";
      v34 = 1024;
      LODWORD(v35) = 658;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)onVehicleConnectedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SMSuggestionsManager_onVehicleConnectedNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onVehicleConnectedNotification:(id)notification
{
  v30 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTMotionActivityManagerNotificationVehicleConnected];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    v9 = notificationCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        v14 = +[RTMotionActivityManager motionActivityVehicleConnectedStateToString:](RTMotionActivityManager, "motionActivityVehicleConnectedStateToString:", [v9 vehicleConnectedState]);
        *buf = 138412802;
        v23 = v12;
        v24 = 2112;
        v25 = v13;
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, received vehicle connected notification with state, %@", buf, 0x20u);
      }
    }

    v21 = 0;
    v15 = [(SMSuggestionsManager *)self _runProactiveSuggestionsEngineWithContext:v9 shouldStoreSuggestions:1 error:&v21];
    v16 = v21;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = NSStringFromSelector(a2);
        *buf = 138413058;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        v26 = 2112;
        v27 = v15;
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, %@, suggestion from suggestions engine, %@, error, %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v23 = notificationCopy;
      v24 = 2080;
      v25 = "[SMSuggestionsManager _onVehicleConnectedNotification:]";
      v26 = 1024;
      LODWORD(v27) = 694;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)onSessionStartedWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SMSuggestionsManager_onSessionStartedWithConfiguration___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(queue, v7);
}

- (void)_onSessionStartedWithConfiguration:(id)configuration
{
  v4 = 0;
  [(SMSuggestionsManager *)self _deleteProactiveNotificationWithError:&v4];
  [(SMSuggestionsManager *)self _triggerCheckInWorkoutURLUpdateWithShouldGenerateURL:0];
  [(SMSuggestionsManager *)self _sendTipsSignal];
}

- (void)onSessionEndedForActiveDevice:(BOOL)device
{
  queue = [(RTNotifier *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SMSuggestionsManager_onSessionEndedForActiveDevice___block_invoke;
  v6[3] = &unk_2788C5070;
  v6[4] = self;
  deviceCopy = device;
  dispatch_async(queue, v6);
}

- (void)onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device
{
  changedCopy = changed;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SMSuggestionsManager_onSessionStateChanged_forActiveDevice___block_invoke;
  block[3] = &unk_2788C53C8;
  block[4] = self;
  v10 = changedCopy;
  deviceCopy = device;
  v8 = changedCopy;
  dispatch_async(queue, block);
}

- (void)_onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device
{
  deviceCopy = device;
  v20 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v8 = changedCopy;
  if (deviceCopy)
  {
    configuration = [changedCopy configuration];
    if ([configuration sessionType] == 4)
    {
      if ([v8 sessionState] == 1)
      {
      }

      else
      {
        sessionState = [v8 sessionState];

        if (sessionState != 12)
        {
          goto LABEL_12;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v14 = NSStringFromSelector(a2);
          v16 = 138412546;
          v17 = v13;
          v18 = 2112;
          v19 = v14;
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, considering showing the Always On prompt", &v16, 0x16u);
        }
      }

      configuration2 = [v8 configuration];
      [(SMSuggestionsManager *)self _considerShowingAlwaysOnPromptWithConfiguration:configuration2];
    }

    else
    {
    }
  }

LABEL_12:
}

- (BOOL)_deleteProactiveNotificationWithError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  defaultsManager = [(SMSuggestionsManager *)self defaultsManager];
  v6 = [defaultsManager objectForKey:@"RTDefaultsSuggestionsManagerLastSuggestionNotificationUUID"];

  if (v6)
  {
    v7 = [RTUserNotification alloc];
    v8 = [(RTUserNotification *)v7 initWithBundleIdentifier:*MEMORY[0x277D4AD38] notificationUUIDString:v6];
    v22 = 0;
    v9 = [v8 deleteNotificationWithError:&v22];
    v10 = v22;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        v15 = v14;
        v16 = @"NO";
        *buf = 138413058;
        v24 = v13;
        if (v9)
        {
          v16 = @"YES";
        }

        v25 = 2112;
        v26 = v14;
        v27 = 2112;
        v28 = v16;
        v29 = 2112;
        v30 = v10;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, scheduled clean up of notification status, %@, error, %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    LOBYTE(v9) = 1;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      if (!error)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      *buf = 138412546;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, notification UUID from defaults is nil", buf, 0x16u);
    }

    v10 = 0;
  }

  if (error)
  {
LABEL_13:
    v20 = v10;
    *error = v10;
  }

LABEL_14:

  return v9;
}

- (BOOL)_deleteProactiveNotificationWithDestinationLocation:(id)location error:(id *)error
{
  v102[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if (locationCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v6 = objc_alloc(MEMORY[0x277D4AC18]);
    v7 = objc_alloc(MEMORY[0x277CCA970]);
    v8 = [date dateByAddingTimeInterval:-600.0];
    v9 = *MEMORY[0x277D4AF10];
    v10 = [v7 initWithStartDate:v8 endDate:date];
    v11 = [v6 initWithBatchSize:v9 fetchLimit:1 offset:v9 includeSuppressed:0 sortByCreationDate:1 ascending:0 dateInterval:v10 filteredToSuggestionTriggers:0 filteredToSuggestionUserTypes:0 filteredToSessionTypes:0];

    v85 = 0;
    v86 = &v85;
    v87 = 0x3032000000;
    v88 = __Block_byref_object_copy__119;
    v89 = __Block_byref_object_dispose__119;
    v90 = 0;
    v79 = 0;
    v80 = &v79;
    v81 = 0x3032000000;
    v82 = __Block_byref_object_copy__119;
    v83 = __Block_byref_object_dispose__119;
    v84 = 0;
    v12 = dispatch_semaphore_create(0);
    suggestionsStore = [(SMSuggestionsManager *)self suggestionsStore];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __82__SMSuggestionsManager__deleteProactiveNotificationWithDestinationLocation_error___block_invoke;
    v75[3] = &unk_2788C4490;
    v77 = &v85;
    v78 = &v79;
    v14 = v12;
    v76 = v14;
    [suggestionsStore fetchSuggestionsWithOptions:v11 handler:v75];
    v70 = v11;

    v15 = v14;
    v16 = [MEMORY[0x277CBEAA8] now];
    v17 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v15, v17))
    {
      v18 = [MEMORY[0x277CBEAA8] now];
      [v18 timeIntervalSinceDate:v16];
      v20 = v19;
      v21 = objc_opt_new();
      v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v24 = [callStackSymbols filteredArrayUsingPredicate:v22];
      firstObject = [v24 firstObject];

      [v21 submitToCoreAnalytics:firstObject type:1 duration:v20];
      v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
      }

      v27 = MEMORY[0x277CCA9B8];
      v102[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v102 count:1];
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

    v33 = v29;
    v34 = v33;
    if (error && v33)
    {
      v35 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v58 = objc_opt_class();
        v59 = NSStringFromClass(v58);
        v60 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v59;
        v92 = 2112;
        v93 = v60;
        v94 = 2112;
        v95 = *&v34;
        _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v32 = 0;
      v36 = v34;
      goto LABEL_43;
    }

    if (error && *(v80 + 5))
    {
      v37 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v61 = objc_opt_class();
        v62 = NSStringFromClass(v61);
        v63 = NSStringFromSelector(a2);
        v64 = v80[5];
        *buf = 138412802;
        *&buf[4] = v62;
        v92 = 2112;
        v93 = v63;
        v94 = 2112;
        v95 = v64;
        _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v38 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          v41 = NSStringFromSelector(a2);
          *&v42 = COERCE_DOUBLE([v86[5] count]);
          *buf = 138412802;
          *&buf[4] = v40;
          v92 = 2112;
          v93 = v41;
          v94 = 2048;
          v95 = *&v42;
          _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, %@, suggestions count, %lu", buf, 0x20u);
        }
      }

      if (![v86[5] count])
      {
        v32 = 1;
        goto LABEL_44;
      }

      distanceCalculator = [(SMSuggestionsManager *)self distanceCalculator];
      firstObject2 = [v86[5] firstObject];
      destinationLocation = [firstObject2 destinationLocation];
      v46 = (v80 + 5);
      obj = *(v80 + 5);
      [distanceCalculator distanceFromLocation:destinationLocation toLocation:locationCopy error:&obj];
      v48 = v47;
      objc_storeStrong(v46, obj);

      if (!error || !*(v80 + 5))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v50 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            v51 = objc_opt_class();
            v52 = NSStringFromClass(v51);
            v53 = NSStringFromSelector(a2);
            firstObject3 = [v86[5] firstObject];
            destinationLocation2 = [firstObject3 destinationLocation];
            *buf = 138413571;
            *&buf[4] = v52;
            v92 = 2112;
            v93 = v53;
            v94 = 2048;
            v95 = v48;
            v96 = 2048;
            v97 = 0x408F400000000000;
            v98 = 2117;
            v99 = destinationLocation2;
            v100 = 2117;
            v101 = locationCopy;
            _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "%@, %@, distance, %.3f, kSMSuggestionMinimimDistanceBetweenSourceAndDestination, %.3f, suggestion location, %{sensitive}@, destinationLocation, %{sensitive}@", buf, 0x3Eu);
          }
        }

        v32 = 1;
        if (v48 >= 0.0 && v48 < 1000.0)
        {
          v56 = (v80 + 5);
          v73 = *(v80 + 5);
          v32 = [(SMSuggestionsManager *)self _deleteProactiveNotificationWithError:&v73];
          objc_storeStrong(v56, v73);
        }

        if (!error)
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      v49 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v65 = objc_opt_class();
        v66 = NSStringFromClass(v65);
        v67 = NSStringFromSelector(a2);
        v68 = v80[5];
        *buf = 138412802;
        *&buf[4] = v66;
        v92 = 2112;
        v93 = v67;
        v94 = 2112;
        v95 = v68;
        _os_log_error_impl(&dword_2304B3000, v49, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }
    }

    v32 = 0;
LABEL_42:
    v36 = *(v80 + 5);
LABEL_43:
    *error = v36;
LABEL_44:

    _Block_object_dispose(&v79, 8);
    _Block_object_dispose(&v85, 8);

    goto LABEL_45;
  }

  v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinationLocation", buf, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"destinationLocation");
    *error = v32 = 0;
  }

  else
  {
    v32 = 0;
  }

LABEL_45:

  return v32;
}

void __82__SMSuggestionsManager__deleteProactiveNotificationWithDestinationLocation_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)_deleteProactiveNotificationUponNavigationDestination:(id)destination error:(id *)error
{
  v123[1] = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  if (destinationCopy)
  {
    aSelector = a2;
    v106 = 0;
    v107 = &v106;
    v108 = 0x3032000000;
    v109 = __Block_byref_object_copy__119;
    v110 = __Block_byref_object_dispose__119;
    v111 = 0;
    obj = 0;
    [(SMSuggestionsManager *)self _refreshCurrentLocationWithError:&obj];
    objc_storeStrong(&v111, obj);
    if (error && *(v107 + 5))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v61 = objc_opt_class();
        v62 = NSStringFromClass(v61);
        v63 = NSStringFromSelector(aSelector);
        v64 = v107[5];
        *buf = 138412802;
        *&buf[4] = v62;
        v113 = 2112;
        v114 = v63;
        v115 = 2112;
        v116 = v64;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v9 = 0;
      *error = *(v107 + 5);
      goto LABEL_65;
    }

    date = [MEMORY[0x277CBEAA8] date];
    distanceCalculator = [(SMSuggestionsManager *)self distanceCalculator];
    latestLocationOfTheDevice = [(SMSuggestionsManager *)self latestLocationOfTheDevice];
    v12 = (v107 + 5);
    v104 = *(v107 + 5);
    [distanceCalculator distanceFromLocation:latestLocationOfTheDevice toLocation:destinationCopy error:&v104];
    v14 = v13;
    objc_storeStrong(v12, v104);

    if (error && *(v107 + 5))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v72 = objc_opt_class();
        v73 = NSStringFromClass(v72);
        v74 = NSStringFromSelector(aSelector);
        v75 = v107[5];
        *buf = 138412802;
        *&buf[4] = v73;
        v113 = 2112;
        v114 = v74;
        v115 = 2112;
        v116 = v75;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v9 = 0;
      *error = *(v107 + 5);
      goto LABEL_64;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = NSStringFromSelector(aSelector);
        latestLocationOfTheDevice2 = [(SMSuggestionsManager *)self latestLocationOfTheDevice];
        *buf = 138413571;
        *&buf[4] = v19;
        v113 = 2112;
        v114 = v20;
        v115 = 2048;
        v116 = v14;
        v117 = 2048;
        v118 = 0x407F400000000000;
        v119 = 2117;
        v120 = latestLocationOfTheDevice2;
        v121 = 2117;
        v122 = destinationCopy;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, %@, distanceBetweenCurrentLocationAndNavigationDestination, %.3f, kSMSuggestionProactiveNotificationTearDownDistanceCloseBy, %.3f, latestLocationOfTheDevice, %{sensitive}@, navigationDestination, %{sensitive}@", buf, 0x3Eu);
      }
    }

    if (v14 < 500.0)
    {
      v9 = 1;
LABEL_64:

LABEL_65:
      _Block_object_dispose(&v106, 8);

      goto LABEL_66;
    }

    v22 = objc_alloc(MEMORY[0x277D4AC18]);
    v23 = objc_alloc(MEMORY[0x277CCA970]);
    v24 = [date dateByAddingTimeInterval:-600.0];
    v25 = [v23 initWithStartDate:v24 endDate:date];
    v88 = [v22 initWithBatchSize:*MEMORY[0x277D4AF10] fetchLimit:1 offset:*MEMORY[0x277D4AF10] includeSuppressed:0 sortByCreationDate:1 ascending:0 dateInterval:v25 filteredToSuggestionTriggers:0 filteredToSuggestionUserTypes:0 filteredToSessionTypes:0];

    v98 = 0;
    v99 = &v98;
    v100 = 0x3032000000;
    v101 = __Block_byref_object_copy__119;
    v102 = __Block_byref_object_dispose__119;
    v103 = 0;
    v26 = dispatch_semaphore_create(0);
    suggestionsStore = [(SMSuggestionsManager *)self suggestionsStore];
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __84__SMSuggestionsManager__deleteProactiveNotificationUponNavigationDestination_error___block_invoke;
    v94[3] = &unk_2788C4490;
    v96 = &v98;
    v97 = &v106;
    v28 = v26;
    v95 = v28;
    [suggestionsStore fetchSuggestionsWithOptions:v88 handler:v94];

    dsema = v28;
    v29 = [MEMORY[0x277CBEAA8] now];
    v30 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v30))
    {
      v31 = [MEMORY[0x277CBEAA8] now];
      [v31 timeIntervalSinceDate:v29];
      v33 = v32;
      v34 = objc_opt_new();
      v35 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v37 = [callStackSymbols filteredArrayUsingPredicate:v35];
      firstObject = [v37 firstObject];

      [v34 submitToCoreAnalytics:firstObject type:1 duration:v33];
      v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v39, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
      }

      v40 = MEMORY[0x277CCA9B8];
      v123[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v123 count:1];
      v42 = [v40 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v41];

      if (v42)
      {
        v43 = v42;
      }
    }

    else
    {
      v42 = 0;
    }

    v44 = COERCE_DOUBLE(v42);
    if (v44 != 0.0 && error != 0)
    {
      v46 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v77 = objc_opt_class();
        v78 = NSStringFromClass(v77);
        v79 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        *&buf[4] = v78;
        v113 = 2112;
        v114 = v79;
        v115 = 2112;
        v116 = v44;
        _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v9 = 0;
      v47 = v44;
      goto LABEL_62;
    }

    if (error && *(v107 + 5))
    {
      v48 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v80 = objc_opt_class();
        v81 = NSStringFromClass(v80);
        v82 = NSStringFromSelector(aSelector);
        v83 = v107[5];
        *buf = 138412802;
        *&buf[4] = v81;
        v113 = 2112;
        v114 = v82;
        v115 = 2112;
        v116 = v83;
        _os_log_error_impl(&dword_2304B3000, v48, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v49 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = objc_opt_class();
          v51 = NSStringFromClass(v50);
          v52 = NSStringFromSelector(aSelector);
          *&v53 = COERCE_DOUBLE([v99[5] count]);
          *buf = 138412802;
          *&buf[4] = v51;
          v113 = 2112;
          v114 = v52;
          v115 = 2048;
          v116 = *&v53;
          _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "%@, %@, suggestions count, %lu", buf, 0x20u);
        }
      }

      if (![v99[5] count])
      {
        v9 = 1;
LABEL_63:

        _Block_object_dispose(&v98, 8);
        goto LABEL_64;
      }

      distanceCalculator2 = [(SMSuggestionsManager *)self distanceCalculator];
      firstObject2 = [v99[5] firstObject];
      destinationLocation = [firstObject2 destinationLocation];
      v57 = (v107 + 5);
      v93 = *(v107 + 5);
      [distanceCalculator2 distanceFromLocation:destinationLocation toLocation:destinationCopy error:&v93];
      v59 = v58;
      objc_storeStrong(v57, v93);

      if (!error || !*(v107 + 5))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v65 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
          {
            v66 = objc_opt_class();
            v67 = NSStringFromClass(v66);
            v68 = NSStringFromSelector(aSelector);
            firstObject3 = [v99[5] firstObject];
            destinationLocation2 = [firstObject3 destinationLocation];
            *buf = 138413571;
            *&buf[4] = v67;
            v113 = 2112;
            v114 = v68;
            v115 = 2048;
            v116 = v59;
            v117 = 2048;
            v118 = 0x407F400000000000;
            v119 = 2117;
            v120 = destinationLocation2;
            v121 = 2117;
            v122 = destinationCopy;
            _os_log_impl(&dword_2304B3000, v65, OS_LOG_TYPE_INFO, "%@, %@, distanceBetweenDestinations, %.3f, kSMSuggestionProactiveNotificationTearDownDistanceFromNavigationDestination, %.3f, suggestion location, %{sensitive}@, navigationDestination, %{sensitive}@", buf, 0x3Eu);
          }
        }

        if (v59 <= 500.0)
        {
          v9 = 1;
        }

        else
        {
          v71 = (v107 + 5);
          v92 = *(v107 + 5);
          v9 = [(SMSuggestionsManager *)self _deleteProactiveNotificationWithError:&v92];
          objc_storeStrong(v71, v92);
        }

        if (!error)
        {
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      v60 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v84 = objc_opt_class();
        v85 = NSStringFromClass(v84);
        v86 = NSStringFromSelector(aSelector);
        v87 = v107[5];
        *buf = 138412802;
        *&buf[4] = v85;
        v113 = 2112;
        v114 = v86;
        v115 = 2112;
        v116 = v87;
        _os_log_error_impl(&dword_2304B3000, v60, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }
    }

    v9 = 0;
LABEL_61:
    v47 = v107[5];
LABEL_62:
    *error = *&v47;
    goto LABEL_63;
  }

  v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: navigationDestination", buf, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"navigationDestination");
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_66:

  return v9;
}

void __84__SMSuggestionsManager__deleteProactiveNotificationUponNavigationDestination_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)_updateSafetyMonitorWorkoutSuggestionWidget
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = NSStringFromSelector(a2);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, %@, Suggestion widget not supported on this platform", &v7, 0x16u);
    }
  }
}

- (void)_changeWidgetVisibilityForMessagesInstallationState:(BOOL)state
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(a2);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, Suggestion widget not supported on this platform", &v8, 0x16u);
    }
  }
}

- (void)onMessagesAppInstalled
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SMSuggestionsManager_onMessagesAppInstalled__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)onMessagesAppUninstalled
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SMSuggestionsManager_onMessagesAppUninstalled__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_setupPedometerDataHandler
{
  v17 = *MEMORY[0x277D85DE8];
  queue = [(RTNotifier *)self queue];

  if (!queue)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[SMSuggestionsManager _setupPedometerDataHandler]";
      v15 = 1024;
      LODWORD(v16) = 1052;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: self.queue (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, setting pedometer data handler", buf, 0x16u);
    }
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__SMSuggestionsManager__setupPedometerDataHandler__block_invoke;
  v11[3] = &unk_2788CE730;
  objc_copyWeak(v12, buf);
  v12[1] = a2;
  [(SMSuggestionsManager *)self setPedometerDataHandler:v11];
  objc_destroyWeak(v12);
  objc_destroyWeak(buf);
  return 1;
}

void __50__SMSuggestionsManager__setupPedometerDataHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SMSuggestionsManager__setupPedometerDataHandler__block_invoke_2;
  block[3] = &unk_2788C50E8;
  v12 = *(a1 + 40);
  v19 = v9;
  v20 = v12;
  block[4] = WeakRetained;
  v17 = v7;
  v18 = v8;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v11, block);
}

void __50__SMSuggestionsManager__setupPedometerDataHandler__block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 64));
      v6 = *(a1 + 40);
      v7 = [*(a1 + 48) dateInterval];
      v8 = [v7 startDate];
      v9 = [v8 stringFromDate];
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      *buf = 138413570;
      v23 = v4;
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, %@, received pedometer data notification, subscriber UUID, %@, startDate, %@, with data, %@, error, %@", buf, 0x3Eu);
    }
  }

  if (!*(a1 + 56))
  {
    if (*(a1 + 40))
    {
      if (*(a1 + 48))
      {
        v12 = [*(a1 + 32) pedometerUUIDs];
        [v12 addObject:*(a1 + 40)];

        if (*(a1 + 48))
        {
          if ([*(a1 + 32) _isWalkingBoutDetectedByAppendingPedometerData:?])
          {
            v13 = *(a1 + 32);
            v14 = *(a1 + 48);
            v21 = 0;
            v15 = [v13 _runProactiveSuggestionsEngineWithContext:v14 shouldStoreSuggestions:1 error:&v21];
            v16 = v21;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                v18 = objc_opt_class();
                v19 = NSStringFromClass(v18);
                v20 = NSStringFromSelector(*(a1 + 64));
                *buf = 138413058;
                v23 = v19;
                v24 = 2112;
                v25 = v20;
                v26 = 2112;
                v27 = v15;
                v28 = 2112;
                v29 = v16;
                _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, %@, suggestion from suggestions engine, %@, error, %@", buf, 0x2Au);
              }
            }
          }
        }
      }
    }
  }
}

- (BOOL)_setupPedometerNotificationsIfExists:(id *)exists
{
  v32 = *MEMORY[0x277D85DE8];
  defaultsManager = [(SMSuggestionsManager *)self defaultsManager];
  v7 = [defaultsManager objectForKey:@"RTDefaultsSuggestionLastDateWalkingBoutTriggerIsScheduled"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      stringFromDate = [v7 stringFromDate];
      *buf = 138412802;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = stringFromDate;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, walkingBoutTriggerScheduledDate, %@,", buf, 0x20u);
    }
  }

  v23 = 0;
  v13 = [(SMSuggestionsManager *)self _reRegisterForPedometerNotificationsForLearnedLocationOfInterest:0 startDate:v7 error:&v23];
  v14 = v23;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(a2);
      v19 = v18;
      v20 = @"NO";
      *buf = 138413058;
      v25 = v17;
      if (v13)
      {
        v20 = @"YES";
      }

      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = v20;
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, %@, status, %@, error, %@", buf, 0x2Au);
    }
  }

  if (exists)
  {
    v21 = v14;
    *exists = v14;
  }

  return v13;
}

- (BOOL)_reRegisterForPedometerNotificationsForLearnedLocationOfInterest:(id)interest startDate:(id)date error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  dateCopy = date;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      stringFromDate = [dateCopy stringFromDate];
      *buf = 138413058;
      v29 = v13;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = stringFromDate;
      v34 = 2112;
      v35 = interestCopy;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, reRegistering for pedometer data, startDate, %@, locationOfInterest, %@", buf, 0x2Au);
    }
  }

  v27 = 0;
  v16 = [(SMSuggestionsManager *)self _unregisterForPedometerNotificationsWithError:&v27];
  v17 = v27;
  v18 = v17;
  if (error && v17)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(a2);
      *buf = 138412802;
      v29 = v24;
      v30 = 2112;
      v31 = v25;
      v32 = 2112;
      v33 = v18;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v20 = v18;
    goto LABEL_11;
  }

  v26 = v17;
  v16 = [(SMSuggestionsManager *)self _registerForPedometerNotificationsForLearnedLocationOfInterest:interestCopy startDate:dateCopy error:&v26];
  v20 = v26;

  v18 = v20;
  if (error)
  {
LABEL_11:
    v21 = v18;
    *error = v18;
  }

  return v16;
}

- (BOOL)_registerForPedometerNotificationsForLearnedLocationOfInterest:(id)interest startDate:(id)date error:(id *)error
{
  v119[1] = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  dateCopy = date;
  v94 = interestCopy;
  if (!dateCopy)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"startDate");
      *error = v38 = 0;
      goto LABEL_59;
    }

LABEL_58:
    v38 = 0;
    goto LABEL_59;
  }

  [(SMSuggestionsManager *)self _resetStatesForPedometerData];
  if (interestCopy)
  {
    [(SMSuggestionsManager *)self setCurrentLOI:interestCopy];
    goto LABEL_4;
  }

  v110 = 0;
  [(SMSuggestionsManager *)self _refreshCurrentLocationWithError:&v110];
  v40 = v110;
  if (error && v40)
  {
    v41 = v40;
    v42 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v81 = objc_opt_class();
      v82 = NSStringFromClass(v81);
      v83 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v82;
      *&buf[12] = 2112;
      *&buf[14] = v83;
      *&buf[22] = 2112;
      v112 = v41;
      _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v43 = v41;
    *error = v41;

    goto LABEL_58;
  }

  v91 = v40;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v49 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      v52 = NSStringFromSelector(a2);
      stringFromDate = [dateCopy stringFromDate];
      latestLocationOfTheDevice = [(SMSuggestionsManager *)self latestLocationOfTheDevice];
      *buf = 138413059;
      *&buf[4] = v51;
      *&buf[12] = 2112;
      *&buf[14] = v52;
      *&buf[22] = 2112;
      v112 = stringFromDate;
      *v113 = 2117;
      *&v113[2] = latestLocationOfTheDevice;
      _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "%@, %@, registering for pedometer notifications using startDate, %@, location, %{sensitive}@", buf, 0x2Au);
    }
  }

  v55 = dispatch_semaphore_create(0);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v112 = __Block_byref_object_copy__119;
  *v113 = __Block_byref_object_dispose__119;
  *&v113[8] = 0;
  location = 0;
  p_location = &location;
  v106 = 0x3032000000;
  v107 = __Block_byref_object_copy__119;
  v108 = __Block_byref_object_dispose__119;
  v109 = 0;
  learnedLocationManager = [(SMSuggestionsManager *)self learnedLocationManager];
  latestLocationOfTheDevice2 = [(SMSuggestionsManager *)self latestLocationOfTheDevice];
  v100[0] = MEMORY[0x277D85DD0];
  v100[1] = 3221225472;
  v100[2] = __103__SMSuggestionsManager__registerForPedometerNotificationsForLearnedLocationOfInterest_startDate_error___block_invoke;
  v100[3] = &unk_2788C4B58;
  v102 = buf;
  v103 = &location;
  v58 = v55;
  v101 = v58;
  [learnedLocationManager fetchLocationOfInterestAtLocation:latestLocationOfTheDevice2 handler:v100];

  v59 = v58;
  v92 = [MEMORY[0x277CBEAA8] now];
  v60 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v59, v60))
  {
    v61 = [MEMORY[0x277CBEAA8] now];
    [v61 timeIntervalSinceDate:v92];
    v63 = v62;
    v64 = objc_opt_new();
    v65 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v67 = [callStackSymbols filteredArrayUsingPredicate:v65];
    firstObject = [v67 firstObject];

    [v64 submitToCoreAnalytics:firstObject type:1 duration:v63];
    v69 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
    {
      *v114 = 0;
      _os_log_fault_impl(&dword_2304B3000, v69, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", v114, 2u);
    }

    v70 = MEMORY[0x277CCA9B8];
    v119[0] = *MEMORY[0x277CCA450];
    *v114 = @"semaphore wait timeout";
    v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v119 count:1];
    v72 = [v70 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v71];

    if (v72)
    {
      v73 = v72;
    }
  }

  else
  {
    v72 = 0;
  }

  v74 = v72;
  if (v74)
  {
    v75 = error != 0;
  }

  else
  {
    v75 = 0;
  }

  if (v75)
  {
    v76 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      v84 = objc_opt_class();
      v85 = NSStringFromClass(v84);
      v86 = NSStringFromSelector(a2);
      *v114 = 138412802;
      *&v114[4] = v85;
      v115 = 2112;
      v116 = v86;
      v117 = 2112;
      v118 = v74;
      _os_log_error_impl(&dword_2304B3000, v76, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v114, 0x20u);
    }

    v77 = v74;
LABEL_55:
    v79 = 0;
    *error = v77;
    goto LABEL_57;
  }

  if (error && p_location[5])
  {
    v78 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      v87 = objc_opt_class();
      v88 = NSStringFromClass(v87);
      v89 = NSStringFromSelector(a2);
      v90 = p_location[5];
      *v114 = 138412802;
      *&v114[4] = v88;
      v115 = 2112;
      v116 = v89;
      v117 = 2112;
      v118 = v90;
      _os_log_error_impl(&dword_2304B3000, v78, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v114, 0x20u);
    }

    v77 = p_location[5];
    goto LABEL_55;
  }

  [(SMSuggestionsManager *)self setCurrentLOI:*(*&buf[8] + 40)];
  v79 = 1;
LABEL_57:

  _Block_object_dispose(&location, 8);
  _Block_object_dispose(buf, 8);

  if ((v79 & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_4:
  currentLOI = [(SMSuggestionsManager *)self currentLOI];
  v10 = currentLOI == 0;

  v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v11)
    {
      v44 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        v47 = NSStringFromSelector(a2);
        latestLocationOfTheDevice3 = [(SMSuggestionsManager *)self latestLocationOfTheDevice];
        *buf = 138412803;
        *&buf[4] = v46;
        *&buf[12] = 2112;
        *&buf[14] = v47;
        *&buf[22] = 2117;
        v112 = latestLocationOfTheDevice3;
        _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, "%@, %@, no corresponding LOI at this location, %{sensitive}@", buf, 0x20u);
      }
    }

    goto LABEL_58;
  }

  if (v11)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      stringFromDate2 = [dateCopy stringFromDate];
      currentLOI2 = [(SMSuggestionsManager *)self currentLOI];
      *buf = 138413059;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      *&buf[22] = 2112;
      v112 = stringFromDate2;
      *v113 = 2117;
      *&v113[2] = currentLOI2;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, registering for pedometer data, startDate, %@, current LOI, %{sensitive}@", buf, 0x2Au);
    }
  }

  [(SMSuggestionsManager *)self _logStatesForPedometerData];
  walkingTriggerAlarm = [(SMSuggestionsManager *)self walkingTriggerAlarm];

  if (walkingTriggerAlarm)
  {
    walkingTriggerAlarm2 = [(SMSuggestionsManager *)self walkingTriggerAlarm];
    [walkingTriggerAlarm2 invalidate];
  }

  objc_initWeak(&location, self);
  v20 = [RTXPCTimerAlarm alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  queue = [(RTNotifier *)self queue];
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __103__SMSuggestionsManager__registerForPedometerNotificationsForLearnedLocationOfInterest_startDate_error___block_invoke_412;
  v97[3] = &unk_2788CE758;
  objc_copyWeak(v99, &location);
  v24 = dateCopy;
  v98 = v24;
  v99[1] = a2;
  v25 = [(RTXPCTimerAlarm *)v20 initWithIdentifier:uUIDString queue:queue handler:v97];
  [(SMSuggestionsManager *)self setWalkingTriggerAlarm:v25];

  walkingTriggerAlarm3 = [(SMSuggestionsManager *)self walkingTriggerAlarm];
  v96 = 0;
  v27 = [walkingTriggerAlarm3 fireWithDate:v24 error:&v96];
  v28 = v96;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = NSStringFromSelector(a2);
      stringFromDate3 = [v24 stringFromDate];
      v34 = stringFromDate3;
      v35 = @"NO";
      *buf = 138413314;
      *&buf[4] = v31;
      *&buf[12] = 2112;
      if (v27)
      {
        v35 = @"YES";
      }

      *&buf[14] = v32;
      *&buf[22] = 2112;
      v112 = stringFromDate3;
      *v113 = 2112;
      *&v113[2] = v35;
      *&v113[10] = 2112;
      *&v113[12] = v28;
      _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@, %@, timer set for pedometer notifications to fire at startDate, %@, status, %@, error, %@", buf, 0x34u);
    }
  }

  defaultsManager = [(SMSuggestionsManager *)self defaultsManager];
  [defaultsManager setObject:v24 forKey:@"RTDefaultsSuggestionLastDateWalkingBoutTriggerIsScheduled"];

  if (error)
  {
    v37 = v28;
    *error = v28;
  }

  v38 = v28 == 0;

  objc_destroyWeak(v99);
  objc_destroyWeak(&location);
LABEL_59:

  return v38;
}

void __103__SMSuggestionsManager__registerForPedometerNotificationsForLearnedLocationOfInterest_startDate_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __103__SMSuggestionsManager__registerForPedometerNotificationsForLearnedLocationOfInterest_startDate_error___block_invoke_412(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained motionActivityManager];
  v4 = *(a1 + 32);
  v5 = [WeakRetained pedometerDataHandler];
  [v3 subscribeForPedometerDataWithStartDate:v4 handler:v5];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 48));
      v10 = [*(a1 + 32) stringFromDate];
      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, added walking trigger, startDate, %@", &v11, 0x20u);
    }
  }
}

- (BOOL)_unregisterForPedometerNotificationsWithError:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(a2);
      pedometerUUIDs = [(SMSuggestionsManager *)self pedometerUUIDs];
      *buf = 138412802;
      v27 = v7;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = pedometerUUIDs;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, %@, unregistering for pedometer data for pedometer uuids, %@", buf, 0x20u);
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  pedometerUUIDs2 = [(SMSuggestionsManager *)self pedometerUUIDs];
  v11 = [pedometerUUIDs2 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(pedometerUUIDs2);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        motionActivityManager = [(SMSuggestionsManager *)self motionActivityManager];
        [motionActivityManager unsubscribeForPedometerData:v15];

        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v12 != v14);
      v12 = [pedometerUUIDs2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  [(SMSuggestionsManager *)self _resetStatesForPedometerData];
  defaultsManager = [(SMSuggestionsManager *)self defaultsManager];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [defaultsManager setObject:distantFuture forKey:@"RTDefaultsSuggestionLastDateWalkingBoutTriggerIsScheduled"];

  return 1;
}

- (BOOL)_resetStatesForPedometerData
{
  v14 = *MEMORY[0x277D85DE8];
  [(SMSuggestionsManager *)self setCurrentLOI:0];
  [(SMSuggestionsManager *)self setPreviousPedometerData:0];
  v4 = objc_opt_new();
  [(SMSuggestionsManager *)self setPedometerUUIDs:v4];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(a2);
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, %@, reset states for pedometer data", &v10, 0x16u);
    }
  }

  [(SMSuggestionsManager *)self _logStatesForPedometerData];
  return 1;
}

- (void)_logStatesForPedometerData
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(a2);
      currentLOI = [(SMSuggestionsManager *)self currentLOI];
      previousPedometerData = [(SMSuggestionsManager *)self previousPedometerData];
      v10 = 138413059;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      v14 = 2117;
      v15 = currentLOI;
      v16 = 2112;
      v17 = previousPedometerData;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, states for pedometer data, currentLOI, %{sensitive}@, previousPedometerDataEndDate, %@,", &v10, 0x2Au);
    }
  }
}

- (BOOL)_isWalkingBoutDetectedByAppendingPedometerData:(id)data
{
  v93 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  currentLOI = [(SMSuggestionsManager *)self currentLOI];
  location = [currentLOI location];
  v6Location = [location location];
  [v6Location horizontalUncertainty];
  v9 = v8 * 2.0 + 40.0;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      dateInterval = [dataCopy dateInterval];
      startDate = [dateInterval startDate];
      stringFromDate = [startDate stringFromDate];
      [(SMSuggestionsManager *)self previousPedometerData];
      v15 = v65 = dataCopy;
      currentLOI2 = [(SMSuggestionsManager *)self currentLOI];
      location2 = [currentLOI2 location];
      v17Location = [location2 location];
      [v17Location horizontalUncertainty];
      v20 = v19;
      currentLOI3 = [(SMSuggestionsManager *)self currentLOI];
      *buf = 138415107;
      v70 = v12;
      v71 = 2112;
      v72 = v13;
      v73 = 2112;
      v74 = stringFromDate;
      v75 = 2048;
      v76 = 0x4044000000000000;
      v77 = 2048;
      v78 = 0x4000000000000000;
      v79 = 2112;
      v80 = v15;
      v81 = 2048;
      v82 = v20;
      v83 = 2048;
      v84 = 0x4000000000000000;
      v85 = 2048;
      v86 = 0x4044000000000000;
      v87 = 2048;
      v88 = v9;
      v89 = 2112;
      v90 = v65;
      v91 = 2117;
      v92 = currentLOI3;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, startDate, %@, kSMWalkingBoutMaxBreakTime, %.3f, kSMWalkingBoutMultiplierForLOIUncertainty, %.3f, previousPedometerData, %@, loi uncertainty, %.3f, multiplier, %.3f, sigma, %.3f, threshold, %.3f, pedometerData, %@, currentLOI, %{sensitive}@", buf, 0x7Au);

      dataCopy = v65;
    }
  }

  previousPedometerData = [(SMSuggestionsManager *)self previousPedometerData];
  dateInterval2 = [previousPedometerData dateInterval];
  endDate = [dateInterval2 endDate];
  if (endDate)
  {
    v25 = endDate;
    dateInterval3 = [dataCopy dateInterval];
    endDate2 = [dateInterval3 endDate];
    previousPedometerData2 = [(SMSuggestionsManager *)self previousPedometerData];
    dateInterval4 = [previousPedometerData2 dateInterval];
    endDate3 = [dateInterval4 endDate];
    [endDate2 timeIntervalSinceDate:endDate3];
    v32 = v31;

    if (v32 > 40.0)
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        v53 = NSStringFromSelector(a2);
        dateInterval5 = [dataCopy dateInterval];
        startDate2 = [dateInterval5 startDate];
        stringFromDate2 = [startDate2 stringFromDate];
        dateInterval6 = [dataCopy dateInterval];
        endDate4 = [dateInterval6 endDate];
        stringFromDate3 = [endDate4 stringFromDate];
        *buf = 138413058;
        v70 = v52;
        v71 = 2112;
        v72 = v53;
        v73 = 2112;
        v74 = stringFromDate2;
        v75 = 2112;
        v76 = stringFromDate3;
        _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, %@, max gap threshold exceeded for pedometer data, startDate, %@, endDate, %@", buf, 0x2Au);
      }

      date = [MEMORY[0x277CBEAA8] date];
      currentLOI4 = [(SMSuggestionsManager *)self currentLOI];
      v68 = 0;
      [(SMSuggestionsManager *)self _reRegisterForPedometerNotificationsForLearnedLocationOfInterest:currentLOI4 startDate:date error:&v68];
      v36 = v68;

      v37 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        v61 = NSStringFromSelector(a2);
        stringFromDate4 = [date stringFromDate];
        *buf = 138413058;
        v70 = v60;
        v71 = 2112;
        v72 = v61;
        v73 = 2112;
        v74 = stringFromDate4;
        v75 = 2112;
        v76 = v36;
        _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "%@, %@, reRegistered again for pedometer data, startDate, %@, error, %@", buf, 0x2Au);
      }

LABEL_19:
      v49 = 0;
      goto LABEL_20;
    }
  }

  else
  {
  }

  previousPedometerData3 = [(SMSuggestionsManager *)self previousPedometerData];
  if (!previousPedometerData3 || (v39 = previousPedometerData3, [dataCopy distance], v41 = v40, -[SMSuggestionsManager previousPedometerData](self, "previousPedometerData"), v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v42, "distance"), v44 = v43, v42, v39, v41 != v44))
  {
    [(SMSuggestionsManager *)self setPreviousPedometerData:dataCopy];
  }

  currentLOI5 = [(SMSuggestionsManager *)self currentLOI];
  if (!currentLOI5)
  {
    goto LABEL_19;
  }

  v46 = currentLOI5;
  [dataCopy distance];
  v48 = v47;

  if (v48 <= v9)
  {
    goto LABEL_19;
  }

  v49 = 1;
LABEL_20:

  return v49;
}

- (void)runProactiveSuggestionsEngineWithContext:(id)context shouldStoreSuggestions:(BOOL)suggestions handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__SMSuggestionsManager_runProactiveSuggestionsEngineWithContext_shouldStoreSuggestions_handler___block_invoke;
  v13[3] = &unk_2788C4690;
  v13[4] = self;
  v14 = contextCopy;
  suggestionsCopy = suggestions;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = contextCopy;
  dispatch_async(queue, v13);
}

void __96__SMSuggestionsManager_runProactiveSuggestionsEngineWithContext_shouldStoreSuggestions_handler___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v9 = 0;
  v5 = [v2 _runProactiveSuggestionsEngineWithContext:v3 shouldStoreSuggestions:v4 error:&v9];
  v6 = v9;
  v7 = *(a1 + 48);
  if (v5)
  {
    v10[0] = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    (*(v7 + 16))(v7, v8, v6);
  }

  else
  {
    (*(v7 + 16))(v7, MEMORY[0x277CBEBF8], v6);
  }
}

- (id)_runProactiveSuggestionsEngineWithContext:(id)context shouldStoreSuggestions:(BOOL)suggestions error:(id *)error
{
  suggestionsCopy = suggestions;
  v126[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
  {
    *v114 = 0;
    v115 = v114;
    v116 = 0x3032000000;
    v117 = __Block_byref_object_copy__119;
    v118 = __Block_byref_object_dispose__119;
    v119 = 0;
    obj = 0;
    v10 = [(SMSuggestionsManager *)self _getSuggestionTriggerFromContext:contextCopy error:&obj];
    objc_storeStrong(&v119, obj);
    if (error && *(v115 + 5))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v60 = objc_opt_class();
        v61 = NSStringFromClass(v60);
        v62 = NSStringFromSelector(a2);
        v63 = *(v115 + 5);
        *buf = 138412802;
        *&buf[4] = v61;
        v122 = 2112;
        v123 = v62;
        v124 = 2112;
        v125 = v63;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v12 = *(v115 + 5);
LABEL_13:
      v16 = 0;
      v17 = 0;
      *error = v12;
LABEL_34:

      _Block_object_dispose(v114, 8);
      goto LABEL_35;
    }

    if (v10)
    {
      v13 = (v115 + 40);
      v112 = *(v115 + 5);
      v14 = [(SMSuggestionsManager *)self _checkInitiatorEligibilityWithError:&v112];
      objc_storeStrong(v13, v112);
      if (error && *(v115 + 5))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v64 = objc_opt_class();
          v65 = NSStringFromClass(v64);
          v66 = NSStringFromSelector(a2);
          v67 = *(v115 + 5);
          *buf = 138412802;
          *&buf[4] = v65;
          v122 = 2112;
          v123 = v66;
          v124 = 2112;
          v125 = v67;
          _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
        }

        v12 = *(v115 + 5);
        goto LABEL_13;
      }

      if (v14)
      {
        v19 = (v115 + 40);
        v111 = *(v115 + 5);
        v16 = [(SMSuggestionsManager *)self _generatePersonalizedSuggestionFromContext:contextCopy error:&v111];
        objc_storeStrong(v19, v111);
        if (error && *(v115 + 5))
        {
          v20 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v90 = objc_opt_class();
            v91 = NSStringFromClass(v90);
            v92 = NSStringFromSelector(a2);
            v93 = *(v115 + 5);
            *buf = 138412802;
            *&buf[4] = v91;
            v122 = 2112;
            v123 = v92;
            v124 = 2112;
            v125 = v93;
            _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
          }

          v21 = *(v115 + 5);
          goto LABEL_88;
        }

        if (v16)
        {
          v31 = (v115 + 40);
          v110 = *(v115 + 5);
          v32 = [(SMSuggestionsManager *)self _suppressSuggestion:v16 context:contextCopy error:&v110];
          objc_storeStrong(v31, v110);
          if (error && *(v115 + 5))
          {
            v33 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v94 = objc_opt_class();
              v95 = NSStringFromClass(v94);
              v96 = NSStringFromSelector(a2);
              v97 = *(v115 + 5);
              *buf = 138412802;
              *&buf[4] = v95;
              v122 = 2112;
              v123 = v96;
              v124 = 2112;
              v125 = v97;
              _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
            }

            v21 = *(v115 + 5);
            goto LABEL_88;
          }

          [(__CFString *)v16 setSuppressionReason:v32];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              v35 = objc_opt_class();
              v36 = NSStringFromClass(v35);
              v37 = NSStringFromSelector(a2);
              isSuppressed = [(__CFString *)v16 isSuppressed];
              v39 = @"NO";
              *buf = 138412802;
              *&buf[4] = v36;
              v122 = 2112;
              if (isSuppressed)
              {
                v39 = @"YES";
              }

              v123 = v37;
              v124 = 2112;
              v125 = v39;
              _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%@, %@, is suggestion suppressed, %@", buf, 0x20u);
            }
          }

          if (suggestionsCopy)
          {
            v40 = dispatch_semaphore_create(0);
            suggestionsStore = [(SMSuggestionsManager *)self suggestionsStore];
            v120 = v16;
            v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v120 count:1];
            v107[0] = MEMORY[0x277D85DD0];
            v107[1] = 3221225472;
            v107[2] = __95__SMSuggestionsManager__runProactiveSuggestionsEngineWithContext_shouldStoreSuggestions_error___block_invoke;
            v107[3] = &unk_2788C4618;
            v109 = v114;
            v43 = v40;
            v108 = v43;
            [suggestionsStore storeSuggestions:v42 handler:v107];

            v44 = v43;
            v104 = [MEMORY[0x277CBEAA8] now];
            v45 = dispatch_time(0, 3600000000000);
            if (dispatch_semaphore_wait(v44, v45))
            {
              v102 = [MEMORY[0x277CBEAA8] now];
              [v102 timeIntervalSinceDate:v104];
              v47 = v46;
              v100 = objc_opt_new();
              v101 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
              callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
              v49 = [callStackSymbols filteredArrayUsingPredicate:v101];
              firstObject = [v49 firstObject];

              [v100 submitToCoreAnalytics:firstObject type:1 duration:v47];
              v51 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_2304B3000, v51, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
              }

              v52 = MEMORY[0x277CCA9B8];
              v126[0] = *MEMORY[0x277CCA450];
              *buf = @"semaphore wait timeout";
              v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v126 count:1];
              v54 = [v52 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v53];

              if (v54)
              {
                v55 = v54;
              }
            }

            else
            {
              v54 = 0;
            }

            v68 = v54;
            v69 = !v68 || error == 0;
            if (v69)
            {
              v17 = 0;
            }

            else
            {
              v70 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                v98 = objc_opt_class();
                v105 = NSStringFromClass(v98);
                v99 = NSStringFromSelector(a2);
                *buf = 138412802;
                *&buf[4] = v105;
                v122 = 2112;
                v103 = v99;
                v123 = v99;
                v124 = 2112;
                v125 = v68;
                _os_log_error_impl(&dword_2304B3000, v70, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
              }

              v71 = v68;
              *error = v68;
              v17 = v16;
            }

            if (!v69)
            {
              goto LABEL_34;
            }
          }

          isSuppressed2 = [(__CFString *)v16 isSuppressed];
          v73 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
          if (isSuppressed2)
          {
            if (v73)
            {
              v74 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
              {
                v75 = objc_opt_class();
                v76 = NSStringFromClass(v75);
                v77 = NSStringFromSelector(a2);
                *buf = 138412802;
                *&buf[4] = v76;
                v122 = 2112;
                v123 = v77;
                v124 = 2112;
                v125 = v16;
                _os_log_impl(&dword_2304B3000, v74, OS_LOG_TYPE_INFO, "%@, %@, suggestion is not displayed because it is suppressed, %@", buf, 0x20u);
              }
            }

            suggestionsMetricsManager = [(SMSuggestionsManager *)self suggestionsMetricsManager];
            [suggestionsMetricsManager sendSuggestionsConversionEventForSuggestion:v16 selected:0 sessionStarted:0];
          }

          else
          {
            if (v73)
            {
              v79 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
              {
                v80 = objc_opt_class();
                v81 = NSStringFromClass(v80);
                v82 = NSStringFromSelector(a2);
                *buf = 138412802;
                *&buf[4] = v81;
                v122 = 2112;
                v123 = v82;
                v124 = 2112;
                v125 = v16;
                _os_log_impl(&dword_2304B3000, v79, OS_LOG_TYPE_INFO, "%@, %@, displaying suggestion, %@", buf, 0x20u);
              }
            }

            v83 = (v115 + 40);
            v106 = *(v115 + 5);
            v84 = [(SMSuggestionsManager *)self _showSuggestionsDetectionUIWithSuggestion:v16 error:&v106];
            objc_storeStrong(v83, v106);
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              goto LABEL_86;
            }

            suggestionsMetricsManager = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(suggestionsMetricsManager, OS_LOG_TYPE_INFO))
            {
              v85 = objc_opt_class();
              v86 = NSStringFromClass(v85);
              v87 = NSStringFromSelector(a2);
              v88 = v87;
              v89 = @"NO";
              *buf = 138412802;
              *&buf[4] = v86;
              v122 = 2112;
              if (v84)
              {
                v89 = @"YES";
              }

              v123 = v87;
              v124 = 2112;
              v125 = v89;
              _os_log_impl(&dword_2304B3000, suggestionsMetricsManager, OS_LOG_TYPE_INFO, "%@, %@, displaying suggestion status, %@", buf, 0x20u);
            }
          }

LABEL_86:
          if (!error)
          {
LABEL_89:
            v16 = v16;
            v17 = v16;
            goto LABEL_34;
          }

          v21 = *(v115 + 5);
LABEL_88:
          *error = v21;
          goto LABEL_89;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v56 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = objc_opt_class();
            v58 = NSStringFromClass(v57);
            v59 = NSStringFromSelector(a2);
            *buf = 138412546;
            *&buf[4] = v58;
            v122 = 2112;
            v123 = v59;
            _os_log_impl(&dword_2304B3000, v56, OS_LOG_TYPE_INFO, "%@, %@, No Suggestion created!", buf, 0x16u);
          }
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          v29 = NSStringFromSelector(a2);
          *buf = 138412546;
          *&buf[4] = v28;
          v122 = 2112;
          v123 = v29;
          _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, %@, initiator is not eligible, skipping suggestions engine", buf, 0x16u);
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v24;
        v122 = 2112;
        v123 = v25;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, %@, no valid triggers found", buf, 0x16u);
      }
    }

    v16 = 0;
    v17 = 0;
    goto LABEL_34;
  }

  v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *v114 = 0;
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", v114, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"context");
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_35:

  return v17;
}

void __95__SMSuggestionsManager__runProactiveSuggestionsEngineWithContext_shouldStoreSuggestions_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_generatePersonalizedSuggestionFromContext:(id)context error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
  {
    v40 = 0;
    v8 = [(SMSuggestionsManager *)self _getSuggestionTriggerFromContext:contextCopy error:&v40];
    v9 = v40;
    v10 = v9;
    if (error && v9)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = NSStringFromSelector(a2);
        *buf = 138412802;
        v42 = v26;
        v43 = 2112;
        v44 = v27;
        v45 = 2112;
        v46 = v10;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v12 = v10;
      v13 = 0;
      goto LABEL_7;
    }

    if (!v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v21 = NSStringFromSelector(a2);
          *buf = 138412546;
          v42 = v20;
          v43 = 2112;
          v44 = v21;
          _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@, %@, no valid triggers found", buf, 0x16u);
        }
      }

      v13 = 0;
      goto LABEL_25;
    }

    v39 = v9;
    v13 = [(SMSuggestionsManager *)self _generatePersonalizedSuggestionForWorkoutUserFromContext:contextCopy error:&v39];
    v15 = v39;

    if (error && v15)
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        v17 = v15;
        *error = v15;
LABEL_24:
        v10 = v15;
        goto LABEL_25;
      }

      v31 = objc_opt_class();
      v29 = NSStringFromClass(v31);
      v30 = NSStringFromSelector(a2);
      *buf = 138412802;
      v42 = v29;
      v43 = 2112;
      v44 = v30;
      v45 = 2112;
      v46 = v15;
LABEL_40:
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);

      goto LABEL_16;
    }

    if (v13)
    {
      goto LABEL_24;
    }

    v38 = v15;
    v13 = [(SMSuggestionsManager *)self _generatePersonalizedSuggestionForRegularUserFromContext:contextCopy error:&v38];
    v10 = v38;

    if (error && v10)
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      v35 = objc_opt_class();
      v33 = NSStringFromClass(v35);
      v34 = NSStringFromSelector(a2);
      *buf = 138412802;
      v42 = v33;
      v43 = 2112;
      v44 = v34;
      v45 = 2112;
      v46 = v10;
    }

    else
    {
      if (v13)
      {
        goto LABEL_25;
      }

      v37 = v10;
      v13 = [(SMSuggestionsManager *)self _generatePersonalizedSuggestionForOccasionalUserFromContext:contextCopy error:&v37];
      v15 = v37;

      if (error && v15)
      {
        v16 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = NSStringFromSelector(a2);
        *buf = 138412802;
        v42 = v29;
        v43 = 2112;
        v44 = v30;
        v45 = 2112;
        v46 = v15;
        goto LABEL_40;
      }

      if (v13)
      {
        goto LABEL_24;
      }

      v36 = v15;
      v13 = [(SMSuggestionsManager *)self _generatePersonalizedSuggestionForFirstTimeUserFromContext:contextCopy error:&v36];
      v10 = v36;

      if (!error || !v10)
      {
        if (!error || v13)
        {
          goto LABEL_25;
        }

        goto LABEL_33;
      }

      v23 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
LABEL_32:

LABEL_33:
        v24 = v10;
LABEL_7:
        *error = v10;
LABEL_25:

        goto LABEL_26;
      }

      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(a2);
      *buf = 138412802;
      v42 = v33;
      v43 = 2112;
      v44 = v34;
      v45 = 2112;
      v46 = v10;
    }

    _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);

    goto LABEL_32;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"context");
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_26:

  return v13;
}

- (id)_generatePersonalizedSuggestionForRegularUserFromContext:(id)context error:(id *)error
{
  v251[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v204 = contextCopy;
  if (contextCopy)
  {
    aSelector = a2;
    v232 = 0;
    v233 = &v232;
    v234 = 0x3032000000;
    v235 = __Block_byref_object_copy__119;
    v236 = __Block_byref_object_dispose__119;
    v237 = 0;
    obj = 0;
    v203 = [(SMSuggestionsManager *)self _getSuggestionTriggerFromContext:contextCopy error:&obj];
    objc_storeStrong(&v237, obj);
    if (error && v233[5])
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = NSStringFromSelector(a2);
        v31 = v233[5];
        *buf = 138412802;
        *&buf[4] = v29;
        v240 = 2112;
        v241 = v30;
        v242 = 2112;
        v243 = v31;
        _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v8 = 0;
      *error = v233[5];
      goto LABEL_142;
    }

    if (!v203)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          v18 = NSStringFromSelector(a2);
          *buf = 138412546;
          *&buf[4] = v17;
          v240 = 2112;
          v241 = v18;
          _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, %@, no valid triggers found", buf, 0x16u);
        }
      }

      v8 = 0;
      goto LABEL_142;
    }

    v9 = v233 + 5;
    v230 = v233[5];
    v201 = [(SMSuggestionsManager *)self _getSourceLocationFromContext:v204 error:&v230];
    objc_storeStrong(v9, v230);
    v10 = v233 + 5;
    if (error && v233[5])
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        v44 = NSStringFromSelector(a2);
        v45 = v233[5];
        *buf = 138412802;
        *&buf[4] = v43;
        v240 = 2112;
        v241 = v44;
        v242 = 2112;
        v243 = v45;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v8 = 0;
      *error = v233[5];
      goto LABEL_141;
    }

    v229 = v233[5];
    v200 = [(SMSuggestionsManager *)self _getCurrentDateFromContext:v204 error:&v229];
    objc_storeStrong(v10, v229);
    v13 = v233 + 5;
    if (error && v233[5])
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v95 = objc_opt_class();
        v96 = NSStringFromClass(v95);
        v97 = NSStringFromSelector(a2);
        v98 = v233[5];
        *buf = 138412802;
        *&buf[4] = v96;
        v240 = 2112;
        v241 = v97;
        v242 = 2112;
        v243 = v98;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v8 = 0;
      *error = v233[5];
      goto LABEL_140;
    }

    v228 = v233[5];
    v192 = [(SMSuggestionsManager *)self _getNPLOIsWithOnlyHighConfidence:1 location:v201 date:v200 error:&v228];
    objc_storeStrong(v13, v228);
    if (error && v233[5])
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v99 = objc_opt_class();
        v100 = NSStringFromClass(v99);
        v101 = NSStringFromSelector(a2);
        v102 = v233[5];
        *buf = 138412802;
        *&buf[4] = v100;
        v240 = 2112;
        v241 = v101;
        v242 = 2112;
        v243 = v102;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v8 = 0;
      *error = v233[5];
      goto LABEL_138;
    }

    v20 = v192;
    if (!v192 || ![v192 count])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v8 = 0;
LABEL_139:

LABEL_140:
LABEL_141:

LABEL_142:
        _Block_object_dispose(&v232, 8);

        goto LABEL_143;
      }

      v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = NSStringFromSelector(aSelector);
        v27 = [MEMORY[0x277D4AC10] stringFromSMSuggestionTrigger:v203];
        *buf = 138412802;
        *&buf[4] = v25;
        v240 = 2112;
        v241 = v26;
        v242 = 2112;
        v243 = v27;
        _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@, %@, trigger type, %@, suggestion skipped because nploi with High confidence is not found", buf, 0x20u);
      }

      v8 = 0;
LABEL_138:
      v20 = v192;
      goto LABEL_139;
    }

    v21 = v233 + 5;
    v227 = v233[5];
    v190 = [(SMSuggestionsManager *)self _getValuesFromDefaultsIfExists:@"RTDefaultsSuggestionTimeIntervalBuffer" error:&v227];
    objc_storeStrong(v21, v227);
    if (error && v233[5])
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v152 = objc_opt_class();
        v153 = NSStringFromClass(v152);
        v154 = NSStringFromSelector(aSelector);
        v155 = v233[5];
        *buf = 138412802;
        *&buf[4] = v153;
        v240 = 2112;
        v241 = v154;
        v242 = 2112;
        v243 = v155;
        _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v8 = 0;
      *error = v233[5];
      goto LABEL_137;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = NSStringFromSelector(aSelector);
        [v190 doubleValue];
        *buf = 138412802;
        *&buf[4] = v34;
        v240 = 2112;
        v241 = v35;
        v242 = 2048;
        v243 = v36;
        _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@, %@, using time interval buffer, %.3f", buf, 0x20u);
      }
    }

    [v190 doubleValue];
    v189 = [v200 dateByAddingTimeInterval:-v37];
    v221 = 0;
    v222 = &v221;
    v223 = 0x3032000000;
    v224 = __Block_byref_object_copy__119;
    v225 = __Block_byref_object_dispose__119;
    v226 = 0;
    v38 = v233 + 5;
    if (error && v233[5])
    {
      v39 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v156 = objc_opt_class();
        v157 = NSStringFromClass(v156);
        v158 = NSStringFromSelector(aSelector);
        v159 = v233[5];
        *buf = 138412802;
        *&buf[4] = v157;
        v240 = 2112;
        v241 = v158;
        v242 = 2112;
        v243 = v159;
        _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v8 = 0;
      *error = v233[5];
      goto LABEL_136;
    }

    v220 = v233[5];
    v188 = [(SMSuggestionsManager *)self _getValuesFromDefaultsIfExists:@"RTDefaultsSuggestionBoundingBoxRadius" error:&v220];
    objc_storeStrong(v38, v220);
    if (error && v233[5])
    {
      v40 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v169 = objc_opt_class();
        v170 = NSStringFromClass(v169);
        v171 = NSStringFromSelector(aSelector);
        v172 = v233[5];
        *buf = 138412802;
        *&buf[4] = v170;
        v240 = 2112;
        v241 = v171;
        v242 = 2112;
        v243 = v172;
        _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v41 = v233[5];
      v194 = 0;
      v196 = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v46 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          v49 = NSStringFromSelector(aSelector);
          [v188 doubleValue];
          *buf = 138412802;
          *&buf[4] = v48;
          v240 = 2112;
          v241 = v49;
          v242 = 2048;
          v243 = v50;
          _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_INFO, "%@, %@, using bounding box radius, %.3f", buf, 0x20u);
        }
      }

      v218 = 0u;
      v219 = 0u;
      v216 = 0u;
      v217 = 0u;
      v182 = v192;
      v51 = [v182 countByEnumeratingWithState:&v216 objects:v250 count:16];
      if (v51)
      {
        v185 = v51;
        v52 = 0;
        v53 = 0;
        v187 = *v217;
        v186 = *MEMORY[0x277D4AF00];
        v183 = *MEMORY[0x277D01448];
        v184 = *MEMORY[0x277CCA450];
LABEL_65:
        v193 = 0;
        v54 = v52;
        v198 = v53;
        while (1)
        {
          if (*v217 != v187)
          {
            objc_enumerationMutation(v182);
          }

          v55 = *(*(&v216 + 1) + 8 * v193);
          context = objc_autoreleasePoolPush();
          v197 = v55;

          v56 = objc_alloc(MEMORY[0x277D4AB80]);
          v57 = objc_alloc(MEMORY[0x277CCA970]);
          [v190 doubleValue];
          v59 = [v57 initWithStartDate:v189 duration:v58 + v58];
          v60 = objc_alloc(MEMORY[0x277CCA970]);
          v61 = [v200 dateByAddingTimeInterval:-2419200.0];
          v62 = [v60 initWithStartDate:v61 duration:2419200.0];
          v63 = [objc_alloc(MEMORY[0x277CE41F8]) initWithRTLocation:v201];
          v64 = objc_alloc(MEMORY[0x277CE41F8]);
          locationOfInterest = [v197 locationOfInterest];
          location = [locationOfInterest location];
          v67 = [v64 initWithRTLocation:location];
          LOBYTE(v181) = 1;
          v195 = [v56 initWithBatchSize:v186 fetchLimit:v186 sortBySessionStartDate:1 ascending:0 sessionTypes:&unk_2845A1400 timeInADayInterval:v59 pickOneConfigInTimeInADayInterval:v181 dateInterval:v62 startBoundingBoxLocation:v63 destinationBoundingBoxLocation:v67 boundingBoxRadius:v188 sessionIdentifier:0];

          v68 = dispatch_semaphore_create(0);
          sessionStore = [(SMSuggestionsManager *)self sessionStore];
          v212[0] = MEMORY[0x277D85DD0];
          v212[1] = 3221225472;
          v212[2] = __87__SMSuggestionsManager__generatePersonalizedSuggestionForRegularUserFromContext_error___block_invoke;
          v212[3] = &unk_2788C4490;
          v214 = &v221;
          v215 = &v232;
          v70 = v68;
          v213 = v70;
          [sessionStore fetchSessionConfigurationsWithOptions:v195 handler:v212];

          v71 = v70;
          v72 = [MEMORY[0x277CBEAA8] now];
          v73 = dispatch_time(0, 3600000000000);
          v74 = v198;
          if (dispatch_semaphore_wait(v71, v73))
          {
            v75 = [MEMORY[0x277CBEAA8] now];
            [v75 timeIntervalSinceDate:v72];
            v77 = v76;
            v78 = objc_opt_new();
            v79 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
            callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
            v81 = [callStackSymbols filteredArrayUsingPredicate:v79];
            firstObject = [v81 firstObject];

            [v78 submitToCoreAnalytics:firstObject type:1 duration:v77];
            v83 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_2304B3000, v83, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
            }

            v84 = MEMORY[0x277CCA9B8];
            v251[0] = v184;
            *buf = @"semaphore wait timeout";
            v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v251 count:1];
            v86 = [v84 errorWithDomain:v183 code:15 userInfo:v85];

            v74 = v198;
            if (v86)
            {
              v87 = v86;

              v74 = v86;
            }
          }

          v53 = v74;
          if (v53)
          {
            objc_storeStrong(v233 + 5, v74);
            v88 = 0;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v89 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
              {
                v90 = objc_opt_class();
                v91 = NSStringFromClass(v90);
                v92 = NSStringFromSelector(aSelector);
                v93 = [MEMORY[0x277D4AC10] stringFromSMSuggestionTrigger:v203];
                v94 = [v222[5] count];
                *buf = 138413571;
                *&buf[4] = v91;
                v240 = 2112;
                v241 = v92;
                v242 = 2112;
                v243 = v93;
                v244 = 2117;
                v245 = v197;
                v246 = 2048;
                v247 = v94;
                v248 = 2048;
                v249 = 3;
                _os_log_impl(&dword_2304B3000, v89, OS_LOG_TYPE_INFO, "%@, %@, trigger type, %@, nploi, %{sensitive}@, sessionConfiguration count, %lu, kSMSuggestionRegularUserSessionConfigurationCount, %lu", buf, 0x3Eu);
              }
            }

            v88 = [v222[5] count] < 3;
          }

          objc_autoreleasePoolPop(context);
          v52 = v197;
          if (!v88)
          {
            break;
          }

          v54 = v197;
          v198 = v53;
          if (v185 == ++v193)
          {
            v185 = [v182 countByEnumeratingWithState:&v216 objects:v250 count:16];
            if (v185)
            {
              goto LABEL_65;
            }

            break;
          }
        }
      }

      else
      {
        v52 = 0;
        v53 = 0;
      }

      v194 = v53;
      v196 = v52;

      if (!error || !v233[5])
      {
        v104 = v222[5];
        if (v104 && [v104 count] > 2)
        {
          v210 = 0u;
          v211 = 0u;
          v208 = 0u;
          v209 = 0u;
          v111 = v222[5];
          v112 = [v111 countByEnumeratingWithState:&v208 objects:v238 count:16];
          if (v112)
          {
            v113 = *v209;
            v114 = MEMORY[0x277D86220];
            do
            {
              for (i = 0; i != v112; ++i)
              {
                if (*v209 != v113)
                {
                  objc_enumerationMutation(v111);
                }

                v116 = *(*(&v208 + 1) + 8 * i);
                if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
                {
                  v117 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                  if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
                  {
                    v118 = objc_opt_class();
                    v119 = NSStringFromClass(v118);
                    v120 = NSStringFromSelector(aSelector);
                    *buf = 138412802;
                    *&buf[4] = v119;
                    v240 = 2112;
                    v241 = v120;
                    v242 = 2112;
                    v243 = v116;
                    _os_log_impl(&dword_2304B3000, v117, OS_LOG_TYPE_INFO, "%@, %@, session, %@", buf, 0x20u);
                  }
                }
              }

              v112 = [v111 countByEnumeratingWithState:&v208 objects:v238 count:16];
            }

            while (v112);
          }

          v121 = v222[5];
          v122 = v233 + 5;
          v207 = v233[5];
          v199 = [(SMSuggestionsManager *)self _getFirstEligibleHandleFromSessionConfigurations:v121 error:&v207];
          objc_storeStrong(v122, v207);
          if (error && v233[5])
          {
            v123 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
            {
              v177 = objc_opt_class();
              v178 = NSStringFromClass(v177);
              v179 = NSStringFromSelector(aSelector);
              v180 = v233[5];
              *buf = 138412802;
              *&buf[4] = v178;
              v240 = 2112;
              v241 = v179;
              v242 = 2112;
              v243 = v180;
              _os_log_error_impl(&dword_2304B3000, v123, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
            }

            v8 = 0;
            *error = v233[5];
          }

          else
          {
            v124 = [SMSuggestionsHelper getSMContactInformationFromSMHandle:v199];
            v125 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
            if (v124)
            {
              if (v125)
              {
                v126 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
                {
                  v127 = objc_opt_class();
                  v128 = NSStringFromClass(v127);
                  v129 = NSStringFromSelector(aSelector);
                  firstObject2 = [v222[5] firstObject];
                  *buf = 138412802;
                  *&buf[4] = v128;
                  v240 = 2112;
                  v241 = v129;
                  v242 = 2112;
                  v243 = firstObject2;
                  _os_log_impl(&dword_2304B3000, v126, OS_LOG_TYPE_INFO, "%@, %@, first obj session info, %@", buf, 0x20u);
                }
              }

              firstObject3 = [v222[5] firstObject];
              destination = [firstObject3 destination];
              [destination radius];
              v134 = v133;
              locationOfInterest2 = [v196 locationOfInterest];
              location2 = [locationOfInterest2 location];
              v206 = 0;
              v137 = [SMSuggestionsHelper createMasqueradingReferenceLocationFromFenceRadius:location2 location:&v206 error:v134];
              v138 = v206;

              v139 = v137;
              v140 = v139;
              if (v138 || (location3 = v139) == 0)
              {
                locationOfInterest3 = [v196 locationOfInterest];
                location3 = [locationOfInterest3 location];
              }

              v143 = objc_alloc(MEMORY[0x277D4AC10]);
              v144 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v200 duration:3600.0];
              locationOfInterest4 = [v196 locationOfInterest];
              v146 = [v143 initWithSuggestionTrigger:v203 suggestionUserType:1 suppressionReason:1 sessionType:2 sourceLocation:v201 destinationLocation:location3 buddy:v124 dateInterval:v144 creationDate:v200 locationOfInterest:locationOfInterest4];

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v147 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v147, OS_LOG_TYPE_INFO))
                {
                  v148 = objc_opt_class();
                  v149 = NSStringFromClass(v148);
                  v150 = NSStringFromSelector(aSelector);
                  *buf = 138412802;
                  *&buf[4] = v149;
                  v240 = 2112;
                  v241 = v150;
                  v242 = 2112;
                  v243 = v146;
                  _os_log_impl(&dword_2304B3000, v147, OS_LOG_TYPE_INFO, "%@, %@, suggestion created, %@", buf, 0x20u);
                }
              }

              if (error)
              {
                v151 = v138;
                *error = v138;
              }

              v8 = v146;
            }

            else
            {
              if (v125)
              {
                v160 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v160, OS_LOG_TYPE_INFO))
                {
                  v161 = objc_opt_class();
                  v162 = NSStringFromClass(v161);
                  v163 = NSStringFromSelector(aSelector);
                  firstObject4 = [v222[5] firstObject];
                  conversation = [firstObject4 conversation];
                  receiverHandles = [conversation receiverHandles];
                  firstObject5 = [receiverHandles firstObject];
                  *buf = 138413058;
                  *&buf[4] = v162;
                  v240 = 2112;
                  v241 = v163;
                  v242 = 2112;
                  v243 = 0;
                  v244 = 2112;
                  v245 = firstObject5;
                  _os_log_impl(&dword_2304B3000, v160, OS_LOG_TYPE_INFO, "%@, %@, invalid contact information, %@, handle, %@", buf, 0x2Au);
                }
              }

              v8 = 0;
            }
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v105 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
            {
              v106 = objc_opt_class();
              v107 = NSStringFromClass(v106);
              v108 = NSStringFromSelector(aSelector);
              v109 = [MEMORY[0x277D4AC10] stringFromSMSuggestionTrigger:v203];
              v110 = [v222[5] count];
              *buf = 138413314;
              *&buf[4] = v107;
              v240 = 2112;
              v241 = v108;
              v242 = 2112;
              v243 = v109;
              v244 = 2048;
              v245 = v110;
              v246 = 2048;
              v247 = 3;
              _os_log_impl(&dword_2304B3000, v105, OS_LOG_TYPE_INFO, "%@, %@, trigger type, %@, suggestion skipped because sessionConfiguration count doesn't meet threshold, sessionConfiguration count, %lu, kSMSuggestionRegularUserSessionConfigurationCount, %lu", buf, 0x34u);
            }
          }

          v8 = 0;
        }

        goto LABEL_135;
      }

      v103 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
      {
        v173 = objc_opt_class();
        v174 = NSStringFromClass(v173);
        v175 = NSStringFromSelector(aSelector);
        v176 = v233[5];
        *buf = 138412802;
        *&buf[4] = v174;
        v240 = 2112;
        v241 = v175;
        v242 = 2112;
        v243 = v176;
        _os_log_error_impl(&dword_2304B3000, v103, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v41 = v233[5];
    }

    v8 = 0;
    *error = v41;
LABEL_135:

LABEL_136:
    _Block_object_dispose(&v221, 8);

LABEL_137:
    goto LABEL_138;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"context");
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_143:

  return v8;
}

void __87__SMSuggestionsManager__generatePersonalizedSuggestionForRegularUserFromContext_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_generatePersonalizedSuggestionForOccasionalUserFromContext:(id)context error:(id *)error
{
  v215[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v174 = contextCopy;
  if (contextCopy)
  {
    v197 = 0;
    v198 = &v197;
    v199 = 0x3032000000;
    v200 = __Block_byref_object_copy__119;
    v201 = __Block_byref_object_dispose__119;
    v202 = 0;
    obj = 0;
    selfCopy = self;
    v171 = [(SMSuggestionsManager *)self _getSuggestionTriggerFromContext:contextCopy error:&obj];
    objc_storeStrong(&v202, obj);
    if (error && v198[5])
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = NSStringFromSelector(a2);
        v33 = v198[5];
        *buf = 138412802;
        *&buf[4] = v31;
        v204 = 2112;
        v205 = v32;
        v206 = 2112;
        v207 = v33;
        _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v7 = 0;
      *error = v198[5];
      goto LABEL_112;
    }

    if (!v171)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v16 = NSStringFromSelector(a2);
          *buf = 138412546;
          *&buf[4] = v15;
          v204 = 2112;
          v205 = v16;
          _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, no valid triggers found", buf, 0x16u);
        }
      }

      v7 = 0;
      goto LABEL_112;
    }

    v8 = v198 + 5;
    v195 = v198[5];
    v170 = [(SMSuggestionsManager *)selfCopy _getSourceLocationFromContext:v174 error:&v195];
    objc_storeStrong(v8, v195);
    v9 = v198 + 5;
    if (error)
    {
      v10 = selfCopy;
      if (v198[5])
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v96 = objc_opt_class();
          v97 = NSStringFromClass(v96);
          v98 = NSStringFromSelector(a2);
          v99 = v198[5];
          *buf = 138412802;
          *&buf[4] = v97;
          v204 = 2112;
          v205 = v98;
          v206 = 2112;
          v207 = v99;
          _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
        }

        v7 = 0;
        *error = v198[5];
        goto LABEL_111;
      }

      v17 = v174;
    }

    else
    {
      v10 = selfCopy;
      v17 = v174;
    }

    v194 = v198[5];
    v169 = [(SMSuggestionsManager *)v10 _getCurrentDateFromContext:v17 error:&v194];
    objc_storeStrong(v9, v194);
    v18 = v198 + 5;
    if (error)
    {
      v19 = selfCopy;
      if (v198[5])
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v125 = objc_opt_class();
          v126 = NSStringFromClass(v125);
          v127 = NSStringFromSelector(a2);
          v128 = v198[5];
          *buf = 138412802;
          *&buf[4] = v126;
          v204 = 2112;
          v205 = v127;
          v206 = 2112;
          v207 = v128;
          _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
        }

        v7 = 0;
        *error = v198[5];
        goto LABEL_110;
      }
    }

    else
    {
      v19 = selfCopy;
    }

    v193 = v198[5];
    v165 = [(SMSuggestionsManager *)v19 _getNPLOIsWithOnlyHighConfidence:1 location:v170 date:v169 error:&v193];
    objc_storeStrong(v18, v193);
    if (error && v198[5])
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v136 = objc_opt_class();
        v137 = NSStringFromClass(v136);
        v138 = NSStringFromSelector(a2);
        v139 = v198[5];
        *buf = 138412802;
        *&buf[4] = v137;
        v204 = 2112;
        v205 = v138;
        v206 = 2112;
        v207 = v139;
        _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v7 = 0;
      *error = v198[5];
      goto LABEL_108;
    }

    v22 = v165;
    if (!v165 || ![v165 count])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v7 = 0;
LABEL_109:

LABEL_110:
LABEL_111:

LABEL_112:
        _Block_object_dispose(&v197, 8);

        goto LABEL_113;
      }

      v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = NSStringFromSelector(a2);
        v29 = [MEMORY[0x277D4AC10] stringFromSMSuggestionTrigger:v171];
        *buf = 138412802;
        *&buf[4] = v27;
        v204 = 2112;
        v205 = v28;
        v206 = 2112;
        v207 = v29;
        _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, %@, trigger type, %@, suggestion skipped because nploi with High confidence is not found", buf, 0x20u);
      }

      v7 = 0;
LABEL_108:
      v22 = v165;
      goto LABEL_109;
    }

    v23 = v198 + 5;
    v192 = v198[5];
    v164 = [(SMSuggestionsManager *)selfCopy _getValuesFromDefaultsIfExists:@"RTDefaultsSuggestionTimeIntervalBuffer" error:&v192];
    objc_storeStrong(v23, v192);
    if (error && v198[5])
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v140 = objc_opt_class();
        v141 = NSStringFromClass(v140);
        v142 = NSStringFromSelector(a2);
        v143 = v198[5];
        *buf = 138412802;
        *&buf[4] = v141;
        v204 = 2112;
        v205 = v142;
        v206 = 2112;
        v207 = v143;
        _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v7 = 0;
      *error = v198[5];
      goto LABEL_107;
    }

    v34 = selfCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = NSStringFromSelector(a2);
        [v164 doubleValue];
        *buf = 138412802;
        *&buf[4] = v37;
        v204 = 2112;
        v205 = v38;
        v206 = 2048;
        v207 = v39;
        _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "%@, %@, using time interval buffer, %.3f", buf, 0x20u);
      }

      v34 = selfCopy;
    }

    [v164 doubleValue];
    v162 = [v169 dateByAddingTimeInterval:-v40];
    v186 = 0;
    v187 = &v186;
    v188 = 0x3032000000;
    v189 = __Block_byref_object_copy__119;
    v190 = __Block_byref_object_dispose__119;
    v191 = 0;
    v41 = v198 + 5;
    v185 = v198[5];
    v163 = [(SMSuggestionsManager *)v34 _getValuesFromDefaultsIfExists:@"RTDefaultsSuggestionBoundingBoxRadius" error:&v185];
    objc_storeStrong(v41, v185);
    if (error && v198[5])
    {
      v42 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v144 = objc_opt_class();
        v145 = NSStringFromClass(v144);
        v146 = NSStringFromSelector(a2);
        v147 = v198[5];
        *buf = 138412802;
        *&buf[4] = v145;
        v204 = 2112;
        v205 = v146;
        v206 = 2112;
        v207 = v147;
        _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v43 = v198[5];
      v44 = 0;
      v45 = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v46 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          v49 = NSStringFromSelector(a2);
          [v163 doubleValue];
          *buf = 138412802;
          *&buf[4] = v48;
          v204 = 2112;
          v205 = v49;
          v206 = 2048;
          v207 = v50;
          _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_INFO, "%@, %@, using bounding box radius, %.3f", buf, 0x20u);
        }
      }

      v183 = 0u;
      v184 = 0u;
      v181 = 0u;
      v182 = 0u;
      v156 = v165;
      v51 = [v156 countByEnumeratingWithState:&v181 objects:v214 count:16];
      v44 = 0;
      v45 = 0;
      if (v51)
      {
        v161 = *v182;
        v160 = *MEMORY[0x277D4AF00];
        v157 = *MEMORY[0x277D01448];
        v158 = *MEMORY[0x277CCA450];
LABEL_63:
        v159 = v51;
        v52 = 0;
        v53 = v44;
        v54 = v45;
        while (1)
        {
          if (*v182 != v161)
          {
            objc_enumerationMutation(v156);
          }

          v167 = v52;
          v55 = *(*(&v181 + 1) + 8 * v52);
          context = objc_autoreleasePoolPush();
          v168 = v55;

          v56 = objc_alloc(MEMORY[0x277D4AB80]);
          v57 = objc_alloc(MEMORY[0x277CCA970]);
          [v164 doubleValue];
          v59 = [v57 initWithStartDate:v162 duration:v58 + v58];
          v60 = objc_alloc(MEMORY[0x277CCA970]);
          v61 = [v169 dateByAddingTimeInterval:-604800.0];
          v62 = [v60 initWithStartDate:v61 duration:604800.0];
          v63 = objc_alloc(MEMORY[0x277CE41F8]);
          locationOfInterest = [v168 locationOfInterest];
          location = [locationOfInterest location];
          v66 = [v63 initWithRTLocation:location];
          LOBYTE(v155) = 1;
          v67 = [v56 initWithBatchSize:v160 fetchLimit:v160 sortBySessionStartDate:1 ascending:0 sessionTypes:&unk_2845A1418 timeInADayInterval:v59 pickOneConfigInTimeInADayInterval:v155 dateInterval:v62 startBoundingBoxLocation:0 destinationBoundingBoxLocation:v66 boundingBoxRadius:v163 sessionIdentifier:0];

          v68 = dispatch_semaphore_create(0);
          sessionStore = [(SMSuggestionsManager *)selfCopy sessionStore];
          v177[0] = MEMORY[0x277D85DD0];
          v177[1] = 3221225472;
          v177[2] = __90__SMSuggestionsManager__generatePersonalizedSuggestionForOccasionalUserFromContext_error___block_invoke;
          v177[3] = &unk_2788C4490;
          v179 = &v186;
          v180 = &v197;
          v70 = v68;
          v178 = v70;
          [sessionStore fetchSessionConfigurationsWithOptions:v67 handler:v177];

          v71 = v70;
          v72 = [MEMORY[0x277CBEAA8] now];
          v73 = dispatch_time(0, 3600000000000);
          v74 = v54;
          if (dispatch_semaphore_wait(v71, v73))
          {
            v75 = [MEMORY[0x277CBEAA8] now];
            [v75 timeIntervalSinceDate:v72];
            v77 = v76;
            v78 = objc_opt_new();
            v79 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
            callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
            v81 = [callStackSymbols filteredArrayUsingPredicate:v79];
            firstObject = [v81 firstObject];

            [v78 submitToCoreAnalytics:firstObject type:1 duration:v77];
            v83 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_2304B3000, v83, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
            }

            v84 = MEMORY[0x277CCA9B8];
            v215[0] = v158;
            *buf = @"semaphore wait timeout";
            v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v215 count:1];
            v86 = [v84 errorWithDomain:v157 code:15 userInfo:v85];

            v74 = v54;
            if (v86)
            {
              v87 = v86;

              v74 = v86;
            }
          }

          v45 = v74;
          if (v45)
          {
            objc_storeStrong(v198 + 5, v74);
            v88 = 0;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v89 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
              {
                v90 = objc_opt_class();
                v91 = NSStringFromClass(v90);
                v92 = NSStringFromSelector(a2);
                v93 = [MEMORY[0x277D4AC10] stringFromSMSuggestionTrigger:v171];
                v94 = [v187[5] count];
                *buf = 138413571;
                *&buf[4] = v91;
                v204 = 2112;
                v205 = v92;
                v206 = 2112;
                v207 = v93;
                v208 = 2117;
                v209 = v168;
                v210 = 2048;
                v211 = v94;
                v212 = 2048;
                v213 = 1;
                _os_log_impl(&dword_2304B3000, v89, OS_LOG_TYPE_INFO, "%@, %@, trigger type, %@, nploi, %{sensitive}@, sessionConfiguration count, %lu, kSMSuggestionOccasionalUserSessionConfigurationCount, %lu", buf, 0x3Eu);
              }
            }

            v88 = [v187[5] count] < 2;
          }

          objc_autoreleasePoolPop(context);
          v44 = v168;
          if (!v88)
          {
            break;
          }

          v52 = v167 + 1;
          v53 = v168;
          v54 = v45;
          if (v159 == v167 + 1)
          {
            v51 = [v156 countByEnumeratingWithState:&v181 objects:v214 count:16];
            if (v51)
            {
              goto LABEL_63;
            }

            break;
          }
        }
      }

      if (!error || !v198[5])
      {
        v100 = v187[5];
        if (v100 && [v100 count])
        {
          v101 = [SMSuggestionsHelper dedupeSessionConfigurations:v187[5]];
          v102 = v187[5];
          v187[5] = v101;

          firstObject2 = [v187[5] firstObject];
          destination = [firstObject2 destination];
          [destination radius];
          v106 = v105;
          locationOfInterest2 = [v44 locationOfInterest];
          location2 = [locationOfInterest2 location];
          v176 = 0;
          v109 = [SMSuggestionsHelper createMasqueradingReferenceLocationFromFenceRadius:location2 location:&v176 error:v106];
          v110 = v176;

          v111 = v109;
          v112 = v111;
          if (v110 || (location3 = v111) == 0)
          {
            v114 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
            {
              v152 = objc_opt_class();
              v153 = NSStringFromClass(v152);
              v154 = NSStringFromSelector(a2);
              *buf = 138413059;
              *&buf[4] = v153;
              v204 = 2112;
              v205 = v154;
              v206 = 2117;
              v207 = v112;
              v208 = 2112;
              v209 = v110;
              _os_log_error_impl(&dword_2304B3000, v114, OS_LOG_TYPE_ERROR, "%@, %@, masqueradingLocation, %{sensitive}@, error, %@", buf, 0x2Au);
            }

            locationOfInterest3 = [v44 locationOfInterest];
            location3 = [locationOfInterest3 location];
          }

          v116 = objc_alloc(MEMORY[0x277D4AC10]);
          v117 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v169 duration:3600.0];
          locationOfInterest4 = [v44 locationOfInterest];
          v119 = [v116 initWithSuggestionTrigger:v171 suggestionUserType:2 suppressionReason:1 sessionType:2 sourceLocation:v170 destinationLocation:location3 buddy:0 dateInterval:v117 creationDate:v169 locationOfInterest:locationOfInterest4];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v120 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
            {
              v121 = objc_opt_class();
              v122 = NSStringFromClass(v121);
              v123 = NSStringFromSelector(a2);
              *buf = 138412802;
              *&buf[4] = v122;
              v204 = 2112;
              v205 = v123;
              v206 = 2112;
              v207 = v119;
              _os_log_impl(&dword_2304B3000, v120, OS_LOG_TYPE_INFO, "%@, %@, suggestion created, %@", buf, 0x20u);
            }
          }

          if (error)
          {
            v124 = v110;
            *error = v110;
          }

          v7 = v119;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v129 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
            {
              v130 = objc_opt_class();
              v131 = NSStringFromClass(v130);
              v132 = NSStringFromSelector(a2);
              v133 = [MEMORY[0x277D4AC10] stringFromSMSuggestionTrigger:v171];
              v134 = [v187[5] count];
              *buf = 138413314;
              *&buf[4] = v131;
              v204 = 2112;
              v205 = v132;
              v206 = 2112;
              v207 = v133;
              v208 = 2048;
              v209 = v134;
              v210 = 2048;
              v211 = 1;
              _os_log_impl(&dword_2304B3000, v129, OS_LOG_TYPE_INFO, "%@, %@, trigger type, %@, suggestion skipped because sessionConfiguration count doesn't meet threshold, sessionConfiguration count, %lu, kSMSuggestionOccasionalUserSessionConfigurationCount, %lu", buf, 0x34u);
            }
          }

          v7 = 0;
        }

        goto LABEL_106;
      }

      v95 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        v148 = objc_opt_class();
        v149 = NSStringFromClass(v148);
        v150 = NSStringFromSelector(a2);
        v151 = v198[5];
        *buf = 138412802;
        *&buf[4] = v149;
        v204 = 2112;
        v205 = v150;
        v206 = 2112;
        v207 = v151;
        _os_log_error_impl(&dword_2304B3000, v95, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v43 = v198[5];
    }

    v7 = 0;
    *error = v43;
LABEL_106:

    _Block_object_dispose(&v186, 8);
LABEL_107:

    goto LABEL_108;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"context");
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_113:

  return v7;
}

void __90__SMSuggestionsManager__generatePersonalizedSuggestionForOccasionalUserFromContext_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_generatePersonalizedSuggestionForFirstTimeUserFromContext:(id)context error:(id *)error
{
  v134 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
  {
    v123 = 0;
    v8 = [(SMSuggestionsManager *)self _getSuggestionTriggerFromContext:contextCopy error:&v123];
    v9 = v123;
    v10 = *&v9;
    if (error && *&v9 != 0.0)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v41 = NSStringFromSelector(a2);
        *buf = 138412802;
        v125 = v40;
        v126 = 2112;
        v127 = v41;
        v128 = 2112;
        v129 = v10;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v12 = *&v10;
      v13 = 0;
      *error = v10;
      goto LABEL_56;
    }

    if (!v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v22 = NSStringFromSelector(a2);
          *buf = 138412546;
          v125 = v21;
          v126 = 2112;
          v127 = v22;
          _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@, %@, no valid triggers found", buf, 0x16u);
        }
      }

      v13 = 0;
      goto LABEL_56;
    }

    v122 = v9;
    v15 = [(SMSuggestionsManager *)self _getSourceLocationFromContext:contextCopy error:&v122];
    v16 = COERCE_DOUBLE(v122);

    if (error && v16 != 0.0)
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v53 = objc_opt_class();
        v54 = NSStringFromClass(v53);
        v55 = NSStringFromSelector(a2);
        *buf = 138412802;
        v125 = v54;
        v126 = 2112;
        v127 = v55;
        v128 = 2112;
        v129 = v16;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v18 = *&v16;
      v13 = 0;
      *error = v16;
      goto LABEL_55;
    }

    v121 = v16;
    v23 = [(SMSuggestionsManager *)self _getCurrentDateFromContext:contextCopy error:&v121];
    v24 = COERCE_DOUBLE(*&v121);

    if (error && v24 != 0.0)
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        v58 = NSStringFromSelector(a2);
        *buf = 138412802;
        v125 = v57;
        v126 = 2112;
        v127 = v58;
        v128 = 2112;
        v129 = v24;
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v26 = *&v24;
      v13 = 0;
      *error = v24;
      goto LABEL_54;
    }

    _getSystemVersionUpdateDate = [(SMSuggestionsManager *)self _getSystemVersionUpdateDate];
    [v23 timeIntervalSinceDate:_getSystemVersionUpdateDate];
    v29 = v28;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = objc_opt_class();
        NSStringFromClass(v31);
        v32 = v117 = _getSystemVersionUpdateDate;
        NSStringFromSelector(a2);
        v33 = v112 = v23;
        [v117 stringFromDate];
        v114 = v15;
        v34 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138413314;
        v125 = v32;
        v126 = 2112;
        v127 = v33;
        v128 = 2112;
        v129 = v34;
        v130 = 2048;
        v131 = v29;
        v132 = 2048;
        v133 = 0x4122750000000000;
        _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@, %@, systemVersionUpdateDate, %@, timeIntervalSinceLastVersionUpdate, %lu, kSMSuggestionFirstTimeUserMinimumVersionUpdateTimeInterval, %.3f", buf, 0x34u);

        v15 = v114;
        v23 = v112;

        _getSystemVersionUpdateDate = v117;
      }
    }

    v13 = 0;
    if (!_getSystemVersionUpdateDate || v29 < 604800.0)
    {
LABEL_53:

LABEL_54:
      v16 = v24;
LABEL_55:

      v10 = v16;
LABEL_56:

      goto LABEL_57;
    }

    v118 = _getSystemVersionUpdateDate;
    v120 = v24;
    v35 = [(SMSuggestionsManager *)self _getNPLOIsToHomeWithOnlyHighConfidence:1 location:v15 date:v23 error:&v120];
    v36 = COERCE_DOUBLE(*&v120);

    v116 = v35;
    if (!error || v36 == 0.0)
    {
      if (v35 && [v35 count])
      {
        v119 = v36;
        v42 = [(SMSuggestionsManager *)self _isFirstTimeUserOfZelkovaWithError:&v119];
        v24 = COERCE_DOUBLE(*&v119);

        if (!error || v24 == 0.0)
        {
          _getSystemVersionUpdateDate = v118;
          if (v42)
          {
            v115 = v15;
            v59 = objc_alloc_init(MEMORY[0x277CCA968]);
            [v59 setDateFormat:@"HH.mm"];
            v60 = [v59 stringFromDate:v23];
            trialManager = [(SMSuggestionsManager *)self trialManager];
            [trialManager refresh];

            trialManager2 = [(SMSuggestionsManager *)self trialManager];
            [trialManager2 doubleValueForFactor:*MEMORY[0x277D4AEA8]];
            v64 = v63;

            trialManager3 = [(SMSuggestionsManager *)self trialManager];
            [trialManager3 doubleValueForFactor:*MEMORY[0x277D4AEA0]];
            v67 = v66;

            v111 = v60;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v68 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
              {
                v102 = objc_opt_class();
                v103 = NSStringFromClass(v102);
                NSStringFromSelector(a2);
                v105 = v104 = v23;
                [v111 floatValue];
                *buf = 138544386;
                v125 = v103;
                v126 = 2114;
                v127 = v105;
                v128 = 2048;
                v129 = v106;
                v130 = 2050;
                v131 = *&v64;
                v132 = 2050;
                v133 = *&v67;
                _os_log_debug_impl(&dword_2304B3000, v68, OS_LOG_TYPE_DEBUG, "%{public}@, %{public}@, time of the day logged from user context, %f, suppressing suggestion between %{public}f to %{public}f", buf, 0x34u);

                v23 = v104;
                _getSystemVersionUpdateDate = v118;
              }

              v60 = v111;
            }

            [v60 floatValue];
            if (v64 >= v69 || ([v60 floatValue], v67 <= v70))
            {
              v107 = objc_alloc(MEMORY[0x277D4AC10]);
              firstObject = [v116 firstObject];
              locationOfInterest = [firstObject locationOfInterest];
              location = [locationOfInterest location];
              v110 = v59;
              v84 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v23 duration:3600.0];
              firstObject2 = [v116 firstObject];
              locationOfInterest2 = [firstObject2 locationOfInterest];
              v113 = v23;
              v87 = COERCE_DOUBLE([v107 initWithSuggestionTrigger:v8 suggestionUserType:3 suppressionReason:1 sessionType:2 sourceLocation:v115 destinationLocation:location buddy:0 dateInterval:v84 creationDate:v23 locationOfInterest:locationOfInterest2]);

              _getSystemVersionUpdateDate = v118;
              v59 = v110;

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v88 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
                {
                  v89 = objc_opt_class();
                  v90 = NSStringFromClass(v89);
                  v91 = NSStringFromSelector(a2);
                  *buf = 138412802;
                  v125 = v90;
                  v126 = 2112;
                  v127 = v91;
                  v128 = 2112;
                  v129 = v87;
                  _os_log_impl(&dword_2304B3000, v88, OS_LOG_TYPE_INFO, "%@, %@, suggestion created, %@", buf, 0x20u);
                }
              }

              v13 = *&v87;
              v23 = v113;
              v15 = v115;
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v71 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
                {
                  v72 = objc_opt_class();
                  v73 = NSStringFromClass(v72);
                  v74 = NSStringFromSelector(a2);
                  [v23 stringFromDate];
                  v75 = v23;
                  v76 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  *buf = 138544386;
                  v125 = v73;
                  v126 = 2114;
                  v127 = v74;
                  v128 = 2112;
                  v129 = v76;
                  v130 = 2050;
                  v131 = *&v64;
                  v132 = 2050;
                  v133 = *&v67;
                  _os_log_impl(&dword_2304B3000, v71, OS_LOG_TYPE_INFO, "%{public}@, %{public}@, date check failed, current date, %@, suggestion skipped because time of day is between %{public}f to %{public}f", buf, 0x34u);

                  v23 = v75;
                  _getSystemVersionUpdateDate = v118;
                }
              }

              v13 = 0;
              v15 = v115;
            }
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v77 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
              {
                v78 = objc_opt_class();
                NSStringFromClass(v78);
                v80 = v79 = v15;
                NSStringFromSelector(a2);
                v82 = v81 = v23;
                *buf = 138412546;
                v125 = v80;
                v126 = 2112;
                v127 = v82;
                _os_log_impl(&dword_2304B3000, v77, OS_LOG_TYPE_INFO, "%@, %@, not a first time user, user already used zelkova before,", buf, 0x16u);

                v23 = v81;
                v15 = v79;
                _getSystemVersionUpdateDate = v118;
              }
            }

            v13 = 0;
          }
        }

        else
        {
          v43 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          _getSystemVersionUpdateDate = v118;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v97 = objc_opt_class();
            NSStringFromClass(v97);
            v99 = v98 = v15;
            NSStringFromSelector(a2);
            v101 = v100 = v23;
            *buf = 138412802;
            v125 = v99;
            v126 = 2112;
            v127 = v101;
            v128 = 2112;
            v129 = v24;
            _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);

            v23 = v100;
            v15 = v98;
            _getSystemVersionUpdateDate = v118;
          }

          v44 = *&v24;
          v13 = 0;
          *error = v24;
        }

        goto LABEL_52;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v45 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = objc_opt_class();
          NSStringFromClass(v46);
          v48 = v47 = v15;
          NSStringFromSelector(a2);
          v50 = v49 = v23;
          [MEMORY[0x277D4AC10] stringFromSMSuggestionTrigger:v8];
          v51 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412802;
          v125 = v48;
          v126 = 2112;
          v127 = v50;
          v128 = 2112;
          v129 = v51;
          _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_INFO, "%@, %@, trigger type, %@, suggestion skipped because nploi to Home with High confidence is not found", buf, 0x20u);

          v23 = v49;
          v15 = v47;
        }
      }

      v13 = 0;
    }

    else
    {
      v37 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v92 = objc_opt_class();
        NSStringFromClass(v92);
        v94 = v93 = v15;
        NSStringFromSelector(a2);
        v96 = v95 = v23;
        *buf = 138412802;
        v125 = v94;
        v126 = 2112;
        v127 = v96;
        v128 = 2112;
        v129 = v36;
        _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);

        v23 = v95;
        v15 = v93;
      }

      v38 = *&v36;
      v13 = 0;
      *error = v36;
    }

    v24 = v36;
    _getSystemVersionUpdateDate = v118;
LABEL_52:

    goto LABEL_53;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"context");
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_57:

  return v13;
}

- (BOOL)suggestionEnabledForUserType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    return 0;
  }

  v3 = off_2788CE8D8[type - 1];
  defaultsManager = [(SMSuggestionsManager *)self defaultsManager];
  v5 = [defaultsManager objectForKey:v3 value:MEMORY[0x277CBEC38]];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (id)_generatePersonalizedSuggestionForWorkoutUserFromContext:(id)context error:(id *)error
{
  v164[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v122 = contextCopy;
  if (!contextCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"context");
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_102;
  }

  v147 = 0;
  v148 = &v147;
  v149 = 0x3032000000;
  v150 = __Block_byref_object_copy__119;
  v151 = __Block_byref_object_dispose__119;
  v152 = 0;
  obj = 0;
  selfCopy = self;
  v6 = [(SMSuggestionsManager *)self _getSuggestionTriggerFromContext:contextCopy error:&obj];
  objc_storeStrong(&v152, obj);
  if (error && v148[5])
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v82 = objc_opt_class();
      v83 = NSStringFromClass(v82);
      v84 = NSStringFromSelector(a2);
      v85 = v148[5];
      *buf = 138412802;
      *&buf[4] = v83;
      v154 = 2112;
      v155 = v84;
      v156 = 2112;
      v157 = v85;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v8 = 0;
    *error = v148[5];
    goto LABEL_101;
  }

  if (v6 != 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v14;
        v154 = 2112;
        v155 = v15;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, no valid triggers found", buf, 0x16u);
      }
    }

    v8 = 0;
    goto LABEL_101;
  }

  v9 = (v148 + 5);
  v145 = v148[5];
  v116 = [(SMSuggestionsManager *)selfCopy _getCurrentDateFromContext:v122 error:&v145];
  objc_storeStrong(v9, v145);
  if (error && v148[5])
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v100 = objc_opt_class();
      v101 = NSStringFromClass(v100);
      v102 = NSStringFromSelector(a2);
      v103 = v148[5];
      *buf = 138412802;
      *&buf[4] = v101;
      v154 = 2112;
      v155 = v102;
      v156 = 2112;
      v157 = v103;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v8 = 0;
    *error = v148[5];
    goto LABEL_100;
  }

  v16 = dispatch_semaphore_create(0);
  v139 = 0;
  v140 = &v139;
  v141 = 0x3032000000;
  v142 = __Block_byref_object_copy__119;
  v143 = __Block_byref_object_dispose__119;
  v144 = 0;
  v17 = objc_alloc(MEMORY[0x277D4AB80]);
  v18 = objc_alloc(MEMORY[0x277CCA970]);
  v19 = [v116 dateByAddingTimeInterval:-2419200.0];
  v20 = [v18 initWithStartDate:v19 duration:2419200.0];
  LOBYTE(v112) = 0;
  v115 = [v17 initWithBatchSize:*MEMORY[0x277D4AF00] fetchLimit:*MEMORY[0x277D4AF00] sortBySessionStartDate:1 ascending:0 sessionTypes:&unk_2845A1430 timeInADayInterval:0 pickOneConfigInTimeInADayInterval:v112 dateInterval:v20 startBoundingBoxLocation:0 destinationBoundingBoxLocation:0 boundingBoxRadius:0 sessionIdentifier:0];

  sessionStore = [(SMSuggestionsManager *)selfCopy sessionStore];
  v135[0] = MEMORY[0x277D85DD0];
  v135[1] = 3221225472;
  v135[2] = __87__SMSuggestionsManager__generatePersonalizedSuggestionForWorkoutUserFromContext_error___block_invoke;
  v135[3] = &unk_2788C4490;
  v137 = &v139;
  v138 = &v147;
  v22 = v16;
  v136 = v22;
  [sessionStore fetchSessionConfigurationsWithOptions:v115 handler:v135];

  dsema = v22;
  v23 = [MEMORY[0x277CBEAA8] now];
  v24 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v24))
  {
    v25 = [MEMORY[0x277CBEAA8] now];
    [v25 timeIntervalSinceDate:v23];
    v27 = v26;
    v28 = objc_opt_new();
    v29 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v31 = [callStackSymbols filteredArrayUsingPredicate:v29];
    firstObject = [v31 firstObject];

    [v28 submitToCoreAnalytics:firstObject type:1 duration:v27];
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v33, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
    }

    v34 = MEMORY[0x277CCA9B8];
    v164[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v164 count:1];
    v36 = [v34 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v35];

    if (v36)
    {
      v37 = v36;
    }
  }

  else
  {
    v36 = 0;
  }

  v114 = v36;
  if (error && v148[5])
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v104 = objc_opt_class();
      v105 = NSStringFromClass(v104);
      v106 = NSStringFromSelector(a2);
      v107 = v148[5];
      *buf = 138412802;
      *&buf[4] = v105;
      v154 = 2112;
      v155 = v106;
      v156 = 2112;
      v157 = v107;
      _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v8 = 0;
    *error = v148[5];
    goto LABEL_99;
  }

  v39 = objc_alloc(MEMORY[0x277CBEB58]);
  v40 = [v39 initWithCapacity:{objc_msgSend(v140[5], "count")}];
  v41 = objc_alloc(MEMORY[0x277CBEB40]);
  v42 = [v41 initWithCapacity:{objc_msgSend(v140[5], "count")}];
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v43 = v140[5];
  v44 = [v43 countByEnumeratingWithState:&v131 objects:v163 count:16];
  if (!v44)
  {
    goto LABEL_47;
  }

  v45 = *v132;
  do
  {
    for (i = 0; i != v44; ++i)
    {
      if (*v132 != v45)
      {
        objc_enumerationMutation(v43);
      }

      v47 = *(*(&v131 + 1) + 8 * i);
      sessionID = [v47 sessionID];

      if (sessionID)
      {
        sessionID2 = [v47 sessionID];
        [v40 addObject:sessionID2];
      }

      conversation = [v47 conversation];
      if (([conversation isGroup] & 1) == 0)
      {
        conversation2 = [v47 conversation];
        receiverHandles = [conversation2 receiverHandles];
        v53 = receiverHandles == 0;

        if (v53)
        {
          continue;
        }

        conversation = [v47 conversation];
        receiverHandles2 = [conversation receiverHandles];
        [v42 addObjectsFromArray:receiverHandles2];
      }
    }

    v44 = [v43 countByEnumeratingWithState:&v131 objects:v163 count:16];
  }

  while (v44);
LABEL_47:

  v55 = [v40 count];
  v56 = v55;
  if (v55 < 3)
  {
    v119 = 0;
  }

  else
  {
    v113 = v55;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v118 = v42;
    v57 = [v118 countByEnumeratingWithState:&v127 objects:v162 count:16];
    if (v57)
    {
      v119 = 0;
      v120 = *v128;
LABEL_50:
      v58 = 0;
      while (1)
      {
        if (*v128 != v120)
        {
          objc_enumerationMutation(v118);
        }

        v59 = *(*(&v127 + 1) + 8 * v58);
        v60 = objc_autoreleasePoolPush();
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v61 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
          {
            v62 = objc_opt_class();
            v63 = NSStringFromClass(v62);
            v64 = NSStringFromSelector(a2);
            *buf = 138412802;
            *&buf[4] = v63;
            v154 = 2112;
            v155 = v64;
            v156 = 2112;
            v157 = v59;
            _os_log_impl(&dword_2304B3000, v61, OS_LOG_TYPE_INFO, "%@, %@, handle, %@", buf, 0x20u);
          }
        }

        v65 = (v148 + 5);
        v126 = v148[5];
        v66 = [(SMSuggestionsManager *)selfCopy _checkReceiverEligibilityForHandle:v59 error:&v126];
        objc_storeStrong(v65, v126);
        v67 = (v148 + 5);
        v68 = v148[5] == 0 && v66;
        if (v148[5])
        {
          v69 = 8;
        }

        else
        {
          v69 = 9;
        }

        if (v68)
        {
          v125 = 0;
          v70 = [(SMSuggestionsManager *)selfCopy _didInteractInPastWithHandle:v59 timeInterval:&v125 error:604800.0];
          objc_storeStrong(v67, v125);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v71 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              v72 = objc_opt_class();
              v73 = NSStringFromClass(v72);
              v74 = NSStringFromSelector(a2);
              v75 = v74;
              *buf = 138413058;
              v76 = @"NO";
              if (v70)
              {
                v76 = @"YES";
              }

              *&buf[4] = v73;
              v154 = 2112;
              v155 = v74;
              v156 = 2112;
              v157 = v59;
              v158 = 2112;
              v159 = v76;
              _os_log_impl(&dword_2304B3000, v71, OS_LOG_TYPE_INFO, "%@, %@, handle, %@, interactedWithHandle, %@", buf, 0x2Au);
            }
          }

          v77 = v148[5];
          v81 = v77 == 0;
          v78 = v77 != 0;
          v79 = v81;
          if ((v79 & v70) == 1)
          {
            v80 = [SMSuggestionsHelper getSMContactInformationFromSMHandle:v59];

            v69 = 8;
            v119 = v80;
          }

          else
          {
            v69 = 8 * v78;
          }
        }

        objc_autoreleasePoolPop(v60);
        v81 = v69 == 9 || v69 == 0;
        if (!v81)
        {
          break;
        }

        if (v57 == ++v58)
        {
          v57 = [v118 countByEnumeratingWithState:&v127 objects:v162 count:16];
          if (v57)
          {
            goto LABEL_50;
          }

          break;
        }
      }
    }

    else
    {
      v119 = 0;
    }

    v56 = v113;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v86 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      v87 = objc_opt_class();
      v88 = NSStringFromClass(v87);
      v89 = NSStringFromSelector(a2);
      v90 = [v42 count];
      *buf = 138413314;
      *&buf[4] = v88;
      v154 = 2112;
      v155 = v89;
      v156 = 2048;
      v157 = v56;
      v158 = 2048;
      v159 = v90;
      v160 = 2112;
      v161 = v119;
      _os_log_impl(&dword_2304B3000, v86, OS_LOG_TYPE_INFO, "%@, %@, uniqueSessionCount, %lu, handles.count, %lu, chosen contactInformation, %@", buf, 0x34u);
    }
  }

  if (error && v148[5])
  {
    v91 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      v108 = objc_opt_class();
      v109 = NSStringFromClass(v108);
      v110 = NSStringFromSelector(a2);
      v111 = v148[5];
      *buf = 138412802;
      *&buf[4] = v109;
      v154 = 2112;
      v155 = v110;
      v156 = 2112;
      v157 = v111;
      _os_log_error_impl(&dword_2304B3000, v91, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v8 = 0;
    *error = v148[5];
  }

  else
  {
    v92 = objc_alloc(MEMORY[0x277D4AC10]);
    v93 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v116 duration:3600.0];
    v94 = [v92 initWithSuggestionTrigger:4 suggestionUserType:4 suppressionReason:1 sessionType:4 sourceLocation:0 destinationLocation:0 buddy:v119 dateInterval:v93 creationDate:v116 locationOfInterest:0];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v95 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
      {
        v96 = objc_opt_class();
        v97 = NSStringFromClass(v96);
        v98 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v97;
        v154 = 2112;
        v155 = v98;
        v156 = 2112;
        v157 = v94;
        _os_log_impl(&dword_2304B3000, v95, OS_LOG_TYPE_INFO, "%@, %@, suggestion created, %@", buf, 0x20u);
      }
    }

    v8 = v94;
  }

LABEL_99:
  _Block_object_dispose(&v139, 8);

LABEL_100:
LABEL_101:
  _Block_object_dispose(&v147, 8);

LABEL_102:

  return v8;
}

void __87__SMSuggestionsManager__generatePersonalizedSuggestionForWorkoutUserFromContext_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)_showSuggestionsDetectionUIWithSuggestion:(id)suggestion error:(id *)error
{
  v314[1] = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  if (suggestionCopy)
  {
    aSelector = a2;
    platform = [(SMSuggestionsManager *)self platform];
    if ([platform iPhoneDevice])
    {

      goto LABEL_9;
    }

    platform2 = [(SMSuggestionsManager *)self platform];
    watchPlatform = [platform2 watchPlatform];

    if (watchPlatform)
    {
LABEL_9:
      if ([(SMSuggestionsManager *)self _shouldShowProactiveSuggestions])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            v16 = NSStringFromSelector(aSelector);
            *buf = 138412802;
            *&buf[4] = v15;
            *&buf[12] = 2112;
            *&buf[14] = v16;
            *&buf[22] = 2112;
            v311 = suggestionCopy;
            _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, trying to show suggestion detection UI, suggestion, %@", buf, 0x20u);
          }
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v311 = __Block_byref_object_copy__119;
        v312 = __Block_byref_object_dispose__119;
        v313 = 0;
        buddy = [suggestionCopy buddy];
        email = [buddy email];

        if (email)
        {
          v19 = objc_alloc(MEMORY[0x277D4AAE8]);
          buddy2 = [suggestionCopy buddy];
          email2 = [buddy2 email];
          v268 = [v19 initWithPrimaryHandle:email2 secondaryHandles:MEMORY[0x277CBEBF8]];
        }

        else
        {
          buddy3 = [suggestionCopy buddy];
          phoneNumber = [buddy3 phoneNumber];

          if (!phoneNumber)
          {
            goto LABEL_29;
          }

          v28 = objc_alloc(MEMORY[0x277D4AAE8]);
          buddy2 = [suggestionCopy buddy];
          email2 = [buddy2 phoneNumber];
          v268 = [v28 initWithPrimaryHandle:email2 secondaryHandles:MEMORY[0x277CBEBF8]];
        }

        if (v268)
        {
          v29 = *&buf[8];
          obj = *(*&buf[8] + 40);
          v10 = [(SMSuggestionsManager *)self _checkReceiverEligibilityForHandle:v268 error:&obj];
          objc_storeStrong((v29 + 40), obj);
          if (error && *(*&buf[8] + 40))
          {
            v30 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v198 = objc_opt_class();
              v199 = NSStringFromClass(v198);
              v200 = NSStringFromSelector(aSelector);
              v201 = *(*&buf[8] + 40);
              *v304 = 138412802;
              *&v304[4] = v199;
              *&v304[12] = 2112;
              *&v304[14] = v200;
              *&v304[22] = 2112;
              v305 = v201;
              _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v304, 0x20u);
            }

            v31 = *(*&buf[8] + 40);
            goto LABEL_48;
          }

          if (!v10)
          {
            v73 = MEMORY[0x277CCA9B8];
            v308 = *MEMORY[0x277CCA450];
            v74 = MEMORY[0x277CCACA8];
            v75 = objc_opt_class();
            v76 = NSStringFromClass(v75);
            v77 = NSStringFromSelector(aSelector);
            v268 = [v74 stringWithFormat:@"%@, %@, suggestion has buddy handle that is not an eligible receiver, %@", v76, v77, v268];
            v309 = v268;
            v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v309 forKeys:&v308 count:1];
            v80 = [v73 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v79];
            v81 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = v80;

            if (!error)
            {
              v10 = 0;
              goto LABEL_168;
            }

            v31 = *(*&buf[8] + 40);
            v10 = 0;
LABEL_48:
            *error = v31;
LABEL_168:
            _Block_object_dispose(buf, 8);

            goto LABEL_169;
          }

          v263 = 0;
LABEL_32:
          *v304 = 0;
          *&v304[8] = v304;
          *&v304[16] = 0x3032000000;
          v305 = __Block_byref_object_copy__119;
          v306 = __Block_byref_object_dispose__119;
          v307 = 0;
          locationOfInterest = [suggestionCopy locationOfInterest];
          if (locationOfInterest)
          {
          }

          else
          {
            destinationLocation = [suggestionCopy destinationLocation];
            v54 = destinationLocation == 0;

            if (!v54)
            {
              v55 = dispatch_semaphore_create(0);
              *v301 = 0;
              *&v301[8] = v301;
              *&v301[16] = 0x3032000000;
              v302 = __Block_byref_object_copy__119;
              *&v303 = __Block_byref_object_dispose__119;
              *(&v303 + 1) = 0;
              learnedLocationManager = [(SMSuggestionsManager *)self learnedLocationManager];
              destinationLocation2 = [suggestionCopy destinationLocation];
              v282[0] = MEMORY[0x277D85DD0];
              v282[1] = 3221225472;
              v282[2] = __72__SMSuggestionsManager__showSuggestionsDetectionUIWithSuggestion_error___block_invoke;
              v282[3] = &unk_2788C4B58;
              v284 = v304;
              v285 = v301;
              v58 = v55;
              v283 = v58;
              [learnedLocationManager fetchLocationOfInterestAtLocation:destinationLocation2 handler:v282];

              dsema = v58;
              v59 = [MEMORY[0x277CBEAA8] now];
              v60 = dispatch_time(0, 3600000000000);
              if (dispatch_semaphore_wait(dsema, v60))
              {
                v61 = [MEMORY[0x277CBEAA8] now];
                [v61 timeIntervalSinceDate:v59];
                v63 = v62;
                v64 = objc_opt_new();
                v65 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
                callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
                v67 = [callStackSymbols filteredArrayUsingPredicate:v65];
                firstObject = [v67 firstObject];

                [v64 submitToCoreAnalytics:firstObject type:1 duration:v63];
                v69 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
                {
                  *v297 = 0;
                  _os_log_fault_impl(&dword_2304B3000, v69, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", v297, 2u);
                }

                v70 = MEMORY[0x277CCA9B8];
                *v292 = *MEMORY[0x277CCA450];
                *v297 = @"semaphore wait timeout";
                v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v297 forKeys:v292 count:1];
                v100Location = [v70 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v71];

                if (v100Location)
                {
                  v72 = v100Location;
                }
              }

              else
              {
                v100Location = 0;
              }

              v87 = v100Location;
              v88 = v87;
              if (error && v87)
              {
                v89 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                {
                  v216 = objc_opt_class();
                  v217 = NSStringFromClass(v216);
                  v218 = NSStringFromSelector(aSelector);
                  *v297 = 138412802;
                  *&v297[4] = v217;
                  *&v297[12] = 2112;
                  *&v297[14] = v218;
                  *&v297[22] = 2112;
                  v298 = v88;
                  _os_log_error_impl(&dword_2304B3000, v89, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v297, 0x20u);
                }

                v90 = v88;
              }

              else
              {
                if (!error || !*(*&v301[8] + 40))
                {

                  _Block_object_dispose(v301, 8);
                  goto LABEL_77;
                }

                v91 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                {
                  v230 = objc_opt_class();
                  v231 = NSStringFromClass(v230);
                  v232 = NSStringFromSelector(aSelector);
                  v233 = *(*&v301[8] + 40);
                  *v297 = 138412802;
                  *&v297[4] = v231;
                  *&v297[12] = 2112;
                  *&v297[14] = v232;
                  *&v297[22] = 2112;
                  v298 = v233;
                  _os_log_error_impl(&dword_2304B3000, v91, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v297, 0x20u);
                }

                v90 = *(*&v301[8] + 40);
              }

              *error = v90;

              _Block_object_dispose(v301, 8);
              goto LABEL_75;
            }
          }

          locationOfInterest2 = [suggestionCopy locationOfInterest];

          if (!locationOfInterest2)
          {
LABEL_78:
            v92 = *(*&v304[8] + 40);
            if (!v92 || ([v92 location], v93 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v93, "location"), v94 = objc_claimAutoreleasedReturnValue(), v95 = v94 == 0, v94, v93, v95))
            {
              dsema = 0;
            }

            else
            {
              dsemaa = objc_alloc(MEMORY[0x277D011D8]);
              place = [*(*&v304[8] + 40) place];
              mapItem = [place mapItem];
              place2 = [*(*&v304[8] + 40) place];
              v97 = +[RTPlaceInferenceManager userSpecificPlaceTypeFromLearnedPlaceType:](RTPlaceInferenceManager, "userSpecificPlaceTypeFromLearnedPlaceType:", [place2 type]);
              place3 = [*(*&v304[8] + 40) place];
              v99 = +[RTPlaceInferenceManager userSpecificPlaceTypeSourceFromLearnedPlaceTypeSource:](RTPlaceInferenceManager, "userSpecificPlaceTypeSourceFromLearnedPlaceTypeSource:", [place3 typeSource]);
              location = [*(*&v304[8] + 40) location];
              v100Location = [location location];
              location2 = [*(*&v304[8] + 40) location];
              [location2 confidence];
              v103 = v102;
              identifier = [*(*&v304[8] + 40) identifier];
              dsema = [dsemaa initWithMapItem:mapItem userType:v97 userTypeSource:v99 placeType:0 referenceLocation:v100Location confidence:identifier loiIdentifier:v103];
            }

            destinationLocation3 = [suggestionCopy destinationLocation];

            if (!destinationLocation3)
            {
              v108 = MEMORY[0x277CCA9B8];
              v288 = *MEMORY[0x277CCA450];
              v109 = MEMORY[0x277CCACA8];
              destinationLocation4 = [suggestionCopy destinationLocation];
              v110 = [v109 stringWithFormat:@"suggestion has invalid destination information, %@", destinationLocation4];
              v289 = v110;
              v112 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v289 forKeys:&v288 count:1];
              v113 = [v108 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v112];
              v114 = *(*&buf[8] + 40);
              *(*&buf[8] + 40) = v113;

              if (error)
              {
                v115 = 0;
                v10 = 0;
                *error = *(*&buf[8] + 40);
LABEL_166:

                goto LABEL_167;
              }

              v115 = 0;
LABEL_120:
              v10 = 0;
              goto LABEL_166;
            }

            place4 = [*(*&v304[8] + 40) place];
            type = [place4 type];

            if (type >= 5)
            {
              v258 = 0;
            }

            else
            {
              v258 = qword_230B013D8[type];
            }

            *v301 = 0;
            *&v301[8] = v301;
            *&v301[16] = 0x3032000000;
            v302 = __Block_byref_object_copy__119;
            *&v303 = __Block_byref_object_dispose__119;
            *(&v303 + 1) = 0;
            place5 = [*(*&v304[8] + 40) place];
            mapItem2 = [place5 mapItem];
            v118 = mapItem2 == 0;

            if (!v118)
            {
              goto LABEL_89;
            }

            *v297 = 0;
            *&v297[8] = v297;
            *&v297[16] = 0x3032000000;
            v298 = __Block_byref_object_copy__119;
            v299 = __Block_byref_object_dispose__119;
            v300 = 0;
            v128 = dispatch_semaphore_create(0);
            v129 = objc_alloc(MEMORY[0x277D011B0]);
            v130 = objc_opt_class();
            v131 = NSStringFromClass(v130);
            v255 = [v129 initWithUseBackgroundTraits:1 analyticsIdentifier:v131 clientIdentifier:*MEMORY[0x277D4AE78]];

            mapServiceManager = [(SMSuggestionsManager *)self mapServiceManager];
            destinationLocation5 = [suggestionCopy destinationLocation];
            v274[0] = MEMORY[0x277D85DD0];
            v274[1] = 3221225472;
            v274[2] = __72__SMSuggestionsManager__showSuggestionsDetectionUIWithSuggestion_error___block_invoke_470;
            v274[3] = &unk_2788C4490;
            v276 = v301;
            v277 = v297;
            v134 = v128;
            v275 = v134;
            [mapServiceManager fetchMapItemsFromLocation:destinationLocation5 options:v255 handler:v274];

            v261 = v134;
            v135 = [MEMORY[0x277CBEAA8] now];
            v136 = dispatch_time(0, 3600000000000);
            if (dispatch_semaphore_wait(v261, v136))
            {
              v137 = [MEMORY[0x277CBEAA8] now];
              [v137 timeIntervalSinceDate:v135];
              v139 = v138;
              v140 = objc_opt_new();
              v141 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
              callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
              v143 = [callStackSymbols2 filteredArrayUsingPredicate:v141];
              firstObject2 = [v143 firstObject];

              [v140 submitToCoreAnalytics:firstObject2 type:1 duration:v139];
              v145 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v145, OS_LOG_TYPE_FAULT))
              {
                *v292 = 0;
                _os_log_fault_impl(&dword_2304B3000, v145, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", v292, 2u);
              }

              v146 = MEMORY[0x277CCA9B8];
              v314[0] = *MEMORY[0x277CCA450];
              *v292 = @"semaphore wait timeout";
              v147 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v292 forKeys:v314 count:1];
              v100Location = [v146 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v147];

              if (v100Location)
              {
                v148 = v100Location;
              }
            }

            else
            {
              v100Location = 0;
            }

            v150 = v100Location;
            v151 = v150;
            if (error && v150)
            {
              v152 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
              {
                v227 = objc_opt_class();
                v228 = NSStringFromClass(v227);
                v229 = NSStringFromSelector(aSelector);
                *v292 = 138412802;
                *&v292[4] = v228;
                v293 = 2112;
                v294 = v229;
                v295 = 2112;
                v296 = v151;
                _os_log_error_impl(&dword_2304B3000, v152, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v292, 0x20u);
              }

              v153 = v151;
            }

            else
            {
              if (*(*&v301[8] + 40) && !*(*&v297[8] + 40))
              {
                goto LABEL_144;
              }

              v100Location = MEMORY[0x277CCA9B8];
              v290 = *MEMORY[0x277CCA450];
              v154 = MEMORY[0x277CCACA8];
              destinationLocation6 = [suggestionCopy destinationLocation];
              v156 = [v154 stringWithFormat:@"Failed to reverse geocode for the location, %{sensitive}@, reverseGeocodedMapItem, %@, reverseGeocodeError, %@", destinationLocation6, *(*&v301[8] + 40), *(*&v297[8] + 40)];
              v291 = v156;
              v157 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v291 forKeys:&v290 count:1];
              v158 = [v100Location errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v157];
              v159 = *(*&buf[8] + 40);
              *(*&buf[8] + 40) = v158;

              v160 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
              {
                v234 = objc_opt_class();
                v235 = NSStringFromClass(v234);
                v236 = NSStringFromSelector(aSelector);
                v237 = *(*&buf[8] + 40);
                *v292 = 138412802;
                *&v292[4] = v235;
                v293 = 2112;
                v294 = v236;
                v295 = 2112;
                v296 = v237;
                _os_log_error_impl(&dword_2304B3000, v160, OS_LOG_TYPE_ERROR, "%@, %@, error, %@", v292, 0x20u);
              }

              if (!error || !*(*&buf[8] + 40))
              {
LABEL_144:

                _Block_object_dispose(v297, 8);
LABEL_89:
                v119 = objc_alloc(MEMORY[0x277D4AB88]);
                destinationLocation7 = [suggestionCopy destinationLocation];
                destinationLocation8 = [suggestionCopy destinationLocation];
                [destinationLocation8 horizontalUncertainty];
                v123 = v122;
                place6 = [*(*&v304[8] + 40) place];
                mapItem3 = [place6 mapItem];
                if (mapItem3)
                {
                  place7 = [*(*&v304[8] + 40) place];
                  v100Location = [place7 mapItem];
                  geoMapItemHandle = [v100Location geoMapItemHandle];
                }

                else
                {
                  geoMapItemHandle = [*(*&v301[8] + 40) geoMapItemHandle];
                  place7 = geoMapItemHandle;
                }

                v115 = [v119 initWithLocation:destinationLocation7 eta:0 radius:v258 destinationType:geoMapItemHandle destinationMapItem:v123];
                if (mapItem3)
                {
                }

                v149 = 1;
LABEL_117:
                _Block_object_dispose(v301, 8);

                if (v149)
                {
                  if (v263)
                  {
                    v162 = 0;
                  }

                  else
                  {
                    v163 = objc_alloc(MEMORY[0x277D4AA98]);
                    v287 = v268;
                    v164 = [MEMORY[0x277CBEA60] arrayWithObjects:&v287 count:1];
                    v162 = [v163 initWithReceiverHandles:v164 identifier:0 displayName:0];
                  }

                  v165 = objc_alloc(MEMORY[0x277D4AB78]);
                  uUID = [MEMORY[0x277CCAD78] UUID];
                  dateInterval = [suggestionCopy dateInterval];
                  startDate = [dateInterval startDate];
                  LOBYTE(v250) = [MEMORY[0x277D4AAE0] zelkovaHandoffEnabled];
                  v264 = [v165 initWithConversation:v162 sessionID:uUID sessionStartDate:startDate sessionType:2 time:0 destination:v115 userResponseSafeDate:0 sessionSupportsHandoff:v250 sosReceivers:v162 sessionWorkoutIdentifier:0 sessionWorkoutType:0 sessionWorkoutMirrorType:0];

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    v169 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                    if (os_log_type_enabled(v169, OS_LOG_TYPE_INFO))
                    {
                      v170 = objc_opt_class();
                      v171 = NSStringFromClass(v170);
                      v172 = NSStringFromSelector(aSelector);
                      *v301 = 138412802;
                      *&v301[4] = v171;
                      *&v301[12] = 2112;
                      *&v301[14] = v172;
                      *&v301[22] = 2112;
                      v302 = v264;
                      _os_log_impl(&dword_2304B3000, v169, OS_LOG_TYPE_INFO, "%@, %@, config from suggestion, %@", v301, 0x20u);
                    }
                  }

                  v173 = *&buf[8];
                  v273 = *(*&buf[8] + 40);
                  v262 = [(SMSuggestionsManager *)self _getMessagesURLFromSessionConfig:v264 payloadType:2 error:&v273];
                  objc_storeStrong((v173 + 40), v273);
                  if (error && *(*&buf[8] + 40))
                  {
                    v174 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                    if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
                    {
                      v223 = objc_opt_class();
                      v224 = NSStringFromClass(v223);
                      v225 = NSStringFromSelector(aSelector);
                      v226 = *(*&buf[8] + 40);
                      *v301 = 138412802;
                      *&v301[4] = v224;
                      *&v301[12] = 2112;
                      *&v301[14] = v225;
                      *&v301[22] = 2112;
                      v302 = v226;
                      _os_log_error_impl(&dword_2304B3000, v174, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v301, 0x20u);
                    }

                    v10 = 0;
                    *error = *(*&buf[8] + 40);
                  }

                  else
                  {
                    conversation = [v264 conversation];
                    receiverHandles = [conversation receiverHandles];
                    firstObject3 = [receiverHandles firstObject];
                    v178 = (*&buf[8] + 40);
                    v272 = *(*&buf[8] + 40);
                    v259 = [(SMSuggestionsManager *)self _getSuggestionTitleWithHandle:firstObject3 error:&v272];
                    objc_storeStrong(v178, v272);

                    if (error && *(*&buf[8] + 40))
                    {
                      v179 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                      if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
                      {
                        v238 = objc_opt_class();
                        v239 = NSStringFromClass(v238);
                        v240 = NSStringFromSelector(aSelector);
                        v241 = *(*&buf[8] + 40);
                        *v301 = 138412802;
                        *&v301[4] = v239;
                        *&v301[12] = 2112;
                        *&v301[14] = v240;
                        *&v301[22] = 2112;
                        v302 = v241;
                        _os_log_error_impl(&dword_2304B3000, v179, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v301, 0x20u);
                      }

                      v10 = 0;
                      *error = *(*&buf[8] + 40);
                    }

                    else
                    {
                      v254 = [(SMSuggestionsManager *)self _getSuggestionBodyWithPlaceInference:dsema];
                      v256 = [(SMSuggestionsManager *)self _getSuggestionsFooter:suggestionCopy];
                      if ([suggestionCopy suggestionUserType] == 1)
                      {
                        v180 = 2;
                      }

                      else
                      {
                        v180 = 1;
                      }

                      if (error && *(*&buf[8] + 40))
                      {
                        v181 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
                        if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
                        {
                          v242 = objc_opt_class();
                          v243 = NSStringFromClass(v242);
                          v244 = NSStringFromSelector(aSelector);
                          v245 = *(*&buf[8] + 40);
                          *v301 = 138412802;
                          *&v301[4] = v243;
                          *&v301[12] = 2112;
                          *&v301[14] = v244;
                          *&v301[22] = 2112;
                          v302 = v245;
                          _os_log_error_impl(&dword_2304B3000, v181, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v301, 0x20u);
                        }

                        v10 = 0;
                        *error = *(*&buf[8] + 40);
                      }

                      else
                      {
                        v252 = v180;
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                        {
                          v182 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                          if (os_log_type_enabled(v182, OS_LOG_TYPE_INFO))
                          {
                            v183 = objc_opt_class();
                            v184 = NSStringFromClass(v183);
                            v185 = NSStringFromSelector(aSelector);
                            v186 = [RTUserNotification interruptionLevelToString:v180];
                            *v301 = 138412802;
                            *&v301[4] = v184;
                            *&v301[12] = 2112;
                            *&v301[14] = v185;
                            *&v301[22] = 2112;
                            v302 = v186;
                            _os_log_impl(&dword_2304B3000, v182, OS_LOG_TYPE_INFO, "%@, %@, interruption level, %@", v301, 0x20u);
                          }
                        }

                        v187 = *&buf[8];
                        v271 = *(*&buf[8] + 40);
                        v253 = [(SMSuggestionsManager *)self _getNotificationExpirationDateForSuggestion:suggestionCopy error:&v271];
                        objc_storeStrong((v187 + 40), v271);
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                        {
                          v188 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                          if (os_log_type_enabled(v188, OS_LOG_TYPE_INFO))
                          {
                            v189 = objc_opt_class();
                            v190 = NSStringFromClass(v189);
                            v191 = NSStringFromSelector(aSelector);
                            stringFromDate = [v253 stringFromDate];
                            v193 = *(*&buf[8] + 40);
                            *v301 = 138413058;
                            *&v301[4] = v190;
                            *&v301[12] = 2112;
                            *&v301[14] = v191;
                            *&v301[22] = 2112;
                            v302 = stringFromDate;
                            LOWORD(v303) = 2112;
                            *(&v303 + 2) = v193;
                            _os_log_impl(&dword_2304B3000, v188, OS_LOG_TYPE_INFO, "%@, %@, notificationExpirationDate, %@, error, %@", v301, 0x2Au);
                          }
                        }

                        v194 = *(*&buf[8] + 40);
                        *(*&buf[8] + 40) = 0;

                        defaultsManager = [(SMSuggestionsManager *)self defaultsManager];
                        v196 = [defaultsManager objectForKey:@"RTDefaultsSuggestionsManagerLastSuggestionNotificationUUID"];

                        if (v196)
                        {
                          uUIDString = v196;
                        }

                        else
                        {
                          uUID2 = [MEMORY[0x277CCAD78] UUID];
                          uUIDString = [uUID2 UUIDString];
                        }

                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                        {
                          v206 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                          if (os_log_type_enabled(v206, OS_LOG_TYPE_INFO))
                          {
                            v207 = objc_opt_class();
                            v208 = NSStringFromClass(v207);
                            v209 = NSStringFromSelector(aSelector);
                            *v301 = 138413058;
                            *&v301[4] = v208;
                            *&v301[12] = 2112;
                            *&v301[14] = v209;
                            *&v301[22] = 2112;
                            v302 = v196;
                            LOWORD(v303) = 2112;
                            *(&v303 + 2) = uUIDString;
                            _os_log_impl(&dword_2304B3000, v206, OS_LOG_TYPE_INFO, "%@, %@, notificationUUIDStringFromDefaults, %@, notificationUUIDString, %@", v301, 0x2Au);
                          }
                        }

                        v210 = [RTUserNotification alloc];
                        v211 = [(RTUserNotification *)v210 initWithBundleIdentifier:*MEMORY[0x277D4AD38] notificationUUIDString:uUIDString];
                        absoluteString = [v262 absoluteString];
                        v213 = *MEMORY[0x277D4AE78];
                        v270[0] = MEMORY[0x277D85DD0];
                        v270[1] = 3221225472;
                        v270[2] = __72__SMSuggestionsManager__showSuggestionsDetectionUIWithSuggestion_error___block_invoke_481;
                        v270[3] = &unk_2788C6F18;
                        v270[4] = self;
                        v270[5] = buf;
                        v270[6] = aSelector;
                        LOWORD(v251) = 256;
                        [(RTUserNotification *)v211 postNotificationWithTitle:v259 subtitle:0 body:v254 footer:v256 defaultActionUrl:absoluteString categoryIdentifier:v213 interruptionLevel:v252 destination:7 actions:MEMORY[0x277CBEBF8] suppressDismissActionInCarPlay:v251 preventAutomaticRemoval:v253 expirationDate:0 userInfo:v270 handler:?];

                        defaultsManager2 = [(SMSuggestionsManager *)self defaultsManager];
                        [defaultsManager2 setObject:uUIDString forKey:@"RTDefaultsSuggestionsManagerLastSuggestionNotificationUUID"];

                        if (error)
                        {
                          *error = *(*&buf[8] + 40);
                        }

                        v10 = *(*&buf[8] + 40) == 0;
                      }
                    }
                  }

                  goto LABEL_166;
                }

                goto LABEL_120;
              }

              v161 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
              if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
              {
                v246 = objc_opt_class();
                v247 = NSStringFromClass(v246);
                v248 = NSStringFromSelector(aSelector);
                v249 = *(*&buf[8] + 40);
                *v292 = 138412802;
                *&v292[4] = v247;
                v293 = 2112;
                v294 = v248;
                v295 = 2112;
                v296 = v249;
                _os_log_error_impl(&dword_2304B3000, v161, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v292, 0x20u);
              }

              v153 = *(*&buf[8] + 40);
            }

            *error = v153;

            _Block_object_dispose(v297, 8);
            v115 = 0;
            v149 = 0;
            goto LABEL_117;
          }

          v34 = dispatch_semaphore_create(0);
          *v301 = 0;
          *&v301[8] = v301;
          *&v301[16] = 0x3032000000;
          v302 = __Block_byref_object_copy__119;
          *&v303 = __Block_byref_object_dispose__119;
          *(&v303 + 1) = 0;
          learnedLocationManager2 = [(SMSuggestionsManager *)self learnedLocationManager];
          locationOfInterest3 = [suggestionCopy locationOfInterest];
          identifier2 = [locationOfInterest3 identifier];
          v278[0] = MEMORY[0x277D85DD0];
          v278[1] = 3221225472;
          v278[2] = __72__SMSuggestionsManager__showSuggestionsDetectionUIWithSuggestion_error___block_invoke_466;
          v278[3] = &unk_2788C4B58;
          v280 = v304;
          v281 = v301;
          v38 = v34;
          v279 = v38;
          [learnedLocationManager2 fetchLocationOfInterestWithIdentifier:identifier2 handler:v278];

          dsema = v38;
          v39 = [MEMORY[0x277CBEAA8] now];
          v40 = dispatch_time(0, 3600000000000);
          if (dispatch_semaphore_wait(dsema, v40))
          {
            v41 = [MEMORY[0x277CBEAA8] now];
            [v41 timeIntervalSinceDate:v39];
            v43 = v42;
            v44 = objc_opt_new();
            v45 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
            callStackSymbols3 = [MEMORY[0x277CCACC8] callStackSymbols];
            v47 = [callStackSymbols3 filteredArrayUsingPredicate:v45];
            firstObject4 = [v47 firstObject];

            [v44 submitToCoreAnalytics:firstObject4 type:1 duration:v43];
            v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
            {
              *v297 = 0;
              _os_log_fault_impl(&dword_2304B3000, v49, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", v297, 2u);
            }

            v50 = MEMORY[0x277CCA9B8];
            *v292 = *MEMORY[0x277CCA450];
            *v297 = @"semaphore wait timeout";
            v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v297 forKeys:v292 count:1];
            v100Location = [v50 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v51];

            if (v100Location)
            {
              v52 = v100Location;
            }
          }

          else
          {
            v100Location = 0;
          }

          v82 = v100Location;
          v83 = v82;
          if (error && v82)
          {
            v84 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              v202 = objc_opt_class();
              v203 = NSStringFromClass(v202);
              v204 = NSStringFromSelector(aSelector);
              *v297 = 138412802;
              *&v297[4] = v203;
              *&v297[12] = 2112;
              *&v297[14] = v204;
              *&v297[22] = 2112;
              v298 = v83;
              _os_log_error_impl(&dword_2304B3000, v84, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v297, 0x20u);
            }

            v85 = v83;
LABEL_60:
            *error = v85;

            _Block_object_dispose(v301, 8);
LABEL_75:
            v10 = 0;
LABEL_167:

            _Block_object_dispose(v304, 8);
            goto LABEL_168;
          }

          if (error && *(*&v301[8] + 40))
          {
            v86 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
            if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
            {
              v219 = objc_opt_class();
              v220 = NSStringFromClass(v219);
              v221 = NSStringFromSelector(aSelector);
              v222 = *(*&v301[8] + 40);
              *v297 = 138412802;
              *&v297[4] = v220;
              *&v297[12] = 2112;
              *&v297[14] = v221;
              *&v297[22] = 2112;
              v298 = v222;
              _os_log_error_impl(&dword_2304B3000, v86, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v297, 0x20u);
            }

            v85 = *(*&v301[8] + 40);
            goto LABEL_60;
          }

          _Block_object_dispose(v301, 8);
LABEL_77:

          goto LABEL_78;
        }

LABEL_29:
        v268 = 0;
        v263 = 1;
        goto LABEL_32;
      }

      goto LABEL_20;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = NSStringFromSelector(aSelector);
        *buf = 138412546;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = v25;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, %@, suggestion UI skipped, reason, neither iPhone nor watch platform", buf, 0x16u);
      }
    }

LABEL_20:
    v10 = 0;
    goto LABEL_169;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: suggestion", buf, 2u);
  }

  if (!error)
  {
    goto LABEL_20;
  }

  _RTErrorInvalidParameterCreate(@"suggestion");
  *error = v10 = 0;
LABEL_169:

  return v10;
}

void __72__SMSuggestionsManager__showSuggestionsDetectionUIWithSuggestion_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __72__SMSuggestionsManager__showSuggestionsDetectionUIWithSuggestion_error___block_invoke_466(uint64_t a1, void *a2, void *a3)
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

void __72__SMSuggestionsManager__showSuggestionsDetectionUIWithSuggestion_error___block_invoke_470(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __72__SMSuggestionsManager__showSuggestionsDetectionUIWithSuggestion_error___block_invoke_481(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(*(*(a1 + 40) + 8) + 40) localizedDescription];
      *buf = 138412290;
      v17 = v6;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Failed to post suggestion notifications: %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412546;
        v17 = v9;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, successfully posted notification", buf, 0x16u);
      }
    }

    v11 = *(a1 + 32);
    v12 = *(*(a1 + 40) + 8);
    obj = *(v12 + 40);
    v5 = [v11 _getValuesFromDefaultsIfExists:@"RTDefaultsSuggestionDisplayedCount" error:&obj];
    objc_storeStrong((v12 + 40), obj);
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject unsignedIntegerValue](v5, "unsignedIntegerValue") + 1}];
    v14 = [*(a1 + 32) defaultsManager];
    [v14 setObject:v13 forKey:@"RTDefaultsSuggestionDisplayedCount"];
  }
}

- (id)_getNotificationExpirationDateForSuggestion:(id)suggestion error:(id *)error
{
  v93[1] = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v77 = 0;
  v62 = [(SMSuggestionsManager *)self _getValuesFromDefaultsIfExists:@"RTDefaultsSuggestionNotificationExpirationTimeInterval" error:&v77];
  v7 = v77;
  v61 = v7;
  if (!v62 || v7)
  {
    v10 = 600.0;
    v58 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:600.0];
    if (!suggestionCopy)
    {
      v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: suggestion", buf, 2u);
      }

      if (error)
      {
        *error = _RTErrorInvalidParameterCreate(@"suggestion");
      }

      v9 = v58;
      goto LABEL_30;
    }

    errorCopy = error;
    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    v76 = 0;
    v67 = 0;
    v68 = &v67;
    v69 = 0x3032000000;
    v70 = __Block_byref_object_copy__119;
    v71 = __Block_byref_object_dispose__119;
    v72 = 0;
    v11 = dispatch_semaphore_create(0);
    v57 = dispatch_queue_create("SMSuggestionsManager-ETA-Queue", 0);
    v12 = objc_alloc(MEMORY[0x277CE41F8]);
    destinationLocation = [suggestionCopy destinationLocation];
    v14 = [v12 initWithRTLocation:destinationLocation];
    locationManager = [(SMSuggestionsManager *)self locationManager];
    defaultsManager = [(SMSuggestionsManager *)self defaultsManager];
    distanceCalculator = [(SMSuggestionsManager *)self distanceCalculator];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __74__SMSuggestionsManager__getNotificationExpirationDateForSuggestion_error___block_invoke;
    v63[3] = &unk_2788CE780;
    v65 = &v73;
    v66 = &v67;
    v18 = v11;
    v64 = v18;
    [SMTriggerDestination estimateEtaToDestination:v14 transportType:1 locationManager:locationManager defaultsManager:defaultsManager distanceCalculator:distanceCalculator queue:v57 handler:v63];

    dsema = v18;
    v19 = [MEMORY[0x277CBEAA8] now];
    v20 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v20))
    {
      v21 = [MEMORY[0x277CBEAA8] now];
      [v21 timeIntervalSinceDate:v19];
      v23 = v22;
      v24 = objc_opt_new();
      v25 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v27 = [callStackSymbols filteredArrayUsingPredicate:v25];
      firstObject = [v27 firstObject];

      [v24 submitToCoreAnalytics:firstObject type:1 duration:v23];
      v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v29, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
      }

      v30 = MEMORY[0x277CCA9B8];
      v93[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v93 count:1];
      v32 = [v30 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v31];

      if (v32)
      {
        v33 = v32;
      }
    }

    else
    {
      v32 = 0;
    }

    v35 = v32;
    v36 = v35;
    if (errorCopy && v35)
    {
      v37 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        v51 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v50;
        v79 = 2112;
        v80 = v51;
        v81 = 2112;
        v82 = v36;
        _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v38 = v36;
      *errorCopy = v36;
    }

    else
    {
      if (!errorCopy || !v68[5])
      {
        v42 = fmin(v74[3] * 0.25, 7200.0);
        if (v42 >= 600.0)
        {
          v10 = v42;
        }

        v40 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v10];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v43 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v44 = objc_opt_class();
            v45 = NSStringFromClass(v44);
            v46 = NSStringFromSelector(a2);
            v47 = *(v74 + 3);
            stringFromDate = [v40 stringFromDate];
            *buf = 138414082;
            *&buf[4] = v45;
            v79 = 2112;
            v80 = v46;
            v81 = 2048;
            v82 = v47;
            v83 = 2048;
            v84 = 0x3FD0000000000000;
            v85 = 2048;
            v86 = 0x4082C00000000000;
            v87 = 2048;
            v88 = 0x40AC200000000000;
            v89 = 2048;
            v90 = v10;
            v91 = 2112;
            v92 = stringFromDate;
            _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "%@, %@, eta to destination, %.3f, kSMSuggestionNotificationETAFactor, %.3f, kSMSuggestionNotificationExpirationTimeInterval, %.3f, kSMSuggestionTimeIntervalBuffer, %.3f, notificationExpirationTimeInterval, %.3f, notificationExpirationDate, %@", buf, 0x52u);
          }
        }

        goto LABEL_29;
      }

      v39 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        v54 = NSStringFromSelector(a2);
        v55 = v68[5];
        *buf = 138412802;
        *&buf[4] = v53;
        v79 = 2112;
        v80 = v54;
        v81 = 2112;
        v82 = v55;
        _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      *errorCopy = v68[5];
    }

    v40 = v58;
LABEL_29:
    v9 = v40;

    _Block_object_dispose(&v67, 8);
    _Block_object_dispose(&v73, 8);
LABEL_30:

    goto LABEL_31;
  }

  if (error)
  {
    *error = 0;
  }

  v8 = MEMORY[0x277CBEAA8];
  [v62 doubleValue];
  v9 = [v8 dateWithTimeIntervalSinceNow:?];
LABEL_31:

  return v9;
}

void __74__SMSuggestionsManager__getNotificationExpirationDateForSuggestion_error___block_invoke(uint64_t a1, int a2, int a3, id obj, double a5)
{
  *(*(*(a1 + 40) + 8) + 24) = a5;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v7 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (unint64_t)_suppressSuggestion:(id)suggestion context:(id)context error:(id *)error
{
  v314 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  contextCopy = context;
  if (!suggestionCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: suggestion", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"suggestion");
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_205;
  }

  if (![(SMSuggestionsManager *)self _shouldShowProactiveSuggestions])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v15;
        *&buf[12] = 2112;
        *&buf[14] = v16;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, user disabled proactive suggestions", buf, 0x16u);
      }
    }

    v11 = 7;
    goto LABEL_205;
  }

  if (!-[SMSuggestionsManager suggestionEnabledForUserType:](self, "suggestionEnabledForUserType:", [suggestionCopy suggestionUserType]))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = NSStringFromSelector(a2);
        *buf = 138543874;
        *&buf[4] = v19;
        *&buf[12] = 2114;
        *&buf[14] = v20;
        *&buf[22] = 2050;
        suggestionUserType = [suggestionCopy suggestionUserType];
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%{public}@, %{public}@, suggestionUserType, %{public}lu, suggestion disabled", buf, 0x20u);
      }
    }

    v11 = 13;
    goto LABEL_205;
  }

  v287 = 0;
  v288 = &v287;
  v289 = 0x3032000000;
  v290 = __Block_byref_object_copy__119;
  v291 = __Block_byref_object_dispose__119;
  v292 = 0;
  obj = 0;
  v260 = [(SMSuggestionsManager *)self _getCurrentDateFromContext:contextCopy error:&obj];
  objc_storeStrong(&v292, obj);
  if (error && v288[5])
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v105 = objc_opt_class();
      v106 = NSStringFromClass(v105);
      v107 = NSStringFromSelector(a2);
      v108 = v288[5];
      *buf = 138412802;
      *&buf[4] = v106;
      *&buf[12] = 2112;
      *&buf[14] = v107;
      *&buf[22] = 2112;
      suggestionUserType = v108;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v10 = v288[5];
LABEL_9:
    v11 = 0;
    *error = v10;
    goto LABEL_204;
  }

  platform = [(SMSuggestionsManager *)self platform];
  watchPlatform = [platform watchPlatform];

  if (watchPlatform && [suggestionCopy suggestionUserType] != 4 && -[SMSuggestionsManager _isEffectivePairedDeviceNearby](self, "_isEffectivePairedDeviceNearby"))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v25;
        *&buf[12] = 2112;
        *&buf[14] = v26;
        _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@, %@, watch has a nearby paired phone; suggestions on the watch should be supressed", buf, 0x16u);
      }
    }

    v11 = 11;
    goto LABEL_204;
  }

  buddy = [suggestionCopy buddy];

  if (buddy)
  {
    buddy2 = [suggestionCopy buddy];
    email = [buddy2 email];
    buddy3 = [suggestionCopy buddy];
    if (email)
    {
      [buddy3 email];
    }

    else
    {
      [buddy3 phoneNumber];
    }
    v254 = ;

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    suggestionUserType = __Block_byref_object_copy__119;
    *v301 = __Block_byref_object_dispose__119;
    *&v301[8] = 0;
    v31 = dispatch_semaphore_create(0);
    contactsManager = [(SMSuggestionsManager *)self contactsManager];
    v282[0] = MEMORY[0x277D85DD0];
    v282[1] = 3221225472;
    v282[2] = __58__SMSuggestionsManager__suppressSuggestion_context_error___block_invoke;
    v282[3] = &unk_2788C4490;
    v284 = buf;
    v285 = &v287;
    v33 = v31;
    v283 = v33;
    [contactsManager fetchContactsFromEmailOrPhoneNumberString:v254 handler:v282];

    dsema = v33;
    v34 = [MEMORY[0x277CBEAA8] now];
    v35 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v35))
    {
      v36 = [MEMORY[0x277CBEAA8] now];
      [v36 timeIntervalSinceDate:v34];
      v38 = v37;
      v39 = objc_opt_new();
      v40 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v42 = [callStackSymbols filteredArrayUsingPredicate:v40];
      firstObject = [v42 firstObject];

      [v39 submitToCoreAnalytics:firstObject type:1 duration:v38];
      v44 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        *v308 = 0;
        _os_log_fault_impl(&dword_2304B3000, v44, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", v308, 2u);
      }

      v45 = MEMORY[0x277CCA9B8];
      v293 = *MEMORY[0x277CCA450];
      *v308 = @"semaphore wait timeout";
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v308 forKeys:&v293 count:1];
      v47 = [v45 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v46];

      if (v47)
      {
        v48 = v47;
      }
    }

    else
    {
      v47 = 0;
    }

    v49 = v47;
    if (v49)
    {
      v50 = error != 0;
    }

    else
    {
      v50 = 0;
    }

    if (v50)
    {
      v51 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v130 = objc_opt_class();
        v131 = NSStringFromClass(v130);
        v132 = NSStringFromSelector(a2);
        *v308 = 138412802;
        *&v308[4] = v131;
        *&v308[12] = 2112;
        *&v308[14] = v132;
        *&v308[22] = 2112;
        v309 = v49;
        _os_log_error_impl(&dword_2304B3000, v51, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v308, 0x20u);
      }

      v52 = v49;
      v53 = 0;
      v11 = 0;
      *error = v49;
LABEL_66:

      _Block_object_dispose(buf, 8);
      if (!v53)
      {
        goto LABEL_204;
      }

      goto LABEL_67;
    }

    if (error && v288[5])
    {
      v54 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v169 = objc_opt_class();
        v170 = NSStringFromClass(v169);
        v171 = NSStringFromSelector(a2);
        v172 = v288[5];
        *v308 = 138412802;
        *&v308[4] = v170;
        *&v308[12] = 2112;
        *&v308[14] = v171;
        *&v308[22] = 2112;
        v309 = v172;
        _os_log_error_impl(&dword_2304B3000, v54, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v308, 0x20u);
      }

      v55 = v288[5];
    }

    else
    {
      if (!*(*&buf[8] + 40))
      {
        v53 = 0;
        v11 = 9;
        goto LABEL_66;
      }

      buddy4 = [suggestionCopy buddy];
      v57 = v288 + 5;
      v281 = v288[5];
      v58 = [SMSuggestionsHelper isContactBlocked:buddy4 error:&v281];
      objc_storeStrong(v57, v281);

      if (!error || !v288[5])
      {
        v53 = !v58;
        if (v58)
        {
          v11 = 10;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_66;
      }

      v59 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v192 = objc_opt_class();
        v193 = NSStringFromClass(v192);
        v194 = NSStringFromSelector(a2);
        v195 = v288[5];
        *v308 = 138412802;
        *&v308[4] = v193;
        *&v308[12] = 2112;
        *&v308[14] = v194;
        *&v308[22] = 2112;
        v309 = v195;
        _os_log_error_impl(&dword_2304B3000, v59, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v308, 0x20u);
      }

      v55 = v288[5];
    }

    v53 = 0;
    v11 = 0;
    *error = v55;
    goto LABEL_66;
  }

LABEL_67:
  if ([suggestionCopy suggestionTrigger] != 4)
  {
    distanceCalculator = [(SMSuggestionsManager *)self distanceCalculator];
    sourceLocation = [suggestionCopy sourceLocation];
    destinationLocation = [suggestionCopy destinationLocation];
    v81 = v288 + 5;
    v280 = v288[5];
    [distanceCalculator distanceFromLocation:sourceLocation toLocation:destinationLocation error:&v280];
    v83 = v82;
    objc_storeStrong(v81, v280);

    if (error && v288[5])
    {
      v84 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        v165 = objc_opt_class();
        v166 = NSStringFromClass(v165);
        v167 = NSStringFromSelector(a2);
        v168 = v288[5];
        *buf = 138412802;
        *&buf[4] = v166;
        *&buf[12] = 2112;
        *&buf[14] = v167;
        *&buf[22] = 2112;
        suggestionUserType = v168;
        _os_log_error_impl(&dword_2304B3000, v84, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v10 = v288[5];
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v85 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
      {
        v86 = objc_opt_class();
        v87 = NSStringFromClass(v86);
        v88 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v87;
        *&buf[12] = 2112;
        *&buf[14] = v88;
        *&buf[22] = 2048;
        suggestionUserType = *&v83;
        _os_log_impl(&dword_2304B3000, v85, OS_LOG_TYPE_INFO, "%@, %@, distance between source and destination locations, %.5f", buf, 0x20u);
      }
    }

    if (v83 == 1.79769313e308)
    {
      v11 = 0;
      goto LABEL_204;
    }

    if (v83 < 1000.0)
    {
      v11 = 8;
      goto LABEL_204;
    }
  }

  v255 = [MEMORY[0x277D4AC18] getEnumerationOptionsForLatestSuggestionSortedByCreationDateIncludeSuppressed:0 filteredToSuggestionTriggers:0 filteredToSuggestionUserTypes:0 filteredToSessionTypes:0];
  *v308 = 0;
  *&v308[8] = v308;
  *&v308[16] = 0x3032000000;
  v309 = __Block_byref_object_copy__119;
  v310 = __Block_byref_object_dispose__119;
  v311 = 0;
  v60 = dispatch_semaphore_create(0);
  suggestionsStore = [(SMSuggestionsManager *)self suggestionsStore];
  v276[0] = MEMORY[0x277D85DD0];
  v276[1] = 3221225472;
  v276[2] = __58__SMSuggestionsManager__suppressSuggestion_context_error___block_invoke_492;
  v276[3] = &unk_2788C4490;
  v278 = v308;
  v279 = &v287;
  v62 = v60;
  v277 = v62;
  [suggestionsStore fetchSuggestionsWithOptions:v255 handler:v276];

  dsemaa = v62;
  v63 = [MEMORY[0x277CBEAA8] now];
  v64 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsemaa, v64))
  {
    v65 = [MEMORY[0x277CBEAA8] now];
    [v65 timeIntervalSinceDate:v63];
    v67 = v66;
    v68 = objc_opt_new();
    v69 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
    callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
    v71 = [callStackSymbols2 filteredArrayUsingPredicate:v69];
    firstObject2 = [v71 firstObject];

    [v68 submitToCoreAnalytics:firstObject2 type:1 duration:v67];
    v73 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v73, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
    }

    v74 = MEMORY[0x277CCA9B8];
    v293 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v293 count:1];
    v76 = [v74 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v75];

    if (v76)
    {
      v77 = v76;
    }
  }

  else
  {
    v76 = 0;
  }

  v89 = v76;
  if (v89)
  {
    v90 = error != 0;
  }

  else
  {
    v90 = 0;
  }

  if (v90)
  {
    v91 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      v133 = objc_opt_class();
      v134 = NSStringFromClass(v133);
      v135 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v134;
      *&buf[12] = 2112;
      *&buf[14] = v135;
      *&buf[22] = 2112;
      suggestionUserType = v89;
      _os_log_error_impl(&dword_2304B3000, v91, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v92 = v89;
    v11 = 0;
    *error = v89;
    goto LABEL_203;
  }

  if (error && v288[5])
  {
    v93 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      v188 = objc_opt_class();
      v189 = NSStringFromClass(v188);
      v190 = NSStringFromSelector(a2);
      v191 = v288[5];
      *buf = 138412802;
      *&buf[4] = v189;
      *&buf[12] = 2112;
      *&buf[14] = v190;
      *&buf[22] = 2112;
      suggestionUserType = v191;
      _os_log_error_impl(&dword_2304B3000, v93, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v11 = 0;
    *error = v288[5];
    goto LABEL_203;
  }

  creationDate = [suggestionCopy creationDate];
  [creationDate timeIntervalSinceDate:*(*&v308[8] + 40)];
  v96 = v95;

  v97 = v96;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v98 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
    {
      v99 = objc_opt_class();
      v100 = NSStringFromClass(v99);
      v101 = NSStringFromSelector(a2);
      suggestionUserType2 = [suggestionCopy suggestionUserType];
      stringFromDate = [*(*&v308[8] + 40) stringFromDate];
      *buf = 138414082;
      *&buf[4] = v100;
      *&buf[12] = 2112;
      *&buf[14] = v101;
      *&buf[22] = 2048;
      suggestionUserType = suggestionUserType2;
      *v301 = 2112;
      *&v301[2] = stringFromDate;
      *&v301[10] = 2048;
      *&v301[12] = v96;
      v302 = 2048;
      v303 = 0x40AC200000000000;
      v304 = 2048;
      v305 = 0x4105180000000000;
      v306 = 2048;
      v307 = 0x4122750000000000;
      _os_log_impl(&dword_2304B3000, v98, OS_LOG_TYPE_INFO, "%@, %@, suggestionUserType, %lu, last suggestion date, %@, hours since last suggestion shown, %lu, kSMSuggestionMinimimTimeIntervalSinceLastSuggestion, %.3f, kSMSuggestionOccasionalUserMinimimTimeIntervalSinceLastSuggestion, %.3f, kSMSuggestionFirstTimeUserSuppressionMinimumGap, %.3f", buf, 0x52u);
    }
  }

  if (!*(*&v308[8] + 40))
  {
    goto LABEL_115;
  }

  suggestionUserType3 = [suggestionCopy suggestionUserType];
  if (suggestionUserType3 > 2)
  {
    if (suggestionUserType3 != 4)
    {
      if (suggestionUserType3 == 3 && v97 < 0x93A80)
      {
        v11 = 5;
        goto LABEL_203;
      }

      goto LABEL_115;
    }
  }

  else if (suggestionUserType3 >= 2)
  {
    if (suggestionUserType3 != 2 || v97 >> 8 >= 0x2A3)
    {
      goto LABEL_115;
    }

LABEL_114:
    v11 = 3;
    goto LABEL_203;
  }

  if (v97 < 0xE10)
  {
    goto LABEL_114;
  }

LABEL_115:
  v109 = v288 + 5;
  v275 = v288[5];
  v110 = [(SMSuggestionsManager *)self _isUserInActiveSessionWithError:&v275];
  objc_storeStrong(v109, v275);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v111 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
    {
      v112 = objc_opt_class();
      v113 = NSStringFromClass(v112);
      v114 = NSStringFromSelector(a2);
      v115 = v114;
      v116 = @"NO";
      *buf = 138412802;
      *&buf[4] = v113;
      *&buf[12] = 2112;
      if (v110)
      {
        v116 = @"YES";
      }

      *&buf[14] = v114;
      *&buf[22] = 2112;
      suggestionUserType = v116;
      _os_log_impl(&dword_2304B3000, v111, OS_LOG_TYPE_INFO, "%@, %@, isUserInActiveSession, %@", buf, 0x20u);
    }
  }

  if (v110)
  {
    v11 = 2;
    goto LABEL_203;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v117 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
    {
      v118 = objc_opt_class();
      v119 = NSStringFromClass(v118);
      v120 = NSStringFromSelector(a2);
      v121 = [MEMORY[0x277D4AC10] stringFromSMSuggestionUserType:{objc_msgSend(suggestionCopy, "suggestionUserType")}];
      *buf = 138412802;
      *&buf[4] = v119;
      *&buf[12] = 2112;
      *&buf[14] = v120;
      *&buf[22] = 2112;
      suggestionUserType = v121;
      _os_log_impl(&dword_2304B3000, v117, OS_LOG_TYPE_INFO, "%@, %@, suggestion user type, %@,", buf, 0x20u);
    }
  }

  if ([suggestionCopy suggestionTrigger] == 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v122 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
      {
        v123 = objc_opt_class();
        v124 = NSStringFromClass(v123);
        v125 = NSStringFromSelector(a2);
        v126 = [MEMORY[0x277D4AC10] stringFromSMSuggestionTrigger:{objc_msgSend(suggestionCopy, "suggestionTrigger")}];
        *buf = 138412802;
        *&buf[4] = v124;
        *&buf[12] = 2112;
        *&buf[14] = v125;
        *&buf[22] = 2112;
        suggestionUserType = v126;
        _os_log_impl(&dword_2304B3000, v122, OS_LOG_TYPE_INFO, "%@, %@, suggestion.suggestionTrigger, %@, suprressed for notification output", buf, 0x20u);
      }
    }

    v11 = 12;
    goto LABEL_203;
  }

  if ([suggestionCopy suggestionUserType] != 1 && objc_msgSend(suggestionCopy, "suggestionUserType") != 2)
  {
    if ([suggestionCopy suggestionUserType] == 3)
    {
      v173 = v288 + 5;
      v263 = v288[5];
      v174 = [(SMSuggestionsManager *)self _getValuesFromDefaultsIfExists:@"RTDefaultsSuggestionDisplayedCount" error:&v263];
      objc_storeStrong(v173, v263);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v175 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v175, OS_LOG_TYPE_INFO))
        {
          v176 = objc_opt_class();
          v177 = NSStringFromClass(v176);
          v178 = NSStringFromSelector(a2);
          unsignedIntegerValue = [v174 unsignedIntegerValue];
          *buf = 138412802;
          *&buf[4] = v177;
          *&buf[12] = 2112;
          *&buf[14] = v178;
          *&buf[22] = 2048;
          suggestionUserType = unsignedIntegerValue;
          _os_log_impl(&dword_2304B3000, v175, OS_LOG_TYPE_INFO, "%@, %@, fetched displayed suggestion count, %lu", buf, 0x20u);
        }
      }

      if ([v174 unsignedIntegerValue] <= 2)
      {
        v11 = 1;
      }

      else
      {
        v11 = 6;
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_203;
  }

  suggestionUserType4 = [suggestionCopy suggestionUserType];
  v128 = v288 + 5;
  if (suggestionUserType4 == 1)
  {
    v274 = v288[5];
    v129 = &v274;
    v253 = [(SMSuggestionsManager *)self _getValuesFromDefaultsIfExists:@"RTDefaultsSuggestionRegularUserSuppressionSessionConfigurationCount" error:&v274];
  }

  else
  {
    v273 = v288[5];
    v129 = &v273;
    v253 = [(SMSuggestionsManager *)self _getValuesFromDefaultsIfExists:@"RTDefaultsSuggestionOccasionalUserSuppressionSessionConfigurationCount" error:&v273];
  }

  objc_storeStrong(v128, *v129);
  v136 = objc_alloc(MEMORY[0x277D4AC18]);
  unsignedIntValue = [v253 unsignedIntValue];
  v138 = objc_alloc(MEMORY[0x277CCA970]);
  v139 = [v260 dateByAddingTimeInterval:-604800.0];
  v140 = [v138 initWithStartDate:v139 duration:604800.0];
  v246 = *MEMORY[0x277D4AF10];
  v249 = [v136 initWithBatchSize:*MEMORY[0x277D4AF10] fetchLimit:unsignedIntValue offset:*MEMORY[0x277D4AF10] includeSuppressed:0 sortByCreationDate:1 ascending:0 dateInterval:v140 filteredToSuggestionTriggers:0 filteredToSuggestionUserTypes:0 filteredToSessionTypes:0];

  v141 = *(*&v308[8] + 40);
  *(*&v308[8] + 40) = 0;

  v293 = 0;
  v294 = &v293;
  v295 = 0x3032000000;
  v296 = __Block_byref_object_copy__119;
  v297 = __Block_byref_object_dispose__119;
  v298 = 0;
  v142 = dispatch_semaphore_create(0);

  suggestionsStore2 = [(SMSuggestionsManager *)self suggestionsStore];
  v269[0] = MEMORY[0x277D85DD0];
  v269[1] = 3221225472;
  v269[2] = __58__SMSuggestionsManager__suppressSuggestion_context_error___block_invoke_499;
  v269[3] = &unk_2788C4490;
  v271 = &v293;
  v272 = &v287;
  v144 = v142;
  v270 = v144;
  [suggestionsStore2 fetchSuggestionsWithOptions:v249 handler:v269];

  dsemaa = v144;
  v145 = [MEMORY[0x277CBEAA8] now];
  v146 = dispatch_time(0, 3600000000000);
  v147 = v89;
  if (dispatch_semaphore_wait(dsemaa, v146))
  {
    v256 = [MEMORY[0x277CBEAA8] now];
    [v256 timeIntervalSinceDate:v145];
    v149 = v148;
    v150 = objc_opt_new();
    v151 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
    callStackSymbols3 = [MEMORY[0x277CCACC8] callStackSymbols];
    v153 = [callStackSymbols3 filteredArrayUsingPredicate:v151];
    firstObject3 = [v153 firstObject];

    [v150 submitToCoreAnalytics:firstObject3 type:1 duration:v149];
    v155 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v155, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v155, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
    }

    v156 = MEMORY[0x277CCA9B8];
    *v313 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v157 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v313 count:1];
    v158 = [v156 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v157];

    v147 = v89;
    if (v158)
    {
      v159 = v158;

      v147 = v158;
    }
  }

  v251 = v147;
  if (v251)
  {
    v160 = error != 0;
  }

  else
  {
    v160 = 0;
  }

  if (v160)
  {
    v161 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
    {
      v231 = objc_opt_class();
      v232 = NSStringFromClass(v231);
      v233 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v232;
      *&buf[12] = 2112;
      *&buf[14] = v233;
      *&buf[22] = 2112;
      suggestionUserType = v251;
      _os_log_error_impl(&dword_2304B3000, v161, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v162 = v251;
    v11 = 0;
    *error = v251;
    goto LABEL_202;
  }

  if (error && v288[5])
  {
    v163 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
    {
      v234 = objc_opt_class();
      v235 = NSStringFromClass(v234);
      v236 = NSStringFromSelector(a2);
      v237 = v288[5];
      *buf = 138412802;
      *&buf[4] = v235;
      *&buf[12] = 2112;
      *&buf[14] = v236;
      *&buf[22] = 2112;
      suggestionUserType = v237;
      _os_log_error_impl(&dword_2304B3000, v163, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v164 = v288[5];
    goto LABEL_192;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v180 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
    {
      v181 = objc_opt_class();
      v182 = NSStringFromClass(v181);
      v183 = NSStringFromSelector(a2);
      v184 = [v294[5] count];
      v185 = [MEMORY[0x277D4AC10] stringFromSMSuggestionUserType:{objc_msgSend(suggestionCopy, "suggestionUserType")}];
      unsignedIntValue2 = [v253 unsignedIntValue];
      *buf = 138413314;
      *&buf[4] = v182;
      *&buf[12] = 2112;
      *&buf[14] = v183;
      *&buf[22] = 2048;
      suggestionUserType = v184;
      *v301 = 2112;
      *&v301[2] = v185;
      *&v301[10] = 2048;
      *&v301[12] = unsignedIntValue2;
      _os_log_impl(&dword_2304B3000, v180, OS_LOG_TYPE_INFO, "%@, %@, previous suggestion count, %lu, suggestion user type, %@, suggestionUserSuppressionSessionConfigurationCount, %lu", buf, 0x34u);
    }
  }

  v187 = [v294[5] count];
  if (v187 < [v253 unsignedIntValue])
  {
    v11 = 1;
    goto LABEL_202;
  }

  v196 = 0;
  v243 = 1;
  v244 = *MEMORY[0x277D01448];
  v245 = *MEMORY[0x277CCA450];
  do
  {
    if (v196 >= [v253 unsignedIntValue])
    {
      break;
    }

    v257 = v196;
    if ([v294[5] count] <= v196)
    {
      break;
    }

    context = objc_autoreleasePoolPush();
    v197 = dispatch_semaphore_create(0);
    v198 = objc_alloc(MEMORY[0x277D4AB80]);
    v199 = objc_alloc(MEMORY[0x277CCA970]);
    v200 = [v294[5] objectAtIndexedSubscript:v196];
    creationDate2 = [v200 creationDate];
    v202 = [v199 initWithStartDate:creationDate2 duration:7200.0];
    LOBYTE(v242) = 0;
    v252 = [v198 initWithBatchSize:v246 fetchLimit:1 sortBySessionStartDate:1 ascending:1 sessionTypes:&unk_2845A1448 timeInADayInterval:0 pickOneConfigInTimeInADayInterval:v242 dateInterval:v202 startBoundingBoxLocation:0 destinationBoundingBoxLocation:0 boundingBoxRadius:0 sessionIdentifier:0];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    suggestionUserType = __Block_byref_object_copy__119;
    *v301 = __Block_byref_object_dispose__119;
    *&v301[8] = 0;
    sessionStore = [(SMSuggestionsManager *)self sessionStore];
    v265[0] = MEMORY[0x277D85DD0];
    v265[1] = 3221225472;
    v265[2] = __58__SMSuggestionsManager__suppressSuggestion_context_error___block_invoke_503;
    v265[3] = &unk_2788C4490;
    v267 = buf;
    v268 = &v287;
    v204 = v197;
    v266 = v204;
    [sessionStore fetchSessionConfigurationsWithOptions:v252 handler:v265];

    v205 = v204;
    v206 = [MEMORY[0x277CBEAA8] now];
    v207 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v205, v207))
    {
      v248 = [MEMORY[0x277CBEAA8] now];
      [v248 timeIntervalSinceDate:v206];
      v209 = v208;
      v247 = objc_opt_new();
      v210 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
      callStackSymbols4 = [MEMORY[0x277CCACC8] callStackSymbols];
      v212 = [callStackSymbols4 filteredArrayUsingPredicate:v210];
      firstObject4 = [v212 firstObject];

      [v247 submitToCoreAnalytics:firstObject4 type:1 duration:v209];
      v214 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v214, OS_LOG_TYPE_FAULT))
      {
        *v313 = 0;
        _os_log_fault_impl(&dword_2304B3000, v214, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", v313, 2u);
      }

      v215 = MEMORY[0x277CCA9B8];
      v312 = v245;
      *v313 = @"semaphore wait timeout";
      v216 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v313 forKeys:&v312 count:1];
      v217 = [v215 errorWithDomain:v244 code:15 userInfo:v216];

      if (v217)
      {
        v218 = v217;
      }
    }

    else
    {
      v217 = 0;
    }

    v219 = v217;
    v220 = v288;
    if (v219)
    {
      objc_storeStrong(v288 + 5, v217);
    }

    else if (!v288[5])
    {
      v222 = *(*&buf[8] + 40);
      v264 = 0;
      v243 = [(SMSuggestionsManager *)self _isSessionConfigurationSimilarToTheSuggestion:suggestionCopy sessionConfiguration:v222 error:&v264];
      objc_storeStrong(v220 + 5, v264);
      v221 = v288[5] == 0 && !v243;
      goto LABEL_184;
    }

    v221 = 0;
LABEL_184:

    _Block_object_dispose(buf, 8);
    objc_autoreleasePoolPop(context);
    v196 = v257 + 1;
  }

  while (v221);
  if (error && v288[5])
  {
    v223 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
    {
      v238 = objc_opt_class();
      v239 = NSStringFromClass(v238);
      v240 = NSStringFromSelector(a2);
      v241 = v288[5];
      *buf = 138412802;
      *&buf[4] = v239;
      *&buf[12] = 2112;
      *&buf[14] = v240;
      *&buf[22] = 2112;
      suggestionUserType = v241;
      _os_log_error_impl(&dword_2304B3000, v223, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v164 = v288[5];
LABEL_192:
    v11 = 0;
    *error = v164;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v224 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
      {
        v225 = objc_opt_class();
        v226 = NSStringFromClass(v225);
        v227 = NSStringFromSelector(a2);
        v228 = v227;
        v229 = @"NO";
        *buf = 138412802;
        *&buf[4] = v226;
        *&buf[12] = 2112;
        if (v243)
        {
          v229 = @"YES";
        }

        *&buf[14] = v227;
        *&buf[22] = 2112;
        suggestionUserType = v229;
        _os_log_impl(&dword_2304B3000, v224, OS_LOG_TYPE_INFO, "%@, %@, atleast one previous suggestions is used, %@, ", buf, 0x20u);
      }
    }

    if (v243)
    {
      v11 = 1;
    }

    else
    {
      v11 = 4;
    }
  }

LABEL_202:

  _Block_object_dispose(&v293, 8);
  v89 = v251;
  v255 = v249;
LABEL_203:

  _Block_object_dispose(v308, 8);
LABEL_204:

  _Block_object_dispose(&v287, 8);
LABEL_205:

  return v11;
}

void __58__SMSuggestionsManager__suppressSuggestion_context_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __58__SMSuggestionsManager__suppressSuggestion_context_error___block_invoke_492(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = [v6 creationDate];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __58__SMSuggestionsManager__suppressSuggestion_context_error___block_invoke_499(uint64_t a1, void *a2, void *a3)
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

void __58__SMSuggestionsManager__suppressSuggestion_context_error___block_invoke_503(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_isSessionConfigurationSimilarToTheSuggestion:(id)suggestion sessionConfiguration:(id)configuration error:(id *)error
{
  v92 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  configurationCopy = configuration;
  v11 = configurationCopy;
  if (!suggestionCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v43 = "Invalid parameter not satisfying: suggestion";
LABEL_18:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v43, buf, 2u);
    goto LABEL_43;
  }

  if (!configurationCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    v43 = "Invalid parameter not satisfying: sessionConfiguration";
    goto LABEL_18;
  }

  distanceCalculator = [(SMSuggestionsManager *)self distanceCalculator];
  destinationLocation = [suggestionCopy destinationLocation];
  destination = [v11 destination];
  location = [destination location];
  v79 = 0;
  [distanceCalculator distanceFromLocation:destinationLocation toLocation:location error:&v79];
  v17 = v16;
  v18 = v79;

  if (v18 || v17 == 1.79769313e308)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v44 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        v47 = NSStringFromSelector(a2);
        errorCopy = error;
        if (v17 == 1.79769313e308)
        {
          v48 = @"DBL_MAX";
        }

        else
        {
          v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&v17];
        }

        destinationLocation2 = [suggestionCopy destinationLocation];
        destination2 = [v11 destination];
        location2 = [destination2 location];
        *buf = 138413571;
        v81 = v46;
        v82 = 2112;
        v83 = v47;
        v84 = 2112;
        v85 = *&v48;
        v86 = 2117;
        v87 = destinationLocation2;
        v88 = 2117;
        v89 = location2;
        v90 = 2112;
        v91 = v18;
        _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, "%@, %@, distance, %@, suggestion.destinationLocation, %{sensitive}@, sessionConfiguration.destination.location, %{sensitive}@, error, %@", buf, 0x3Eu);

        if (v17 != 1.79769313e308)
        {
        }

        error = errorCopy;
      }
    }

    if (error)
    {
      v60 = v18;
      v42 = 0;
      *error = v18;
      goto LABEL_44;
    }

LABEL_43:
    v42 = 0;
    goto LABEL_44;
  }

  aSelector = a2;
  v19 = MEMORY[0x277D1A968];
  buddy = [suggestionCopy buddy];
  phoneNumber = [buddy phoneNumber];
  v22 = [v19 validateAndCleanupID:phoneNumber];
  v23 = MEMORY[0x277D1A968];
  conversation = [v11 conversation];
  receiverHandles = [conversation receiverHandles];
  firstObject = [receiverHandles firstObject];
  primaryHandle = [firstObject primaryHandle];
  v25 = [v23 validateAndCleanupID:primaryHandle];
  v74 = @"YES";
  if (([v22 isEqualToString:v25] & 1) == 0)
  {
    v70 = buddy;
    v26 = MEMORY[0x277D1A968];
    buddy2 = [suggestionCopy buddy];
    email = [buddy2 email];
    [v26 validateAndCleanupID:email];
    v27 = v65 = self;
    v69 = phoneNumber;
    v28 = MEMORY[0x277D1A968];
    [v11 conversation];
    v29 = v68 = v22;
    receiverHandles2 = [v29 receiverHandles];
    [receiverHandles2 firstObject];
    v31 = v72 = error;
    primaryHandle2 = [v31 primaryHandle];
    v33 = [v28 validateAndCleanupID:primaryHandle2];
    v34 = [v27 isEqualToString:v33];
    v35 = @"NO";
    if (v34)
    {
      v35 = @"YES";
    }

    v74 = v35;

    phoneNumber = v69;
    error = v72;

    buddy = v70;
    v22 = v68;

    self = v65;
  }

  sessionType = [suggestionCopy sessionType];
  sessionType2 = [v11 sessionType];
  v78 = 0;
  v38 = [(SMSuggestionsManager *)self _getValuesFromDefaultsIfExists:@"RTDefaultsSuggestionDestinationSimilarityRadiusToSessionConfiguration" error:&v78];
  v39 = v78;
  v18 = v39;
  if (error && v39)
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      v64 = NSStringFromSelector(aSelector);
      *buf = 138412802;
      v81 = v63;
      v82 = 2112;
      v83 = v64;
      v84 = 2112;
      v85 = *&v18;
      _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v41 = v18;
    v42 = 0;
    *error = v18;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v49 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        v52 = NSStringFromSelector(aSelector);
        [v38 doubleValue];
        *buf = 138413570;
        v54 = @"NO";
        v81 = v51;
        if (sessionType == sessionType2)
        {
          v54 = @"YES";
        }

        v82 = 2112;
        v83 = v52;
        v84 = 2048;
        v85 = v17;
        v86 = 2048;
        v87 = v53;
        v88 = 2112;
        v89 = v74;
        v90 = 2112;
        v91 = v54;
        _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "%@, %@, distance between destinations, %.3f, threshold, %.3f, are buddies equal, %@, are session types equal, %@", buf, 0x3Eu);
      }
    }

    [v38 doubleValue];
    v42 = v17 <= v55 && sessionType == sessionType2;
  }

LABEL_44:
  return v42;
}

- (BOOL)_isEffectivePairedDeviceNearby
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      messagingService = [(SMSuggestionsManager *)self messagingService];
      effectivePairedDevice = [messagingService effectivePairedDevice];
      v14 = 138412802;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 1024;
      isNearby = [effectivePairedDevice isNearby];
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@, %@, self.messagingService.effectivePairedDevice.nearby %d", &v14, 0x1Cu);
    }
  }

  messagingService2 = [(SMSuggestionsManager *)self messagingService];
  effectivePairedDevice2 = [messagingService2 effectivePairedDevice];
  isNearby2 = [effectivePairedDevice2 isNearby];

  return isNearby2;
}

- (void)fetchSuggestedSessionConfigurationWithHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    v10 = 0;
    v5 = [(SMSuggestionsManager *)self isZelkovaSuggestionsFeatureEnabledWithError:&v10];
    v6 = v10;
    if (v5)
    {
      queue = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__SMSuggestionsManager_fetchSuggestedSessionConfigurationWithHandler___block_invoke;
      block[3] = &unk_2788C4938;
      block[4] = self;
      v9 = handlerCopy;
      dispatch_async(queue, block);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v6);
    }
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[SMSuggestionsManager fetchSuggestedSessionConfigurationWithHandler:]";
      v13 = 1024;
      v14 = 2916;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)_fetchSuggestedSessionConfigurationWithHandler:(id)handler
{
  v195[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    v173 = 0;
    v174 = &v173;
    v175 = 0x3032000000;
    v176 = __Block_byref_object_copy__119;
    v177 = __Block_byref_object_dispose__119;
    v178 = 0;
    obj = 0;
    [(SMSuggestionsManager *)self _refreshCurrentLocationWithError:&obj];
    objc_storeStrong(&v178, obj);
    v6 = (v174 + 5);
    if (v174[5])
    {
      handlerCopy[2](handlerCopy, 0);
      firstObject = 0;
LABEL_53:
      _Block_object_dispose(&v173, 8);

      goto LABEL_54;
    }

    v171 = 0;
    v8 = [(SMSuggestionsManager *)self _getValuesFromDefaultsIfExists:@"RTDefaultsSuggestionTimeIntervalBuffer" error:&v171];
    objc_storeStrong(v6, v171);
    if (v174[5])
    {
      handlerCopy[2](handlerCopy, 0);
      firstObject = 0;
LABEL_52:

      goto LABEL_53;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(a2);
        [v8 doubleValue];
        *buf = 138412802;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        *&buf[22] = 2048;
        v193 = v13;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, using time interval buffer, %.3f", buf, 0x20u);
      }
    }

    date = [MEMORY[0x277CBEAA8] date];
    [v8 doubleValue];
    v145 = [date dateByAddingTimeInterval:-v14];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(a2);
        stringFromDate = [v145 stringFromDate];
        [v8 doubleValue];
        v21 = v20;
        latestLocationOfTheDevice = [(SMSuggestionsManager *)self latestLocationOfTheDevice];
        *buf = 138413315;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v18;
        *&buf[22] = 2112;
        v193 = stringFromDate;
        *v194 = 2048;
        *&v194[2] = v21 + v21;
        *&v194[10] = 2117;
        *&v194[12] = latestLocationOfTheDevice;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, %@, fetching config from last session around currentDateMinusBufferTime, %@, timeIntervalWindow, %.3f, location, %{sensitive}@", buf, 0x34u);
      }
    }

    v23 = (v174 + 5);
    v170 = v174[5];
    v24 = [(SMSuggestionsManager *)self _getValuesFromDefaultsIfExists:@"RTDefaultsSuggestionBoundingBoxRadius" error:&v170];
    objc_storeStrong(v23, v170);
    if (v174[5])
    {
      handlerCopy[2](handlerCopy, 0);
      firstObject = 0;
LABEL_51:

      goto LABEL_52;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = NSStringFromSelector(a2);
        [v24 doubleValue];
        *buf = 138412802;
        *&buf[4] = v27;
        *&buf[12] = 2112;
        *&buf[14] = v28;
        *&buf[22] = 2048;
        v193 = v29;
        _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, %@, using bounding box radius, %.3f", buf, 0x20u);
      }
    }

    v30 = objc_alloc(MEMORY[0x277D4AB80]);
    v31 = objc_alloc(MEMORY[0x277CCA970]);
    [v8 doubleValue];
    v33 = [v31 initWithStartDate:v145 duration:v32 + v32];
    v34 = objc_alloc(MEMORY[0x277CE41F8]);
    latestLocationOfTheDevice2 = [(SMSuggestionsManager *)self latestLocationOfTheDevice];
    v36 = [v34 initWithRTLocation:latestLocationOfTheDevice2];
    LOBYTE(v127) = 1;
    v144 = [v30 initWithBatchSize:*MEMORY[0x277D4AF00] fetchLimit:1 sortBySessionStartDate:1 ascending:0 sessionTypes:0 timeInADayInterval:v33 pickOneConfigInTimeInADayInterval:v127 dateInterval:0 startBoundingBoxLocation:v36 destinationBoundingBoxLocation:0 boundingBoxRadius:v24 sessionIdentifier:0];

    v37 = (v174 + 5);
    v169 = v174[5];
    v143 = [(SMSuggestionsManager *)self _getSessionConfigurationsWithOptions:v144 error:&v169];
    objc_storeStrong(v37, v169);
    if (v174[5])
    {
      handlerCopy[2](handlerCopy, 0);
      firstObject = 0;
LABEL_50:

      goto LABEL_51;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v38 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v41 = NSStringFromSelector(a2);
        v42 = [v143 count];
        *buf = 138412802;
        *&buf[4] = v40;
        *&buf[12] = 2112;
        *&buf[14] = v41;
        *&buf[22] = 2048;
        v193 = v42;
        _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, %@, configs count, %lu", buf, 0x20u);
      }
    }

    if ([v143 count])
    {
      firstObject = [v143 firstObject];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v43 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          v46 = NSStringFromSelector(a2);
          *buf = 138412802;
          *&buf[4] = v45;
          *&buf[12] = 2112;
          *&buf[14] = v46;
          *&buf[22] = 2112;
          v193 = firstObject;
          _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "%@, %@, suggested config, %@", buf, 0x20u);
        }
      }

      (handlerCopy[2])(handlerCopy, firstObject, 0);
      goto LABEL_50;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v47 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        v50 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v49;
        *&buf[12] = 2112;
        *&buf[14] = v50;
        _os_log_impl(&dword_2304B3000, v47, OS_LOG_TYPE_INFO, "%@, %@, since configs are zero, trying to fetch likely handles and destinations", buf, 0x16u);
      }
    }

    v51 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v193 = __Block_byref_object_copy__119;
    *v194 = __Block_byref_object_dispose__119;
    *&v194[8] = 0;
    v163 = 0;
    v164 = &v163;
    v165 = 0x3032000000;
    v166 = __Block_byref_object_copy__119;
    v167 = __Block_byref_object_dispose__119;
    v168 = 0;
    v162[0] = 0;
    v162[1] = v162;
    v162[2] = 0x2020000000;
    v162[3] = 0;
    suggestionsHelper = [(SMSuggestionsManager *)self suggestionsHelper];
    v156[0] = MEMORY[0x277D85DD0];
    v156[1] = 3221225472;
    v156[2] = __71__SMSuggestionsManager__fetchSuggestedSessionConfigurationWithHandler___block_invoke;
    v156[3] = &unk_2788CE7A8;
    v158 = buf;
    v159 = v162;
    v160 = &v163;
    v161 = &v173;
    v53 = v51;
    v157 = v53;
    [suggestionsHelper fetchMostLikelySessionDestinationsWithHandler:v156];

    dsema = v53;
    v54 = [MEMORY[0x277CBEAA8] now];
    v55 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v55))
    {
      v138 = [MEMORY[0x277CBEAA8] now];
      [v138 timeIntervalSinceDate:v54];
      v57 = v56;
      v131 = objc_opt_new();
      v134 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v59 = [callStackSymbols filteredArrayUsingPredicate:v134];
      firstObject2 = [v59 firstObject];

      [v131 submitToCoreAnalytics:firstObject2 type:1 duration:v57];
      v61 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
      {
        *v188 = 0;
        _os_log_fault_impl(&dword_2304B3000, v61, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", v188, 2u);
      }

      v62 = MEMORY[0x277CCA9B8];
      *v180 = *MEMORY[0x277CCA450];
      *v188 = @"semaphore wait timeout";
      v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v188 forKeys:v180 count:1];
      v64 = [v62 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v63];

      if (v64)
      {
        v65 = v64;
      }
    }

    else
    {
      v64 = 0;
    }

    v66 = v64;
    if (v66)
    {
      v67 = v66;
      (handlerCopy[2])(handlerCopy, 0, v66);
LABEL_48:
      firstObject = 0;
LABEL_49:

      _Block_object_dispose(v162, 8);
      _Block_object_dispose(&v163, 8);

      _Block_object_dispose(buf, 8);
      goto LABEL_50;
    }

    if (v174[5])
    {
      handlerCopy[2](handlerCopy, 0);
      v67 = 0;
      goto LABEL_48;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v68 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        v69 = objc_opt_class();
        v70 = NSStringFromClass(v69);
        v71 = NSStringFromSelector(a2);
        v72 = [v164[5] count];
        *v188 = 138412802;
        *&v188[4] = v70;
        *&v188[12] = 2112;
        *&v188[14] = v71;
        *&v188[22] = 2048;
        v189 = v72;
        _os_log_impl(&dword_2304B3000, v68, OS_LOG_TYPE_INFO, "%@, %@, session destinations count, %lu", v188, 0x20u);
      }
    }

    v73 = dispatch_semaphore_create(0);

    *v188 = 0;
    *&v188[8] = v188;
    *&v188[16] = 0x3032000000;
    v189 = __Block_byref_object_copy__119;
    v190 = __Block_byref_object_dispose__119;
    v191 = 0;
    suggestionsHelper2 = [(SMSuggestionsManager *)self suggestionsHelper];
    v152[0] = MEMORY[0x277D85DD0];
    v152[1] = 3221225472;
    v152[2] = __71__SMSuggestionsManager__fetchSuggestedSessionConfigurationWithHandler___block_invoke_515;
    v152[3] = &unk_2788C4490;
    v154 = v188;
    v155 = &v173;
    v75 = v73;
    v153 = v75;
    [suggestionsHelper2 fetchMostLikelyReceiverHandlesWithHandler:v152];

    dsema = v75;
    v76 = [MEMORY[0x277CBEAA8] now];
    v77 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v77))
    {
      v139 = [MEMORY[0x277CBEAA8] now];
      [v139 timeIntervalSinceDate:v76];
      v79 = v78;
      v132 = objc_opt_new();
      v135 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
      callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
      v81 = [callStackSymbols2 filteredArrayUsingPredicate:v135];
      firstObject3 = [v81 firstObject];

      [v132 submitToCoreAnalytics:firstObject3 type:1 duration:v79];
      v83 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
      {
        *v180 = 0;
        _os_log_fault_impl(&dword_2304B3000, v83, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", v180, 2u);
      }

      v84 = MEMORY[0x277CCA9B8];
      v195[0] = *MEMORY[0x277CCA450];
      *v180 = @"semaphore wait timeout";
      v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v180 forKeys:v195 count:1];
      v86 = [v84 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v85];

      if (v86)
      {
        v87 = v86;
      }
    }

    else
    {
      v86 = 0;
    }

    v88 = v86;
    v133 = v88;
    if (v88 || (v88 = v174[5]) != 0)
    {
      (handlerCopy[2])(handlerCopy, 0, v88);
      firstObject = 0;
LABEL_68:

      _Block_object_dispose(v188, 8);
      v67 = v133;
      goto LABEL_49;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v89 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
      {
        v90 = objc_opt_class();
        v91 = NSStringFromClass(v90);
        v92 = NSStringFromSelector(a2);
        v93 = [*(*&v188[8] + 40) count];
        *v180 = 138412802;
        *&v180[4] = v91;
        v181 = 2112;
        v182 = v92;
        v183 = 2048;
        v184 = v93;
        _os_log_impl(&dword_2304B3000, v89, OS_LOG_TYPE_INFO, "%@, %@, receiver handles count, %lu", v180, 0x20u);
      }
    }

    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v130 = *(*&v188[8] + 40);
    v94 = [v130 countByEnumeratingWithState:&v148 objects:v187 count:16];
    if (v94)
    {
      v129 = 0;
      v136 = *v149;
LABEL_75:
      v95 = 0;
      v140 = v94;
      while (1)
      {
        if (*v149 != v136)
        {
          objc_enumerationMutation(v130);
        }

        v96 = *(*(&v148 + 1) + 8 * v95);
        v97 = objc_autoreleasePoolPush();
        v98 = (v174 + 5);
        v147 = v174[5];
        v99 = [(SMSuggestionsManager *)self _checkReceiverEligibilityForHandle:v96 error:&v147];
        objc_storeStrong(v98, v147);
        if (v174[5])
        {
          handlerCopy[2](handlerCopy, 0);
          v100 = 0;
          v99 = 1;
        }

        else if (v99)
        {
          v101 = v96;

          v100 = 0;
          v99 = 6;
          v129 = v101;
        }

        else
        {
          v100 = 1;
        }

        objc_autoreleasePoolPop(v97);
        if (!v100)
        {
          break;
        }

        if (v140 == ++v95)
        {
          v94 = [v130 countByEnumeratingWithState:&v148 objects:v187 count:16];
          if (v94)
          {
            goto LABEL_75;
          }

          goto LABEL_91;
        }
      }

      if (v99 != 6 && v99)
      {
        firstObject = 0;
        goto LABEL_110;
      }
    }

    else
    {
      v129 = 0;
LABEL_91:
    }

    if (v129 && [v164[5] count])
    {
      firstObject4 = [v164[5] firstObject];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v103 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
        {
          v104 = objc_opt_class();
          v105 = NSStringFromClass(v104);
          v106 = NSStringFromSelector(a2);
          referenceLocation = [firstObject4 referenceLocation];
          *v180 = 138413059;
          *&v180[4] = v105;
          v181 = 2112;
          v182 = v106;
          v183 = 2112;
          v184 = v129;
          v185 = 2117;
          v186 = referenceLocation;
          _os_log_impl(&dword_2304B3000, v103, OS_LOG_TYPE_INFO, "%@, %@, creating session config using handle, %@, destination location, %{sensitive}@", v180, 0x2Au);
        }
      }

      v108 = objc_alloc(MEMORY[0x277CE41F8]);
      referenceLocation2 = [firstObject4 referenceLocation];
      v141 = [v108 initWithRTLocation:referenceLocation2];

      v110 = objc_alloc(MEMORY[0x277D4AB88]);
      mapItem = [firstObject4 mapItem];
      geoMapItemHandle = [mapItem geoMapItemHandle];
      v137 = [v110 initWithCLLocation:v141 eta:0 radius:0 destinationType:geoMapItemHandle destinationMapItem:-1.0];

      v113 = objc_alloc(MEMORY[0x277D4AA98]);
      v179 = v129;
      v114 = [MEMORY[0x277CBEA60] arrayWithObjects:&v179 count:1];
      v115 = [v113 initWithReceiverHandles:v114 identifier:0 displayName:0];

      v116 = objc_alloc(MEMORY[0x277D4AB78]);
      uUID = [MEMORY[0x277CCAD78] UUID];
      LOBYTE(v128) = [MEMORY[0x277D4AAE0] zelkovaHandoffEnabled];
      firstObject = [v116 initWithConversation:v115 sessionID:uUID sessionStartDate:0 sessionType:2 time:0 destination:v137 userResponseSafeDate:0 sessionSupportsHandoff:v128 sosReceivers:v115 sessionWorkoutIdentifier:0 sessionWorkoutType:0 sessionWorkoutMirrorType:0];
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        firstObject = 0;
LABEL_105:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v123 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
          {
            v124 = objc_opt_class();
            v125 = NSStringFromClass(v124);
            v126 = NSStringFromSelector(a2);
            *v180 = 138412802;
            *&v180[4] = v125;
            v181 = 2112;
            v182 = v126;
            v183 = 2112;
            v184 = firstObject;
            _os_log_impl(&dword_2304B3000, v123, OS_LOG_TYPE_INFO, "%@, %@, suggested config, %@", v180, 0x20u);
          }
        }

        (handlerCopy[2])(handlerCopy, firstObject, 0);
LABEL_110:

        goto LABEL_68;
      }

      firstObject4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(firstObject4, OS_LOG_TYPE_INFO))
      {
        v118 = objc_opt_class();
        v119 = NSStringFromClass(v118);
        v120 = NSStringFromSelector(a2);
        v121 = [*(*&v188[8] + 40) count];
        v122 = [v164[5] count];
        *v180 = 138413058;
        *&v180[4] = v119;
        v181 = 2112;
        v182 = v120;
        v183 = 2048;
        v184 = v121;
        v185 = 2048;
        v186 = v122;
        _os_log_impl(&dword_2304B3000, firstObject4, OS_LOG_TYPE_INFO, "%@, %@, session config could not be created, likely handles count, %lu, likely destinations count, %lu", v180, 0x2Au);
      }

      firstObject = 0;
    }

    goto LABEL_105;
  }

  firstObject = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[SMSuggestionsManager _fetchSuggestedSessionConfigurationWithHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = 2936;
    _os_log_error_impl(&dword_2304B3000, firstObject, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

LABEL_54:
}

void __71__SMSuggestionsManager__fetchSuggestedSessionConfigurationWithHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v9;
  v20 = v9;

  *(*(*(a1 + 48) + 8) + 24) = a3;
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v10;
  v16 = v10;

  v17 = *(*(a1 + 64) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v11;
  v19 = v11;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __71__SMSuggestionsManager__fetchSuggestedSessionConfigurationWithHandler___block_invoke_515(uint64_t a1, void *a2, void *a3)
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

- (void)fetchSuggestedCheckInURLForWorkoutSuggestionWithHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[SMSuggestionsManager fetchSuggestedCheckInURLForWorkoutSuggestionWithHandler:]";
      v20 = 1024;
      v21 = 3160;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    goto LABEL_9;
  }

  if (([MEMORY[0x277D4AAE0] zelkovaWorkoutEnabled] & 1) == 0)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D4ACD0];
    v16 = *MEMORY[0x277CCA450];
    v9 = MEMORY[0x277CCACA8];
    zelkovaWorkoutEnabled = [MEMORY[0x277D4AAE0] zelkovaWorkoutEnabled];
    v11 = @"NO";
    if (zelkovaWorkoutEnabled)
    {
      v11 = @"YES";
    }

    v12 = [v9 stringWithFormat:@"Feature not enabled, is ZelkovaWorkout enabled, %@", v11];
    v17 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v6 = [v7 errorWithDomain:v8 code:13 userInfo:v13];

    handlerCopy[2](handlerCopy, 0, v6);
LABEL_9:

    goto LABEL_10;
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__SMSuggestionsManager_fetchSuggestedCheckInURLForWorkoutSuggestionWithHandler___block_invoke;
  block[3] = &unk_2788C4938;
  block[4] = self;
  v15 = handlerCopy;
  dispatch_async(queue, block);

LABEL_10:
}

- (void)_fetchSuggestedCheckInURLForWorkoutSuggestionWithHandler:(id)handler
{
  v94 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  defaultsManager = [(SMSuggestionsManager *)self defaultsManager];
  v6 = [defaultsManager objectForKey:@"RTDefaultsWorkoutOngoing"];
  bOOLValue = [v6 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v11 = MEMORY[0x277CCA9B8];
    v90 = *MEMORY[0x277CCA450];
    v91 = @"User not in an active workout, ineligible to generate suggestion URL";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
    v10 = [v11 errorWithDomain:*MEMORY[0x277D4ACD0] code:11 userInfo:v12];

    handlerCopy[2](handlerCopy, 0, v10);
    goto LABEL_18;
  }

  v84 = 0;
  v8 = [(SMSuggestionsManager *)self _isUserInActiveSessionWithError:&v84];
  v9 = v84;
  if (!v9)
  {
    if (v8)
    {
      v13 = MEMORY[0x277CCA9B8];
      v88 = *MEMORY[0x277CCA450];
      v89 = @"User is already in an active session, ineligible to generate suggestion URL";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      v15 = [v13 errorWithDomain:*MEMORY[0x277D4ACD0] code:11 userInfo:v14];

      handlerCopy[2](handlerCopy, 0, v15);
LABEL_17:
      v10 = 0;
      goto LABEL_18;
    }

    v16 = objc_alloc(MEMORY[0x277D4AC18]);
    v17 = objc_alloc(MEMORY[0x277CCA970]);
    date = [MEMORY[0x277CBEAA8] date];
    v19 = [date dateByAddingTimeInterval:-604800.0];
    v20 = [v17 initWithStartDate:v19 duration:604800.0];
    v62 = [v16 initWithBatchSize:*MEMORY[0x277D4AF10] fetchLimit:1 offset:*MEMORY[0x277D4AF10] includeSuppressed:1 sortByCreationDate:1 ascending:0 dateInterval:v20 filteredToSuggestionTriggers:&unk_2845A1460 filteredToSuggestionUserTypes:&unk_2845A1478 filteredToSessionTypes:0];

    v78 = 0;
    v79 = &v78;
    v80 = 0x3032000000;
    v81 = __Block_byref_object_copy__119;
    v82 = __Block_byref_object_dispose__119;
    v83 = 0;
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__119;
    v76 = __Block_byref_object_dispose__119;
    v77 = 0;
    v21 = dispatch_semaphore_create(0);
    suggestionsStore = [(SMSuggestionsManager *)self suggestionsStore];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __81__SMSuggestionsManager__fetchSuggestedCheckInURLForWorkoutSuggestionWithHandler___block_invoke;
    v68[3] = &unk_2788C4490;
    v70 = &v78;
    v71 = &v72;
    v23 = v21;
    v69 = v23;
    [suggestionsStore fetchSuggestionsWithOptions:v62 handler:v68];

    v24 = v23;
    v25 = [MEMORY[0x277CBEAA8] now];
    v26 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v24, v26))
    {
      v27 = [MEMORY[0x277CBEAA8] now];
      [v27 timeIntervalSinceDate:v25];
      v29 = v28;
      v30 = objc_opt_new();
      v31 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v33 = [callStackSymbols filteredArrayUsingPredicate:v31];
      firstObject = [v33 firstObject];

      [v30 submitToCoreAnalytics:firstObject type:1 duration:v29];
      v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v35, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
      }

      v36 = MEMORY[0x277CCA9B8];
      v92 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v92 count:1];
      v38 = [v36 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v37];

      if (v38)
      {
        v39 = v38;
      }
    }

    else
    {
      v38 = 0;
    }

    v40 = v38;
    v41 = v40;
    if (v40 || (v41 = v73[5]) != 0)
    {
      handlerCopy[2](handlerCopy, 0, v41);
LABEL_16:

      _Block_object_dispose(&v72, 8);
      _Block_object_dispose(&v78, 8);

      goto LABEL_17;
    }

    firstObject2 = [v79[5] firstObject];
    if ([firstObject2 isSuppressed] && objc_msgSend(firstObject2, "suppressionReason") != 12 && objc_msgSend(firstObject2, "suppressionReason") != 11)
    {
      v57 = MEMORY[0x277CCA9B8];
      v86 = *MEMORY[0x277CCA450];
      v58 = MEMORY[0x277CCACA8];
      v59 = [MEMORY[0x277D4AC10] stringFromSMSuggestionSuppressionReason:{objc_msgSend(firstObject2, "suppressionReason")}];
      v60 = [v58 stringWithFormat:@"Suggestion is not eligible to be shown due to %@", v59];
      v87 = v60;
      v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
      phoneNumber = [v57 errorWithDomain:*MEMORY[0x277D4ACD0] code:1 userInfo:v61];

      handlerCopy[2](handlerCopy, 0, phoneNumber);
      goto LABEL_30;
    }

    buddy = [firstObject2 buddy];
    email = [buddy email];

    if (email)
    {
      v45 = objc_alloc(MEMORY[0x277D4AAE8]);
      buddy2 = [firstObject2 buddy];
      email2 = [buddy2 email];
      v48 = [v45 initWithPrimaryHandle:email2 secondaryHandles:MEMORY[0x277CBEBF8]];
    }

    else
    {
      buddy3 = [firstObject2 buddy];
      phoneNumber = [buddy3 phoneNumber];

      if (!phoneNumber)
      {
        goto LABEL_28;
      }

      v51 = objc_alloc(MEMORY[0x277D4AAE8]);
      buddy2 = [firstObject2 buddy];
      email2 = [buddy2 phoneNumber];
      v48 = [v51 initWithPrimaryHandle:email2 secondaryHandles:MEMORY[0x277CBEBF8]];
    }

    phoneNumber = v48;

    if (phoneNumber)
    {
      v52 = objc_alloc(MEMORY[0x277D4AA98]);
      v85 = phoneNumber;
      v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
      v54 = [v52 initWithReceiverHandles:v53 identifier:0 displayName:0];

LABEL_29:
      healthKitManager = [(SMSuggestionsManager *)self healthKitManager];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __81__SMSuggestionsManager__fetchSuggestedCheckInURLForWorkoutSuggestionWithHandler___block_invoke_2;
      v63[3] = &unk_2788CE7D0;
      v63[4] = self;
      v56 = v54;
      v64 = v56;
      v65 = firstObject2;
      v67 = &v72;
      v66 = handlerCopy;
      [healthKitManager fetchMostRecentWorkoutInfoWithHandler:v63];

LABEL_30:
      goto LABEL_16;
    }

LABEL_28:
    v54 = 0;
    goto LABEL_29;
  }

  v10 = v9;
  handlerCopy[2](handlerCopy, 0, v9);
LABEL_18:
}

void __81__SMSuggestionsManager__fetchSuggestedCheckInURLForWorkoutSuggestionWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __81__SMSuggestionsManager__fetchSuggestedCheckInURLForWorkoutSuggestionWithHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SMSuggestionsManager__fetchSuggestedCheckInURLForWorkoutSuggestionWithHandler___block_invoke_3;
  block[3] = &unk_2788C77E8;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = v7;
  v18 = a3;
  v19 = a4;
  v16 = *(a1 + 32);
  v11 = *(a1 + 56);
  v9 = v11;
  v17 = v11;
  v10 = v7;
  dispatch_async(v8, block);
}

void __81__SMSuggestionsManager__fetchSuggestedCheckInURLForWorkoutSuggestionWithHandler___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D4AB78]);
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [*(a1 + 40) dateInterval];
  v6 = [v5 startDate];
  LOBYTE(v11) = 1;
  v7 = [v2 initWithConversation:v3 sessionID:v4 sessionStartDate:v6 sessionType:4 time:0 destination:0 userResponseSafeDate:0 sessionSupportsHandoff:v11 sosReceivers:*(a1 + 32) sessionWorkoutIdentifier:*(a1 + 48) sessionWorkoutType:*(a1 + 80) sessionWorkoutMirrorType:*(a1 + 88)];

  v8 = *(a1 + 56);
  v9 = *(*(a1 + 72) + 8);
  obj = *(v9 + 40);
  v10 = [v8 _getMessagesURLFromSessionConfig:v7 payloadType:3 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  (*(*(a1 + 64) + 16))();
}

- (void)launchSessionInitiationUIWithConfiguration:(id)configuration handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (configurationCopy)
  {
    if (handlerCopy)
    {
LABEL_3:
      v16 = 0;
      v9 = [(SMSuggestionsManager *)self isZelkovaSuggestionsFeatureEnabledWithError:&v16];
      v10 = v16;
      if (v9)
      {
        queue = [(RTNotifier *)self queue];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __75__SMSuggestionsManager_launchSessionInitiationUIWithConfiguration_handler___block_invoke;
        v13[3] = &unk_2788C4500;
        v13[4] = self;
        v14 = configurationCopy;
        v15 = v8;
        dispatch_async(queue, v13);
      }

      else
      {
        (v8)[2](v8, v10);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[SMSuggestionsManager launchSessionInitiationUIWithConfiguration:handler:]";
      v19 = 1024;
      v20 = 3315;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: configuration (in %s:%d)", buf, 0x12u);
    }

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[SMSuggestionsManager launchSessionInitiationUIWithConfiguration:handler:]";
    v19 = 1024;
    v20 = 3316;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

LABEL_11:
}

- (void)_launchSessionInitiationUIWithConfiguration:(id)configuration handler:(id)handler
{
  v55[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(a2);
        *buf = 138412803;
        *&buf[4] = v11;
        v51 = 2112;
        v52 = v12;
        v53 = 2117;
        v54 = configurationCopy;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, launching message extension with configuration, %{sensitive}@", buf, 0x20u);
      }
    }

    v13 = dispatch_semaphore_create(0);
    v49 = 0;
    v14 = [(SMSuggestionsManager *)self _getMessagesURLFromSessionConfig:configurationCopy payloadType:2 error:&v49];
    v15 = v49;
    if (v15)
    {
      handlerCopy[2](handlerCopy, v15);
    }

    else
    {
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      v45 = v14;
      v17 = [defaultWorkspace operationToOpenResource:v14 usingApplication:*MEMORY[0x277D4AD98] userInfo:0];

      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __76__SMSuggestionsManager__launchSessionInitiationUIWithConfiguration_handler___block_invoke;
      v47[3] = &unk_2788C4EA0;
      v18 = v13;
      v48 = v18;
      [v17 setCompletionBlock:v47];
      [v17 start];
      v19 = v18;
      v20 = [MEMORY[0x277CBEAA8] now];
      v21 = dispatch_time(0, 3600000000000);
      v46 = v20;
      if (dispatch_semaphore_wait(v19, v21))
      {
        v42 = v19;
        v43 = v17;
        v44 = a2;
        v41 = [MEMORY[0x277CBEAA8] now];
        [v41 timeIntervalSinceDate:v20];
        v23 = v22;
        v24 = objc_opt_new();
        v25 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v27 = [callStackSymbols filteredArrayUsingPredicate:v25];
        firstObject = [v27 firstObject];

        v40 = v24;
        [v24 submitToCoreAnalytics:firstObject type:1 duration:v23];
        v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v29, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
        }

        v30 = MEMORY[0x277CCA9B8];
        v31 = *MEMORY[0x277D01448];
        v55[0] = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v55 count:1];
        v33 = [v30 errorWithDomain:v31 code:15 userInfo:v32];

        v14 = v45;
        if (v33)
        {
          v34 = v33;
        }

        v17 = v43;
        a2 = v44;
        v19 = v42;
      }

      else
      {
        v33 = 0;
        v14 = v45;
      }

      v35 = v33;
      if (v35)
      {
        handlerCopy[2](handlerCopy, v35);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v36 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = objc_opt_class();
            v38 = NSStringFromClass(v37);
            v39 = NSStringFromSelector(a2);
            *buf = 138412546;
            *&buf[4] = v38;
            v51 = 2112;
            v52 = v39;
            _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "%@, %@, message extension launched", buf, 0x16u);
          }
        }

        handlerCopy[2](handlerCopy, 0);
      }
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMSuggestionsManager _launchSessionInitiationUIWithConfiguration:handler:]";
      v51 = 1024;
      LODWORD(v52) = 3338;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)fetchShouldShowProactiveSuggestionsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SMSuggestionsManager_fetchShouldShowProactiveSuggestionsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __71__SMSuggestionsManager_fetchShouldShowProactiveSuggestionsWithHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _shouldShowProactiveSuggestions];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (BOOL)_shouldShowProactiveSuggestions
{
  if (([MEMORY[0x277D4AB40] isLockScreenSuggestionsAllowed] & 1) == 0)
  {
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (!v3)
    {
      return v3;
    }

    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 0;
      v5 = "LockScreenSuggestions disabled, not showing proactive suggestions";
      v6 = &v9;
LABEL_10:
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
    }

LABEL_11:

    LOBYTE(v3) = 0;
    return v3;
  }

  if (![(SMSuggestionsManager *)self routineEnabled])
  {
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (!v3)
    {
      return v3;
    }

    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 0;
      v5 = "Significant Locations disabled, not showing proactive suggestions";
      v6 = &v8;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  LOBYTE(v3) = 1;
  return v3;
}

- (void)showSuggestionsDetectionUIWithSuggestion:(id)suggestion handler:(id)handler
{
  suggestionCopy = suggestion;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__119;
    v19 = __Block_byref_object_dispose__119;
    v20 = 0;
    obj = 0;
    v8 = [(SMSuggestionsManager *)self isZelkovaSuggestionsFeatureEnabledWithError:&obj];
    objc_storeStrong(&v20, obj);
    if (v8)
    {
      queue = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__SMSuggestionsManager_showSuggestionsDetectionUIWithSuggestion_handler___block_invoke;
      block[3] = &unk_2788CE260;
      block[4] = self;
      v11 = suggestionCopy;
      v13 = &v15;
      v12 = handlerCopy;
      dispatch_async(queue, block);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v16[5]);
    }

    _Block_object_dispose(&v15, 8);
  }
}

uint64_t __73__SMSuggestionsManager_showSuggestionsDetectionUIWithSuggestion_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  [v2 _showSuggestionsDetectionUIWithSuggestion:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  return (*(a1[6] + 16))();
}

- (void)shouldShowKeyboardSuggestionsForInitiator:(id)initiator receiver:(id)receiver handler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  initiatorCopy = initiator;
  receiverCopy = receiver;
  handlerCopy = handler;
  if (initiatorCopy)
  {
    if (receiverCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[SMSuggestionsManager shouldShowKeyboardSuggestionsForInitiator:receiver:handler:]";
      v24 = 1024;
      v25 = 3443;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: initiator (in %s:%d)", buf, 0x12u);
    }

    if (receiverCopy)
    {
LABEL_3:
      if (handlerCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v23 = "[SMSuggestionsManager shouldShowKeyboardSuggestionsForInitiator:receiver:handler:]";
    v24 = 1024;
    v25 = 3444;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: receiver (in %s:%d)", buf, 0x12u);
  }

  if (!handlerCopy)
  {
LABEL_11:
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[SMSuggestionsManager shouldShowKeyboardSuggestionsForInitiator:receiver:handler:]";
      v24 = 1024;
      v25 = 3445;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_14:
  v21 = 0;
  v14 = [(SMSuggestionsManager *)self isZelkovaSuggestionsFeatureEnabledWithError:&v21];
  v15 = v21;
  if (v14)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__SMSuggestionsManager_shouldShowKeyboardSuggestionsForInitiator_receiver_handler___block_invoke;
    block[3] = &unk_2788C5530;
    block[4] = self;
    v18 = initiatorCopy;
    v19 = receiverCopy;
    v20 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }
}

- (void)_shouldShowKeyboardSuggestionsForInitiator:(id)initiator receiver:(id)receiver handler:(id)handler
{
  v41[1] = *MEMORY[0x277D85DE8];
  initiatorCopy = initiator;
  receiverCopy = receiver;
  handlerCopy = handler;
  if (initiatorCopy)
  {
    if (receiverCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[SMSuggestionsManager _shouldShowKeyboardSuggestionsForInitiator:receiver:handler:]";
      v36 = 1024;
      LODWORD(v37) = 3465;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: initiator (in %s:%d)", buf, 0x12u);
    }

    if (receiverCopy)
    {
LABEL_3:
      if (handlerCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v35 = "[SMSuggestionsManager _shouldShowKeyboardSuggestionsForInitiator:receiver:handler:]";
    v36 = 1024;
    LODWORD(v37) = 3466;
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: receiver (in %s:%d)", buf, 0x12u);
  }

  if (handlerCopy)
  {
LABEL_4:
    if (initiatorCopy && ([initiatorCopy primaryHandle], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      if (receiverCopy)
      {
        primaryHandle = [receiverCopy primaryHandle];

        if (primaryHandle)
        {
          v33 = 0;
          v14 = [(SMSuggestionsManager *)self _checkInitiatorEligibilityWithError:&v33];
          v15 = v33;
          if (!v15 && v14)
          {
            v32 = 0;
            v16 = [(SMSuggestionsManager *)self _checkReceiverEligibilityForHandle:receiverCopy error:&v32];
            v15 = v32;
            if (!v15 && v16)
            {
              v31 = 0;
              v17 = [(SMSuggestionsManager *)self _isUserInActiveSessionWithError:&v31];
              v15 = v31;
              if (!v15 && !v17)
              {
                handlerCopy[2](handlerCopy, 1, 0);
                goto LABEL_28;
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  v28 = objc_opt_class();
                  v29 = NSStringFromClass(v28);
                  v30 = NSStringFromSelector(a2);
                  *buf = 138412546;
                  v35 = v29;
                  v36 = 2112;
                  v37 = v30;
                  _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, %@, user is in active session", buf, 0x16u);
                }
              }
            }
          }

          (handlerCopy)[2](handlerCopy, 0, v15);
LABEL_27:

          goto LABEL_28;
        }
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D01448];
      v38 = *MEMORY[0x277CCA450];
      v39 = @"receiver handle is required";
      v20 = MEMORY[0x277CBEAC0];
      v21 = &v39;
      v22 = &v38;
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D01448];
      v40 = *MEMORY[0x277CCA450];
      v41[0] = @"initiator handle is required";
      v20 = MEMORY[0x277CBEAC0];
      v21 = v41;
      v22 = &v40;
    }

    v15 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
    v26 = [v18 errorWithDomain:v19 code:7 userInfo:v15];
    (handlerCopy)[2](handlerCopy, 0, v26);

    goto LABEL_27;
  }

LABEL_22:
  v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v35 = "[SMSuggestionsManager _shouldShowKeyboardSuggestionsForInitiator:receiver:handler:]";
    v36 = 1024;
    LODWORD(v37) = 3467;
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

LABEL_28:
}

- (void)shouldShowTipKitSuggestionsForInitiator:(id)initiator receiver:(id)receiver handler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  initiatorCopy = initiator;
  receiverCopy = receiver;
  handlerCopy = handler;
  if (initiatorCopy)
  {
    if (receiverCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[SMSuggestionsManager shouldShowTipKitSuggestionsForInitiator:receiver:handler:]";
      v24 = 1024;
      v25 = 3525;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: initiator (in %s:%d)", buf, 0x12u);
    }

    if (receiverCopy)
    {
LABEL_3:
      if (handlerCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v23 = "[SMSuggestionsManager shouldShowTipKitSuggestionsForInitiator:receiver:handler:]";
    v24 = 1024;
    v25 = 3526;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: receiver (in %s:%d)", buf, 0x12u);
  }

  if (!handlerCopy)
  {
LABEL_11:
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[SMSuggestionsManager shouldShowTipKitSuggestionsForInitiator:receiver:handler:]";
      v24 = 1024;
      v25 = 3527;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_14:
  v21 = 0;
  v14 = [(SMSuggestionsManager *)self isZelkovaSuggestionsFeatureEnabledWithError:&v21];
  v15 = v21;
  if (v14)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__SMSuggestionsManager_shouldShowTipKitSuggestionsForInitiator_receiver_handler___block_invoke;
    block[3] = &unk_2788C5530;
    block[4] = self;
    v18 = initiatorCopy;
    v19 = receiverCopy;
    v20 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }
}

- (void)_shouldShowTipKitSuggestionsForInitiator:(id)initiator receiver:(id)receiver handler:(id)handler
{
  v173[1] = *MEMORY[0x277D85DE8];
  initiatorCopy = initiator;
  receiverCopy = receiver;
  handlerCopy = handler;
  if (!initiatorCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMSuggestionsManager _shouldShowTipKitSuggestionsForInitiator:receiver:handler:]";
      v158 = 1024;
      LODWORD(v159) = 3547;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: initiator (in %s:%d)", buf, 0x12u);
    }
  }

  if (!receiverCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMSuggestionsManager _shouldShowTipKitSuggestionsForInitiator:receiver:handler:]";
      v158 = 1024;
      LODWORD(v159) = 3548;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: receiver (in %s:%d)", buf, 0x12u);
    }
  }

  if (!handlerCopy)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMSuggestionsManager _shouldShowTipKitSuggestionsForInitiator:receiver:handler:]";
      v158 = 1024;
      LODWORD(v159) = 3549;
      _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    goto LABEL_34;
  }

  if (!initiatorCopy || ([initiatorCopy primaryHandle], v12 = objc_claimAutoreleasedReturnValue(), v13 = v12 == 0, v12, v13))
  {
    v36 = MEMORY[0x277CCA9B8];
    v171 = *MEMORY[0x277CCA450];
    v172 = @"initiator handle is required";
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
    v38 = [v36 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v37];
    handlerCopy[2](handlerCopy, 0, v38);

    goto LABEL_34;
  }

  if (!receiverCopy || ([receiverCopy primaryHandle], v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 == 0, v14, v15))
  {
    v40 = MEMORY[0x277CCA9B8];
    v169 = *MEMORY[0x277CCA450];
    v170 = @"receiver handle is required";
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
    v42 = [v40 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v41];
    handlerCopy[2](handlerCopy, 0, v42);

    goto LABEL_34;
  }

  v151 = 0;
  v152 = &v151;
  v153 = 0x3032000000;
  v154 = __Block_byref_object_copy__119;
  v155 = __Block_byref_object_dispose__119;
  v156 = 0;
  obj = 0;
  v16 = [(SMSuggestionsManager *)self _checkInitiatorEligibilityWithError:&obj];
  objc_storeStrong(&v156, obj);
  v17 = (v152 + 5);
  if (v152[5] != 0 || !v16)
  {
    (handlerCopy[2])(handlerCopy, 0);
    goto LABEL_33;
  }

  v149 = 0;
  v18 = [(SMSuggestionsManager *)self _checkReceiverEligibilityForHandle:receiverCopy error:&v149];
  objc_storeStrong(v17, v149);
  if (v152[5] != 0 || !v18)
  {
    (handlerCopy[2])(handlerCopy, 0);
    goto LABEL_33;
  }

  v143 = 0;
  v144 = &v143;
  v145 = 0x3032000000;
  v146 = __Block_byref_object_copy__119;
  v147 = __Block_byref_object_dispose__119;
  v148 = 0;
  v19 = dispatch_semaphore_create(0);
  suggestionsHelper = [(SMSuggestionsManager *)self suggestionsHelper];
  v139[0] = MEMORY[0x277D85DD0];
  v139[1] = 3221225472;
  v139[2] = __82__SMSuggestionsManager__shouldShowTipKitSuggestionsForInitiator_receiver_handler___block_invoke;
  v139[3] = &unk_2788C4490;
  v141 = &v143;
  v142 = &v151;
  v21 = v19;
  v140 = v21;
  [suggestionsHelper fetchMostLikelyReceiverHandlesWithHandler:v139];

  dsema = v21;
  v22 = [MEMORY[0x277CBEAA8] now];
  v23 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v23))
  {
    context = [MEMORY[0x277CBEAA8] now];
    [context timeIntervalSinceDate:v22];
    v25 = v24;
    v26 = objc_opt_new();
    v27 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v29 = [callStackSymbols filteredArrayUsingPredicate:v27];
    firstObject = [v29 firstObject];

    [v26 submitToCoreAnalytics:firstObject type:1 duration:v25];
    v31 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v31, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
    }

    v32 = MEMORY[0x277CCA9B8];
    v173[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v173 count:1];
    v34 = [v32 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v33];

    if (v34)
    {
      v35 = v34;
    }
  }

  else
  {
    v34 = 0;
  }

  v43 = v34;
  v44 = v43;
  if (v43 || (v44 = v152[5]) != 0)
  {
LABEL_31:
    handlerCopy[2](handlerCopy, 0, v44);
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v45 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = NSStringFromSelector(a2);
      v49 = [v144[5] count];
      *buf = 138412802;
      *&buf[4] = v47;
      v158 = 2112;
      v159 = v48;
      v160 = 2048;
      v161 = v49;
      _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_INFO, "%@, %@, likelyReceivers count, %lu", buf, 0x20u);
    }
  }

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v111 = v144[5];
  v50 = [v111 countByEnumeratingWithState:&v135 objects:v168 count:16];
  if (!v50)
  {
    goto LABEL_51;
  }

  oslog = *v136;
  while (2)
  {
    v51 = 0;
    v113 = v50;
    do
    {
      if (*v136 != oslog)
      {
        objc_enumerationMutation(v111);
      }

      v52 = *(*(&v135 + 1) + 8 * v51);
      contexta = objc_autoreleasePoolPush();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v53 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = objc_opt_class();
          v55 = NSStringFromClass(v54);
          v56 = NSStringFromSelector(a2);
          primaryHandle = [v52 primaryHandle];
          primaryHandle2 = [receiverCopy primaryHandle];
          *buf = 138413058;
          *&buf[4] = v55;
          v158 = 2112;
          v159 = v56;
          v160 = 2112;
          v161 = primaryHandle;
          v162 = 2112;
          v163 = primaryHandle2;
          _os_log_impl(&dword_2304B3000, v53, OS_LOG_TYPE_INFO, "%@, %@, likelyReceiver.primaryHandle, %@, receiver.primaryHandle, %@", buf, 0x2Au);
        }
      }

      v59 = MEMORY[0x277D1A968];
      primaryHandle3 = [v52 primaryHandle];
      v61 = [v59 validateAndCleanupID:primaryHandle3];
      v62 = MEMORY[0x277D1A968];
      primaryHandle4 = [receiverCopy primaryHandle];
      v64 = [v62 validateAndCleanupID:primaryHandle4];
      LOBYTE(v62) = [v61 isEqualToString:v64];

      objc_autoreleasePoolPop(contexta);
      if (v62)
      {

        v69 = (v152 + 5);
        v134 = v152[5];
        [(SMSuggestionsManager *)self _refreshCurrentLocationWithError:&v134];
        objc_storeStrong(v69, v134);
        v44 = v152[5];
        v43 = 0;
        if (v44)
        {
          goto LABEL_31;
        }

        date = [MEMORY[0x277CBEAA8] date];
        latestLocationOfTheDevice = [(SMSuggestionsManager *)self latestLocationOfTheDevice];
        v72 = (v152 + 5);
        v133 = v152[5];
        v73 = [(SMSuggestionsManager *)self _getSunriseDateAtLocation:latestLocationOfTheDevice date:date error:&v133];
        objc_storeStrong(v72, v133);

        if (v152[5])
        {
          (handlerCopy[2])(handlerCopy, 0);
LABEL_104:

          v43 = 0;
          goto LABEL_32;
        }

        latestLocationOfTheDevice2 = [(SMSuggestionsManager *)self latestLocationOfTheDevice];
        v75 = (v152 + 5);
        v132 = v152[5];
        v76 = [(SMSuggestionsManager *)self _getSunsetDateAtLocation:latestLocationOfTheDevice2 date:date error:&v132];
        objc_storeStrong(v75, v132);

        if (v152[5])
        {
          (handlerCopy[2])(handlerCopy, 0);
LABEL_103:

          goto LABEL_104;
        }

        if ([v76 compare:date] == 1 && objc_msgSend(date, "compare:", v73) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v77 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
            {
              v78 = objc_opt_class();
              contextc = NSStringFromClass(v78);
              v128 = NSStringFromSelector(a2);
              aSelectorb = [MEMORY[0x277CBEAA8] date];
              stringFromDate = [aSelectorb stringFromDate];
              stringFromDate2 = [v73 stringFromDate];
              stringFromDate3 = [v76 stringFromDate];
              *buf = 138413314;
              *&buf[4] = contextc;
              v158 = 2112;
              v159 = v128;
              v160 = 2112;
              v161 = stringFromDate;
              v162 = 2112;
              v163 = stringFromDate2;
              v164 = 2112;
              v165 = stringFromDate3;
              _os_log_impl(&dword_2304B3000, v77, OS_LOG_TYPE_INFO, "%@, %@, time is not after sunset or before sunrise, current time, %@, sunrise time, %@, sunset time, %@", buf, 0x34u);
            }
          }

          handlerCopy[2](handlerCopy, 0, 0);
          goto LABEL_103;
        }

        latestLocationOfTheDevice3 = [(SMSuggestionsManager *)self latestLocationOfTheDevice];
        v83 = (v152 + 5);
        v131 = v152[5];
        contextb = [(SMSuggestionsManager *)self _getNPLOIsToHomeWithOnlyHighConfidence:0 location:latestLocationOfTheDevice3 date:date error:&v131];
        objc_storeStrong(v83, v131);

        if (v152[5])
        {
          (handlerCopy[2])(handlerCopy, 0);
LABEL_102:

          goto LABEL_103;
        }

        if (![contextb count])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v93 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
            {
              v94 = objc_opt_class();
              v95 = NSStringFromClass(v94);
              v96 = NSStringFromSelector(a2);
              *buf = 138412546;
              *&buf[4] = v95;
              v158 = 2112;
              v159 = v96;
              _os_log_impl(&dword_2304B3000, v93, OS_LOG_TYPE_INFO, "%@, %@, no nplois to home", buf, 0x16u);
            }
          }

          handlerCopy[2](handlerCopy, 0, v152[5]);
          goto LABEL_102;
        }

        distanceCalculator = [(SMSuggestionsManager *)self distanceCalculator];
        oslogb = [(SMSuggestionsManager *)self latestLocationOfTheDevice];
        firstObject2 = [contextb firstObject];
        locationOfInterest = [firstObject2 locationOfInterest];
        location = [locationOfInterest location];
        v87 = (v152 + 5);
        v130 = v152[5];
        [distanceCalculator distanceFromLocation:oslogb toLocation:location error:&v130];
        v89 = v88;
        objc_storeStrong(v87, v130);

        v91 = (v152 + 5);
        v90 = v152[5];
        if (v90 || v89 == 1.79769313e308)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            osloga = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(osloga, OS_LOG_TYPE_INFO))
            {
              v97 = objc_opt_class();
              v115 = NSStringFromClass(v97);
              aSelectora = NSStringFromSelector(a2);
              if (v89 == 1.79769313e308)
              {
                v112 = @"DBL_MAX";
              }

              else
              {
                v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&v89];
              }

              latestLocationOfTheDevice4 = [(SMSuggestionsManager *)self latestLocationOfTheDevice];
              firstObject3 = [contextb firstObject];
              locationOfInterest2 = [firstObject3 locationOfInterest];
              location2 = [locationOfInterest2 location];
              v110 = v152[5];
              *buf = 138413571;
              *&buf[4] = v115;
              v158 = 2112;
              v159 = aSelectora;
              v160 = 2112;
              v161 = v112;
              v162 = 2117;
              v163 = latestLocationOfTheDevice4;
              v164 = 2117;
              v165 = location2;
              v166 = 2112;
              v167 = v110;
              _os_log_impl(&dword_2304B3000, osloga, OS_LOG_TYPE_INFO, "%@, %@, distance, %@, latestLocationOfTheDevice, %{sensitive}@, nploisToHome.firstObject.locationOfInterest.location, %{sensitive}@, error, %@", buf, 0x3Eu);

              if (v89 != 1.79769313e308)
              {
              }
            }

            goto LABEL_100;
          }
        }

        else
        {
          if (v89 > 500.0)
          {
            v129 = 0;
            v92 = [(SMSuggestionsManager *)self _isFirstTimeUserOfZelkovaWithError:&v129];
            objc_storeStrong(v91, v129);
            if (v152[5])
            {
              (handlerCopy[2])(handlerCopy, 0);
            }

            else
            {
              if (v92 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v105 = 0;
              }

              else
              {
                v101 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
                {
                  v102 = objc_opt_class();
                  v103 = NSStringFromClass(v102);
                  v104 = NSStringFromSelector(a2);
                  *buf = 138412546;
                  *&buf[4] = v103;
                  v158 = 2112;
                  v159 = v104;
                  _os_log_impl(&dword_2304B3000, v101, OS_LOG_TYPE_INFO, "%@, %@, originator has started a safety session before", buf, 0x16u);
                }

                v105 = v152[5];
              }

              handlerCopy[2](handlerCopy, v92, v105);
            }

            goto LABEL_102;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            osloga = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(osloga, OS_LOG_TYPE_INFO))
            {
              v98 = objc_opt_class();
              v99 = NSStringFromClass(v98);
              v100 = NSStringFromSelector(a2);
              *buf = 138412546;
              *&buf[4] = v99;
              v158 = 2112;
              v159 = v100;
              _os_log_impl(&dword_2304B3000, osloga, OS_LOG_TYPE_INFO, "%@, %@, originator seems to be at home", buf, 0x16u);
            }

LABEL_100:

            v90 = v152[5];
            goto LABEL_101;
          }

          v90 = 0;
        }

LABEL_101:
        handlerCopy[2](handlerCopy, 0, v90);
        goto LABEL_102;
      }

      ++v51;
    }

    while (v113 != v51);
    v50 = [v111 countByEnumeratingWithState:&v135 objects:v168 count:16];
    if (v50)
    {
      continue;
    }

    break;
  }

LABEL_51:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v65 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      v66 = objc_opt_class();
      v67 = NSStringFromClass(v66);
      v68 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v67;
      v158 = 2112;
      v159 = v68;
      _os_log_impl(&dword_2304B3000, v65, OS_LOG_TYPE_INFO, "%@, %@, receiver is not a likely receiver", buf, 0x16u);
    }
  }

  handlerCopy[2](handlerCopy, 0, 0);
  v43 = 0;
LABEL_32:

  _Block_object_dispose(&v143, 8);
LABEL_33:
  _Block_object_dispose(&v151, 8);

LABEL_34:
}

void __82__SMSuggestionsManager__shouldShowTipKitSuggestionsForInitiator_receiver_handler___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)showAlwaysOnPromptWithConfiguration:(id)configuration handler:(id)handler
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D01448];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = @"Only supported on watchOS";
  v7 = MEMORY[0x277CBEAC0];
  handlerCopy = handler;
  v9 = [v7 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v10 = [v5 errorWithDomain:v6 code:1 userInfo:v9];
  (*(handler + 2))(handlerCopy, v10);
}

- (void)_considerShowingAlwaysOnPromptWithConfiguration:(id)configuration
{
  v44 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v36) = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: configuration", &v36, 2u);
    }

    goto LABEL_31;
  }

  if ([MEMORY[0x277D4AAE0] zelkovaWorkoutEnabled])
  {
    if (FIIsWorkoutSafetyCheckInEnabled())
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          v9 = NSStringFromSelector(a2);
          v36 = 138412546;
          v37 = v8;
          v38 = 2112;
          v39 = v9;
          v10 = "%@, %@, always on prompt already enabled, bailing";
LABEL_12:
          _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, v10, &v36, 0x16u);

          goto LABEL_31;
        }

        goto LABEL_31;
      }
    }

    else
    {
      appDeletionManager = [(SMSuggestionsManager *)self appDeletionManager];
      isMessagesAppInstalled = [appDeletionManager isMessagesAppInstalled];

      if (isMessagesAppInstalled)
      {
        defaultsManager = [(SMSuggestionsManager *)self defaultsManager];
        v6 = [defaultsManager objectForKey:@"RTDefaultsSuggestionLastEndedWorkoutSessionID"];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = objc_opt_class();
            v17 = NSStringFromClass(v16);
            v18 = NSStringFromSelector(a2);
            sessionID = [configurationCopy sessionID];
            v36 = 138413058;
            v37 = v17;
            v38 = 2112;
            v39 = v18;
            v40 = 2112;
            v41 = v6;
            v42 = 2112;
            v43 = sessionID;
            _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, %@, lastEndedWorkoutSessionID (%@), configuration.sessionID (%@)", &v36, 0x2Au);
          }
        }

        if (!v6 || ([configurationCopy sessionID], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "UUIDString"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqual:", v6), v21, v20, (v22 & 1) == 0))
        {
          defaultsManager2 = [(SMSuggestionsManager *)self defaultsManager];
          sessionID2 = [configurationCopy sessionID];
          uUIDString = [sessionID2 UUIDString];
          [defaultsManager2 setObject:uUIDString forKey:@"RTDefaultsSuggestionLastEndedWorkoutSessionID"];

          defaultsManager3 = [(SMSuggestionsManager *)self defaultsManager];
          v27 = [defaultsManager3 objectForKey:@"RTDefaultsSuggestionAlwaysOnPromptMaxCount"];
          integerValue = [v27 integerValue];
          if (integerValue)
          {
            v29 = integerValue;
          }

          else
          {
            v29 = *MEMORY[0x277D4AC50];
          }

          alwaysOnPromptCount = [MEMORY[0x277D4AB40] alwaysOnPromptCount];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = objc_opt_class();
              v33 = NSStringFromClass(v32);
              v34 = NSStringFromSelector(a2);
              v36 = 138413058;
              v37 = v33;
              v38 = 2112;
              v39 = v34;
              v40 = 2048;
              v41 = alwaysOnPromptCount;
              v42 = 2048;
              v43 = v29;
              _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@, %@, promptConsideredCount: %ld, promptConsideredMaxCount: %ld", &v36, 0x2Au);
            }
          }

          [MEMORY[0x277D4AB40] setAlwaysOnPromptCount:alwaysOnPromptCount + 1];
        }

        goto LABEL_31;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          goto LABEL_31;
        }

        v35 = objc_opt_class();
        v8 = NSStringFromClass(v35);
        v9 = NSStringFromSelector(a2);
        v36 = 138412546;
        v37 = v8;
        v38 = 2112;
        v39 = v9;
        v10 = "%@, %@, messages app is not installed, bailing";
        goto LABEL_12;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v8 = NSStringFromClass(v11);
      v9 = NSStringFromSelector(a2);
      v36 = 138412546;
      v37 = v8;
      v38 = 2112;
      v39 = v9;
      v10 = "%@, %@, zelkovaWorkout is not enabled, not posting notification";
      goto LABEL_12;
    }

LABEL_31:
  }
}

- (BOOL)_didInteractInPastWithHandle:(id)handle timeInterval:(double)interval error:(id *)error
{
  v178[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if (handleCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        primaryHandle = [handleCopy primaryHandle];
        *buf = 138412802;
        *&buf[4] = v8;
        *&buf[12] = 2112;
        *&buf[14] = v9;
        *&buf[22] = 2112;
        v165 = primaryHandle;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, handle, %@,", buf, 0x20u);
      }
    }

    primaryHandle2 = [handleCopy primaryHandle];
    v12 = IMSPIGetAllChatsContainingParticipantWithHandle();

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        v17 = [v12 count];
        *buf = 138412802;
        *&buf[4] = v15;
        *&buf[12] = 2112;
        *&buf[14] = v16;
        *&buf[22] = 2048;
        v165 = v17;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, chats count, %lu", buf, 0x20u);
      }
    }

    v18 = objc_opt_new();
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    obj = v12;
    v19 = [obj countByEnumeratingWithState:&v160 objects:v177 count:16];
    if (v19)
    {
      v20 = *v161;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v161 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v160 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          chatGUID = [v22 chatGUID];
          if (chatGUID)
          {
            participants = [v22 participants];
            v26 = [participants count] == 1;

            if (v26)
            {
              chatGUID2 = [v22 chatGUID];
              [v18 addObject:chatGUID2];
            }
          }

          objc_autoreleasePoolPop(v23);
        }

        v19 = [obj countByEnumeratingWithState:&v160 objects:v177 count:16];
      }

      while (v19);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v110 = objc_opt_class();
        v111 = NSStringFromClass(v110);
        v112 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v111;
        *&buf[12] = 2112;
        *&buf[14] = v112;
        *&buf[22] = 2112;
        v165 = v18;
        _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "%@, %@, chat guids, %@", buf, 0x20u);
      }
    }

    v134 = objc_opt_new();
    v127 = objc_opt_new();
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v131 = v18;
    v135 = [v131 countByEnumeratingWithState:&v156 objects:v176 count:16];
    if (v135)
    {
      dsema = *v157;
      v128 = *MEMORY[0x277D01448];
      v129 = *MEMORY[0x277CCA450];
      v125 = *MEMORY[0x277D18D00];
LABEL_26:
      v29 = 0;
      while (1)
      {
        if (*v157 != dsema)
        {
          objc_enumerationMutation(v131);
        }

        v30 = objc_autoreleasePoolPush();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v165 = __Block_byref_object_copy__119;
        *v166 = __Block_byref_object_dispose__119;
        *&v166[8] = 0;
        v31 = dispatch_semaphore_create(0);
        v32 = MEMORY[0x277D85CD0];
        v150 = MEMORY[0x277D85DD0];
        v151 = 3221225472;
        v152 = __72__SMSuggestionsManager__didInteractInPastWithHandle_timeInterval_error___block_invoke;
        v153 = &unk_2788CE7F8;
        v155 = buf;
        v154 = v31;
        IMSPIQueryChatWithGuid();

        v33 = v154;
        v34 = [MEMORY[0x277CBEAA8] now];
        v35 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v33, v35))
        {
          v36 = [MEMORY[0x277CBEAA8] now];
          [v36 timeIntervalSinceDate:v34];
          v38 = v37;
          v39 = objc_opt_new();
          v40 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v42 = [callStackSymbols filteredArrayUsingPredicate:v40];
          firstObject = [v42 firstObject];

          [v39 submitToCoreAnalytics:firstObject type:1 duration:v38];
          v44 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
          {
            *v170 = 0;
            _os_log_fault_impl(&dword_2304B3000, v44, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", v170, 2u);
          }

          v45 = MEMORY[0x277CCA9B8];
          v178[0] = v129;
          *v170 = @"semaphore wait timeout";
          v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v170 forKeys:v178 count:1];
          v47 = [v45 errorWithDomain:v128 code:15 userInfo:v46];

          if (v47)
          {
            v48 = v47;
          }
        }

        else
        {
          v47 = 0;
        }

        v49 = v47;
        if (v49)
        {
          break;
        }

        if (*(*&buf[8] + 40) && ([v134 containsObject:?] & 1) == 0)
        {
          [v134 addObject:*(*&buf[8] + 40)];
          [v127 addObject:v125];
        }

        _Block_object_dispose(buf, 8);
        objc_autoreleasePoolPop(v30);
        if (v135 == ++v29)
        {
          v135 = [v131 countByEnumeratingWithState:&v156 objects:v176 count:16];
          if (v135)
          {
            goto LABEL_26;
          }

          goto LABEL_41;
        }
      }

      v50 = v49;

      _Block_object_dispose(buf, 8);
      objc_autoreleasePoolPop(v30);

      if (!error)
      {
        v51 = 0;
        goto LABEL_51;
      }

      v52 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v113 = objc_opt_class();
        v114 = NSStringFromClass(v113);
        v115 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v114;
        *&buf[12] = 2112;
        *&buf[14] = v115;
        *&buf[22] = 2112;
        v165 = v50;
        _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v53 = v50;
      v54 = 0;
      *error = v50;
    }

    else
    {
LABEL_41:

      v50 = 0;
      v51 = error != 0;
LABEL_51:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v56 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          v116 = objc_opt_class();
          v117 = NSStringFromClass(v116);
          v118 = NSStringFromSelector(a2);
          *buf = 138413058;
          *&buf[4] = v117;
          *&buf[12] = 2112;
          *&buf[14] = v118;
          *&buf[22] = 2112;
          v165 = v127;
          *v166 = 2112;
          *&v166[2] = v134;
          _os_log_debug_impl(&dword_2304B3000, v56, OS_LOG_TYPE_DEBUG, "%@, %@, services, %@, chat identifiers, %@", buf, 0x2Au);
        }
      }

      *v170 = 0;
      v171 = v170;
      v172 = 0x3032000000;
      v173 = __Block_byref_object_copy__119;
      v174 = __Block_byref_object_dispose__119;
      v175 = 0;
      v57 = dispatch_semaphore_create(0);
      allObjects = [v134 allObjects];
      v59 = MEMORY[0x277D85CD0];
      v142 = MEMORY[0x277D85DD0];
      v143 = 3221225472;
      v144 = __72__SMSuggestionsManager__didInteractInPastWithHandle_timeInterval_error___block_invoke_557;
      v145 = &unk_2788CE820;
      selfCopy = self;
      v148 = v170;
      v149 = a2;
      v60 = v57;
      v147 = v60;
      v61 = IMSPIQueryMessagesWithChatIdentifiersAndQOS();

      if ((v61 & 1) == 0)
      {
        dispatch_semaphore_signal(v60);
      }

      dsemaa = v60;
      v62 = [MEMORY[0x277CBEAA8] now];
      v63 = dispatch_time(0, 3600000000000);
      v64 = v50;
      if (dispatch_semaphore_wait(dsemaa, v63))
      {
        v65 = [MEMORY[0x277CBEAA8] now];
        [v65 timeIntervalSinceDate:v62];
        v67 = v66;
        v68 = objc_opt_new();
        v69 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
        callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
        v71 = [callStackSymbols2 filteredArrayUsingPredicate:v69];
        firstObject2 = [v71 firstObject];

        [v68 submitToCoreAnalytics:firstObject2 type:1 duration:v67];
        v73 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v73, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
        }

        v74 = MEMORY[0x277CCA9B8];
        v178[0] = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v178 count:1];
        v76 = [v74 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v75];

        v64 = v50;
        if (v76)
        {
          v77 = v76;

          v64 = v76;
        }
      }

      v130 = v64;
      if (v130)
      {
        v78 = v51;
      }

      else
      {
        v78 = 0;
      }

      if (v78)
      {
        v79 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          v119 = objc_opt_class();
          v120 = NSStringFromClass(v119);
          v121 = NSStringFromSelector(a2);
          *buf = 138412802;
          *&buf[4] = v120;
          *&buf[12] = 2112;
          *&buf[14] = v121;
          *&buf[22] = 2112;
          v165 = v130;
          _os_log_error_impl(&dword_2304B3000, v79, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
        }

        v80 = v130;
        v54 = 0;
        *error = v130;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v81 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
          {
            v82 = objc_opt_class();
            v83 = NSStringFromClass(v82);
            v84 = NSStringFromSelector(a2);
            v85 = [*(v171 + 5) count];
            *buf = 138412802;
            *&buf[4] = v83;
            *&buf[12] = 2112;
            *&buf[14] = v84;
            *&buf[22] = 2048;
            v165 = v85;
            _os_log_impl(&dword_2304B3000, v81, OS_LOG_TYPE_INFO, "%@, %@, messages count, %lu", buf, 0x20u);
          }
        }

        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v136 = *(v171 + 5);
        v86 = [v136 countByEnumeratingWithState:&v138 objects:v169 count:16];
        if (v86)
        {
          v54 = 0;
          v87 = *v139;
          while (2)
          {
            for (j = 0; j != v86; ++j)
            {
              if (*v139 != v87)
              {
                objc_enumerationMutation(v136);
              }

              v89 = *(*(&v138 + 1) + 8 * j);
              v90 = objc_autoreleasePoolPush();
              date = [v89 date];
              v92 = date == 0;

              if (v92)
              {
                v105 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                {
                  v106 = objc_opt_class();
                  v107 = NSStringFromClass(v106);
                  v108 = NSStringFromSelector(a2);
                  *buf = 138413058;
                  *&buf[4] = v107;
                  *&buf[12] = 2112;
                  *&buf[14] = v108;
                  *&buf[22] = 2112;
                  v165 = handleCopy;
                  *v166 = 2112;
                  *&v166[2] = v89;
                  _os_log_error_impl(&dword_2304B3000, v105, OS_LOG_TYPE_ERROR, "%@, %@, handle, %@, no message date for message, %@", buf, 0x2Au);
                }

                v97 = 11;
              }

              else
              {
                v93 = [MEMORY[0x277CBEAA8] now];
                date2 = [v89 date];
                [v93 timeIntervalSinceDate:date2];
                v96 = v95;

                v97 = v96 <= interval && v96 >= 0.0;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v98 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                  if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
                  {
                    v99 = objc_opt_class();
                    v100 = NSStringFromClass(v99);
                    v101 = NSStringFromSelector(a2);
                    chatIdentifier = [v89 chatIdentifier];
                    v103 = chatIdentifier;
                    *buf = 138413570;
                    v104 = @"NO";
                    if (v97)
                    {
                      v104 = @"YES";
                    }

                    *&buf[4] = v100;
                    *&buf[12] = 2112;
                    *&buf[14] = v101;
                    *&buf[22] = 2112;
                    v165 = handleCopy;
                    *v166 = 2112;
                    *&v166[2] = chatIdentifier;
                    *&v166[10] = 2048;
                    *&v166[12] = v96;
                    v167 = 2112;
                    v168 = v104;
                    _os_log_impl(&dword_2304B3000, v98, OS_LOG_TYPE_INFO, "%@, %@, handle, %@, chat identifier, %@, timeIntervalSinceMessage, %f, didInteract, %@", buf, 0x3Eu);
                  }
                }

                v54 |= v97;
              }

              objc_autoreleasePoolPop(v90);
              if (v97 != 11 && v97)
              {

                goto LABEL_99;
              }
            }

            v86 = [v136 countByEnumeratingWithState:&v138 objects:v169 count:16];
            if (v86)
            {
              continue;
            }

            break;
          }
        }

        v54 = 0;
      }

LABEL_99:

      _Block_object_dispose(v170, 8);
      v50 = v130;
    }
  }

  else
  {
    v55 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v55, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handle", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"handle");
      *error = v54 = 0;
    }

    else
    {
      v54 = 0;
    }
  }

  return v54 & 1;
}

intptr_t __72__SMSuggestionsManager__didInteractInPastWithHandle_timeInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 chatIdentifier];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void __72__SMSuggestionsManager__didInteractInPastWithHandle_timeInterval_error___block_invoke_557(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 56));
      v9 = 138412802;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2048;
      v14 = [v4 count];
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, %@, fetched messages count, %lu", &v9, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_getValuesFromDefaultsIfExists:(id)exists error:(id *)error
{
  v31[1] = *MEMORY[0x277D85DE8];
  existsCopy = exists;
  v8 = existsCopy;
  if (existsCopy)
  {
    if ([existsCopy isEqualToString:@"RTDefaultsSuggestionTimeIntervalBuffer"])
    {
      defaultsManager = [(SMSuggestionsManager *)self defaultsManager];
      v10 = [defaultsManager objectForKey:v8];

      v11 = 0;
      v12 = &unk_2845A1E18;
    }

    else if ([v8 isEqualToString:@"RTDefaultsSuggestionRegularUserSuppressionSessionConfigurationCount"])
    {
      defaultsManager2 = [(SMSuggestionsManager *)self defaultsManager];
      v10 = [defaultsManager2 objectForKey:v8];

      v11 = 0;
      v12 = &unk_28459EF88;
    }

    else if ([v8 isEqualToString:@"RTDefaultsSuggestionOccasionalUserSuppressionSessionConfigurationCount"])
    {
      defaultsManager3 = [(SMSuggestionsManager *)self defaultsManager];
      v10 = [defaultsManager3 objectForKey:v8];

      v11 = 0;
      v12 = &unk_28459EFA0;
    }

    else
    {
      if (![v8 isEqualToString:@"RTDefaultsSuggestionBoundingBoxRadius"] && !objc_msgSend(v8, "isEqualToString:", @"RTDefaultsSuggestionDestinationSimilarityRadiusToSessionConfiguration"))
      {
        if ([v8 isEqualToString:@"RTDefaultsSuggestionNotificationExpirationTimeInterval"] || objc_msgSend(v8, "isEqualToString:", @"RTDefaultsSuggestionShowTriggerTypeAsFooter") || objc_msgSend(v8, "isEqualToString:", @"RTDefaultsSuggestionDisplayedCount"))
        {
          defaultsManager4 = [(SMSuggestionsManager *)self defaultsManager];
          v14 = [defaultsManager4 objectForKey:v8];

          v11 = 0;
        }

        else
        {
          v21 = MEMORY[0x277CCA9B8];
          v22 = *MEMORY[0x277D01448];
          v30 = *MEMORY[0x277CCA450];
          v23 = MEMORY[0x277CCACA8];
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          v26 = NSStringFromSelector(a2);
          v27 = [v23 stringWithFormat:@"%@, %@, string, %@, not found", v25, v26, v8];
          v31[0] = v27;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
          v11 = [v21 errorWithDomain:v22 code:7 userInfo:v28];

          v14 = 0;
        }

        goto LABEL_19;
      }

      defaultsManager5 = [(SMSuggestionsManager *)self defaultsManager];
      v10 = [defaultsManager5 objectForKey:v8];

      v11 = 0;
      v12 = &unk_2845A1E28;
    }

    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v12;
    }

LABEL_19:
    if (error)
    {
      v18 = v11;
      *error = v11;
    }

    goto LABEL_22;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: string", buf, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"string");
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_22:

  return v14;
}

- (BOOL)isZelkovaSuggestionsFeatureEnabledWithError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && (_os_feature_enabled_impl() & 1) != 0)
  {
    return 1;
  }

  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    *buf = 138412546;
    v22 = v17;
    v23 = 2112;
    v24 = v18;
    _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@, %@, feature not enabled", buf, 0x16u);
  }

  v7 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277D01448];
  v19 = *MEMORY[0x277CCA450];
  v9 = MEMORY[0x277CCACA8];
  if (_os_feature_enabled_impl())
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (_os_feature_enabled_impl())
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [v9 stringWithFormat:@"Feature not enabled, is Zelkova enabled, %@, is Zelkova_Suggestions enabled, %@", v10, v11, v19];
  v20 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v14 = [v7 errorWithDomain:v8 code:7 userInfo:v13];

  if (error)
  {
    v15 = v14;
    *error = v14;
  }

  return 0;
}

- (unint64_t)_getSuggestionTriggerFromContext:(id)context error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([contextCopy type] == 3)
      {
        v7 = 1;
        if (!error)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_26;
      }

      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
LABEL_25:

LABEL_26:
        v7 = 0;
        if (!error)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = [MEMORY[0x277D01428] stringFromVisitIncidentType:{objc_msgSend(contextCopy, "type")}];
      v15 = [MEMORY[0x277D4AC10] stringFromSMSuggestionTrigger:0];
      v19 = 138413058;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v16 = "%@, %@, visit type, %@, returning suggestionTrigger, %@";
LABEL_24:
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, v16, &v19, 0x2Au);

      goto LABEL_25;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([contextCopy vehicleConnectedState] == 2)
      {
        v7 = 2;
        if (!error)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_26;
      }

      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      v17 = objc_opt_class();
      v12 = NSStringFromClass(v17);
      v13 = NSStringFromSelector(a2);
      v14 = +[RTMotionActivityManager motionActivityVehicleConnectedStateToString:](RTMotionActivityManager, "motionActivityVehicleConnectedStateToString:", [contextCopy vehicleConnectedState]);
      v15 = [MEMORY[0x277D4AC10] stringFromSMSuggestionTrigger:0];
      v19 = 138413058;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v16 = "%@, %@, vehicle connection state, %@, returning suggestionTrigger, %@";
      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 3;
      if (!error)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    if (error)
    {
LABEL_32:
      v9 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", &v19, 2u);
    }

    if (error)
    {
      v9 = _RTErrorInvalidParameterCreate(@"context");
      v7 = 0;
LABEL_33:
      *error = v9;
      goto LABEL_34;
    }

    v7 = 0;
  }

LABEL_34:

  return v7;
}

- (id)_getSourceLocationFromContext:(id)context error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [contextCopy type] == 3)
    {
      location = [contextCopy location];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v13 = 0;
        if (!error)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(a2);
        *buf = 138412803;
        v22 = v11;
        v23 = 2112;
        v24 = v12;
        v25 = 2117;
        v26 = location;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, source location is set to visit exit location, %{sensitive}@", buf, 0x20u);
      }

      v13 = 0;
    }

    else
    {
      v20 = 0;
      [(SMSuggestionsManager *)self _refreshCurrentLocationWithError:&v20];
      v13 = v20;
      location = [(SMSuggestionsManager *)self latestLocationOfTheDevice];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        *buf = 138412802;
        v22 = v15;
        v23 = 2112;
        v24 = v16;
        v25 = 2112;
        v26 = location;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, source location is set to latest location of the device, %@", buf, 0x20u);
      }
    }

LABEL_12:
    if (!error)
    {
LABEL_14:

      goto LABEL_20;
    }

LABEL_13:
    v17 = v13;
    *error = v13;
    goto LABEL_14;
  }

  v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"context");
    *error = location = 0;
  }

  else
  {
    location = 0;
  }

LABEL_20:

  return location;
}

- (id)_getCurrentDateFromContext:(id)context error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [contextCopy type] == 3)
    {
      date = [contextCopy date];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          v11 = NSStringFromSelector(a2);
          stringFromDate = [date stringFromDate];
          v18 = 138412802;
          v19 = v10;
          v20 = 2112;
          v21 = v11;
          v22 = 2112;
          v23 = stringFromDate;
          v13 = "%@, %@, current date is set to visit exit date, %@";
LABEL_10:
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, v13, &v18, 0x20u);

          goto LABEL_11;
        }

        goto LABEL_11;
      }
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v14 = objc_opt_class();
          v10 = NSStringFromClass(v14);
          v11 = NSStringFromSelector(a2);
          stringFromDate = [date stringFromDate];
          v18 = 138412802;
          v19 = v10;
          v20 = 2112;
          v21 = v11;
          v22 = 2112;
          v23 = stringFromDate;
          v13 = "%@, %@, current date is set to present date of the device, %@";
          goto LABEL_10;
        }

LABEL_11:
      }
    }

    if (!error)
    {
      goto LABEL_19;
    }

    v15 = 0;
    goto LABEL_18;
  }

  v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", &v18, 2u);
  }

  if (error)
  {
    v15 = _RTErrorInvalidParameterCreate(@"context");
    date = 0;
LABEL_18:
    *error = v15;
    goto LABEL_19;
  }

  date = 0;
LABEL_19:

  return date;
}

- (BOOL)_isUserInActiveSessionWithError:(id *)error
{
  v72[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277D4ABF0]);
  v6 = [v5 initWithBatchSize:*MEMORY[0x277D4AF08] fetchLimit:1 sortByCreationDate:1 ascending:0 dateInterval:0];
  v7 = dispatch_semaphore_create(0);
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__119;
  v63 = __Block_byref_object_dispose__119;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__119;
  v57 = __Block_byref_object_dispose__119;
  v58 = 0;
  sessionStore = [(SMSuggestionsManager *)self sessionStore];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __56__SMSuggestionsManager__isUserInActiveSessionWithError___block_invoke;
  v49[3] = &unk_2788C4490;
  v51 = &v59;
  v52 = &v53;
  v9 = v7;
  v50 = v9;
  [sessionStore fetchSessionManagerStatesWithOptions:v6 handler:v49];
  v48 = v6;

  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v11];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [callStackSymbols filteredArrayUsingPredicate:v17];
    firstObject = [v19 firstObject];

    [v16 submitToCoreAnalytics:firstObject type:1 duration:v15];
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v72[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v72 count:1];
    v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v23];

    if (v24)
    {
      v25 = v24;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = v24;
  v27 = v26;
  if (error && v26)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v41;
      v66 = 2112;
      v67 = v42;
      v68 = 2112;
      v69 = v27;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v29 = v27;
LABEL_17:
    *error = v29;
    isActiveState2 = 1;
    goto LABEL_27;
  }

  if (error && v54[5])
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = NSStringFromSelector(a2);
      v46 = v54[5];
      *buf = 138412802;
      *&buf[4] = v44;
      v66 = 2112;
      v67 = v45;
      v68 = 2112;
      v69 = v46;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v29 = v54[5];
    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = NSStringFromSelector(a2);
      isActiveState = [v60[5] isActiveState];
      v37 = @"NO";
      v38 = v60[5];
      if (isActiveState)
      {
        v37 = @"YES";
      }

      *buf = 138413059;
      *&buf[4] = v34;
      v66 = 2112;
      v67 = v35;
      v68 = 2112;
      v69 = v37;
      v70 = 2117;
      v71 = v38;
      _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@, %@, isUserInActiveSession, %@, recent session state, %{sensitive}@", buf, 0x2Au);
    }
  }

  if (error)
  {
    *error = v54[5];
  }

  isActiveState2 = [v60[5] isActiveState];
LABEL_27:

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  return isActiveState2;
}

void __56__SMSuggestionsManager__isUserInActiveSessionWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_isFirstTimeUserOfZelkovaWithError:(id *)error
{
  v73[1] = *MEMORY[0x277D85DE8];
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__119;
  v64 = __Block_byref_object_dispose__119;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__119;
  v58 = __Block_byref_object_dispose__119;
  v59 = 0;
  v5 = objc_alloc_init(MEMORY[0x277D4ABF0]);
  v6 = dispatch_semaphore_create(0);
  sessionStore = [(SMSuggestionsManager *)self sessionStore];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __59__SMSuggestionsManager__isFirstTimeUserOfZelkovaWithError___block_invoke;
  v50[3] = &unk_2788C4490;
  v52 = &v60;
  v53 = &v54;
  v8 = v6;
  v51 = v8;
  [sessionStore fetchSessionManagerStatesWithOptions:v5 handler:v50];
  v49 = v5;

  v9 = v8;
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceDate:v10];
    v14 = v13;
    v15 = objc_opt_new();
    v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v18 = [callStackSymbols filteredArrayUsingPredicate:v16];
    firstObject = [v18 firstObject];

    [v15 submitToCoreAnalytics:firstObject type:1 duration:v14];
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v73[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v73 count:1];
    v23 = [v21 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v22];

    if (v23)
    {
      v24 = v23;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = v23;
  v26 = v25;
  if (error && v25)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v42;
      v67 = 2112;
      v68 = v43;
      v69 = 2112;
      v70 = v26;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    LOBYTE(v27) = 0;
    v28 = v26;
    goto LABEL_28;
  }

  if (error && v55[5])
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = NSStringFromSelector(a2);
      v47 = v55[5];
      *buf = 138412802;
      *&buf[4] = v45;
      v67 = 2112;
      v68 = v46;
      v69 = 2112;
      v70 = v47;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    LOBYTE(v27) = 0;
LABEL_27:
    v28 = v55[5];
LABEL_28:
    *error = v28;
    goto LABEL_29;
  }

  v29 = v61[5];
  v30 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_98];
  v31 = [v29 filteredArrayUsingPredicate:v30];
  v32 = v61[5];
  v61[5] = v31;

  v33 = v61[5];
  if (v33)
  {
    LODWORD(v27) = [v33 count] == 0;
  }

  else
  {
    LODWORD(v27) = 1;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = NSStringFromSelector(a2);
      v38 = [v61[5] count];
      v39 = @"NO";
      *buf = 138413058;
      *&buf[4] = v36;
      v67 = 2112;
      if (v27)
      {
        v39 = @"YES";
      }

      v68 = v37;
      v69 = 2048;
      v70 = v38;
      v71 = 2112;
      v72 = v39;
      _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%@, %@, active session states count, %lu, result, %@", buf, 0x2Au);
    }
  }

  if (error)
  {
    goto LABEL_27;
  }

LABEL_29:

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  return v27;
}

void __59__SMSuggestionsManager__isFirstTimeUserOfZelkovaWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_getSuggestionTitleWithHandle:(id)handle error:(id *)error
{
  v72[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if (!handleCopy)
  {
    getSuggestionTitleWithoutContactName = [MEMORY[0x277D4AB70] getSuggestionTitleWithoutContactName];
    goto LABEL_25;
  }

  aSelector = a2;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__119;
  v65 = __Block_byref_object_dispose__119;
  v66 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__119;
  v59 = __Block_byref_object_dispose__119;
  v60 = 0;
  v8 = dispatch_semaphore_create(0);
  contactsManager = [(SMSuggestionsManager *)self contactsManager];
  primaryHandle = [handleCopy primaryHandle];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __60__SMSuggestionsManager__getSuggestionTitleWithHandle_error___block_invoke;
  v51[3] = &unk_2788C4490;
  v53 = &v61;
  v54 = &v55;
  v11 = v8;
  v52 = v11;
  [contactsManager fetchContactsFromEmailOrPhoneNumberString:primaryHandle handler:v51];

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
    firstObject = [v21 firstObject];

    [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
    }

    v24 = MEMORY[0x277CCA9B8];
    v72[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v72 count:1];
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

  v29 = v26;
  v30 = v29;
  if (error && v29)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = NSStringFromSelector(aSelector);
      *buf = 138412802;
      *&buf[4] = v44;
      v68 = 2112;
      v69 = v45;
      v70 = 2112;
      v71 = v30;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v32 = v30;
    getSuggestionTitleWithoutContactName = 0;
    *error = v30;
    goto LABEL_24;
  }

  if (error && v56[5])
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = NSStringFromSelector(aSelector);
      v49 = v56[5];
      *buf = 138412802;
      *&buf[4] = v47;
      v68 = 2112;
      v69 = v48;
      v70 = 2112;
      v71 = v49;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    getSuggestionTitleWithoutContactName = 0;
    *error = v56[5];
    goto LABEL_24;
  }

  if (![v62[5] count])
  {
    goto LABEL_23;
  }

  mEMORY[0x277CCAC00] = [MEMORY[0x277CCAC00] sharedNameComponents];
  firstObject2 = [v62[5] firstObject];
  givenName = [firstObject2 givenName];
  [mEMORY[0x277CCAC00] setGivenName:givenName];

  firstObject3 = [v62[5] firstObject];
  familyName = [firstObject3 familyName];
  [mEMORY[0x277CCAC00] setFamilyName:familyName];

  v39 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:mEMORY[0x277CCAC00] style:1 options:0];
  if (![v39 length])
  {

LABEL_23:
    v40 = MEMORY[0x277D4AB70];
    primaryHandle2 = [handleCopy primaryHandle];
    getSuggestionTitleWithoutContactName = [v40 getSuggestionTitleWithContactName:primaryHandle2];

    goto LABEL_24;
  }

  getSuggestionTitleWithoutContactName = [MEMORY[0x277D4AB70] getSuggestionTitleWithContactName:v39];

LABEL_24:
  _Block_object_dispose(&v55, 8);

  _Block_object_dispose(&v61, 8);
LABEL_25:

  return getSuggestionTitleWithoutContactName;
}

void __60__SMSuggestionsManager__getSuggestionTitleWithHandle_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_getSuggestionBodyWithPlaceInference:(id)inference
{
  v3 = MEMORY[0x277D4AB70];
  preferredName = [inference preferredName];
  v5 = [v3 getSuggestionBodyWithPlaceInference:preferredName];

  return v5;
}

- (id)_getSuggestionsFooter:(id)footer
{
  footerCopy = footer;
  v14 = 0;
  v5 = [(SMSuggestionsManager *)self _getValuesFromDefaultsIfExists:@"RTDefaultsSuggestionShowTriggerTypeAsFooter" error:&v14];
  v6 = v5;
  if (v5 && ((v7 = v14, [v5 unsignedIntValue] == 1) ? (v8 = v7 == 0) : (v8 = 0), v8))
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277D4AC10] stringFromSMSuggestionTrigger:{objc_msgSend(footerCopy, "suggestionTrigger")}];
    v12 = [MEMORY[0x277D4AC10] stringFromSMSuggestionUserType:{objc_msgSend(footerCopy, "suggestionUserType")}];
    getSuggestionFooter = [v10 stringWithFormat:@"Trigger: %@, User: %@", v11, v12];
  }

  else
  {
    getSuggestionFooter = [MEMORY[0x277D4AB70] getSuggestionFooter];
  }

  return getSuggestionFooter;
}

- (BOOL)_checkInitiatorEligibilityWithError:(id *)error
{
  v59[1] = *MEMORY[0x277D85DE8];
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__119;
  v48 = __Block_byref_object_dispose__119;
  v49 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = dispatch_queue_create("com.apple.CoreRoutine.SuggestionsManager.InitiatorEligibilityChecker", 0);
  authorizationManager = [(SMSuggestionsManager *)self authorizationManager];
  messagingService = [(SMSuggestionsManager *)self messagingService];
  effectivePairedDevice = [messagingService effectivePairedDevice];
  defaultsManager = [(SMSuggestionsManager *)self defaultsManager];
  platform = [(SMSuggestionsManager *)self platform];
  appDeletionManager = [(SMSuggestionsManager *)self appDeletionManager];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __60__SMSuggestionsManager__checkInitiatorEligibilityWithError___block_invoke;
  v40[3] = &unk_2788CE868;
  v42 = &v50;
  v43 = &v44;
  v12 = v4;
  v41 = v12;
  [SMInitiatorEligibility checkInitiatorEligibilityWithQueue:v5 authorizationManager:authorizationManager effectivePairedDevice:effectivePairedDevice handoffType:0 defaultsManager:defaultsManager platform:platform appDeletionManager:appDeletionManager handler:v40];

  v13 = v12;
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v13, v15))
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    [v16 timeIntervalSinceDate:v14];
    v18 = v17;
    v19 = objc_opt_new();
    v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v22 = [callStackSymbols filteredArrayUsingPredicate:v20];
    firstObject = [v22 firstObject];

    [v19 submitToCoreAnalytics:firstObject type:1 duration:v18];
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
    }

    v25 = MEMORY[0x277CCA9B8];
    v59[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v59 count:1];
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
  v30 = v29;
  if (error && v29)
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v36;
      v55 = 2112;
      v56 = v37;
      v57 = 2112;
      v58 = v30;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v32 = v30;
    goto LABEL_14;
  }

  if (error)
  {
    v32 = v45[5];
LABEL_14:
    *error = v32;
  }

  v33 = *(v51 + 24);

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);
  return v33 & 1;
}

void __60__SMSuggestionsManager__checkInitiatorEligibilityWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_checkReceiverEligibilityForHandle:(id)handle error:(id *)error
{
  v58[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if (handleCopy)
  {
    aSelector = a2;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    selfCopy = self;
    *v43 = 0;
    v44 = v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__119;
    v47 = __Block_byref_object_dispose__119;
    v48 = 0;
    v9 = dispatch_semaphore_create(0);
    eligibilityChecker = [(SMSuggestionsManager *)selfCopy eligibilityChecker];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __65__SMSuggestionsManager__checkReceiverEligibilityForHandle_error___block_invoke;
    v39[3] = &unk_2788CE890;
    v41 = &v49;
    v11 = v9;
    v40 = v11;
    v42 = v43;
    [eligibilityChecker checkReceiverEligibility:handleCopy handler:v39];

    v12 = v11;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v12, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
      firstObject = [v21 firstObject];

      [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
      v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
      }

      v24 = MEMORY[0x277CCA9B8];
      v58[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v58 count:1];
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

    v30 = v26;
    v31 = v30;
    if (error && v30)
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        *&buf[4] = v36;
        v54 = 2112;
        v55 = v37;
        v56 = 2112;
        v57 = v31;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v33 = v31;
    }

    else
    {
      if (!error)
      {
LABEL_20:
        v29 = *(v50 + 24);

        _Block_object_dispose(v43, 8);
        _Block_object_dispose(&v49, 8);
        goto LABEL_21;
      }

      v33 = *(v44 + 5);
    }

    *error = v33;
    goto LABEL_20;
  }

  v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *v43 = 0;
    _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handle", v43, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"handle");
    *error = v29 = 0;
  }

  else
  {
    v29 = 0;
  }

LABEL_21:

  return v29 & 1;
}

void __65__SMSuggestionsManager__checkReceiverEligibilityForHandle_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)_getFirstEligibleHandleFromSessionConfigurations:(id)configurations error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  if (!configurationsCopy)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionConfigurations", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"sessionConfigurations");
      *error = v27 = 0;
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_26;
  }

  v6 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = configurationsCopy;
  v7 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  v35 = v6;
  if (!v7)
  {
    firstObject3 = 0;
    v24 = 0;
    goto LABEL_23;
  }

  v8 = v7;
  errorCopy = error;
  v33 = configurationsCopy;
  v9 = *v39;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v39 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v38 + 1) + 8 * i);
      v12 = objc_autoreleasePoolPush();
      conversation = [v11 conversation];
      receiverHandles = [conversation receiverHandles];
      v15 = [receiverHandles count];

      if (v15 <= 1)
      {
        conversation2 = [v11 conversation];
        receiverHandles2 = [conversation2 receiverHandles];
        firstObject = [receiverHandles2 firstObject];
        v19 = [v6 containsObject:firstObject];

        if ((v19 & 1) == 0)
        {
          conversation3 = [v11 conversation];
          receiverHandles3 = [conversation3 receiverHandles];
          firstObject2 = [receiverHandles3 firstObject];
          v37 = 0;
          v23 = [(SMSuggestionsManager *)self _checkReceiverEligibilityForHandle:firstObject2 error:&v37];
          v24 = v37;

          if (v23)
          {
            conversation4 = [v11 conversation];
            receiverHandles4 = [conversation4 receiverHandles];
            firstObject3 = [receiverHandles4 firstObject];
          }

          else
          {
            v6 = v35;
            if (!v24)
            {
              goto LABEL_11;
            }

            firstObject3 = 0;
          }

          objc_autoreleasePoolPop(v12);
          goto LABEL_22;
        }
      }

LABEL_11:
      objc_autoreleasePoolPop(v12);
    }

    v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  firstObject3 = 0;
  v24 = 0;
LABEL_22:
  error = errorCopy;
  configurationsCopy = v33;
LABEL_23:

  if (error)
  {
    v30 = v24;
    *error = v24;
  }

  v27 = firstObject3;

LABEL_26:

  return v27;
}

- (id)_getMessagesURLFromSessionConfig:(id)config payloadType:(int64_t)type error:(id *)error
{
  v97 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v9 = configCopy;
  if (configCopy)
  {
    aSelector = a2;
    selfCopy = self;
    conversation = [configCopy conversation];
    if (!conversation)
    {
      goto LABEL_5;
    }

    conversation2 = [v9 conversation];
    receiverHandles = [conversation2 receiverHandles];
    firstObject = [receiverHandles firstObject];
    if (firstObject)
    {
      conversation3 = [v9 conversation];
      receiverHandles2 = [conversation3 receiverHandles];
      firstObject2 = [receiverHandles2 firstObject];
      primaryHandle = [firstObject2 primaryHandle];

      if (primaryHandle)
      {
LABEL_5:
        v88 = 0;
        v81 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v88];
        v18 = v88;
        v19 = v18;
        if (error && v18)
        {
          v20 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v72 = objc_opt_class();
            v73 = NSStringFromClass(v72);
            v74 = NSStringFromSelector(aSelector);
            *buf = 138412802;
            *&buf[4] = v73;
            *&buf[12] = 2112;
            *&buf[14] = v74;
            *&buf[22] = 2112;
            v90 = v19;
            _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
          }

          v21 = v19;
          v22 = 0;
          *error = v19;
        }

        else
        {
          v78 = [v81 base64EncodedStringWithOptions:0];
          conversation4 = [v9 conversation];
          receiverHandles3 = [conversation4 receiverHandles];
          firstObject3 = [receiverHandles3 firstObject];
          primaryHandle2 = [firstObject3 primaryHandle];

          if ([v9 sessionType] == 4 && objc_msgSend(v9, "sessionWorkoutType") && (objc_msgSend(v9, "conversation"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "receiverHandles"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "firstObject"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "primaryHandle"), v30 = objc_claimAutoreleasedReturnValue(), v31 = v30 == 0, v30, v29, v28, v27, !v31))
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v90 = __Block_byref_object_copy__119;
            v91 = __Block_byref_object_dispose__119;
            v92 = 0;
            v86[0] = 0;
            v86[1] = v86;
            v86[2] = 0x3032000000;
            v86[3] = __Block_byref_object_copy__119;
            v86[4] = __Block_byref_object_dispose__119;
            v87 = 0;
            v32 = dispatch_semaphore_create(0);
            contactsManager = [(SMSuggestionsManager *)selfCopy contactsManager];
            conversation5 = [v9 conversation];
            receiverHandles4 = [conversation5 receiverHandles];
            firstObject4 = [receiverHandles4 firstObject];
            primaryHandle3 = [firstObject4 primaryHandle];
            v82[0] = MEMORY[0x277D85DD0];
            v82[1] = 3221225472;
            v82[2] = __75__SMSuggestionsManager__getMessagesURLFromSessionConfig_payloadType_error___block_invoke;
            v82[3] = &unk_2788C4490;
            v84 = buf;
            v85 = v86;
            v38 = v32;
            v83 = v38;
            [contactsManager fetchContactsFromEmailOrPhoneNumberString:primaryHandle3 handler:v82];

            v39 = v38;
            v40 = [MEMORY[0x277CBEAA8] now];
            v41 = dispatch_time(0, 3600000000000);
            if (dispatch_semaphore_wait(v39, v41))
            {
              v42 = [MEMORY[0x277CBEAA8] now];
              [v42 timeIntervalSinceDate:v40];
              v44 = v43;
              v75 = objc_opt_new();
              v76 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
              callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
              v46 = [callStackSymbols filteredArrayUsingPredicate:v76];
              firstObject5 = [v46 firstObject];

              [v75 submitToCoreAnalytics:firstObject5 type:1 duration:v44];
              v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
              {
                *v96 = 0;
                _os_log_fault_impl(&dword_2304B3000, v48, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", v96, 2u);
              }

              v49 = MEMORY[0x277CCA9B8];
              v95 = *MEMORY[0x277CCA450];
              *v96 = @"semaphore wait timeout";
              v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:&v95 count:1];
              v51 = [v49 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v50];

              if (v51)
              {
                v52 = v51;
              }
            }

            else
            {
              v51 = 0;
            }

            v70 = v51;
            if ([*(*&buf[8] + 40) count])
            {
              firstObject6 = [*(*&buf[8] + 40) firstObject];
              givenName = [firstObject6 givenName];
            }

            else
            {
              givenName = 0;
            }

            _Block_object_dispose(v86, 8);
            _Block_object_dispose(buf, 8);
          }

          else
          {
            givenName = 0;
          }

          if ([v9 sessionType] == 4)
          {
            v54 = 8;
          }

          else
          {
            v54 = 2;
          }

          v22 = [MEMORY[0x277D4AAA8] createURLForSuggestionsWithRecipientHandle:primaryHandle2 appPayloadDataString:v78 givenName:givenName payloadType:2 sessionStartEntryType:v54];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v55 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              v56 = objc_opt_class();
              v57 = NSStringFromClass(v56);
              v58 = NSStringFromSelector(aSelector);
              absoluteString = [v22 absoluteString];
              *buf = 138412802;
              *&buf[4] = v57;
              *&buf[12] = 2112;
              *&buf[14] = v58;
              *&buf[22] = 2112;
              v90 = absoluteString;
              _os_log_impl(&dword_2304B3000, v55, OS_LOG_TYPE_INFO, "%@, %@, url, %@", buf, 0x20u);
            }
          }

          if (error)
          {
            *error = 0;
          }
        }

        v60 = 0;
        goto LABEL_39;
      }
    }

    else
    {
    }

    v61 = MEMORY[0x277CCA9B8];
    v93 = *MEMORY[0x277CCA450];
    v62 = MEMORY[0x277CCACA8];
    conversation6 = [v9 conversation];
    receiverHandles5 = [conversation6 receiverHandles];
    firstObject7 = [receiverHandles5 firstObject];
    v66 = [v62 stringWithFormat:@"config has invalid handle information, %@", firstObject7];
    v94 = v66;
    v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
    v60 = [v61 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v67];

    if (error)
    {
      v68 = v60;
      v22 = 0;
      *error = v60;
    }

    else
    {
      v22 = 0;
    }

LABEL_39:

    goto LABEL_40;
  }

  v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionConfig", buf, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"sessionConfig");
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_40:

  return v22;
}

void __75__SMSuggestionsManager__getMessagesURLFromSessionConfig_payloadType_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_getSessionConfigurationsWithOptions:(id)options error:(id *)error
{
  v72[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (optionsCopy)
  {
    aSelector = a2;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__119;
    v59 = __Block_byref_object_dispose__119;
    v60 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__119;
    v53 = __Block_byref_object_dispose__119;
    v54 = 0;
    v8 = dispatch_semaphore_create(0);
    suggestionsHelper = [(SMSuggestionsManager *)self suggestionsHelper];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __67__SMSuggestionsManager__getSessionConfigurationsWithOptions_error___block_invoke;
    v45[3] = &unk_2788C4490;
    v47 = &v55;
    v48 = &v49;
    v10 = v8;
    v46 = v10;
    [suggestionsHelper getSessionConfigurationsWithOptions:optionsCopy handler:v45];

    v11 = v10;
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v11, v13))
    {
      v14 = [MEMORY[0x277CBEAA8] now];
      [v14 timeIntervalSinceDate:v12];
      v16 = v15;
      v17 = objc_opt_new();
      v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v20 = [callStackSymbols filteredArrayUsingPredicate:v18];
      firstObject = [v20 firstObject];

      [v17 submitToCoreAnalytics:firstObject type:1 duration:v16];
      v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
      }

      v23 = MEMORY[0x277CCA9B8];
      v72[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v72 count:1];
      v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

      if (v25)
      {
        v26 = v25;
      }
    }

    else
    {
      v25 = 0;
    }

    v29 = v25;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = NSStringFromSelector(aSelector);
        v34 = [v56[5] count];
        v35 = v56[5];
        v36 = v50[5];
        *buf = 138413571;
        *&buf[4] = v32;
        v62 = 2112;
        v63 = v33;
        v64 = 2112;
        v65 = optionsCopy;
        v66 = 2048;
        v67 = v34;
        v68 = 2117;
        v69 = v35;
        v70 = 2112;
        v71 = v36;
        _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@, %@, options, %@, session configurations count, %lu, fetched session configurations, %{sensitive}@, fetch error, %@", buf, 0x3Eu);
      }
    }

    if (error && v29)
    {
      v37 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = NSStringFromSelector(aSelector);
        *buf = 138412802;
        *&buf[4] = v42;
        v62 = 2112;
        v63 = v43;
        v64 = 2112;
        v65 = v29;
        _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v38 = v29;
      *error = v29;
      array = [MEMORY[0x277CBEA60] array];
    }

    else
    {
      if (error)
      {
        *error = v50[5];
      }

      array = v56[5];
    }

    array2 = array;

    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(&v55, 8);
  }

  else
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMSuggestionsManager _getSessionConfigurationsWithOptions:error:]";
      v62 = 1024;
      LODWORD(v63) = 4493;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
    }

    array2 = [MEMORY[0x277CBEA60] array];
  }

  return array2;
}

void __67__SMSuggestionsManager__getSessionConfigurationsWithOptions_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)_refreshCurrentLocationWithError:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__119;
  v42 = __Block_byref_object_dispose__119;
  v43 = 0;
  context = objc_autoreleasePoolPush();
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__119;
  v36 = __Block_byref_object_dispose__119;
  v37 = 0;
  v5 = dispatch_semaphore_create(0);
  suggestionsHelper = [(SMSuggestionsManager *)self suggestionsHelper];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __57__SMSuggestionsManager__refreshCurrentLocationWithError___block_invoke;
  v28[3] = &unk_2788CE8B8;
  v30 = &v38;
  v31 = &v32;
  v7 = v5;
  v29 = v7;
  [suggestionsHelper refreshCurrentLocationWithHandler:v28];

  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
    firstObject = [v17 firstObject];

    [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v44 count:1];
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
  [(SMSuggestionsManager *)self setLatestLocationOfTheDevice:v33[5]];

  _Block_object_dispose(&v32, 8);
  objc_autoreleasePoolPop(context);
  if (v24)
  {
    objc_storeStrong(v39 + 5, v22);
  }

  if (error)
  {
    *error = v39[5];
  }

  v25 = v39[5] == 0;

  _Block_object_dispose(&v38, 8);
  return v25;
}

void __57__SMSuggestionsManager__refreshCurrentLocationWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_getNPLOIsToHomeWithOnlyHighConfidence:(BOOL)confidence location:(id)location date:(id)date error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v8 = [(SMSuggestionsManager *)self _getNPLOIsWithOnlyHighConfidence:confidence location:location date:date error:&v22];
  v9 = v22;
  v10 = v9;
  if (error && v9)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      *buf = 138412802;
      v24 = v20;
      v25 = 2112;
      v26 = v21;
      v27 = 2112;
      v28 = v10;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
    }

    v12 = v10;
    *error = v10;
    array = [MEMORY[0x277CBEA60] array];
  }

  else
  {
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_610];
    v15 = [v8 filteredArrayUsingPredicate:v14];

    if (error)
    {
      v16 = v10;
      *error = v10;
    }

    array = v15;
    v8 = array;
  }

  v17 = array;

  return v17;
}

BOOL __83__SMSuggestionsManager__getNPLOIsToHomeWithOnlyHighConfidence_location_date_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 locationOfInterest];
  v3 = [v2 type] == 0;

  return v3;
}

- (id)_getNPLOIsWithOnlyHighConfidence:(BOOL)confidence location:(id)location date:(id)date error:(id *)error
{
  confidenceCopy = confidence;
  v90[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  dateCopy = date;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__119;
  v75 = __Block_byref_object_dispose__119;
  v76 = 0;
  v9 = dispatch_semaphore_create(0);
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__119;
  v69 = __Block_byref_object_dispose__119;
  array = [MEMORY[0x277CBEA60] array];
  deviceLocationPredictor = [(SMSuggestionsManager *)self deviceLocationPredictor];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __77__SMSuggestionsManager__getNPLOIsWithOnlyHighConfidence_location_date_error___block_invoke;
  v61[3] = &unk_2788C4490;
  v63 = &v65;
  v64 = &v71;
  v11 = v9;
  v62 = v11;
  [deviceLocationPredictor fetchNextPredictedLocationsOfInterestFromLocation:locationCopy startDate:dateCopy timeInterval:v61 handler:3600.0];
  v58 = locationCopy;

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_979];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
    firstObject = [v21 firstObject];

    [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: authorizationManager", buf, 2u);
    }

    v24 = MEMORY[0x277CCA9B8];
    v90[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v90 count:1];
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
  if (error)
  {
    if (v72[5])
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        v51 = NSStringFromSelector(a2);
        v52 = v72[5];
        *buf = 138412802;
        *&buf[4] = v50;
        v78 = 2112;
        v79 = v51;
        v80 = 2112;
        v81 = v52;
        _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v31 = v72[5];
LABEL_16:
      *error = v31;
      array2 = [MEMORY[0x277CBEA60] array];
      goto LABEL_29;
    }

    if (v28)
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v53 = objc_opt_class();
        v54 = NSStringFromClass(v53);
        v55 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v54;
        v78 = 2112;
        v79 = v55;
        v80 = 2112;
        v81 = v29;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", buf, 0x20u);
      }

      v31 = v29;
      goto LABEL_16;
    }
  }

  v34 = v66[5];
  v35 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_613];
  v36 = [v34 filteredArrayUsingPredicate:v35];

  v37 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_616];
  v38 = [v36 filteredArrayUsingPredicate:v37];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = NSStringFromSelector(a2);
      v43 = [v66[5] count];
      v44 = [v36 count];
      v45 = [v38 count];
      v46 = @"NO";
      *buf = 138413827;
      *&buf[4] = v41;
      v78 = 2112;
      if (confidenceCopy)
      {
        v46 = @"YES";
      }

      v79 = v42;
      v80 = 2048;
      v81 = v43;
      v82 = 2048;
      v83 = v44;
      v84 = 2112;
      v85 = v46;
      v86 = 2048;
      v87 = v45;
      v88 = 2117;
      v89 = v58;
      _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "%@, %@, nplois fetched count, %lu, nploisWithoutOnlyVehicleSource count, %lu, only high confidence, %@, nploisWithOnlyHighConfidenceAndWithoutOnlyVehicleSource, %lu, w.r.t the location, %{sensitive}@", buf, 0x48u);
    }
  }

  if (confidenceCopy)
  {
    v47 = v38;
  }

  else
  {
    v47 = v36;
  }

  if (error)
  {
    *error = v72[5];
  }

  array2 = v47;

LABEL_29:
  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(&v71, 8);

  return array2;
}

void __77__SMSuggestionsManager__getNPLOIsWithOnlyHighConfidence_location_date_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t __77__SMSuggestionsManager__getNPLOIsWithOnlyHighConfidence_location_date_error___block_invoke_611(uint64_t a1, void *a2)
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

- (id)_getSunriseDateAtLocation:(id)location date:(id)date error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  dateCopy = date;
  if (!locationCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", buf, 2u);
    }

    if (error)
    {
      *error = _RTErrorInvalidParameterCreate(@"location");
    }
  }

  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc_init(MEMORY[0x277D0EAB0]);
  [locationCopy latitude];
  v13 = v12;
  [locationCopy longitude];
  v15 = v14;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v17 = [currentCalendar components:60 fromDate:dateCopy];
  [v17 setHour:3];
  v18 = [currentCalendar dateFromComponents:v17];
  [v18 timeIntervalSinceReferenceDate];
  [v11 calculateAstronomicalTimeForLocation:v13 time:{v15, v19}];
  sunrise = [v11 sunrise];
  v21 = [sunrise copy];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      NSStringFromSelector(a2);
      v25 = v29 = dateCopy;
      stringFromDate = [v18 stringFromDate];
      [v21 stringFromDate];
      v27 = aSelectora = v10;
      *buf = 138413315;
      v33 = v24;
      v34 = 2112;
      v35 = v25;
      v36 = 2117;
      v37 = locationCopy;
      v38 = 2112;
      v39 = stringFromDate;
      v40 = 2112;
      v41 = v27;
      _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, %@, location, %{sensitive}@, third hour of today, %@, sunrise date, %@", buf, 0x34u);

      v10 = aSelectora;
      dateCopy = v29;
    }
  }

  objc_autoreleasePoolPop(v10);

  return v21;
}

- (id)_getSunsetDateAtLocation:(id)location date:(id)date error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  dateCopy = date;
  if (!locationCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", buf, 2u);
    }

    if (error)
    {
      *error = _RTErrorInvalidParameterCreate(@"location");
    }
  }

  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc_init(MEMORY[0x277D0EAB0]);
  [locationCopy latitude];
  v13 = v12;
  [locationCopy longitude];
  v15 = v14;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v17 = [currentCalendar components:60 fromDate:dateCopy];
  [v17 setHour:5];
  v18 = [currentCalendar dateFromComponents:v17];
  [v18 timeIntervalSinceReferenceDate];
  [v11 calculateAstronomicalTimeForLocation:v13 time:{v15, v19}];
  sunset = [v11 sunset];
  v21 = [sunset copy];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      NSStringFromSelector(a2);
      v25 = v29 = dateCopy;
      stringFromDate = [v18 stringFromDate];
      [v21 stringFromDate];
      v27 = aSelectora = v10;
      *buf = 138413315;
      v33 = v24;
      v34 = 2112;
      v35 = v25;
      v36 = 2117;
      v37 = locationCopy;
      v38 = 2112;
      v39 = stringFromDate;
      v40 = 2112;
      v41 = v27;
      _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, %@, location, %{sensitive}@, fifth hour of today, %@, sunset date, %@", buf, 0x34u);

      v10 = aSelectora;
      dateCopy = v29;
    }
  }

  objc_autoreleasePoolPop(v10);

  return v21;
}

- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__SMSuggestionsManager_performPurgeOfType_referenceDate_completion___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = dateCopy;
  v15 = completionCopy;
  typeCopy = type;
  v11 = completionCopy;
  v12 = dateCopy;
  dispatch_async(queue, v13);
}

void __68__SMSuggestionsManager_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    v3 = [*(a1 + 32) suggestionsStore];
    v4 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __68__SMSuggestionsManager_performPurgeOfType_referenceDate_completion___block_invoke_2;
    v5[3] = &unk_2788C4F60;
    v6 = v4;
    v7 = *(a1 + 48);
    [v3 deleteSuggestionsPredating:v6 handler:v5];
  }
}

void __68__SMSuggestionsManager_performPurgeOfType_referenceDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "purge entries from the suggestion store predating, %@, error, %@", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

@end