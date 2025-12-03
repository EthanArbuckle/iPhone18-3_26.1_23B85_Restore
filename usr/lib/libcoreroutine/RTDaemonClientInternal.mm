@interface RTDaemonClientInternal
- (NSString)description;
- (RTDaemonClientInternal)initWithQueue:(id)queue accountManager:(id)manager assetManager:(id)assetManager authorizationManager:(id)authorizationManager bluePOITileManager:(id)tileManager buildingPolygonManager:(id)polygonManager deviceLocationPredictor:(id)predictor diagnostics:(id)self0 eventModelProvider:(id)self1 authorizedLocationManager:(id)self2 fingerprintManager:(id)self3 hintManager:(id)self4 intermittentGNSSManager:(id)self5 learnedLocationManager:(id)self6 learnedLocationStore:(id)self7 locationManager:(id)self8 locationStore:(id)self9 mapServiceManager:(id)serviceManager motionActivityManager:(id)activityManager peopleDiscoveryProvider:(id)discoveryProvider persistenceManager:(id)persistenceManager placeInferenceQueryStore:(id)queryStore pointOfInterestSampler:(id)sampler predictedContextManager:(id)contextManager purgeManager:(id)purgeManager safetyCacheStore:(id)cacheStore scenarioTriggerManager:(id)triggerManager userCurationManager:(id)queue0 vehicleLocationProvider:(id)queue1 visitManager:(id)queue2 workoutRouteManager:(id)queue3 workoutScheduler:(id)queue4;
- (void)clearAllLocationsOfInterestWithReply:(id)reply;
- (void)computeContactScores:(id)scores;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)deleteWorkout:(id)workout reply:(id)reply;
- (void)displayWorkoutDistanceRecordsWithHandler:(id)handler;
- (void)eraseVisitLogDatabase:(id)database;
- (void)expireLifetimeOfVisitsWithIdentifiers:(id)identifiers expirationDate:(id)date reply:(id)reply;
- (void)extendLifetimeOfVisitsWithIdentifiers:(id)identifiers toExpireOn:(id)on reply:(id)reply;
- (void)fetchAllLocationsOfInterestWithReply:(id)reply;
- (void)fetchAuthorizedLocationCachedStatus:(id)status;
- (void)fetchAuthorizedLocationDetailedStatus:(id)status;
- (void)fetchAuthorizedLocationExtendedStatus:(id)status;
- (void)fetchAuthorizedLocations:(id)locations;
- (void)fetchBluePOIMetadataWithHandler:(id)handler;
- (void)fetchBluePOITileWithGeoTileKey:(unint64_t)key reply:(id)reply;
- (void)fetchBuildingPolygonsFromLocations:(id)locations radius:(double)radius limit:(unint64_t)limit reply:(id)reply;
- (void)fetchCurrentLocationWithReply:(id)reply;
- (void)fetchDataVaultPath:(id)path;
- (void)fetchFMCEnabledWithReply:(id)reply;
- (void)fetchFingerprintsWithOptions:(id)options reply:(id)reply;
- (void)fetchFusionCandidatesForVisitIdentifier:(id)identifier reply:(id)reply;
- (void)fetchInferredMapItemForVisitIdentifier:(id)identifier reply:(id)reply;
- (void)fetchIntermittentGNSSRegistrationStateWithReply:(id)reply;
- (void)fetchLocationsFromCoreLocationWithOptions:(id)options reply:(id)reply;
- (void)fetchLocationsOfInterestWithVisitsWithinDistance:(id)distance location:(id)location reply:(id)reply;
- (void)fetchMotionActivitiesFromStartDate:(id)date endDate:(id)endDate reply:(id)reply;
- (void)fetchPathToBackupWithReply:(id)reply;
- (void)fetchPlaceInferenceQueriesWithDateInterval:(id)interval ascending:(BOOL)ascending reply:(id)reply;
- (void)fetchPointOfInterestAttributesWithIdentifier:(unint64_t)identifier reply:(id)reply;
- (void)fetchPointOfInterestsAroundCoordinate:(id)coordinate radius:(double)radius reply:(id)reply;
- (void)fetchPredictedContextInputSignalsWithReply:(id)reply;
- (void)fetchStoredLocationsCountFromDate:(id)date toDate:(id)toDate uncertainty:(double)uncertainty limit:(unint64_t)limit reply:(id)reply;
- (void)fetchUserCurationsWithOptions:(id)options handler:(id)handler;
- (void)fetchVisitLogsWithDateInterval:(id)interval reply:(id)reply;
- (void)fetchVisitsBetweenStartDate:(id)date endDate:(id)endDate reply:(id)reply;
- (void)fetchVisitsWithReply:(id)reply;
- (void)fetchWiFiAccessPointsForFingerprint:(id)fingerprint reply:(id)reply;
- (void)forceAuthorizedLocationEraseInstallInitialization:(id)initialization;
- (void)forceEventModelRefreshWithReply:(id)reply;
- (void)forcePlaceTypeClassificationWithReply:(id)reply;
- (void)forcePredictedLocationContextModelTrainingWithReply:(id)reply;
- (void)forceProcessWorkoutsClearClusters:(BOOL)clusters clearExistingDistanceMatrix:(BOOL)matrix buildDistanceMatrix:(BOOL)distanceMatrix syncClustersToHealhtKit:(BOOL)kit syncClustersToWatch:(BOOL)watch filteringDistanceThreshold:(double)threshold topNWorkouts:(unint64_t)workouts isSchedulerTriggered:(BOOL)self0 reply:(id)self1;
- (void)forceRelabeling:(id)relabeling;
- (void)forceSequentialClusterIdentification:(id)identification;
- (void)forceUpdateAssetMetadataWithReply:(id)reply;
- (void)injectFingerprintWithIdentifier:(id)identifier settledState:(unint64_t)state start:(id)start reply:(id)reply;
- (void)injectFingerprintWithSettledState:(BOOL)state start:(id)start reply:(id)reply;
- (void)injectLocationOfInterest:(id)interest reply:(id)reply;
- (void)injectLocations:(id)locations reply:(id)reply;
- (void)injectPeopleDensityBundle:(id)bundle handler:(id)handler;
- (void)injectPeopleDensityStats:(unint64_t)stats duration:(double)duration date:(id)date advertisements:(id)advertisements handler:(id)handler;
- (void)injectPeopleDiscoveryAdv:(id)adv handler:(id)handler;
- (void)injectProximityEvent:(id)event handler:(id)handler;
- (void)injectRealtimeVisit:(id)visit reply:(id)reply;
- (void)injectSignalForSignalGeneratorOptions:(id)options reply:(id)reply;
- (void)injectVisit:(id)visit finerGranularityInferredMapItem:(id)item locationOfInterest:(id)interest reply:(id)reply;
- (void)injectWiFiAccessPointWithMac:(id)mac rssi:(int64_t)rssi channel:(int64_t)channel age:(double)age date:(id)date reply:(id)reply;
- (void)logDatabasesWithReply:(id)reply;
- (void)logSafetyCacheWithReply:(id)reply;
- (void)mirroringDelegateSetupState:(id)state;
- (void)performExportMirroringRequest:(id)request;
- (void)performImportMirroringRequest:(id)request;
- (void)performZoneResetMirroringRequest:(id)request;
- (void)periodicPurgeWithReply:(id)reply;
- (void)processNewlyAddedWorkout:(id)workout reply:(id)reply;
- (void)purgeUserCurationsPredating:(id)predating handler:(id)handler;
- (void)queryProvider:(id)provider options:(id)options reply:(id)reply;
- (void)reconstructTransitionsWithReply:(id)reply;
- (void)removeAllPeopleDensityBundles:(id)bundles;
- (void)removeAllProximityEvent:(id)event;
- (void)schemaUpdateWithModelFile:(id)file reply:(id)reply;
- (void)setXpcConnection:(id)connection;
- (void)simulatePredictedContextResult:(id)result reply:(id)reply;
- (void)simulateScenarioTrigger:(id)trigger reply:(id)reply;
- (void)simulateVisit:(id)visit reply:(id)reply;
- (void)startSamplingPointOfInterestWithInterval:(double)interval handler:(id)handler;
- (void)stopSamplingPointOfInterest:(id)interest;
- (void)storeBluePOITiles:(id)tiles handler:(id)handler;
- (void)storeHints:(id)hints reply:(id)reply;
- (void)submitHintAtLocation:(id)location hintSource:(int64_t)source reply:(id)reply;
- (void)submitMetrics:(id)metrics metricName:(id)name reply:(id)reply;
- (void)submitTransitMetricsWithReply:(id)reply;
- (void)tearDownPersistenceStack:(id)stack;
- (void)updateAssetServerURL:(id)l assetType:(id)type reply:(id)reply;
- (void)updateIntermittentGNSSRegistrationOverrideState:(unint64_t)state reply:(id)reply;
- (void)updateRelevanceScoresWithReply:(id)reply;
- (void)updateTransitionWithIdentifier:(id)identifier modeOfTransportation:(int64_t)transportation reply:(id)reply;
@end

@implementation RTDaemonClientInternal

- (RTDaemonClientInternal)initWithQueue:(id)queue accountManager:(id)manager assetManager:(id)assetManager authorizationManager:(id)authorizationManager bluePOITileManager:(id)tileManager buildingPolygonManager:(id)polygonManager deviceLocationPredictor:(id)predictor diagnostics:(id)self0 eventModelProvider:(id)self1 authorizedLocationManager:(id)self2 fingerprintManager:(id)self3 hintManager:(id)self4 intermittentGNSSManager:(id)self5 learnedLocationManager:(id)self6 learnedLocationStore:(id)self7 locationManager:(id)self8 locationStore:(id)self9 mapServiceManager:(id)serviceManager motionActivityManager:(id)activityManager peopleDiscoveryProvider:(id)discoveryProvider persistenceManager:(id)persistenceManager placeInferenceQueryStore:(id)queryStore pointOfInterestSampler:(id)sampler predictedContextManager:(id)contextManager purgeManager:(id)purgeManager safetyCacheStore:(id)cacheStore scenarioTriggerManager:(id)triggerManager userCurationManager:(id)queue0 vehicleLocationProvider:(id)queue1 visitManager:(id)queue2 workoutRouteManager:(id)queue3 workoutScheduler:(id)queue4
{
  queueCopy = queue;
  managerCopy = manager;
  assetManagerCopy = assetManager;
  authorizationManagerCopy = authorizationManager;
  tileManagerCopy = tileManager;
  polygonManagerCopy = polygonManager;
  predictorCopy = predictor;
  diagnosticsCopy = diagnostics;
  providerCopy = provider;
  locationManagerCopy = locationManager;
  fingerprintManagerCopy = fingerprintManager;
  hintManagerCopy = hintManager;
  sManagerCopy = sManager;
  learnedLocationManagerCopy = learnedLocationManager;
  storeCopy = store;
  v77 = a18;
  locationStoreCopy = locationStore;
  serviceManagerCopy = serviceManager;
  activityManagerCopy = activityManager;
  discoveryProviderCopy = discoveryProvider;
  persistenceManagerCopy = persistenceManager;
  queryStoreCopy = queryStore;
  samplerCopy = sampler;
  contextManagerCopy = contextManager;
  purgeManagerCopy = purgeManager;
  cacheStoreCopy = cacheStore;
  triggerManagerCopy = triggerManager;
  curationManagerCopy = curationManager;
  locationProviderCopy = locationProvider;
  visitManagerCopy = visitManager;
  routeManagerCopy = routeManager;
  schedulerCopy = scheduler;
  if (queueCopy)
  {
    v39 = assetManagerCopy;
    if (!assetManagerCopy)
    {
      v51 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v47 = authorizationManagerCopy;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v51, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: assetManager", buf, 2u);
      }

      v45 = 0;
      v46 = queueCopy;
      goto LABEL_38;
    }

    if (authorizationManagerCopy)
    {
      if (tileManagerCopy)
      {
        if (polygonManagerCopy)
        {
          if (predictorCopy)
          {
            if (diagnosticsCopy)
            {
              if (providerCopy)
              {
                if (locationManagerCopy)
                {
                  if (fingerprintManagerCopy)
                  {
                    if (hintManagerCopy)
                    {
                      if (sManagerCopy)
                      {
                        if (learnedLocationManagerCopy)
                        {
                          if (storeCopy)
                          {
                            if (v77)
                            {
                              if (serviceManagerCopy)
                              {
                                if (activityManagerCopy)
                                {
                                  if (discoveryProviderCopy)
                                  {
                                    if (persistenceManagerCopy)
                                    {
                                      if (queryStoreCopy)
                                      {
                                        if (samplerCopy)
                                        {
                                          if (contextManagerCopy)
                                          {
                                            if (purgeManagerCopy)
                                            {
                                              if (triggerManagerCopy)
                                              {
                                                if (curationManagerCopy)
                                                {
                                                  if (locationProviderCopy)
                                                  {
                                                    if (visitManagerCopy)
                                                    {
                                                      if (routeManagerCopy)
                                                      {
                                                        if (schedulerCopy)
                                                        {
                                                          v91.receiver = self;
                                                          v91.super_class = RTDaemonClientInternal;
                                                          v40 = [(RTDaemonClientInternal *)&v91 init];
                                                          v41 = v40;
                                                          if (v40)
                                                          {
                                                            objc_storeStrong(&v40->_queue, queue);
                                                            objc_storeStrong(&v41->_accountManager, manager);
                                                            objc_storeStrong(&v41->_assetManager, assetManager);
                                                            objc_storeStrong(&v41->_authorizationManager, authorizationManager);
                                                            objc_storeStrong(&v41->_bluePOITileManager, tileManager);
                                                            objc_storeStrong(&v41->_buildingPolygonManager, polygonManager);
                                                            objc_storeStrong(&v41->_deviceLocationPredictor, predictor);
                                                            objc_storeStrong(&v41->_diagnostics, diagnostics);
                                                            objc_storeStrong(&v41->_eventModelProvider, provider);
                                                            objc_storeStrong(&v41->_authorizedLocationManager, locationManager);
                                                            objc_storeStrong(&v41->_fingerprintManager, fingerprintManager);
                                                            objc_storeStrong(&v41->_hintManager, hintManager);
                                                            objc_storeStrong(&v41->_intermittentGNSSManager, sManager);
                                                            objc_storeStrong(&v41->_learnedLocationManager, learnedLocationManager);
                                                            objc_storeStrong(&v41->_learnedLocationStore, store);
                                                            objc_storeStrong(&v41->_locationManager, a18);
                                                            objc_storeStrong(&v41->_locationStore, locationStore);
                                                            objc_storeStrong(&v41->_mapServiceManager, serviceManager);
                                                            objc_storeStrong(&v41->_motionActivityManager, activityManager);
                                                            objc_storeStrong(&v41->_peopleDiscoveryProvider, discoveryProvider);
                                                            objc_storeStrong(&v41->_persistenceManager, persistenceManager);
                                                            objc_storeStrong(&v41->_placeInferenceQueryStore, queryStore);
                                                            objc_storeStrong(&v41->_pointOfInterestSampler, sampler);
                                                            objc_storeStrong(&v41->_predictedContextManager, contextManager);
                                                            objc_storeStrong(&v41->_purgeManager, purgeManager);
                                                            objc_storeStrong(&v41->_scenarioTriggerManager, triggerManager);
                                                            objc_storeStrong(&v41->_userCurationManager, curationManager);
                                                            objc_storeStrong(&v41->_vehicleLocationProvider, locationProvider);
                                                            objc_storeStrong(&v41->_visitManager, visitManager);
                                                            objc_storeStrong(&v41->_workoutRouteManager, routeManager);
                                                            objc_storeStrong(&v41->_workoutScheduler, scheduler);
                                                            objc_storeStrong(&v41->_safetyCacheStore, cacheStore);
                                                            v42 = +[RTEntitlementProvider internalDaemonProtocolEntitlementProvider];
                                                            entitlementProvider = v41->_entitlementProvider;
                                                            v41->_entitlementProvider = v42;
                                                          }

                                                          selfCopy2 = v41;
                                                          v45 = selfCopy2;
                                                          v47 = authorizationManagerCopy;
                                                          v46 = queueCopy;
                                                          v49 = locationStoreCopy;
                                                          v48 = managerCopy;
                                                          goto LABEL_39;
                                                        }

                                                        v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                                        if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                                                        {
                                                          goto LABEL_34;
                                                        }

                                                        *buf = 0;
                                                        v55 = "Invalid parameter not satisfying: workoutScheduler";
                                                      }

                                                      else
                                                      {
                                                        v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                                        if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                                                        {
                                                          goto LABEL_34;
                                                        }

                                                        *buf = 0;
                                                        v55 = "Invalid parameter not satisfying: workoutRouteManager";
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                                      if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                                                      {
                                                        goto LABEL_34;
                                                      }

                                                      *buf = 0;
                                                      v55 = "Invalid parameter not satisfying: visitManager";
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                                    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                                                    {
                                                      goto LABEL_34;
                                                    }

                                                    *buf = 0;
                                                    v55 = "Invalid parameter not satisfying: vehicleLocationProvider";
                                                  }
                                                }

                                                else
                                                {
                                                  v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                                  if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                                                  {
                                                    goto LABEL_34;
                                                  }

                                                  *buf = 0;
                                                  v55 = "Invalid parameter not satisfying: userCurationManager";
                                                }
                                              }

                                              else
                                              {
                                                v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                                if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                                                {
                                                  goto LABEL_34;
                                                }

                                                *buf = 0;
                                                v55 = "Invalid parameter not satisfying: scenarioTriggerManager";
                                              }
                                            }

                                            else
                                            {
                                              v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                              if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                                              {
                                                goto LABEL_34;
                                              }

                                              *buf = 0;
                                              v55 = "Invalid parameter not satisfying: purgeManager";
                                            }
                                          }

                                          else
                                          {
                                            v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                            if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                                            {
                                              goto LABEL_34;
                                            }

                                            *buf = 0;
                                            v55 = "Invalid parameter not satisfying: predictedContextManager";
                                          }
                                        }

                                        else
                                        {
                                          v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                          if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                                          {
                                            goto LABEL_34;
                                          }

                                          *buf = 0;
                                          v55 = "Invalid parameter not satisfying: pointOfInterestSampler";
                                        }
                                      }

                                      else
                                      {
                                        v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                        if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                                        {
                                          goto LABEL_34;
                                        }

                                        *buf = 0;
                                        v55 = "Invalid parameter not satisfying: placeInferenceQueryStore";
                                      }

                                      goto LABEL_51;
                                    }

                                    v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                                    {
                                      *buf = 0;
                                      v54 = "Invalid parameter not satisfying: persistenceManager";
                                      goto LABEL_76;
                                    }

LABEL_77:

                                    v45 = 0;
                                    v47 = authorizationManagerCopy;
                                    v46 = queueCopy;
                                    v49 = locationStoreCopy;
                                    v48 = managerCopy;
                                    v52 = cacheStoreCopy;
                                    selfCopy2 = self;
                                    goto LABEL_78;
                                  }

                                  v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                  if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                                  {
                                    goto LABEL_77;
                                  }

                                  *buf = 0;
                                  v54 = "Invalid parameter not satisfying: peopleDiscoveryProvider";
                                }

                                else
                                {
                                  v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                  if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                                  {
                                    goto LABEL_77;
                                  }

                                  *buf = 0;
                                  v54 = "Invalid parameter not satisfying: motionActivityManager";
                                }
                              }

                              else
                              {
                                v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                                if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                                {
                                  goto LABEL_77;
                                }

                                *buf = 0;
                                v54 = "Invalid parameter not satisfying: mapServiceManager";
                              }
                            }

                            else
                            {
                              v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                              if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_77;
                              }

                              *buf = 0;
                              v54 = "Invalid parameter not satisfying: locationManager";
                            }
                          }

                          else
                          {
                            v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                            if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_77;
                            }

                            *buf = 0;
                            v54 = "Invalid parameter not satisfying: learnedLocationStore";
                          }
                        }

                        else
                        {
                          v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                          if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_77;
                          }

                          *buf = 0;
                          v54 = "Invalid parameter not satisfying: learnedLocationManager";
                        }
                      }

                      else
                      {
                        v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                        if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_77;
                        }

                        *buf = 0;
                        v54 = "Invalid parameter not satisfying: intermittentGNSSManager";
                      }
                    }

                    else
                    {
                      v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                      if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_77;
                      }

                      *buf = 0;
                      v54 = "Invalid parameter not satisfying: hintManager";
                    }
                  }

                  else
                  {
                    v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_77;
                    }

                    *buf = 0;
                    v54 = "Invalid parameter not satisfying: fingerprintManager";
                  }
                }

                else
                {
                  v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_77;
                  }

                  *buf = 0;
                  v54 = "Invalid parameter not satisfying: authorizedLocationManager";
                }
              }

              else
              {
                v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_77;
                }

                *buf = 0;
                v54 = "Invalid parameter not satisfying: eventModelProvider";
              }
            }

            else
            {
              v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_77;
              }

              *buf = 0;
              v54 = "Invalid parameter not satisfying: diagnostics";
            }
          }

          else
          {
            v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_77;
            }

            *buf = 0;
            v54 = "Invalid parameter not satisfying: deviceLocationPredictor";
          }
        }

        else
        {
          v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_77;
          }

          *buf = 0;
          v54 = "Invalid parameter not satisfying: buildingPolygonManager";
        }
      }

      else
      {
        v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_77;
        }

        *buf = 0;
        v54 = "Invalid parameter not satisfying: bluePOITileManager";
      }
    }

    else
    {
      v53 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_77;
      }

      *buf = 0;
      v54 = "Invalid parameter not satisfying: authorizationManager";
    }

LABEL_76:
    _os_log_error_impl(&dword_2304B3000, v53, OS_LOG_TYPE_ERROR, v54, buf, 2u);
    goto LABEL_77;
  }

  v39 = assetManagerCopy;
  v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v55 = "Invalid parameter not satisfying: queue";
LABEL_51:
    _os_log_error_impl(&dword_2304B3000, v50, OS_LOG_TYPE_ERROR, v55, buf, 2u);
  }

LABEL_34:

  v45 = 0;
  v47 = authorizationManagerCopy;
  v46 = queueCopy;
LABEL_38:
  v48 = managerCopy;
  selfCopy2 = self;
  v49 = locationStoreCopy;
LABEL_39:
  v52 = cacheStoreCopy;
LABEL_78:

  return v45;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  executablePath = [(RTDaemonClientInternal *)self executablePath];
  processIdentifier = [(RTDaemonClientInternal *)self processIdentifier];
  signingIdentifier = [(RTDaemonClientInternal *)self signingIdentifier];
  v7 = [v3 stringWithFormat:@"%@(%d), %@", executablePath, processIdentifier, signingIdentifier];

  return v7;
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  v36 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  invocationCopy = invocation;
  [invocationCopy retainArguments];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__85;
  v30[4] = __Block_byref_object_dispose__85;
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = NSStringFromSelector(a2);
  v15 = [v11 stringWithFormat:@"%@-%@", v13, v14];
  v16 = v15;
  [v15 UTF8String];
  v31 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromSelector(a2);
      *buf = 138412546;
      v33 = v22;
      v34 = 2112;
      v35 = v23;
      _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RTDaemonClientInternal_connection_handleInvocation_isReply___block_invoke;
  block[3] = &unk_2788C5440;
  replyCopy = reply;
  v25 = invocationCopy;
  selfCopy = self;
  v27 = connectionCopy;
  v28 = v30;
  v19 = connectionCopy;
  v20 = invocationCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v30, 8);
}

void __62__RTDaemonClientInternal_connection_handleInvocation_isReply___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) invoke];
    v2 = *(*(a1 + 56) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 40);
        v12 = NSStringFromSelector([*(a1 + 32) selector]);
        *buf = 138412546;
        *&buf[4] = v11;
        v39 = 2112;
        v40 = v12;
        _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "client, %@, called, %@", buf, 0x16u);
      }
    }

    v6 = [*(a1 + 32) target];
    v7 = [*(*(a1 + 40) + 48) protocol];
    v8 = [v6 conformsToProtocol:v7];

    if (v8)
    {
      v9 = [*(a1 + 48) exportedInterface];
      v10 = [v9 replyBlockSignatureForSelector:{objc_msgSend(*(a1 + 32), "selector")}];
    }

    else
    {
      v10 = 0;
    }

    v13 = [RTXPC executablePathOfConnection:*(a1 + 48)];
    v14 = [v13 lastPathComponent];

    v15 = [*(*(a1 + 40) + 48) clientConnection:*(a1 + 48) satisfiesEntitlementRequirementsForInvocation:*(a1 + 32)];
    if (v10)
    {
      if (v15)
      {
        v16 = [*(a1 + 32) blockArgumentIndex];
        *buf = 0;
        [*(a1 + 32) getArgument:buf atIndex:v16];
        v17 = NSStringFromSelector([*(a1 + 32) selector]);
        v18 = [*buf copy];
        v19 = v10;
        [v10 UTF8String];
        v32 = v17;
        v33 = v4;
        v34 = v18;
        v20 = v18;
        v21 = v17;
        v35 = __NSMakeSpecialForwardingCaptureBlock();
        [*(a1 + 32) setArgument:&v35 atIndex:v16];
        [*(a1 + 32) invoke];
        v22 = *(*(a1 + 56) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = 0;
      }

      else
      {
        v36 = *MEMORY[0x277CCA450];
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ is not entitled for this operation.", v14];
        v37 = v26;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];

        v28 = objc_alloc(MEMORY[0x277CCA9B8]);
        v29 = [v28 initWithDomain:*MEMORY[0x277D01448] code:3 userInfo:v27];
        [*(a1 + 48) rejectInvocation:*(a1 + 32) withError:v29 replyTypes:v10];
        v30 = *(*(a1 + 56) + 8);
        v31 = *(v30 + 40);
        *(v30 + 40) = 0;
      }
    }

    else
    {
      if (v15)
      {
        [*(a1 + 32) invoke];
      }

      v24 = *(*(a1 + 56) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = 0;
    }
  }
}

void __62__RTDaemonClientInternal_connection_handleInvocation_isReply___block_invoke_494(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = a1[4];
      v6 = [MEMORY[0x277CBEAA8] date];
      [v6 timeIntervalSinceDate:a1[5]];
      v8 = 138412546;
      v9 = v5;
      v10 = 2048;
      v11 = v7;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "Sending reply for request %@, latency, %.2f", &v8, 0x16u);
    }
  }

  [v3 setTarget:a1[6]];
  [v3 invoke];
}

- (void)setXpcConnection:(id)connection
{
  connectionCopy = connection;
  objc_storeStrong(&self->_xpcConnection, connection);
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    queue = [(RTDaemonClientInternal *)self queue];
    [(NSXPCConnection *)xpcConnection _setQueue:queue];

    v8 = self->_xpcConnection;
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2845DCEB8];
    [(NSXPCConnection *)v8 setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
    xpcConnection = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface = [xpcConnection exportedInterface];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    [exportedInterface setClasses:v14 forSelector:sel_injectLocations_reply_ argumentIndex:0 ofReply:0];

    xpcConnection2 = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface2 = [xpcConnection2 exportedInterface];
    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    [exportedInterface2 setClasses:v19 forSelector:sel_extendLifetimeOfVisitsWithIdentifiers_toExpireOn_reply_ argumentIndex:0 ofReply:0];

    xpcConnection3 = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface3 = [xpcConnection3 exportedInterface];
    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    [exportedInterface3 setClasses:v24 forSelector:sel_expireLifetimeOfVisitsWithIdentifiers_expirationDate_reply_ argumentIndex:0 ofReply:0];

    xpcConnection4 = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface4 = [xpcConnection4 exportedInterface];
    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    [exportedInterface4 setClasses:v29 forSelector:sel_storeHints_reply_ argumentIndex:0 ofReply:0];

    xpcConnection5 = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface5 = [xpcConnection5 exportedInterface];
    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    [exportedInterface5 setClasses:v34 forSelector:sel_fetchBuildingPolygonsFromLocations_radius_limit_reply_ argumentIndex:0 ofReply:0];

    xpcConnection6 = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface6 = [xpcConnection6 exportedInterface];
    v37 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    [exportedInterface6 setClasses:v39 forSelector:sel_fetchBuildingPolygonsFromLocations_radius_limit_reply_ argumentIndex:0 ofReply:1];

    xpcConnection7 = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface7 = [xpcConnection7 exportedInterface];
    v42 = MEMORY[0x277CBEB98];
    v43 = objc_opt_class();
    v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
    [exportedInterface7 setClasses:v44 forSelector:sel_injectPeopleDensityStats_duration_date_advertisements_handler_ argumentIndex:3 ofReply:0];

    xpcConnection8 = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface8 = [xpcConnection8 exportedInterface];
    v47 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [exportedInterface8 setClasses:v47 forSelector:sel_fetchPlaceInferenceQueriesWithDateInterval_ascending_reply_ argumentIndex:0 ofReply:0];

    xpcConnection9 = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface9 = [xpcConnection9 exportedInterface];
    v50 = MEMORY[0x277CBEB98];
    v51 = objc_opt_class();
    v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
    [exportedInterface9 setClasses:v52 forSelector:sel_fetchPlaceInferenceQueriesWithDateInterval_ascending_reply_ argumentIndex:0 ofReply:1];

    xpcConnection10 = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface10 = [xpcConnection10 exportedInterface];
    v55 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [exportedInterface10 setClasses:v55 forSelector:sel_fetchPointOfInterestsAroundCoordinate_radius_reply_ argumentIndex:0 ofReply:0];

    xpcConnection11 = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface11 = [xpcConnection11 exportedInterface];
    v58 = MEMORY[0x277CBEB98];
    v59 = objc_opt_class();
    v60 = [v58 setWithObjects:{v59, objc_opt_class(), 0}];
    [exportedInterface11 setClasses:v60 forSelector:sel_fetchPointOfInterestsAroundCoordinate_radius_reply_ argumentIndex:0 ofReply:1];

    xpcConnection12 = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface12 = [xpcConnection12 exportedInterface];
    v63 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [exportedInterface12 setClasses:v63 forSelector:sel_fetchPointOfInterestAttributesWithIdentifier_reply_ argumentIndex:0 ofReply:1];

    xpcConnection13 = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface13 = [xpcConnection13 exportedInterface];
    v66 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [exportedInterface13 setClasses:v66 forSelector:sel_fetchBluePOITileWithGeoTileKey_reply_ argumentIndex:0 ofReply:1];

    xpcConnection14 = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface14 = [xpcConnection14 exportedInterface];
    v69 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [exportedInterface14 setClasses:v69 forSelector:sel_fetchBluePOIMetadataWithHandler_ argumentIndex:0 ofReply:1];

    xpcConnection15 = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface15 = [xpcConnection15 exportedInterface];
    v72 = MEMORY[0x277CBEB98];
    v73 = objc_opt_class();
    v74 = [v72 setWithObjects:{v73, objc_opt_class(), 0}];
    [exportedInterface15 setClasses:v74 forSelector:sel_storeBluePOITiles_handler_ argumentIndex:0 ofReply:0];

    xpcConnection16 = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface16 = [xpcConnection16 exportedInterface];
    v77 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [exportedInterface16 setClasses:v77 forSelector:sel_fetchCurrentLocationWithReply_ argumentIndex:0 ofReply:1];

    xpcConnection17 = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface17 = [xpcConnection17 exportedInterface];
    v80 = MEMORY[0x277CBEB98];
    v81 = objc_opt_class();
    v82 = objc_opt_class();
    v83 = objc_opt_class();
    v84 = [v80 setWithObjects:{v81, v82, v83, objc_opt_class(), 0}];
    [exportedInterface17 setClasses:v84 forSelector:sel_fetchLocationsFromCoreLocationWithOptions_reply_ argumentIndex:0 ofReply:0];

    xpcConnection18 = [(RTDaemonClientInternal *)self xpcConnection];
    exportedInterface18 = [xpcConnection18 exportedInterface];
    v87 = MEMORY[0x277CBEB98];
    v88 = objc_opt_class();
    v89 = objc_opt_class();
    v90 = objc_opt_class();
    v91 = [v87 setWithObjects:{v88, v89, v90, objc_opt_class(), 0}];
    [exportedInterface18 setClasses:v91 forSelector:sel_fetchLocationsFromCoreLocationWithOptions_reply_ argumentIndex:0 ofReply:1];

    xpcConnection19 = [(RTDaemonClientInternal *)self xpcConnection];
    remoteObjectInterface = [xpcConnection19 remoteObjectInterface];
    [remoteObjectInterface setClass:objc_opt_class() forSelector:sel_fetchUserCurationsWithOptions_handler_ argumentIndex:0 ofReply:0];

    xpcConnection20 = [(RTDaemonClientInternal *)self xpcConnection];
    remoteObjectInterface2 = [xpcConnection20 remoteObjectInterface];
    v96 = MEMORY[0x277CBEB98];
    v97 = objc_opt_class();
    v98 = [v96 setWithObjects:{v97, objc_opt_class(), 0}];
    [remoteObjectInterface2 setClasses:v98 forSelector:sel_fetchUserCurationsWithOptions_handler_ argumentIndex:0 ofReply:1];

    objc_initWeak(&location, self);
    v99 = self->_xpcConnection;
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __43__RTDaemonClientInternal_setXpcConnection___block_invoke;
    v103[3] = &unk_2788C5908;
    objc_copyWeak(&v104, &location);
    [(NSXPCConnection *)v99 setInterruptionHandler:v103];
    v100 = self->_xpcConnection;
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __43__RTDaemonClientInternal_setXpcConnection___block_invoke_726;
    v101[3] = &unk_2788C5908;
    objc_copyWeak(&v102, &location);
    [(NSXPCConnection *)v100 setInvalidationHandler:v101];
    [(NSXPCConnection *)self->_xpcConnection resume];
    objc_destroyWeak(&v102);
    objc_destroyWeak(&v104);
    objc_destroyWeak(&location);
  }
}

void __43__RTDaemonClientInternal_setXpcConnection___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 138412290;
      v4 = WeakRetained;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "client, %@, handle xpc interruption", &v3, 0xCu);
    }
  }
}

void __43__RTDaemonClientInternal_setXpcConnection___block_invoke_726(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityConnection);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 138412290;
      v4 = WeakRetained;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "client, %@, handle xpc invalidation", &v3, 0xCu);
    }
  }

  [WeakRetained setXpcConnection:0];
}

- (void)fetchDataVaultPath:(id)path
{
  v8[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (pathCopy)
  {
    v7 = *MEMORY[0x277CCA450];
    v8[0] = @"This operation is unsupported on this platform.";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:1 userInfo:v4];
    pathCopy[2](pathCopy, 0, v5);
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v6, 2u);
    }
  }
}

- (void)fetchPathToBackupWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    diagnostics = [(RTDaemonClientInternal *)self diagnostics];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__RTDaemonClientInternal_fetchPathToBackupWithReply___block_invoke;
    v8[3] = &unk_2788CBAA0;
    v10 = a2;
    v8[4] = self;
    v9 = replyCopy;
    [diagnostics fetchPathToBackupWithHandler:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __53__RTDaemonClientInternal_fetchPathToBackupWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 48));
      v9 = *(a1 + 32);
      v10 = 138413058;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, reply to client, %@, pathToBackup, %@, error, %@", &v10, 0x2Au);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchAllLocationsOfInterestWithReply:(id)reply
{
  replyCopy = reply;
  v6 = replyCopy;
  if (replyCopy)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__RTDaemonClientInternal_fetchAllLocationsOfInterestWithReply___block_invoke;
    v9[3] = &unk_2788C5508;
    v9[4] = self;
    v11 = a2;
    v10 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager fetchAllLocationsOfInterestWithHandler:v9];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __63__RTDaemonClientInternal_fetchAllLocationsOfInterestWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RTDaemonClientInternal_fetchAllLocationsOfInterestWithReply___block_invoke_2;
  block[3] = &unk_2788C5110;
  v8 = *(a1 + 32);
  v14 = v5;
  v15 = v8;
  v16 = v6;
  v12 = *(a1 + 40);
  v9 = v12;
  v17 = v12;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void __63__RTDaemonClientInternal_fetchAllLocationsOfInterestWithReply___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = [*(a1 + 32) count];
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v9 = 138413058;
      v10 = v3;
      v11 = 2048;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, sending %lu locations of interest to client, %@, error, %@", &v9, 0x2Au);
    }
  }

  v7 = *(a1 + 56);
  v8 = [MEMORY[0x277D01170] locationsOfInterestFromLearnedLocationsOfInterest:*(a1 + 32)];
  (*(v7 + 16))(v7, v8, *(a1 + 48));
}

- (void)forceSequentialClusterIdentification:(id)identification
{
  identificationCopy = identification;
  if (identificationCopy)
  {
    learnedLocationManager = [(RTDaemonClientInternal *)self learnedLocationManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__RTDaemonClientInternal_forceSequentialClusterIdentification___block_invoke;
    v8[3] = &unk_2788C56C0;
    v8[4] = self;
    v10 = a2;
    v9 = identificationCopy;
    [learnedLocationManager trainForReason:2 mode:1 handler:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __63__RTDaemonClientInternal_forceSequentialClusterIdentification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RTDaemonClientInternal_forceSequentialClusterIdentification___block_invoke_2;
  block[3] = &unk_2788C4C20;
  block[4] = *(a1 + 32);
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __63__RTDaemonClientInternal_forceSequentialClusterIdentification___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)injectLocationOfInterest:(id)interest reply:(id)reply
{
  interestCopy = interest;
  replyCopy = reply;
  if (replyCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v10 = [[RTLearnedLocationOfInterest alloc] initWithLocationOfInterest:interestCopy creationDate:date];
    learnedLocationManager = self->_learnedLocationManager;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__RTDaemonClientInternal_injectLocationOfInterest_reply___block_invoke;
    v13[3] = &unk_2788C56C0;
    v13[4] = self;
    v15 = a2;
    v14 = replyCopy;
    selfCopy = self;
    [(RTLearnedLocationManager *)learnedLocationManager addLocationOfInterest:v10 handler:v13];
  }

  else
  {
    date = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, date, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __57__RTDaemonClientInternal_injectLocationOfInterest_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RTDaemonClientInternal_injectLocationOfInterest_reply___block_invoke_2;
  block[3] = &unk_2788C4C20;
  block[4] = *(a1 + 32);
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __57__RTDaemonClientInternal_injectLocationOfInterest_reply___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)injectVisit:(id)visit finerGranularityInferredMapItem:(id)item locationOfInterest:(id)interest reply:(id)reply
{
  visitCopy = visit;
  itemCopy = item;
  interestCopy = interest;
  replyCopy = reply;
  if (replyCopy)
  {
    [MEMORY[0x277CBEAA8] date];
    v15 = v23 = a2;
    v16 = [v15 dateByAddingTimeInterval:2419200.0];
    v17 = [[RTLearnedVisit alloc] initWithVisit:visitCopy locationOfInterest:interestCopy creationDate:v15 expirationDate:v16];
    v18 = [[RTLearnedLocationOfInterest alloc] initWithLocationOfInterest:interestCopy creationDate:v15];
    v19 = visitCopy;
    learnedLocationManager = self->_learnedLocationManager;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __95__RTDaemonClientInternal_injectVisit_finerGranularityInferredMapItem_locationOfInterest_reply___block_invoke;
    v24[3] = &unk_2788C56C0;
    v24[4] = self;
    v26 = v23;
    v25 = replyCopy;
    selfCopy = self;
    v22 = learnedLocationManager;
    visitCopy = v19;
    [(RTLearnedLocationManager *)v22 addVisit:v17 finerGranularityInferredMapItem:itemCopy locationOfInterest:v18 handler:v24];
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __95__RTDaemonClientInternal_injectVisit_finerGranularityInferredMapItem_locationOfInterest_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__RTDaemonClientInternal_injectVisit_finerGranularityInferredMapItem_locationOfInterest_reply___block_invoke_2;
  block[3] = &unk_2788C4C20;
  block[4] = *(a1 + 32);
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __95__RTDaemonClientInternal_injectVisit_finerGranularityInferredMapItem_locationOfInterest_reply___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchStoredLocationsCountFromDate:(id)date toDate:(id)toDate uncertainty:(double)uncertainty limit:(unint64_t)limit reply:(id)reply
{
  dateCopy = date;
  toDateCopy = toDate;
  replyCopy = reply;
  if (replyCopy)
  {
    locationManager = self->_locationManager;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __91__RTDaemonClientInternal_fetchStoredLocationsCountFromDate_toDate_uncertainty_limit_reply___block_invoke;
    v18[3] = &unk_2788CBAF0;
    v18[4] = self;
    v22 = a2;
    v19 = dateCopy;
    v20 = toDateCopy;
    uncertaintyCopy = uncertainty;
    limitCopy = limit;
    v21 = replyCopy;
    [(RTLocationManager *)locationManager fetchStoredLocationsCountFromDate:v19 toDate:v20 uncertainty:limit limit:v18 handler:uncertainty];
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __91__RTDaemonClientInternal_fetchStoredLocationsCountFromDate_toDate_uncertainty_limit_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__RTDaemonClientInternal_fetchStoredLocationsCountFromDate_toDate_uncertainty_limit_reply___block_invoke_2;
  block[3] = &unk_2788CBAC8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v16 = *(a1 + 64);
  v17 = a2;
  block[4] = v7;
  v12 = v8;
  v9 = *(a1 + 48);
  v18 = *(a1 + 72);
  v19 = *(a1 + 80);
  v13 = v9;
  v14 = v5;
  v15 = *(a1 + 56);
  v10 = v5;
  dispatch_async(v6, block);
}

uint64_t __91__RTDaemonClientInternal_fetchStoredLocationsCountFromDate_toDate_uncertainty_limit_reply___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 72));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 80);
      v7 = *(a1 + 88);
      v8 = *(a1 + 96);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v12 = 138414082;
      v13 = v3;
      v14 = 2112;
      v15 = v4;
      v16 = 2048;
      v17 = v6;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v9;
      v22 = 2048;
      v23 = v7;
      v24 = 2048;
      v25 = v8;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, %lu location fromDate, %@, toDate, %@, uncertainty, %.2f, limit, %lu, error, %@", &v12, 0x52u);
    }
  }

  return (*(*(a1 + 64) + 16))();
}

- (void)fetchLocationsOfInterestWithVisitsWithinDistance:(id)distance location:(id)location reply:(id)reply
{
  v46[1] = *MEMORY[0x277D85DE8];
  distanceCopy = distance;
  locationCopy = location;
  replyCopy = reply;
  if (replyCopy)
  {
    if (distanceCopy)
    {
      *buf = 0;
      v36 = buf;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__85;
      v39 = __Block_byref_object_dispose__85;
      v12 = MEMORY[0x277CCACA8];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v16 = [v12 stringWithFormat:@"%@-%@", v14, v15];
      v17 = v16;
      [v16 UTF8String];
      v40 = os_transaction_create();

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          v28 = NSStringFromSelector(a2);
          *v41 = 138412546;
          v42 = v27;
          v43 = 2112;
          v44 = v28;
          _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", v41, 0x16u);
        }
      }

      learnedLocationStore = self->_learnedLocationStore;
      [distanceCopy doubleValue];
      v21 = v20;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __90__RTDaemonClientInternal_fetchLocationsOfInterestWithVisitsWithinDistance_location_reply___block_invoke;
      v29[3] = &unk_2788CBB40;
      v29[4] = self;
      v34 = a2;
      v30 = distanceCopy;
      v31 = locationCopy;
      v32 = replyCopy;
      v33 = buf;
      [(RTLearnedLocationStore *)learnedLocationStore fetchLocationsOfInterestWithVisitsWithinDistance:v31 location:v29 handler:v21];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v23 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA450];
      v46[0] = @"distance cannot be nil";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v24];

      (*(replyCopy + 2))(replyCopy, 0, v25);
    }
  }

  else
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __90__RTDaemonClientInternal_fetchLocationsOfInterestWithVisitsWithinDistance_location_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__RTDaemonClientInternal_fetchLocationsOfInterestWithVisitsWithinDistance_location_reply___block_invoke_2;
  v13[3] = &unk_2788CBB18;
  v21 = *(a1 + 72);
  v14 = v5;
  v15 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v16 = v8;
  v17 = v9;
  v10 = *(a1 + 56);
  v18 = v6;
  v19 = v10;
  v20 = *(a1 + 64);
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, v13);
}

void __90__RTDaemonClientInternal_fetchLocationsOfInterestWithVisitsWithinDistance_location_reply___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 88));
      v4 = [*(a1 + 32) count];
      [*(a1 + 40) doubleValue];
      v6 = v5;
      v7 = [*(a1 + 48) coordinateToString];
      v8 = *(a1 + 56);
      v13 = 138413315;
      v14 = v3;
      v15 = 2048;
      v16 = v4;
      v17 = 2048;
      v18 = v6;
      v19 = 2117;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, sending %lu locations of interest within %.2fm of %{sensitive}@ to client, %@", &v13, 0x34u);
    }
  }

  v9 = *(a1 + 72);
  v10 = [MEMORY[0x277D01170] locationsOfInterestFromLearnedLocationsOfInterest:*(a1 + 32)];
  (*(v9 + 16))(v9, v10, *(a1 + 64));

  v11 = *(*(a1 + 80) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

- (void)fetchVisitsWithReply:(id)reply
{
  replyCopy = reply;
  v5 = replyCopy;
  if (replyCopy)
  {
    learnedLocationStore = self->_learnedLocationStore;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__RTDaemonClientInternal_fetchVisitsWithReply___block_invoke;
    v8[3] = &unk_2788C6D60;
    v9 = replyCopy;
    [(RTLearnedLocationStore *)learnedLocationStore fetchVisitsWithHandler:v8];
    v7 = v9;
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __47__RTDaemonClientInternal_fetchVisitsWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14 = objc_alloc(MEMORY[0x277D01188]);
        v15 = [v14 initWithRTLearnedVisit:{v13, v16}];
        if (v15)
        {
          [v7 addObject:v15];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)forceRelabeling:(id)relabeling
{
  if (relabeling)
  {
    learnedLocationManager = self->_learnedLocationManager;

    [(RTLearnedLocationManager *)learnedLocationManager forceRelabeling:?];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v7, 2u);
    }
  }
}

- (void)forcePlaceTypeClassificationWithReply:(id)reply
{
  replyCopy = reply;
  v5 = replyCopy;
  if (replyCopy)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__RTDaemonClientInternal_forcePlaceTypeClassificationWithReply___block_invoke;
    v8[3] = &unk_2788C48C0;
    v9 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager classifyPlaceTypesWithHandler:v8];
    v7 = v9;
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

- (void)forcePredictedLocationContextModelTrainingWithReply:(id)reply
{
  if (reply)
  {
    predictedContextManager = self->_predictedContextManager;

    [(RTPredictedContextManager *)predictedContextManager forceTrainModelWithHandler:?];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v7, 2u);
    }
  }
}

- (void)simulateScenarioTrigger:(id)trigger reply:(id)reply
{
  replyCopy = reply;
  v7 = replyCopy;
  if (replyCopy)
  {
    scenarioTriggerManager = self->_scenarioTriggerManager;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__RTDaemonClientInternal_simulateScenarioTrigger_reply___block_invoke;
    v10[3] = &unk_2788CBB68;
    v10[4] = self;
    v11 = replyCopy;
    [(RTScenarioTriggerManager *)scenarioTriggerManager simulateScenarioTrigger:trigger handler:v10];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __56__RTDaemonClientInternal_simulateScenarioTrigger_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RTDaemonClientInternal_simulateScenarioTrigger_reply___block_invoke_2;
  block[3] = &unk_2788C6210;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)forceUpdateAssetMetadataWithReply:(id)reply
{
  replyCopy = reply;
  v5 = replyCopy;
  if (replyCopy)
  {
    assetManager = self->_assetManager;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__RTDaemonClientInternal_forceUpdateAssetMetadataWithReply___block_invoke;
    v8[3] = &unk_2788C48C0;
    v9 = replyCopy;
    [(RTAssetManager *)assetManager forceUpdateAssetMetadataWithHandler:v8];
    v7 = v9;
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

- (void)updateAssetServerURL:(id)l assetType:(id)type reply:(id)reply
{
  replyCopy = reply;
  v9 = replyCopy;
  if (replyCopy)
  {
    assetManager = self->_assetManager;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__RTDaemonClientInternal_updateAssetServerURL_assetType_reply___block_invoke;
    v12[3] = &unk_2788C4F60;
    v12[4] = self;
    v13 = replyCopy;
    [(RTAssetManager *)assetManager updateAssetServerURL:l assetType:type handler:v12];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __63__RTDaemonClientInternal_updateAssetServerURL_assetType_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__RTDaemonClientInternal_updateAssetServerURL_assetType_reply___block_invoke_2;
  v7[3] = &unk_2788C4D38;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)forceEventModelRefreshWithReply:(id)reply
{
  replyCopy = reply;
  v5 = replyCopy;
  if (replyCopy)
  {
    eventModelProvider = self->_eventModelProvider;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__RTDaemonClientInternal_forceEventModelRefreshWithReply___block_invoke;
    v8[3] = &unk_2788C4F60;
    v8[4] = self;
    v9 = replyCopy;
    [(RTEventModelProvider *)eventModelProvider refreshAllLOIHistogramsWithHandler:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __58__RTDaemonClientInternal_forceEventModelRefreshWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RTDaemonClientInternal_forceEventModelRefreshWithReply___block_invoke_2;
  v7[3] = &unk_2788C4D38;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __58__RTDaemonClientInternal_forceEventModelRefreshWithReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)injectLocations:(id)locations reply:(id)reply
{
  replyCopy = reply;
  v7 = replyCopy;
  if (replyCopy)
  {
    locationManager = self->_locationManager;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__RTDaemonClientInternal_injectLocations_reply___block_invoke;
    v10[3] = &unk_2788C4F60;
    v10[4] = self;
    v11 = replyCopy;
    [(RTLocationManager *)locationManager injectLocations:locations handler:v10];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __48__RTDaemonClientInternal_injectLocations_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__RTDaemonClientInternal_injectLocations_reply___block_invoke_2;
  v7[3] = &unk_2788C4D38;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __48__RTDaemonClientInternal_injectLocations_reply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)storeHints:(id)hints reply:(id)reply
{
  replyCopy = reply;
  hintManager = self->_hintManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__RTDaemonClientInternal_storeHints_reply___block_invoke;
  v9[3] = &unk_2788C48C0;
  v10 = replyCopy;
  v8 = replyCopy;
  [(RTHintManager *)hintManager storeHints:hints handler:v9];
}

uint64_t __43__RTDaemonClientInternal_storeHints_reply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)injectSignalForSignalGeneratorOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  v7 = replyCopy;
  if (replyCopy)
  {
    locationManager = self->_locationManager;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__RTDaemonClientInternal_injectSignalForSignalGeneratorOptions_reply___block_invoke;
    v10[3] = &unk_2788C48C0;
    v11 = replyCopy;
    [RTSignalGenerator injectSignalForSignalGeneratorOptions:options locationManager:locationManager handler:v10];
    v9 = v11;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

- (void)clearAllLocationsOfInterestWithReply:(id)reply
{
  replyCopy = reply;
  v5 = replyCopy;
  if (replyCopy)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__RTDaemonClientInternal_clearAllLocationsOfInterestWithReply___block_invoke;
    v8[3] = &unk_2788C4F60;
    v8[4] = self;
    v9 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager removeAllLocationsOfInterestWithHandler:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __63__RTDaemonClientInternal_clearAllLocationsOfInterestWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__RTDaemonClientInternal_clearAllLocationsOfInterestWithReply___block_invoke_2;
  v7[3] = &unk_2788C4D38;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __63__RTDaemonClientInternal_clearAllLocationsOfInterestWithReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updateTransitionWithIdentifier:(id)identifier modeOfTransportation:(int64_t)transportation reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  if (replyCopy)
  {
    -[RTLearnedLocationManager updateTransitionWithIdentifier:motionActivityType:handler:](self->_learnedLocationManager, "updateTransitionWithIdentifier:motionActivityType:handler:", identifierCopy, [MEMORY[0x277D01180] motionActivityTypeFromModeOfTransportation:transportation], replyCopy);
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v11, 2u);
    }
  }
}

- (void)reconstructTransitionsWithReply:(id)reply
{
  if (reply)
  {
    learnedLocationManager = self->_learnedLocationManager;

    [(RTLearnedLocationManager *)learnedLocationManager reconstructTransitionsWithHandler:?];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v7, 2u);
    }
  }
}

- (void)simulateVisit:(id)visit reply:(id)reply
{
  if (reply)
  {
    visitManager = self->_visitManager;

    [(RTVisitManager *)visitManager simulateVisit:visit handler:?];
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v8, 2u);
    }
  }
}

- (void)fetchVisitsBetweenStartDate:(id)date endDate:(id)endDate reply:(id)reply
{
  replyCopy = reply;
  v9 = replyCopy;
  if (replyCopy)
  {
    visitManager = self->_visitManager;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__RTDaemonClientInternal_fetchVisitsBetweenStartDate_endDate_reply___block_invoke;
    v12[3] = &unk_2788C5558;
    v12[4] = self;
    v13 = replyCopy;
    [(RTVisitManager *)visitManager fetchVisitsFromDate:date toDate:endDate handler:v12];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __68__RTDaemonClientInternal_fetchVisitsBetweenStartDate_endDate_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v5 count];
      v9 = *(a1 + 32);
      v10 = 134218242;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "sending %lu visits to client, %@", &v10, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)injectRealtimeVisit:(id)visit reply:(id)reply
{
  if (reply)
  {
    visitManager = self->_visitManager;

    [(RTVisitManager *)visitManager injectRealtimeVisit:visit handler:?];
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v8, 2u);
    }
  }
}

- (void)simulatePredictedContextResult:(id)result reply:(id)reply
{
  if (reply)
  {
    predictedContextManager = self->_predictedContextManager;

    [(RTPredictedContextManager *)predictedContextManager simulatePredictedContextResult:result handler:?];
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v8, 2u);
    }
  }
}

- (void)fetchPredictedContextInputSignalsWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *v7 = 0;
        _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "Fetching predicted context input signals", v7, 2u);
      }
    }

    [(RTPredictedContextManager *)self->_predictedContextManager fetchPredictedContextInputSignalsWithHandler:replyCopy];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

- (void)submitHintAtLocation:(id)location hintSource:(int64_t)source reply:(id)reply
{
  v17[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  replyCopy = reply;
  if (replyCopy)
  {
    if (locationCopy)
    {
      [(RTHintManager *)self->_hintManager submitHintFromSource:source location:locationCopy];
      replyCopy[2](replyCopy, 0);
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v16 = *MEMORY[0x277CCA450];
      v17[0] = @"Valid location required.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v14 = [v11 errorWithDomain:v12 code:7 userInfo:v13];
      (replyCopy)[2](replyCopy, v14);
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v15, 2u);
    }
  }
}

- (void)fetchFusionCandidatesForVisitIdentifier:(id)identifier reply:(id)reply
{
  replyCopy = reply;
  v8 = replyCopy;
  if (replyCopy)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__RTDaemonClientInternal_fetchFusionCandidatesForVisitIdentifier_reply___block_invoke;
    v11[3] = &unk_2788C6BF8;
    v13 = a2;
    v12 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager fetchFusionCandidatesForVisitIdentifier:identifier handler:v11];
    v10 = v12;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __72__RTDaemonClientInternal_fetchFusionCandidatesForVisitIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 40));
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, done", &v11, 0xCu);
    }
  }

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v10 = [[_RTMap alloc] initWithInput:v5];
    v9 = [(_RTMap *)v10 withBlock:&__block_literal_global_70];
  }

  (*(*(a1 + 32) + 16))();
}

id __72__RTDaemonClientInternal_fetchFusionCandidatesForVisitIdentifier_reply___block_invoke_749(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D01170];
  v3 = a2;
  v4 = [v3 secondObject];
  v5 = [v2 typeFromPlaceType:{objc_msgSend(v4, "unsignedIntegerValue")}];

  v6 = objc_alloc(MEMORY[0x277D011C0]);
  v7 = [v3 firstObject];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v9 = [v6 initWithFirstObject:v7 secondObject:v8];

  return v9;
}

- (void)fetchInferredMapItemForVisitIdentifier:(id)identifier reply:(id)reply
{
  replyCopy = reply;
  v8 = replyCopy;
  if (replyCopy)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__RTDaemonClientInternal_fetchInferredMapItemForVisitIdentifier_reply___block_invoke;
    v11[3] = &unk_2788CBBD8;
    v11[4] = self;
    v13 = a2;
    v12 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager fetchInferredMapItemForVisitIdentifier:identifier handler:v11];
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __71__RTDaemonClientInternal_fetchInferredMapItemForVisitIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTDaemonClientInternal_fetchInferredMapItemForVisitIdentifier_reply___block_invoke_2;
  block[3] = &unk_2788CBBB0;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __71__RTDaemonClientInternal_fetchInferredMapItemForVisitIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, done", &v5, 0xCu);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)queryProvider:(id)provider options:(id)options reply:(id)reply
{
  replyCopy = reply;
  v10 = replyCopy;
  if (replyCopy)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__RTDaemonClientInternal_queryProvider_options_reply___block_invoke;
    v13[3] = &unk_2788C5508;
    v13[4] = self;
    v15 = a2;
    v14 = replyCopy;
    [(RTLearnedLocationManager *)learnedLocationManager queryProvider:provider options:options handler:v13];
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __54__RTDaemonClientInternal_queryProvider_options_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RTDaemonClientInternal_queryProvider_options_reply___block_invoke_2;
  block[3] = &unk_2788CBBB0;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __54__RTDaemonClientInternal_queryProvider_options_reply___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, done", &v5, 0xCu);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchFingerprintsWithOptions:(id)options reply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  if (!replyCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }

    goto LABEL_9;
  }

  if (!optionsCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[RTDaemonClientInternal fetchFingerprintsWithOptions:reply:]";
      v24 = 1024;
      v25 = 960;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D01448];
    v20 = *MEMORY[0x277CCA450];
    v21 = @"requires valid options.";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v12 = [v14 errorWithDomain:v15 code:7 userInfo:v16];

    replyCopy[2](replyCopy, 0, v12);
LABEL_9:

    goto LABEL_10;
  }

  fingerprintManager = self->_fingerprintManager;
  dateInterval = [optionsCopy dateInterval];
  settledState = [optionsCopy settledState];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__RTDaemonClientInternal_fetchFingerprintsWithOptions_reply___block_invoke;
  v17[3] = &unk_2788C5508;
  v17[4] = self;
  v19 = a2;
  v18 = replyCopy;
  [(RTFingerprintManager *)fingerprintManager fetchFingerprintsInDateInterval:dateInterval filteredBySettledState:settledState handler:v17];

LABEL_10:
}

void __61__RTDaemonClientInternal_fetchFingerprintsWithOptions_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTDaemonClientInternal_fetchFingerprintsWithOptions_reply___block_invoke_2;
  block[3] = &unk_2788CBBB0;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __61__RTDaemonClientInternal_fetchFingerprintsWithOptions_reply___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, done", &v5, 0xCu);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchWiFiAccessPointsForFingerprint:(id)fingerprint reply:(id)reply
{
  v25 = *MEMORY[0x277D85DE8];
  fingerprintCopy = fingerprint;
  replyCopy = reply;
  v9 = replyCopy;
  if (!replyCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }

    goto LABEL_9;
  }

  if (!fingerprintCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[RTDaemonClientInternal fetchWiFiAccessPointsForFingerprint:reply:]";
      v23 = 1024;
      v24 = 986;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fingerprint (in %s:%d)", buf, 0x12u);
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D01448];
    v19 = *MEMORY[0x277CCA450];
    v20 = @"requires a valid fingerprint.";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v11 = [v13 errorWithDomain:v14 code:7 userInfo:v15];

    (v9)[2](v9, 0, v11);
LABEL_9:

    goto LABEL_10;
  }

  fingerprintManager = self->_fingerprintManager;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__RTDaemonClientInternal_fetchWiFiAccessPointsForFingerprint_reply___block_invoke;
  v16[3] = &unk_2788C5508;
  v16[4] = self;
  v18 = a2;
  v17 = replyCopy;
  [(RTFingerprintManager *)fingerprintManager fetchWifiAccessPointsForFingerprint:fingerprintCopy handler:v16];

LABEL_10:
}

void __68__RTDaemonClientInternal_fetchWiFiAccessPointsForFingerprint_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTDaemonClientInternal_fetchWiFiAccessPointsForFingerprint_reply___block_invoke_2;
  block[3] = &unk_2788CBBB0;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __68__RTDaemonClientInternal_fetchWiFiAccessPointsForFingerprint_reply___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, done", &v5, 0xCu);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)injectFingerprintWithIdentifier:(id)identifier settledState:(unint64_t)state start:(id)start reply:(id)reply
{
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  startCopy = start;
  replyCopy = reply;
  if (replyCopy)
  {
    if (!identifierCopy)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v37 = "[RTDaemonClientInternal injectFingerprintWithIdentifier:settledState:start:reply:]";
        v38 = 1024;
        v39 = 1013;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
      }
    }

    if (state >= 3)
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v37 = "[RTDaemonClientInternal injectFingerprintWithIdentifier:settledState:start:reply:]";
        v38 = 1024;
        v39 = 1014;
        _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: RTScenarioTriggerSettledStateIsValid(settledState) (in %s:%d)", buf, 0x12u);
      }

      if (startCopy)
      {
LABEL_8:
        if (identifierCopy)
        {
          goto LABEL_9;
        }

        goto LABEL_20;
      }
    }

    else if (startCopy)
    {
      goto LABEL_8;
    }

    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "[RTDaemonClientInternal injectFingerprintWithIdentifier:settledState:start:reply:]";
      v38 = 1024;
      v39 = 1015;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: start (in %s:%d)", buf, 0x12u);
    }

    if (identifierCopy)
    {
LABEL_9:
      if (state >= 3)
      {
        v20 = MEMORY[0x277CCA9B8];
        v21 = *MEMORY[0x277D01448];
        v32 = *MEMORY[0x277CCA450];
        v33 = @"requires a valid settledState.";
        v22 = MEMORY[0x277CBEAC0];
        v23 = &v33;
        v24 = &v32;
      }

      else
      {
        if (startCopy)
        {
          v15 = [objc_alloc(MEMORY[0x277D01108]) initWithIdentifier:identifierCopy settledState:state start:startCopy accessPoints:0];
          fingerprintManager = self->_fingerprintManager;
          v29 = v15;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __83__RTDaemonClientInternal_injectFingerprintWithIdentifier_settledState_start_reply___block_invoke;
          v26[3] = &unk_2788C56C0;
          v26[4] = self;
          v28 = a2;
          v27 = replyCopy;
          [(RTFingerprintManager *)fingerprintManager injectFingerprints:v17 handler:v26];

          goto LABEL_24;
        }

        v20 = MEMORY[0x277CCA9B8];
        v21 = *MEMORY[0x277D01448];
        v30 = *MEMORY[0x277CCA450];
        v31 = @"requires a valid start.";
        v22 = MEMORY[0x277CBEAC0];
        v23 = &v31;
        v24 = &v30;
      }

LABEL_23:
      v25 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
      v15 = [v20 errorWithDomain:v21 code:7 userInfo:v25];

      (*(replyCopy + 2))(replyCopy, v15);
      goto LABEL_24;
    }

LABEL_20:
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D01448];
    v34 = *MEMORY[0x277CCA450];
    v35 = @"requires a valid identifier.";
    v22 = MEMORY[0x277CBEAC0];
    v23 = &v35;
    v24 = &v34;
    goto LABEL_23;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
  }

LABEL_24:
}

void __83__RTDaemonClientInternal_injectFingerprintWithIdentifier_settledState_start_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__RTDaemonClientInternal_injectFingerprintWithIdentifier_settledState_start_reply___block_invoke_2;
  block[3] = &unk_2788CBC00;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __83__RTDaemonClientInternal_injectFingerprintWithIdentifier_settledState_start_reply___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 48));
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, done", &v5, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)injectFingerprintWithSettledState:(BOOL)state start:(id)start reply:(id)reply
{
  stateCopy = state;
  v21[1] = *MEMORY[0x277D85DE8];
  startCopy = start;
  replyCopy = reply;
  if (replyCopy)
  {
    if (stateCopy)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v12 = objc_alloc(MEMORY[0x277D01108]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    v14 = [v12 initWithIdentifier:uUID settledState:v11 start:startCopy accessPoints:0];

    fingerprintManager = self->_fingerprintManager;
    v21[0] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__RTDaemonClientInternal_injectFingerprintWithSettledState_start_reply___block_invoke;
    v17[3] = &unk_2788C56C0;
    v17[4] = self;
    v19 = a2;
    v18 = replyCopy;
    [(RTFingerprintManager *)fingerprintManager injectFingerprints:v16 handler:v17];
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __72__RTDaemonClientInternal_injectFingerprintWithSettledState_start_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__RTDaemonClientInternal_injectFingerprintWithSettledState_start_reply___block_invoke_2;
  block[3] = &unk_2788CBC00;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __72__RTDaemonClientInternal_injectFingerprintWithSettledState_start_reply___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 48));
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, done", &v5, 0xCu);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)injectWiFiAccessPointWithMac:(id)mac rssi:(int64_t)rssi channel:(int64_t)channel age:(double)age date:(id)date reply:(id)reply
{
  v25[1] = *MEMORY[0x277D85DE8];
  macCopy = mac;
  dateCopy = date;
  replyCopy = reply;
  if (replyCopy)
  {
    v18 = [objc_alloc(MEMORY[0x277D01430]) initWithMac:macCopy rssi:rssi channel:channel age:dateCopy date:age];
    fingerprintManager = self->_fingerprintManager;
    v25[0] = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __83__RTDaemonClientInternal_injectWiFiAccessPointWithMac_rssi_channel_age_date_reply___block_invoke;
    v21[3] = &unk_2788C56C0;
    v21[4] = self;
    v23 = a2;
    v22 = replyCopy;
    [(RTFingerprintManager *)fingerprintManager injectWifiAccessPointsToLastFingerprint:v20 handler:v21];
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __83__RTDaemonClientInternal_injectWiFiAccessPointWithMac_rssi_channel_age_date_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__RTDaemonClientInternal_injectWiFiAccessPointWithMac_rssi_channel_age_date_reply___block_invoke_2;
  block[3] = &unk_2788CBC00;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __83__RTDaemonClientInternal_injectWiFiAccessPointWithMac_rssi_channel_age_date_reply___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 48));
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, done", &v5, 0xCu);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)logDatabasesWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    learnedLocationManager = [(RTDaemonClientInternal *)self learnedLocationManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__RTDaemonClientInternal_logDatabasesWithReply___block_invoke;
    v7[3] = &unk_2788C4F60;
    v7[4] = self;
    v8 = replyCopy;
    [learnedLocationManager logDatabasesWithHandler:v7];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __48__RTDaemonClientInternal_logDatabasesWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__RTDaemonClientInternal_logDatabasesWithReply___block_invoke_2;
  v7[3] = &unk_2788C4D38;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)logSafetyCacheWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    safetyCacheStore = [(RTDaemonClientInternal *)self safetyCacheStore];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__RTDaemonClientInternal_logSafetyCacheWithReply___block_invoke;
    v7[3] = &unk_2788C4F60;
    v7[4] = self;
    v8 = replyCopy;
    [safetyCacheStore logStoreWithHandler:v7];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __50__RTDaemonClientInternal_logSafetyCacheWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__RTDaemonClientInternal_logSafetyCacheWithReply___block_invoke_2;
  v9[3] = &unk_2788C4D38;
  v5 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  dispatch_async(v4, v9);

  (*(*(a1 + 40) + 16))(*(a1 + 40), v6, v7, v8);
}

- (void)performExportMirroringRequest:(id)request
{
  if (request)
  {
    persistenceManager = self->_persistenceManager;

    [(RTPersistenceManager *)persistenceManager performExportMirroringRequest:?];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v7, 2u);
    }
  }
}

- (void)performImportMirroringRequest:(id)request
{
  if (request)
  {
    persistenceManager = self->_persistenceManager;

    [(RTPersistenceManager *)persistenceManager performImportMirroringRequest:?];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v7, 2u);
    }
  }
}

- (void)performZoneResetMirroringRequest:(id)request
{
  if (request)
  {
    persistenceManager = self->_persistenceManager;

    [(RTPersistenceManager *)persistenceManager performZoneResetMirroringRequest:?];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v7, 2u);
    }
  }
}

- (void)mirroringDelegateSetupState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy)
  {
    persistenceManager = self->_persistenceManager;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__RTDaemonClientInternal_mirroringDelegateSetupState___block_invoke;
    v8[3] = &unk_2788CBC28;
    v9 = stateCopy;
    [(RTPersistenceManager *)persistenceManager mirroringDelegateSetupState:v8];
    v7 = v9;
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

- (void)schemaUpdateWithModelFile:(id)file reply:(id)reply
{
  v25[1] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  replyCopy = reply;
  if (replyCopy)
  {
    if (fileCopy)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          v12 = NSStringFromSelector(a2);
          *buf = 138412802;
          v19 = v11;
          v20 = 2112;
          v21 = v12;
          v22 = 2112;
          v23 = fileCopy;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@:%@, Dispatching CloudKit schema update, modelFile, %@", buf, 0x20u);
        }
      }

      persistenceManager = self->_persistenceManager;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __58__RTDaemonClientInternal_schemaUpdateWithModelFile_reply___block_invoke;
      v16[3] = &unk_2788C48C0;
      v17 = replyCopy;
      [(RTPersistenceManager *)persistenceManager schemaUpdateWithModelFile:fileCopy handler:v16];
      v14 = v17;
    }

    else
    {
      v24 = *MEMORY[0x277CCA450];
      v25[0] = @"file path to model is required.";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v14];
      (*(replyCopy + 2))(replyCopy, v15);
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

- (void)tearDownPersistenceStack:(id)stack
{
  if (stack)
  {
    persistenceManager = self->_persistenceManager;

    [(RTPersistenceManager *)persistenceManager tearDownPersistenceStack:?];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v7, 2u);
    }
  }
}

- (void)fetchFMCEnabledWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    vehicleLocationProvider = [(RTDaemonClientInternal *)self vehicleLocationProvider];
    [vehicleLocationProvider fetchFMCEnabledWithHandler:replyCopy];
  }

  else
  {
    vehicleLocationProvider = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(vehicleLocationProvider, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, vehicleLocationProvider, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v6, 2u);
    }
  }
}

- (void)fetchMotionActivitiesFromStartDate:(id)date endDate:(id)endDate reply:(id)reply
{
  dateCopy = date;
  endDateCopy = endDate;
  replyCopy = reply;
  if (replyCopy)
  {
    motionActivityManager = self->_motionActivityManager;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __75__RTDaemonClientInternal_fetchMotionActivitiesFromStartDate_endDate_reply___block_invoke;
    v14[3] = &unk_2788C5D18;
    v18 = a2;
    v14[4] = self;
    v15 = dateCopy;
    v16 = endDateCopy;
    v17 = replyCopy;
    [(RTMotionActivityManager *)motionActivityManager fetchMotionActivitiesFromStartDate:v15 endDate:v16 handler:v14];
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __75__RTDaemonClientInternal_fetchMotionActivitiesFromStartDate_endDate_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 64));
      v9 = *(a1 + 32);
      v10 = [v5 count];
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = 138413570;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2048;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, reply to client, %@, %lu activites from startDate, %@, to endDate, %@, error, %@", &v13, 0x3Eu);
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (void)submitMetrics:(id)metrics metricName:(id)name reply:(id)reply
{
  v33[1] = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  nameCopy = name;
  replyCopy = reply;
  if (replyCopy)
  {
    v10 = NSClassFromString(nameCopy);
    if (v10)
    {
      v11 = v10;
      if (([(objc_class *)v10 conformsToProtocol:&unk_2845A6200]& 1) != 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = objc_alloc_init(v11);
          v26 = 0;
          [v12 setAllMetrics:metricsCopy error:&v26];
          v13 = v26;
          if (v13)
          {
            v14 = v13;
            v15 = replyCopy[2];
          }

          else
          {
            v25 = 0;
            v22 = [v12 submitMetricsWithError:&v25];
            v14 = v25;
            v15 = replyCopy[2];
            if (v22)
            {
              v23 = replyCopy;
              v24 = 0;
LABEL_17:
              v15(v23, v24);

              goto LABEL_13;
            }
          }

          v23 = replyCopy;
          v24 = v14;
          goto LABEL_17;
        }

        v16 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277D01448];
        v28 = *MEMORY[0x277CCA450];
        v29 = @"metric provided is not a subclass of RTMetric";
        v18 = MEMORY[0x277CBEAC0];
        v19 = &v29;
        v20 = &v28;
      }

      else
      {
        v16 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277D01448];
        v30 = *MEMORY[0x277CCA450];
        v31 = @"metric provided does not conform to RTMetricProtocol";
        v18 = MEMORY[0x277CBEAC0];
        v19 = &v31;
        v20 = &v30;
      }
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D01448];
      v32 = *MEMORY[0x277CCA450];
      v33[0] = @"metric class cannot be nil";
      v18 = MEMORY[0x277CBEAC0];
      v19 = v33;
      v20 = &v32;
    }

    v21 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:1];
    v12 = [v16 errorWithDomain:v17 code:7 userInfo:v21];

    (replyCopy[2])(replyCopy, v12);
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }

LABEL_13:
}

- (void)submitTransitMetricsWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    learnedLocationEngine = [(RTLearnedLocationManager *)self->_learnedLocationManager learnedLocationEngine];
    [learnedLocationEngine performTransitAnalyticsWithHandler:replyCopy];
  }

  else
  {
    learnedLocationEngine = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(learnedLocationEngine, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, learnedLocationEngine, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v6, 2u);
    }
  }
}

- (void)expireLifetimeOfVisitsWithIdentifiers:(id)identifiers expirationDate:(id)date reply:(id)reply
{
  if (reply)
  {
    learnedLocationStore = self->_learnedLocationStore;

    [(RTLearnedLocationStore *)learnedLocationStore expireLifetimeOfVisitsWithIdentifiers:identifiers expirationDate:date handler:?];
  }

  else
  {
    v10 = v5;
    v11 = v6;
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v9, 2u);
    }
  }
}

- (void)extendLifetimeOfVisitsWithIdentifiers:(id)identifiers toExpireOn:(id)on reply:(id)reply
{
  if (reply)
  {
    learnedLocationStore = self->_learnedLocationStore;

    [(RTLearnedLocationStore *)learnedLocationStore updateExpirationDateOfVisitsWithIdentifiers:identifiers expirationDate:on allowThresholdBypass:1 handler:reply];
  }

  else
  {
    v10 = v5;
    v11 = v6;
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v9, 2u);
    }
  }
}

- (void)forceProcessWorkoutsClearClusters:(BOOL)clusters clearExistingDistanceMatrix:(BOOL)matrix buildDistanceMatrix:(BOOL)distanceMatrix syncClustersToHealhtKit:(BOOL)kit syncClustersToWatch:(BOOL)watch filteringDistanceThreshold:(double)threshold topNWorkouts:(unint64_t)workouts isSchedulerTriggered:(BOOL)self0 reply:(id)self1
{
  watchCopy = watch;
  kitCopy = kit;
  distanceMatrixCopy = distanceMatrix;
  matrixCopy = matrix;
  clustersCopy = clusters;
  replyCopy = reply;
  if (replyCopy)
  {
    workoutsCopy = workouts;
    v31 = a2;
    v21 = dispatch_group_create();
    v22 = objc_opt_new();
    if (matrixCopy)
    {
      dispatch_group_enter(v21);
      workoutScheduler = [(RTDaemonClientInternal *)self workoutScheduler];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __219__RTDaemonClientInternal_forceProcessWorkoutsClearClusters_clearExistingDistanceMatrix_buildDistanceMatrix_syncClustersToHealhtKit_syncClustersToWatch_filteringDistanceThreshold_topNWorkouts_isSchedulerTriggered_reply___block_invoke;
      v39[3] = &unk_2788CB988;
      v39[4] = self;
      v40 = v22;
      v41 = v21;
      [workoutScheduler clearTaskStatesWithHandler:v39];
    }

    dispatch_group_enter(v21);
    workoutRouteManager = [(RTDaemonClientInternal *)self workoutRouteManager];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __219__RTDaemonClientInternal_forceProcessWorkoutsClearClusters_clearExistingDistanceMatrix_buildDistanceMatrix_syncClustersToHealhtKit_syncClustersToWatch_filteringDistanceThreshold_topNWorkouts_isSchedulerTriggered_reply___block_invoke_3;
    v36[3] = &unk_2788CB988;
    v36[4] = self;
    v25 = v22;
    v37 = v25;
    v38 = v21;
    v26 = v21;
    LOBYTE(v29) = triggered;
    [workoutRouteManager processWorkoutsClearClusters:clustersCopy clearExistingDistanceMatrix:matrixCopy buildDistanceMatrix:distanceMatrixCopy syncClustersToHealhtKit:kitCopy syncClustersToWatch:watchCopy filteringDistanceThreshold:workoutsCopy topNWorkouts:threshold isSchedulerTriggered:v29 handler:v36];

    queue = [(RTDaemonClientInternal *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __219__RTDaemonClientInternal_forceProcessWorkoutsClearClusters_clearExistingDistanceMatrix_buildDistanceMatrix_syncClustersToHealhtKit_syncClustersToWatch_filteringDistanceThreshold_topNWorkouts_isSchedulerTriggered_reply___block_invoke_5;
    block[3] = &unk_2788C4C20;
    v35 = v31;
    block[4] = self;
    v33 = v25;
    v34 = replyCopy;
    v28 = v25;
    dispatch_group_notify(v26, queue, block);
  }

  else
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __219__RTDaemonClientInternal_forceProcessWorkoutsClearClusters_clearExistingDistanceMatrix_buildDistanceMatrix_syncClustersToHealhtKit_syncClustersToWatch_filteringDistanceThreshold_topNWorkouts_isSchedulerTriggered_reply___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __219__RTDaemonClientInternal_forceProcessWorkoutsClearClusters_clearExistingDistanceMatrix_buildDistanceMatrix_syncClustersToHealhtKit_syncClustersToWatch_filteringDistanceThreshold_topNWorkouts_isSchedulerTriggered_reply___block_invoke_2;
  block[3] = &unk_2788C76F8;
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

void __219__RTDaemonClientInternal_forceProcessWorkoutsClearClusters_clearExistingDistanceMatrix_buildDistanceMatrix_syncClustersToHealhtKit_syncClustersToWatch_filteringDistanceThreshold_topNWorkouts_isSchedulerTriggered_reply___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) addObject:?];
  }

  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __219__RTDaemonClientInternal_forceProcessWorkoutsClearClusters_clearExistingDistanceMatrix_buildDistanceMatrix_syncClustersToHealhtKit_syncClustersToWatch_filteringDistanceThreshold_topNWorkouts_isSchedulerTriggered_reply___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __219__RTDaemonClientInternal_forceProcessWorkoutsClearClusters_clearExistingDistanceMatrix_buildDistanceMatrix_syncClustersToHealhtKit_syncClustersToWatch_filteringDistanceThreshold_topNWorkouts_isSchedulerTriggered_reply___block_invoke_4;
  block[3] = &unk_2788C76F8;
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

void __219__RTDaemonClientInternal_forceProcessWorkoutsClearClusters_clearExistingDistanceMatrix_buildDistanceMatrix_syncClustersToHealhtKit_syncClustersToWatch_filteringDistanceThreshold_topNWorkouts_isSchedulerTriggered_reply___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) addObject:?];
  }

  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __219__RTDaemonClientInternal_forceProcessWorkoutsClearClusters_clearExistingDistanceMatrix_buildDistanceMatrix_syncClustersToHealhtKit_syncClustersToWatch_filteringDistanceThreshold_topNWorkouts_isSchedulerTriggered_reply___block_invoke_5(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v8 = 138412802;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, errors, %@", &v8, 0x20u);
    }
  }

  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) firstObject];
  (*(v6 + 16))(v6, v7);
}

- (void)displayWorkoutDistanceRecordsWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    workoutRouteManager = [(RTDaemonClientInternal *)self workoutRouteManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__RTDaemonClientInternal_displayWorkoutDistanceRecordsWithHandler___block_invoke;
    v8[3] = &unk_2788C56C0;
    v8[4] = self;
    v10 = a2;
    v9 = handlerCopy;
    [workoutRouteManager displayWorkoutDistanceRecordsWithHandler:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __67__RTDaemonClientInternal_displayWorkoutDistanceRecordsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__RTDaemonClientInternal_displayWorkoutDistanceRecordsWithHandler___block_invoke_2;
  block[3] = &unk_2788C4C20;
  block[4] = *(a1 + 32);
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __67__RTDaemonClientInternal_displayWorkoutDistanceRecordsWithHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)updateRelevanceScoresWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    workoutRouteManager = [(RTDaemonClientInternal *)self workoutRouteManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__RTDaemonClientInternal_updateRelevanceScoresWithReply___block_invoke;
    v8[3] = &unk_2788C56C0;
    v8[4] = self;
    v10 = a2;
    v9 = replyCopy;
    [workoutRouteManager updateRelevanceScoresWithHandler:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __57__RTDaemonClientInternal_updateRelevanceScoresWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RTDaemonClientInternal_updateRelevanceScoresWithReply___block_invoke_2;
  block[3] = &unk_2788C4C20;
  block[4] = *(a1 + 32);
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __57__RTDaemonClientInternal_updateRelevanceScoresWithReply___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)processNewlyAddedWorkout:(id)workout reply:(id)reply
{
  workoutCopy = workout;
  replyCopy = reply;
  v9 = replyCopy;
  if (!workoutCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: newlyAddedWorkoutUUID";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    goto LABEL_7;
  }

  if (!replyCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: reply";
    goto LABEL_10;
  }

  workoutRouteManager = [(RTDaemonClientInternal *)self workoutRouteManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__RTDaemonClientInternal_processNewlyAddedWorkout_reply___block_invoke;
  v13[3] = &unk_2788C56C0;
  v13[4] = self;
  v15 = a2;
  v14 = v9;
  [workoutRouteManager processNewlyAddedWorkout:workoutCopy handler:v13];

LABEL_8:
}

void __57__RTDaemonClientInternal_processNewlyAddedWorkout_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RTDaemonClientInternal_processNewlyAddedWorkout_reply___block_invoke_2;
  block[3] = &unk_2788C4C20;
  block[4] = *(a1 + 32);
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __57__RTDaemonClientInternal_processNewlyAddedWorkout_reply___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)deleteWorkout:(id)workout reply:(id)reply
{
  workoutCopy = workout;
  replyCopy = reply;
  v9 = replyCopy;
  if (!workoutCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: workoutUUID";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    goto LABEL_7;
  }

  if (!replyCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: reply";
    goto LABEL_10;
  }

  workoutRouteManager = [(RTDaemonClientInternal *)self workoutRouteManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__RTDaemonClientInternal_deleteWorkout_reply___block_invoke;
  v13[3] = &unk_2788C56C0;
  v13[4] = self;
  v15 = a2;
  v14 = v9;
  [workoutRouteManager deleteWorkout:workoutCopy handler:v13];

LABEL_8:
}

void __46__RTDaemonClientInternal_deleteWorkout_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__RTDaemonClientInternal_deleteWorkout_reply___block_invoke_2;
  block[3] = &unk_2788C4C20;
  block[4] = *(a1 + 32);
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __46__RTDaemonClientInternal_deleteWorkout_reply___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchBuildingPolygonsFromLocations:(id)locations radius:(double)radius limit:(unint64_t)limit reply:(id)reply
{
  locationsCopy = locations;
  replyCopy = reply;
  if (replyCopy)
  {
    buildingPolygonManager = [(RTDaemonClientInternal *)self buildingPolygonManager];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__RTDaemonClientInternal_fetchBuildingPolygonsFromLocations_radius_limit_reply___block_invoke;
    v15[3] = &unk_2788C5508;
    v15[4] = self;
    v17 = a2;
    v16 = replyCopy;
    [buildingPolygonManager fetchClosestBuildingPolygonsFromLocations:locationsCopy radius:limit limit:v15 handler:radius];
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __80__RTDaemonClientInternal_fetchBuildingPolygonsFromLocations_radius_limit_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__RTDaemonClientInternal_fetchBuildingPolygonsFromLocations_radius_limit_reply___block_invoke_2;
  block[3] = &unk_2788C47F8;
  block[4] = *(a1 + 32);
  v13 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __80__RTDaemonClientInternal_fetchBuildingPolygonsFromLocations_radius_limit_reply___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)fetchIntermittentGNSSRegistrationStateWithReply:(id)reply
{
  replyCopy = reply;
  v6 = replyCopy;
  if (replyCopy)
  {
    intermittentGNSSManager = self->_intermittentGNSSManager;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__RTDaemonClientInternal_fetchIntermittentGNSSRegistrationStateWithReply___block_invoke;
    v9[3] = &unk_2788C4E00;
    v11 = a2;
    v9[4] = self;
    v10 = replyCopy;
    [(RTIntermittentGNSSManager *)intermittentGNSSManager fetchIntermittentGNSSRegistrationStateWithHandler:v9];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __74__RTDaemonClientInternal_fetchIntermittentGNSSRegistrationStateWithReply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(*(a1 + 48));
      v8 = *(a1 + 32);
      v9 = @"NO";
      v10 = 138412802;
      v11 = v7;
      if (a2)
      {
        v9 = @"YES";
      }

      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, reply to client, %@, RTIntermittentGNSSRegistered, %@", &v10, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2);
}

- (void)updateIntermittentGNSSRegistrationOverrideState:(unint64_t)state reply:(id)reply
{
  replyCopy = reply;
  v8 = replyCopy;
  if (replyCopy)
  {
    intermittentGNSSManager = self->_intermittentGNSSManager;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __80__RTDaemonClientInternal_updateIntermittentGNSSRegistrationOverrideState_reply___block_invoke;
    v11[3] = &unk_2788CBC50;
    v13 = a2;
    stateCopy = state;
    v11[4] = self;
    v12 = replyCopy;
    [(RTIntermittentGNSSManager *)intermittentGNSSManager updateIntermittentGNSSRegistrationOverrideState:state handler:v11];
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __80__RTDaemonClientInternal_updateIntermittentGNSSRegistrationOverrideState_reply___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 48));
      v6 = *(a1 + 32);
      v7 = [RTIntermittentGNSSManager overrideStateToString:*(a1 + 56)];
      v8 = 138412802;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, reply to client, %@, client set intermittent gnss overrideState, %@", &v8, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)injectProximityEvent:(id)event handler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  if (handlerCopy)
  {
    selfCopy = self;
    peopleDiscoveryProvider = [(RTDaemonClientInternal *)selfCopy peopleDiscoveryProvider];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__RTDaemonClientInternal_injectProximityEvent_handler___block_invoke;
    v11[3] = &unk_2788C56C0;
    v11[4] = selfCopy;
    v13 = a2;
    v12 = handlerCopy;
    [peopleDiscoveryProvider addProximityEvent:eventCopy handler:v11];
  }

  else
  {
    selfCopy = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &selfCopy->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __55__RTDaemonClientInternal_injectProximityEvent_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__RTDaemonClientInternal_injectProximityEvent_handler___block_invoke_2;
  block[3] = &unk_2788C4C20;
  block[4] = *(a1 + 32);
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __55__RTDaemonClientInternal_injectProximityEvent_handler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)injectPeopleDiscoveryAdv:(id)adv handler:(id)handler
{
  advCopy = adv;
  handlerCopy = handler;
  if (handlerCopy)
  {
    selfCopy = self;
    peopleDiscoveryProvider = [(RTDaemonClientInternal *)selfCopy peopleDiscoveryProvider];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__RTDaemonClientInternal_injectPeopleDiscoveryAdv_handler___block_invoke;
    v11[3] = &unk_2788C56C0;
    v11[4] = selfCopy;
    v13 = a2;
    v12 = handlerCopy;
    [peopleDiscoveryProvider injectAdv:advCopy handler:v11];
  }

  else
  {
    selfCopy = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &selfCopy->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __59__RTDaemonClientInternal_injectPeopleDiscoveryAdv_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTDaemonClientInternal_injectPeopleDiscoveryAdv_handler___block_invoke_2;
  block[3] = &unk_2788C4C20;
  block[4] = *(a1 + 32);
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __59__RTDaemonClientInternal_injectPeopleDiscoveryAdv_handler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)removeAllProximityEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    selfCopy = self;
    peopleDiscoveryProvider = [(RTDaemonClientInternal *)selfCopy peopleDiscoveryProvider];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__RTDaemonClientInternal_removeAllProximityEvent___block_invoke;
    v8[3] = &unk_2788C56C0;
    v8[4] = selfCopy;
    v10 = a2;
    v9 = eventCopy;
    [peopleDiscoveryProvider clearProximityEvents:v8];
  }

  else
  {
    selfCopy = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &selfCopy->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __50__RTDaemonClientInternal_removeAllProximityEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RTDaemonClientInternal_removeAllProximityEvent___block_invoke_2;
  block[3] = &unk_2788C4C20;
  block[4] = *(a1 + 32);
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __50__RTDaemonClientInternal_removeAllProximityEvent___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)injectPeopleDensityBundle:(id)bundle handler:(id)handler
{
  bundleCopy = bundle;
  handlerCopy = handler;
  if (handlerCopy)
  {
    selfCopy = self;
    peopleDiscoveryProvider = [(RTDaemonClientInternal *)selfCopy peopleDiscoveryProvider];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__RTDaemonClientInternal_injectPeopleDensityBundle_handler___block_invoke;
    v11[3] = &unk_2788C56C0;
    v11[4] = selfCopy;
    v13 = a2;
    v12 = handlerCopy;
    [peopleDiscoveryProvider addPeopleDensityBundle:bundleCopy handler:v11];
  }

  else
  {
    selfCopy = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &selfCopy->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __60__RTDaemonClientInternal_injectPeopleDensityBundle_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RTDaemonClientInternal_injectPeopleDensityBundle_handler___block_invoke_2;
  block[3] = &unk_2788C4C20;
  block[4] = *(a1 + 32);
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __60__RTDaemonClientInternal_injectPeopleDensityBundle_handler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)injectPeopleDensityStats:(unint64_t)stats duration:(double)duration date:(id)date advertisements:(id)advertisements handler:(id)handler
{
  dateCopy = date;
  advertisementsCopy = advertisements;
  handlerCopy = handler;
  if (handlerCopy)
  {
    selfCopy = self;
    peopleDiscoveryProvider = [(RTDaemonClientInternal *)selfCopy peopleDiscoveryProvider];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __88__RTDaemonClientInternal_injectPeopleDensityStats_duration_date_advertisements_handler___block_invoke;
    v18[3] = &unk_2788C56C0;
    v18[4] = selfCopy;
    v20 = a2;
    v19 = handlerCopy;
    [peopleDiscoveryProvider injectPeopleDensityStats:stats duration:dateCopy date:advertisementsCopy advertisements:v18 handler:duration];
  }

  else
  {
    selfCopy = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &selfCopy->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __88__RTDaemonClientInternal_injectPeopleDensityStats_duration_date_advertisements_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__RTDaemonClientInternal_injectPeopleDensityStats_duration_date_advertisements_handler___block_invoke_2;
  block[3] = &unk_2788C4C20;
  block[4] = *(a1 + 32);
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __88__RTDaemonClientInternal_injectPeopleDensityStats_duration_date_advertisements_handler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)removeAllPeopleDensityBundles:(id)bundles
{
  bundlesCopy = bundles;
  if (bundlesCopy)
  {
    selfCopy = self;
    peopleDiscoveryProvider = [(RTDaemonClientInternal *)selfCopy peopleDiscoveryProvider];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__RTDaemonClientInternal_removeAllPeopleDensityBundles___block_invoke;
    v8[3] = &unk_2788C56C0;
    v8[4] = selfCopy;
    v10 = a2;
    v9 = bundlesCopy;
    [peopleDiscoveryProvider clearPeopleDensityBundles:v8];
  }

  else
  {
    selfCopy = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &selfCopy->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __56__RTDaemonClientInternal_removeAllPeopleDensityBundles___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RTDaemonClientInternal_removeAllPeopleDensityBundles___block_invoke_2;
  block[3] = &unk_2788C4C20;
  block[4] = *(a1 + 32);
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __56__RTDaemonClientInternal_removeAllPeopleDensityBundles___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)computeContactScores:(id)scores
{
  scoresCopy = scores;
  if (scoresCopy)
  {
    selfCopy = self;
    peopleDiscoveryProvider = [(RTDaemonClientInternal *)selfCopy peopleDiscoveryProvider];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__RTDaemonClientInternal_computeContactScores___block_invoke;
    v8[3] = &unk_2788C56C0;
    v8[4] = selfCopy;
    v10 = a2;
    v9 = scoresCopy;
    [peopleDiscoveryProvider computeContactScores:v8];
  }

  else
  {
    selfCopy = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &selfCopy->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __47__RTDaemonClientInternal_computeContactScores___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTDaemonClientInternal_computeContactScores___block_invoke_2;
  block[3] = &unk_2788C4C20;
  block[4] = *(a1 + 32);
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __47__RTDaemonClientInternal_computeContactScores___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchAuthorizedLocations:(id)locations
{
  locationsCopy = locations;
  if (locationsCopy)
  {
    authorizedLocationManager = [(RTDaemonClientInternal *)self authorizedLocationManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__RTDaemonClientInternal_fetchAuthorizedLocations___block_invoke;
    v8[3] = &unk_2788CBC78;
    v8[4] = self;
    v10 = a2;
    v9 = locationsCopy;
    [authorizedLocationManager fetchAuthorizedLocations:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __51__RTDaemonClientInternal_fetchAuthorizedLocations___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RTDaemonClientInternal_fetchAuthorizedLocations___block_invoke_2;
  block[3] = &unk_2788C47F8;
  block[4] = *(a1 + 32);
  v13 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __51__RTDaemonClientInternal_fetchAuthorizedLocations___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)fetchAuthorizedLocationExtendedStatus:(id)status
{
  statusCopy = status;
  if (statusCopy)
  {
    authorizedLocationManager = [(RTDaemonClientInternal *)self authorizedLocationManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__RTDaemonClientInternal_fetchAuthorizedLocationExtendedStatus___block_invoke;
    v8[3] = &unk_2788C9658;
    v8[4] = self;
    v10 = a2;
    v9 = statusCopy;
    [authorizedLocationManager fetchAuthorizedLocationExtendedStatus:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __64__RTDaemonClientInternal_fetchAuthorizedLocationExtendedStatus___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RTDaemonClientInternal_fetchAuthorizedLocationExtendedStatus___block_invoke_2;
  block[3] = &unk_2788CBCA0;
  block[4] = *(a1 + 32);
  v15 = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v16 = v7;
  v18 = a3;
  v11 = v7;
  v12 = v8;
  dispatch_async(v9, block);
}

uint64_t __64__RTDaemonClientInternal_fetchAuthorizedLocationExtendedStatus___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)fetchAuthorizedLocationDetailedStatus:(id)status
{
  statusCopy = status;
  if (statusCopy)
  {
    authorizedLocationManager = [(RTDaemonClientInternal *)self authorizedLocationManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__RTDaemonClientInternal_fetchAuthorizedLocationDetailedStatus___block_invoke;
    v8[3] = &unk_2788CBCF0;
    v8[4] = self;
    v10 = a2;
    v9 = statusCopy;
    [authorizedLocationManager fetchAuthorizedLocationDetailedStatus:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __64__RTDaemonClientInternal_fetchAuthorizedLocationDetailedStatus___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  v13 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RTDaemonClientInternal_fetchAuthorizedLocationDetailedStatus___block_invoke_2;
  block[3] = &unk_2788CBCC8;
  block[4] = *(a1 + 32);
  v19 = v12;
  v17 = *(a1 + 40);
  v14 = v17;
  v21 = v17;
  v20 = v11;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v15 = v11;
  v16 = v12;
  dispatch_async(v13, block);
}

uint64_t __64__RTDaemonClientInternal_fetchAuthorizedLocationDetailedStatus___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)fetchAuthorizedLocationCachedStatus:(id)status
{
  statusCopy = status;
  if (statusCopy)
  {
    authorizedLocationManager = [(RTDaemonClientInternal *)self authorizedLocationManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__RTDaemonClientInternal_fetchAuthorizedLocationCachedStatus___block_invoke;
    v8[3] = &unk_2788C9658;
    v8[4] = self;
    v10 = a2;
    v9 = statusCopy;
    [authorizedLocationManager fetchAuthorizedLocationCachedStatus:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __62__RTDaemonClientInternal_fetchAuthorizedLocationCachedStatus___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RTDaemonClientInternal_fetchAuthorizedLocationCachedStatus___block_invoke_2;
  block[3] = &unk_2788CBCA0;
  block[4] = *(a1 + 32);
  v15 = v8;
  v13 = *(a1 + 40);
  v10 = v13;
  v17 = v13;
  v16 = v7;
  v18 = a3;
  v11 = v7;
  v12 = v8;
  dispatch_async(v9, block);
}

uint64_t __62__RTDaemonClientInternal_fetchAuthorizedLocationCachedStatus___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)forceAuthorizedLocationEraseInstallInitialization:(id)initialization
{
  initializationCopy = initialization;
  if (initializationCopy)
  {
    authorizedLocationManager = [(RTDaemonClientInternal *)self authorizedLocationManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__RTDaemonClientInternal_forceAuthorizedLocationEraseInstallInitialization___block_invoke;
    v8[3] = &unk_2788C4E00;
    v8[4] = self;
    v10 = a2;
    v9 = initializationCopy;
    [authorizedLocationManager runEraseInstallDatabaseInitialization:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __76__RTDaemonClientInternal_forceAuthorizedLocationEraseInstallInitialization___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__RTDaemonClientInternal_forceAuthorizedLocationEraseInstallInitialization___block_invoke_2;
  block[3] = &unk_2788CBD18;
  block[4] = *(a1 + 32);
  v11 = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v13 = a2;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __76__RTDaemonClientInternal_forceAuthorizedLocationEraseInstallInitialization___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)eraseVisitLogDatabase:(id)database
{
  databaseCopy = database;
  if (databaseCopy)
  {
    authorizedLocationManager = [(RTDaemonClientInternal *)self authorizedLocationManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__RTDaemonClientInternal_eraseVisitLogDatabase___block_invoke;
    v8[3] = &unk_2788C56C0;
    v8[4] = self;
    v10 = a2;
    v9 = databaseCopy;
    [authorizedLocationManager eraseVisitLogDatabase:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __48__RTDaemonClientInternal_eraseVisitLogDatabase___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__RTDaemonClientInternal_eraseVisitLogDatabase___block_invoke_2;
  block[3] = &unk_2788C4C20;
  block[4] = *(a1 + 32);
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __48__RTDaemonClientInternal_eraseVisitLogDatabase___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchVisitLogsWithDateInterval:(id)interval reply:(id)reply
{
  intervalCopy = interval;
  replyCopy = reply;
  if (replyCopy)
  {
    v9 = [[RTAuthorizedLocationVisitLogFetchOptions alloc] initWithAscending:0 dateInterval:intervalCopy limit:0];
    authorizedLocationManager = [(RTDaemonClientInternal *)self authorizedLocationManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__RTDaemonClientInternal_fetchVisitLogsWithDateInterval_reply___block_invoke;
    v11[3] = &unk_2788C5508;
    v11[4] = self;
    v13 = a2;
    v12 = replyCopy;
    [authorizedLocationManager fetchVisitLogsWithOptions:v9 handler:v11];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &v9->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __63__RTDaemonClientInternal_fetchVisitLogsWithDateInterval_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v23 + 1) + 8 * v12) description];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v14 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RTDaemonClientInternal_fetchVisitLogsWithDateInterval_reply___block_invoke_2;
  block[3] = &unk_2788C47F8;
  block[4] = *(a1 + 32);
  v20 = v6;
  v18 = *(a1 + 40);
  v15 = v18;
  v22 = v18;
  v21 = v7;
  v16 = v7;
  v17 = v6;
  dispatch_async(v14, block);
}

uint64_t __63__RTDaemonClientInternal_fetchVisitLogsWithDateInterval_reply___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)fetchPlaceInferenceQueriesWithDateInterval:(id)interval ascending:(BOOL)ascending reply:(id)reply
{
  ascendingCopy = ascending;
  intervalCopy = interval;
  replyCopy = reply;
  if (replyCopy)
  {
    placeInferenceQueryStore = [(RTDaemonClientInternal *)self placeInferenceQueryStore];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __85__RTDaemonClientInternal_fetchPlaceInferenceQueriesWithDateInterval_ascending_reply___block_invoke;
    v13[3] = &unk_2788C5508;
    v13[4] = self;
    v15 = a2;
    v14 = replyCopy;
    [placeInferenceQueryStore fetchPlaceInferenceQueriesWithDateInterval:intervalCopy ascending:ascendingCopy handler:v13];
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __85__RTDaemonClientInternal_fetchPlaceInferenceQueriesWithDateInterval_ascending_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__RTDaemonClientInternal_fetchPlaceInferenceQueriesWithDateInterval_ascending_reply___block_invoke_2;
  block[3] = &unk_2788C6530;
  block[4] = *(a1 + 32);
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __85__RTDaemonClientInternal_fetchPlaceInferenceQueriesWithDateInterval_ascending_reply___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v6 = 138412802;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      v10 = 2112;
      v11 = 0;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v6, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)startSamplingPointOfInterestWithInterval:(double)interval handler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    pointOfInterestSampler = [(RTDaemonClientInternal *)self pointOfInterestSampler];
    executablePath = [(RTDaemonClientInternal *)self executablePath];
    lastPathComponent = [executablePath lastPathComponent];
    [pointOfInterestSampler startSamplingPointOfInterestFromRequester:lastPathComponent samplingInterval:interval];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = NSStringFromSelector(a2);
        v14 = 138412802;
        v15 = v12;
        v16 = 2112;
        selfCopy = self;
        v18 = 2112;
        v19 = 0;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v14, 0x20u);
      }
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", &v14, 2u);
    }
  }
}

- (void)stopSamplingPointOfInterest:(id)interest
{
  v18 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  if (interestCopy)
  {
    pointOfInterestSampler = [(RTDaemonClientInternal *)self pointOfInterestSampler];
    executablePath = [(RTDaemonClientInternal *)self executablePath];
    lastPathComponent = [executablePath lastPathComponent];
    [pointOfInterestSampler stopSamplingPointOfInterestFromRequester:lastPathComponent];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromSelector(a2);
        v12 = 138412802;
        v13 = v10;
        v14 = 2112;
        selfCopy = self;
        v16 = 2112;
        v17 = 0;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v12, 0x20u);
      }
    }

    interestCopy[2](interestCopy, 0);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", &v12, 2u);
    }
  }
}

- (void)fetchPointOfInterestsAroundCoordinate:(id)coordinate radius:(double)radius reply:(id)reply
{
  coordinateCopy = coordinate;
  replyCopy = reply;
  if (replyCopy)
  {
    mapServiceManager = [(RTDaemonClientInternal *)self mapServiceManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __77__RTDaemonClientInternal_fetchPointOfInterestsAroundCoordinate_radius_reply___block_invoke;
    v13[3] = &unk_2788C5508;
    v13[4] = self;
    v15 = a2;
    v14 = replyCopy;
    [mapServiceManager fetchPointOfInterestsAroundCoordinate:coordinateCopy radius:0 options:v13 handler:radius];
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __77__RTDaemonClientInternal_fetchPointOfInterestsAroundCoordinate_radius_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__RTDaemonClientInternal_fetchPointOfInterestsAroundCoordinate_radius_reply___block_invoke_2;
  block[3] = &unk_2788C6530;
  block[4] = *(a1 + 32);
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __77__RTDaemonClientInternal_fetchPointOfInterestsAroundCoordinate_radius_reply___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v6 = 138412802;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      v10 = 2112;
      v11 = 0;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v6, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)fetchPointOfInterestAttributesWithIdentifier:(unint64_t)identifier reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    mapServiceManager = [(RTDaemonClientInternal *)self mapServiceManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__RTDaemonClientInternal_fetchPointOfInterestAttributesWithIdentifier_reply___block_invoke;
    v10[3] = &unk_2788CBD40;
    v10[4] = self;
    v12 = a2;
    v11 = replyCopy;
    [mapServiceManager fetchPointOfInterestAttributesWithIdentifier:identifier options:0 handler:v10];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __77__RTDaemonClientInternal_fetchPointOfInterestAttributesWithIdentifier_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__RTDaemonClientInternal_fetchPointOfInterestAttributesWithIdentifier_reply___block_invoke_2;
  block[3] = &unk_2788C6530;
  block[4] = *(a1 + 32);
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __77__RTDaemonClientInternal_fetchPointOfInterestAttributesWithIdentifier_reply___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v6 = 138412802;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      v10 = 2112;
      v11 = 0;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v6, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)fetchBluePOITileWithGeoTileKey:(unint64_t)key reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    bluePOITileManager = [(RTDaemonClientInternal *)self bluePOITileManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__RTDaemonClientInternal_fetchBluePOITileWithGeoTileKey_reply___block_invoke;
    v10[3] = &unk_2788CBD68;
    v10[4] = self;
    v12 = a2;
    v11 = replyCopy;
    [bluePOITileManager fetchBluePOITileWithGeoTileKey:key handler:v10];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __63__RTDaemonClientInternal_fetchBluePOITileWithGeoTileKey_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RTDaemonClientInternal_fetchBluePOITileWithGeoTileKey_reply___block_invoke_2;
  block[3] = &unk_2788C6530;
  block[4] = *(a1 + 32);
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __63__RTDaemonClientInternal_fetchBluePOITileWithGeoTileKey_reply___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v6 = 138412802;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      v10 = 2112;
      v11 = 0;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v6, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)fetchBluePOIMetadataWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    bluePOITileManager = [(RTDaemonClientInternal *)self bluePOITileManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__RTDaemonClientInternal_fetchBluePOIMetadataWithHandler___block_invoke;
    v8[3] = &unk_2788C7098;
    v8[4] = self;
    v10 = a2;
    v9 = handlerCopy;
    [bluePOITileManager fetchBluePOIMetadataWithHandler:v8];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __58__RTDaemonClientInternal_fetchBluePOIMetadataWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTDaemonClientInternal_fetchBluePOIMetadataWithHandler___block_invoke_2;
  block[3] = &unk_2788C6530;
  block[4] = *(a1 + 32);
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __58__RTDaemonClientInternal_fetchBluePOIMetadataWithHandler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v6 = 138412802;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      v10 = 2112;
      v11 = 0;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v6, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)storeBluePOITiles:(id)tiles handler:(id)handler
{
  tilesCopy = tiles;
  handlerCopy = handler;
  if (handlerCopy)
  {
    bluePOITileManager = [(RTDaemonClientInternal *)self bluePOITileManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__RTDaemonClientInternal_storeBluePOITiles_handler___block_invoke;
    v11[3] = &unk_2788C56C0;
    v11[4] = self;
    v13 = a2;
    v12 = handlerCopy;
    [bluePOITileManager storeBluePOITiles:tilesCopy handler:v11];
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

void __52__RTDaemonClientInternal_storeBluePOITiles_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__RTDaemonClientInternal_storeBluePOITiles_handler___block_invoke_2;
  block[3] = &unk_2788C6940;
  block[4] = *(a1 + 32);
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __52__RTDaemonClientInternal_storeBluePOITiles_handler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 32);
      v6 = 138412802;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      v10 = 2112;
      v11 = 0;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v6, 0x20u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchCurrentLocationWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    locationManager = [(RTDaemonClientInternal *)self locationManager];
    [locationManager fetchCurrentLocationWithHandler:replyCopy];
  }

  else
  {
    locationManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(locationManager, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, locationManager, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v6, 2u);
    }
  }
}

- (void)fetchLocationsFromCoreLocationWithOptions:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  if (replyCopy)
  {
    locationManager = [(RTDaemonClientInternal *)self locationManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__RTDaemonClientInternal_fetchLocationsFromCoreLocationWithOptions_reply___block_invoke;
    v11[3] = &unk_2788C5508;
    v11[4] = self;
    v13 = a2;
    v12 = replyCopy;
    [locationManager fetchLocationsFromCoreLocationWithOptions:optionsCopy handler:v11];
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

void __74__RTDaemonClientInternal_fetchLocationsFromCoreLocationWithOptions_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__RTDaemonClientInternal_fetchLocationsFromCoreLocationWithOptions_reply___block_invoke_2;
  block[3] = &unk_2788C47F8;
  block[4] = *(a1 + 32);
  v13 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __74__RTDaemonClientInternal_fetchLocationsFromCoreLocationWithOptions_reply___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v7, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)periodicPurgeWithReply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    purgeManager = [(RTDaemonClientInternal *)self purgeManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__RTDaemonClientInternal_periodicPurgeWithReply___block_invoke;
    v7[3] = &unk_2788C48C0;
    v8 = replyCopy;
    [purgeManager purge:v7];

    v6 = v8;
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }
  }
}

- (void)fetchUserCurationsWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (!optionsCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: options";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    goto LABEL_7;
  }

  if (!handlerCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: handler";
    goto LABEL_10;
  }

  userCurationManager = [(RTDaemonClientInternal *)self userCurationManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__RTDaemonClientInternal_fetchUserCurationsWithOptions_handler___block_invoke;
  v13[3] = &unk_2788C5508;
  v13[4] = self;
  v15 = a2;
  v14 = v9;
  [userCurationManager fetchStoredUserCurationsWithOptions:optionsCopy handler:v13];

LABEL_8:
}

void __64__RTDaemonClientInternal_fetchUserCurationsWithOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RTDaemonClientInternal_fetchUserCurationsWithOptions_handler___block_invoke_2;
  block[3] = &unk_2788C6530;
  block[4] = *(a1 + 32);
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __64__RTDaemonClientInternal_fetchUserCurationsWithOptions_handler___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 64));
      v4 = *(a1 + 32);
      v6 = 138412802;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      v10 = 2112;
      v11 = 0;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v6, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)purgeUserCurationsPredating:(id)predating handler:(id)handler
{
  predatingCopy = predating;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (!predatingCopy)
  {
    userCurationManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(userCurationManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v13 = 0;
    v10 = "Invalid parameter not satisfying: date";
    v11 = &v13;
LABEL_9:
    _os_log_error_impl(&dword_2304B3000, userCurationManager, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    goto LABEL_7;
  }

  if (!handlerCopy)
  {
    userCurationManager = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(userCurationManager, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = 0;
    v10 = "Invalid parameter not satisfying: handler";
    v11 = &v12;
    goto LABEL_9;
  }

  userCurationManager = [(RTDaemonClientInternal *)self userCurationManager];
  [userCurationManager purgeUserCurationsPredating:predatingCopy handler:v8];
LABEL_7:
}

@end