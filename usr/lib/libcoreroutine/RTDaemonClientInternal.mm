@interface RTDaemonClientInternal
- (NSString)description;
- (RTDaemonClientInternal)initWithQueue:(id)a3 accountManager:(id)a4 assetManager:(id)a5 authorizationManager:(id)a6 bluePOITileManager:(id)a7 buildingPolygonManager:(id)a8 deviceLocationPredictor:(id)a9 diagnostics:(id)a10 eventModelProvider:(id)a11 authorizedLocationManager:(id)a12 fingerprintManager:(id)a13 hintManager:(id)a14 intermittentGNSSManager:(id)a15 learnedLocationManager:(id)a16 learnedLocationStore:(id)a17 locationManager:(id)a18 locationStore:(id)a19 mapServiceManager:(id)a20 motionActivityManager:(id)a21 peopleDiscoveryProvider:(id)a22 persistenceManager:(id)a23 placeInferenceQueryStore:(id)a24 pointOfInterestSampler:(id)a25 predictedContextManager:(id)a26 purgeManager:(id)a27 safetyCacheStore:(id)a28 scenarioTriggerManager:(id)a29 userCurationManager:(id)a30 vehicleLocationProvider:(id)a31 visitManager:(id)a32 workoutRouteManager:(id)a33 workoutScheduler:(id)a34;
- (void)clearAllLocationsOfInterestWithReply:(id)a3;
- (void)computeContactScores:(id)a3;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)deleteWorkout:(id)a3 reply:(id)a4;
- (void)displayWorkoutDistanceRecordsWithHandler:(id)a3;
- (void)eraseVisitLogDatabase:(id)a3;
- (void)expireLifetimeOfVisitsWithIdentifiers:(id)a3 expirationDate:(id)a4 reply:(id)a5;
- (void)extendLifetimeOfVisitsWithIdentifiers:(id)a3 toExpireOn:(id)a4 reply:(id)a5;
- (void)fetchAllLocationsOfInterestWithReply:(id)a3;
- (void)fetchAuthorizedLocationCachedStatus:(id)a3;
- (void)fetchAuthorizedLocationDetailedStatus:(id)a3;
- (void)fetchAuthorizedLocationExtendedStatus:(id)a3;
- (void)fetchAuthorizedLocations:(id)a3;
- (void)fetchBluePOIMetadataWithHandler:(id)a3;
- (void)fetchBluePOITileWithGeoTileKey:(unint64_t)a3 reply:(id)a4;
- (void)fetchBuildingPolygonsFromLocations:(id)a3 radius:(double)a4 limit:(unint64_t)a5 reply:(id)a6;
- (void)fetchCurrentLocationWithReply:(id)a3;
- (void)fetchDataVaultPath:(id)a3;
- (void)fetchFMCEnabledWithReply:(id)a3;
- (void)fetchFingerprintsWithOptions:(id)a3 reply:(id)a4;
- (void)fetchFusionCandidatesForVisitIdentifier:(id)a3 reply:(id)a4;
- (void)fetchInferredMapItemForVisitIdentifier:(id)a3 reply:(id)a4;
- (void)fetchIntermittentGNSSRegistrationStateWithReply:(id)a3;
- (void)fetchLocationsFromCoreLocationWithOptions:(id)a3 reply:(id)a4;
- (void)fetchLocationsOfInterestWithVisitsWithinDistance:(id)a3 location:(id)a4 reply:(id)a5;
- (void)fetchMotionActivitiesFromStartDate:(id)a3 endDate:(id)a4 reply:(id)a5;
- (void)fetchPathToBackupWithReply:(id)a3;
- (void)fetchPlaceInferenceQueriesWithDateInterval:(id)a3 ascending:(BOOL)a4 reply:(id)a5;
- (void)fetchPointOfInterestAttributesWithIdentifier:(unint64_t)a3 reply:(id)a4;
- (void)fetchPointOfInterestsAroundCoordinate:(id)a3 radius:(double)a4 reply:(id)a5;
- (void)fetchPredictedContextInputSignalsWithReply:(id)a3;
- (void)fetchStoredLocationsCountFromDate:(id)a3 toDate:(id)a4 uncertainty:(double)a5 limit:(unint64_t)a6 reply:(id)a7;
- (void)fetchUserCurationsWithOptions:(id)a3 handler:(id)a4;
- (void)fetchVisitLogsWithDateInterval:(id)a3 reply:(id)a4;
- (void)fetchVisitsBetweenStartDate:(id)a3 endDate:(id)a4 reply:(id)a5;
- (void)fetchVisitsWithReply:(id)a3;
- (void)fetchWiFiAccessPointsForFingerprint:(id)a3 reply:(id)a4;
- (void)forceAuthorizedLocationEraseInstallInitialization:(id)a3;
- (void)forceEventModelRefreshWithReply:(id)a3;
- (void)forcePlaceTypeClassificationWithReply:(id)a3;
- (void)forcePredictedLocationContextModelTrainingWithReply:(id)a3;
- (void)forceProcessWorkoutsClearClusters:(BOOL)a3 clearExistingDistanceMatrix:(BOOL)a4 buildDistanceMatrix:(BOOL)a5 syncClustersToHealhtKit:(BOOL)a6 syncClustersToWatch:(BOOL)a7 filteringDistanceThreshold:(double)a8 topNWorkouts:(unint64_t)a9 isSchedulerTriggered:(BOOL)a10 reply:(id)a11;
- (void)forceRelabeling:(id)a3;
- (void)forceSequentialClusterIdentification:(id)a3;
- (void)forceUpdateAssetMetadataWithReply:(id)a3;
- (void)injectFingerprintWithIdentifier:(id)a3 settledState:(unint64_t)a4 start:(id)a5 reply:(id)a6;
- (void)injectFingerprintWithSettledState:(BOOL)a3 start:(id)a4 reply:(id)a5;
- (void)injectLocationOfInterest:(id)a3 reply:(id)a4;
- (void)injectLocations:(id)a3 reply:(id)a4;
- (void)injectPeopleDensityBundle:(id)a3 handler:(id)a4;
- (void)injectPeopleDensityStats:(unint64_t)a3 duration:(double)a4 date:(id)a5 advertisements:(id)a6 handler:(id)a7;
- (void)injectPeopleDiscoveryAdv:(id)a3 handler:(id)a4;
- (void)injectProximityEvent:(id)a3 handler:(id)a4;
- (void)injectRealtimeVisit:(id)a3 reply:(id)a4;
- (void)injectSignalForSignalGeneratorOptions:(id)a3 reply:(id)a4;
- (void)injectVisit:(id)a3 finerGranularityInferredMapItem:(id)a4 locationOfInterest:(id)a5 reply:(id)a6;
- (void)injectWiFiAccessPointWithMac:(id)a3 rssi:(int64_t)a4 channel:(int64_t)a5 age:(double)a6 date:(id)a7 reply:(id)a8;
- (void)logDatabasesWithReply:(id)a3;
- (void)logSafetyCacheWithReply:(id)a3;
- (void)mirroringDelegateSetupState:(id)a3;
- (void)performExportMirroringRequest:(id)a3;
- (void)performImportMirroringRequest:(id)a3;
- (void)performZoneResetMirroringRequest:(id)a3;
- (void)periodicPurgeWithReply:(id)a3;
- (void)processNewlyAddedWorkout:(id)a3 reply:(id)a4;
- (void)purgeUserCurationsPredating:(id)a3 handler:(id)a4;
- (void)queryProvider:(id)a3 options:(id)a4 reply:(id)a5;
- (void)reconstructTransitionsWithReply:(id)a3;
- (void)removeAllPeopleDensityBundles:(id)a3;
- (void)removeAllProximityEvent:(id)a3;
- (void)schemaUpdateWithModelFile:(id)a3 reply:(id)a4;
- (void)setXpcConnection:(id)a3;
- (void)simulatePredictedContextResult:(id)a3 reply:(id)a4;
- (void)simulateScenarioTrigger:(id)a3 reply:(id)a4;
- (void)simulateVisit:(id)a3 reply:(id)a4;
- (void)startSamplingPointOfInterestWithInterval:(double)a3 handler:(id)a4;
- (void)stopSamplingPointOfInterest:(id)a3;
- (void)storeBluePOITiles:(id)a3 handler:(id)a4;
- (void)storeHints:(id)a3 reply:(id)a4;
- (void)submitHintAtLocation:(id)a3 hintSource:(int64_t)a4 reply:(id)a5;
- (void)submitMetrics:(id)a3 metricName:(id)a4 reply:(id)a5;
- (void)submitTransitMetricsWithReply:(id)a3;
- (void)tearDownPersistenceStack:(id)a3;
- (void)updateAssetServerURL:(id)a3 assetType:(id)a4 reply:(id)a5;
- (void)updateIntermittentGNSSRegistrationOverrideState:(unint64_t)a3 reply:(id)a4;
- (void)updateRelevanceScoresWithReply:(id)a3;
- (void)updateTransitionWithIdentifier:(id)a3 modeOfTransportation:(int64_t)a4 reply:(id)a5;
@end

@implementation RTDaemonClientInternal

- (RTDaemonClientInternal)initWithQueue:(id)a3 accountManager:(id)a4 assetManager:(id)a5 authorizationManager:(id)a6 bluePOITileManager:(id)a7 buildingPolygonManager:(id)a8 deviceLocationPredictor:(id)a9 diagnostics:(id)a10 eventModelProvider:(id)a11 authorizedLocationManager:(id)a12 fingerprintManager:(id)a13 hintManager:(id)a14 intermittentGNSSManager:(id)a15 learnedLocationManager:(id)a16 learnedLocationStore:(id)a17 locationManager:(id)a18 locationStore:(id)a19 mapServiceManager:(id)a20 motionActivityManager:(id)a21 peopleDiscoveryProvider:(id)a22 persistenceManager:(id)a23 placeInferenceQueryStore:(id)a24 pointOfInterestSampler:(id)a25 predictedContextManager:(id)a26 purgeManager:(id)a27 safetyCacheStore:(id)a28 scenarioTriggerManager:(id)a29 userCurationManager:(id)a30 vehicleLocationProvider:(id)a31 visitManager:(id)a32 workoutRouteManager:(id)a33 workoutScheduler:(id)a34
{
  v90 = a3;
  v62 = a4;
  v58 = a5;
  v89 = a6;
  v88 = a7;
  v87 = a8;
  v86 = a9;
  v85 = a10;
  v84 = a11;
  v83 = a12;
  v82 = a13;
  v81 = a14;
  v80 = a15;
  v79 = a16;
  v78 = a17;
  v77 = a18;
  v61 = a19;
  v76 = a20;
  v75 = a21;
  v74 = a22;
  v73 = a23;
  v72 = a24;
  v71 = a25;
  v70 = a26;
  v69 = a27;
  v59 = a28;
  v68 = a29;
  v67 = a30;
  v66 = a31;
  v65 = a32;
  v64 = a33;
  v63 = a34;
  if (v90)
  {
    v39 = v58;
    if (!v58)
    {
      v51 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v47 = v89;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v51, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: assetManager", buf, 2u);
      }

      v45 = 0;
      v46 = v90;
      goto LABEL_38;
    }

    if (v89)
    {
      if (v88)
      {
        if (v87)
        {
          if (v86)
          {
            if (v85)
            {
              if (v84)
              {
                if (v83)
                {
                  if (v82)
                  {
                    if (v81)
                    {
                      if (v80)
                      {
                        if (v79)
                        {
                          if (v78)
                          {
                            if (v77)
                            {
                              if (v76)
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
                                                  if (v66)
                                                  {
                                                    if (v65)
                                                    {
                                                      if (v64)
                                                      {
                                                        if (v63)
                                                        {
                                                          v91.receiver = self;
                                                          v91.super_class = RTDaemonClientInternal;
                                                          v40 = [(RTDaemonClientInternal *)&v91 init];
                                                          v41 = v40;
                                                          if (v40)
                                                          {
                                                            objc_storeStrong(&v40->_queue, a3);
                                                            objc_storeStrong(&v41->_accountManager, a4);
                                                            objc_storeStrong(&v41->_assetManager, a5);
                                                            objc_storeStrong(&v41->_authorizationManager, a6);
                                                            objc_storeStrong(&v41->_bluePOITileManager, a7);
                                                            objc_storeStrong(&v41->_buildingPolygonManager, a8);
                                                            objc_storeStrong(&v41->_deviceLocationPredictor, a9);
                                                            objc_storeStrong(&v41->_diagnostics, a10);
                                                            objc_storeStrong(&v41->_eventModelProvider, a11);
                                                            objc_storeStrong(&v41->_authorizedLocationManager, a12);
                                                            objc_storeStrong(&v41->_fingerprintManager, a13);
                                                            objc_storeStrong(&v41->_hintManager, a14);
                                                            objc_storeStrong(&v41->_intermittentGNSSManager, a15);
                                                            objc_storeStrong(&v41->_learnedLocationManager, a16);
                                                            objc_storeStrong(&v41->_learnedLocationStore, a17);
                                                            objc_storeStrong(&v41->_locationManager, a18);
                                                            objc_storeStrong(&v41->_locationStore, a19);
                                                            objc_storeStrong(&v41->_mapServiceManager, a20);
                                                            objc_storeStrong(&v41->_motionActivityManager, a21);
                                                            objc_storeStrong(&v41->_peopleDiscoveryProvider, a22);
                                                            objc_storeStrong(&v41->_persistenceManager, a23);
                                                            objc_storeStrong(&v41->_placeInferenceQueryStore, a24);
                                                            objc_storeStrong(&v41->_pointOfInterestSampler, a25);
                                                            objc_storeStrong(&v41->_predictedContextManager, a26);
                                                            objc_storeStrong(&v41->_purgeManager, a27);
                                                            objc_storeStrong(&v41->_scenarioTriggerManager, a29);
                                                            objc_storeStrong(&v41->_userCurationManager, a30);
                                                            objc_storeStrong(&v41->_vehicleLocationProvider, a31);
                                                            objc_storeStrong(&v41->_visitManager, a32);
                                                            objc_storeStrong(&v41->_workoutRouteManager, a33);
                                                            objc_storeStrong(&v41->_workoutScheduler, a34);
                                                            objc_storeStrong(&v41->_safetyCacheStore, a28);
                                                            v42 = +[RTEntitlementProvider internalDaemonProtocolEntitlementProvider];
                                                            entitlementProvider = v41->_entitlementProvider;
                                                            v41->_entitlementProvider = v42;
                                                          }

                                                          v44 = v41;
                                                          v45 = v44;
                                                          v47 = v89;
                                                          v46 = v90;
                                                          v49 = v61;
                                                          v48 = v62;
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
                                    v47 = v89;
                                    v46 = v90;
                                    v49 = v61;
                                    v48 = v62;
                                    v52 = v59;
                                    v44 = self;
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

  v39 = v58;
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
  v47 = v89;
  v46 = v90;
LABEL_38:
  v48 = v62;
  v44 = self;
  v49 = v61;
LABEL_39:
  v52 = v59;
LABEL_78:

  return v45;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTDaemonClientInternal *)self executablePath];
  v5 = [(RTDaemonClientInternal *)self processIdentifier];
  v6 = [(RTDaemonClientInternal *)self signingIdentifier];
  v7 = [v3 stringWithFormat:@"%@(%d), %@", v4, v5, v6];

  return v7;
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  [v10 retainArguments];
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
  v29 = a5;
  v25 = v10;
  v26 = self;
  v27 = v9;
  v28 = v30;
  v19 = v9;
  v20 = v10;
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

- (void)setXpcConnection:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_xpcConnection, a3);
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v7 = [(RTDaemonClientInternal *)self queue];
    [(NSXPCConnection *)xpcConnection _setQueue:v7];

    v8 = self->_xpcConnection;
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2845DCEB8];
    [(NSXPCConnection *)v8 setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
    v10 = [(RTDaemonClientInternal *)self xpcConnection];
    v11 = [v10 exportedInterface];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    [v11 setClasses:v14 forSelector:sel_injectLocations_reply_ argumentIndex:0 ofReply:0];

    v15 = [(RTDaemonClientInternal *)self xpcConnection];
    v16 = [v15 exportedInterface];
    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    [v16 setClasses:v19 forSelector:sel_extendLifetimeOfVisitsWithIdentifiers_toExpireOn_reply_ argumentIndex:0 ofReply:0];

    v20 = [(RTDaemonClientInternal *)self xpcConnection];
    v21 = [v20 exportedInterface];
    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    [v21 setClasses:v24 forSelector:sel_expireLifetimeOfVisitsWithIdentifiers_expirationDate_reply_ argumentIndex:0 ofReply:0];

    v25 = [(RTDaemonClientInternal *)self xpcConnection];
    v26 = [v25 exportedInterface];
    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    [v26 setClasses:v29 forSelector:sel_storeHints_reply_ argumentIndex:0 ofReply:0];

    v30 = [(RTDaemonClientInternal *)self xpcConnection];
    v31 = [v30 exportedInterface];
    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    [v31 setClasses:v34 forSelector:sel_fetchBuildingPolygonsFromLocations_radius_limit_reply_ argumentIndex:0 ofReply:0];

    v35 = [(RTDaemonClientInternal *)self xpcConnection];
    v36 = [v35 exportedInterface];
    v37 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    [v36 setClasses:v39 forSelector:sel_fetchBuildingPolygonsFromLocations_radius_limit_reply_ argumentIndex:0 ofReply:1];

    v40 = [(RTDaemonClientInternal *)self xpcConnection];
    v41 = [v40 exportedInterface];
    v42 = MEMORY[0x277CBEB98];
    v43 = objc_opt_class();
    v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
    [v41 setClasses:v44 forSelector:sel_injectPeopleDensityStats_duration_date_advertisements_handler_ argumentIndex:3 ofReply:0];

    v45 = [(RTDaemonClientInternal *)self xpcConnection];
    v46 = [v45 exportedInterface];
    v47 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [v46 setClasses:v47 forSelector:sel_fetchPlaceInferenceQueriesWithDateInterval_ascending_reply_ argumentIndex:0 ofReply:0];

    v48 = [(RTDaemonClientInternal *)self xpcConnection];
    v49 = [v48 exportedInterface];
    v50 = MEMORY[0x277CBEB98];
    v51 = objc_opt_class();
    v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
    [v49 setClasses:v52 forSelector:sel_fetchPlaceInferenceQueriesWithDateInterval_ascending_reply_ argumentIndex:0 ofReply:1];

    v53 = [(RTDaemonClientInternal *)self xpcConnection];
    v54 = [v53 exportedInterface];
    v55 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [v54 setClasses:v55 forSelector:sel_fetchPointOfInterestsAroundCoordinate_radius_reply_ argumentIndex:0 ofReply:0];

    v56 = [(RTDaemonClientInternal *)self xpcConnection];
    v57 = [v56 exportedInterface];
    v58 = MEMORY[0x277CBEB98];
    v59 = objc_opt_class();
    v60 = [v58 setWithObjects:{v59, objc_opt_class(), 0}];
    [v57 setClasses:v60 forSelector:sel_fetchPointOfInterestsAroundCoordinate_radius_reply_ argumentIndex:0 ofReply:1];

    v61 = [(RTDaemonClientInternal *)self xpcConnection];
    v62 = [v61 exportedInterface];
    v63 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [v62 setClasses:v63 forSelector:sel_fetchPointOfInterestAttributesWithIdentifier_reply_ argumentIndex:0 ofReply:1];

    v64 = [(RTDaemonClientInternal *)self xpcConnection];
    v65 = [v64 exportedInterface];
    v66 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [v65 setClasses:v66 forSelector:sel_fetchBluePOITileWithGeoTileKey_reply_ argumentIndex:0 ofReply:1];

    v67 = [(RTDaemonClientInternal *)self xpcConnection];
    v68 = [v67 exportedInterface];
    v69 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [v68 setClasses:v69 forSelector:sel_fetchBluePOIMetadataWithHandler_ argumentIndex:0 ofReply:1];

    v70 = [(RTDaemonClientInternal *)self xpcConnection];
    v71 = [v70 exportedInterface];
    v72 = MEMORY[0x277CBEB98];
    v73 = objc_opt_class();
    v74 = [v72 setWithObjects:{v73, objc_opt_class(), 0}];
    [v71 setClasses:v74 forSelector:sel_storeBluePOITiles_handler_ argumentIndex:0 ofReply:0];

    v75 = [(RTDaemonClientInternal *)self xpcConnection];
    v76 = [v75 exportedInterface];
    v77 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [v76 setClasses:v77 forSelector:sel_fetchCurrentLocationWithReply_ argumentIndex:0 ofReply:1];

    v78 = [(RTDaemonClientInternal *)self xpcConnection];
    v79 = [v78 exportedInterface];
    v80 = MEMORY[0x277CBEB98];
    v81 = objc_opt_class();
    v82 = objc_opt_class();
    v83 = objc_opt_class();
    v84 = [v80 setWithObjects:{v81, v82, v83, objc_opt_class(), 0}];
    [v79 setClasses:v84 forSelector:sel_fetchLocationsFromCoreLocationWithOptions_reply_ argumentIndex:0 ofReply:0];

    v85 = [(RTDaemonClientInternal *)self xpcConnection];
    v86 = [v85 exportedInterface];
    v87 = MEMORY[0x277CBEB98];
    v88 = objc_opt_class();
    v89 = objc_opt_class();
    v90 = objc_opt_class();
    v91 = [v87 setWithObjects:{v88, v89, v90, objc_opt_class(), 0}];
    [v86 setClasses:v91 forSelector:sel_fetchLocationsFromCoreLocationWithOptions_reply_ argumentIndex:0 ofReply:1];

    v92 = [(RTDaemonClientInternal *)self xpcConnection];
    v93 = [v92 remoteObjectInterface];
    [v93 setClass:objc_opt_class() forSelector:sel_fetchUserCurationsWithOptions_handler_ argumentIndex:0 ofReply:0];

    v94 = [(RTDaemonClientInternal *)self xpcConnection];
    v95 = [v94 remoteObjectInterface];
    v96 = MEMORY[0x277CBEB98];
    v97 = objc_opt_class();
    v98 = [v96 setWithObjects:{v97, objc_opt_class(), 0}];
    [v95 setClasses:v98 forSelector:sel_fetchUserCurationsWithOptions_handler_ argumentIndex:0 ofReply:1];

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

- (void)fetchDataVaultPath:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v7 = *MEMORY[0x277CCA450];
    v8[0] = @"This operation is unsupported on this platform.";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:1 userInfo:v4];
    v3[2](v3, 0, v5);
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

- (void)fetchPathToBackupWithReply:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(RTDaemonClientInternal *)self diagnostics];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__RTDaemonClientInternal_fetchPathToBackupWithReply___block_invoke;
    v8[3] = &unk_2788CBAA0;
    v10 = a2;
    v8[4] = self;
    v9 = v5;
    [v6 fetchPathToBackupWithHandler:v8];
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

- (void)fetchAllLocationsOfInterestWithReply:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__RTDaemonClientInternal_fetchAllLocationsOfInterestWithReply___block_invoke;
    v9[3] = &unk_2788C5508;
    v9[4] = self;
    v11 = a2;
    v10 = v5;
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

- (void)forceSequentialClusterIdentification:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(RTDaemonClientInternal *)self learnedLocationManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__RTDaemonClientInternal_forceSequentialClusterIdentification___block_invoke;
    v8[3] = &unk_2788C56C0;
    v8[4] = self;
    v10 = a2;
    v9 = v5;
    [v6 trainForReason:2 mode:1 handler:v8];
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

- (void)injectLocationOfInterest:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = [[RTLearnedLocationOfInterest alloc] initWithLocationOfInterest:v7 creationDate:v9];
    learnedLocationManager = self->_learnedLocationManager;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__RTDaemonClientInternal_injectLocationOfInterest_reply___block_invoke;
    v13[3] = &unk_2788C56C0;
    v13[4] = self;
    v15 = a2;
    v14 = v8;
    v12 = self;
    [(RTLearnedLocationManager *)learnedLocationManager addLocationOfInterest:v10 handler:v13];
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

- (void)injectVisit:(id)a3 finerGranularityInferredMapItem:(id)a4 locationOfInterest:(id)a5 reply:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v14)
  {
    [MEMORY[0x277CBEAA8] date];
    v15 = v23 = a2;
    v16 = [v15 dateByAddingTimeInterval:2419200.0];
    v17 = [[RTLearnedVisit alloc] initWithVisit:v11 locationOfInterest:v13 creationDate:v15 expirationDate:v16];
    v18 = [[RTLearnedLocationOfInterest alloc] initWithLocationOfInterest:v13 creationDate:v15];
    v19 = v11;
    learnedLocationManager = self->_learnedLocationManager;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __95__RTDaemonClientInternal_injectVisit_finerGranularityInferredMapItem_locationOfInterest_reply___block_invoke;
    v24[3] = &unk_2788C56C0;
    v24[4] = self;
    v26 = v23;
    v25 = v14;
    v21 = self;
    v22 = learnedLocationManager;
    v11 = v19;
    [(RTLearnedLocationManager *)v22 addVisit:v17 finerGranularityInferredMapItem:v12 locationOfInterest:v18 handler:v24];
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

- (void)fetchStoredLocationsCountFromDate:(id)a3 toDate:(id)a4 uncertainty:(double)a5 limit:(unint64_t)a6 reply:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  if (v15)
  {
    locationManager = self->_locationManager;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __91__RTDaemonClientInternal_fetchStoredLocationsCountFromDate_toDate_uncertainty_limit_reply___block_invoke;
    v18[3] = &unk_2788CBAF0;
    v18[4] = self;
    v22 = a2;
    v19 = v13;
    v20 = v14;
    v23 = a5;
    v24 = a6;
    v21 = v15;
    [(RTLocationManager *)locationManager fetchStoredLocationsCountFromDate:v19 toDate:v20 uncertainty:a6 limit:v18 handler:a5];
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

- (void)fetchLocationsOfInterestWithVisitsWithinDistance:(id)a3 location:(id)a4 reply:(id)a5
{
  v46[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v9)
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
      [v9 doubleValue];
      v21 = v20;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __90__RTDaemonClientInternal_fetchLocationsOfInterestWithVisitsWithinDistance_location_reply___block_invoke;
      v29[3] = &unk_2788CBB40;
      v29[4] = self;
      v34 = a2;
      v30 = v9;
      v31 = v10;
      v32 = v11;
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

      (*(v11 + 2))(v11, 0, v25);
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

- (void)fetchVisitsWithReply:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    learnedLocationStore = self->_learnedLocationStore;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__RTDaemonClientInternal_fetchVisitsWithReply___block_invoke;
    v8[3] = &unk_2788C6D60;
    v9 = v4;
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

- (void)forceRelabeling:(id)a3
{
  if (a3)
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

- (void)forcePlaceTypeClassificationWithReply:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__RTDaemonClientInternal_forcePlaceTypeClassificationWithReply___block_invoke;
    v8[3] = &unk_2788C48C0;
    v9 = v4;
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

- (void)forcePredictedLocationContextModelTrainingWithReply:(id)a3
{
  if (a3)
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

- (void)simulateScenarioTrigger:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    scenarioTriggerManager = self->_scenarioTriggerManager;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__RTDaemonClientInternal_simulateScenarioTrigger_reply___block_invoke;
    v10[3] = &unk_2788CBB68;
    v10[4] = self;
    v11 = v6;
    [(RTScenarioTriggerManager *)scenarioTriggerManager simulateScenarioTrigger:a3 handler:v10];
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

- (void)forceUpdateAssetMetadataWithReply:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    assetManager = self->_assetManager;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__RTDaemonClientInternal_forceUpdateAssetMetadataWithReply___block_invoke;
    v8[3] = &unk_2788C48C0;
    v9 = v4;
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

- (void)updateAssetServerURL:(id)a3 assetType:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    assetManager = self->_assetManager;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__RTDaemonClientInternal_updateAssetServerURL_assetType_reply___block_invoke;
    v12[3] = &unk_2788C4F60;
    v12[4] = self;
    v13 = v8;
    [(RTAssetManager *)assetManager updateAssetServerURL:a3 assetType:a4 handler:v12];
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

- (void)forceEventModelRefreshWithReply:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    eventModelProvider = self->_eventModelProvider;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__RTDaemonClientInternal_forceEventModelRefreshWithReply___block_invoke;
    v8[3] = &unk_2788C4F60;
    v8[4] = self;
    v9 = v4;
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

- (void)injectLocations:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    locationManager = self->_locationManager;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__RTDaemonClientInternal_injectLocations_reply___block_invoke;
    v10[3] = &unk_2788C4F60;
    v10[4] = self;
    v11 = v6;
    [(RTLocationManager *)locationManager injectLocations:a3 handler:v10];
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

- (void)storeHints:(id)a3 reply:(id)a4
{
  v6 = a4;
  hintManager = self->_hintManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__RTDaemonClientInternal_storeHints_reply___block_invoke;
  v9[3] = &unk_2788C48C0;
  v10 = v6;
  v8 = v6;
  [(RTHintManager *)hintManager storeHints:a3 handler:v9];
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

- (void)injectSignalForSignalGeneratorOptions:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    locationManager = self->_locationManager;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__RTDaemonClientInternal_injectSignalForSignalGeneratorOptions_reply___block_invoke;
    v10[3] = &unk_2788C48C0;
    v11 = v6;
    [RTSignalGenerator injectSignalForSignalGeneratorOptions:a3 locationManager:locationManager handler:v10];
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

- (void)clearAllLocationsOfInterestWithReply:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__RTDaemonClientInternal_clearAllLocationsOfInterestWithReply___block_invoke;
    v8[3] = &unk_2788C4F60;
    v8[4] = self;
    v9 = v4;
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

- (void)updateTransitionWithIdentifier:(id)a3 modeOfTransportation:(int64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    -[RTLearnedLocationManager updateTransitionWithIdentifier:motionActivityType:handler:](self->_learnedLocationManager, "updateTransitionWithIdentifier:motionActivityType:handler:", v8, [MEMORY[0x277D01180] motionActivityTypeFromModeOfTransportation:a4], v9);
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

- (void)reconstructTransitionsWithReply:(id)a3
{
  if (a3)
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

- (void)simulateVisit:(id)a3 reply:(id)a4
{
  if (a4)
  {
    visitManager = self->_visitManager;

    [(RTVisitManager *)visitManager simulateVisit:a3 handler:?];
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

- (void)fetchVisitsBetweenStartDate:(id)a3 endDate:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    visitManager = self->_visitManager;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__RTDaemonClientInternal_fetchVisitsBetweenStartDate_endDate_reply___block_invoke;
    v12[3] = &unk_2788C5558;
    v12[4] = self;
    v13 = v8;
    [(RTVisitManager *)visitManager fetchVisitsFromDate:a3 toDate:a4 handler:v12];
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

- (void)injectRealtimeVisit:(id)a3 reply:(id)a4
{
  if (a4)
  {
    visitManager = self->_visitManager;

    [(RTVisitManager *)visitManager injectRealtimeVisit:a3 handler:?];
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

- (void)simulatePredictedContextResult:(id)a3 reply:(id)a4
{
  if (a4)
  {
    predictedContextManager = self->_predictedContextManager;

    [(RTPredictedContextManager *)predictedContextManager simulatePredictedContextResult:a3 handler:?];
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

- (void)fetchPredictedContextInputSignalsWithReply:(id)a3
{
  v4 = a3;
  if (v4)
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

    [(RTPredictedContextManager *)self->_predictedContextManager fetchPredictedContextInputSignalsWithHandler:v4];
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

- (void)submitHintAtLocation:(id)a3 hintSource:(int64_t)a4 reply:(id)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    if (v8)
    {
      [(RTHintManager *)self->_hintManager submitHintFromSource:a4 location:v8];
      v9[2](v9, 0);
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277D01448];
      v16 = *MEMORY[0x277CCA450];
      v17[0] = @"Valid location required.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v14 = [v11 errorWithDomain:v12 code:7 userInfo:v13];
      (v9)[2](v9, v14);
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

- (void)fetchFusionCandidatesForVisitIdentifier:(id)a3 reply:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__RTDaemonClientInternal_fetchFusionCandidatesForVisitIdentifier_reply___block_invoke;
    v11[3] = &unk_2788C6BF8;
    v13 = a2;
    v12 = v7;
    [(RTLearnedLocationManager *)learnedLocationManager fetchFusionCandidatesForVisitIdentifier:a3 handler:v11];
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

- (void)fetchInferredMapItemForVisitIdentifier:(id)a3 reply:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__RTDaemonClientInternal_fetchInferredMapItemForVisitIdentifier_reply___block_invoke;
    v11[3] = &unk_2788CBBD8;
    v11[4] = self;
    v13 = a2;
    v12 = v7;
    [(RTLearnedLocationManager *)learnedLocationManager fetchInferredMapItemForVisitIdentifier:a3 handler:v11];
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

- (void)queryProvider:(id)a3 options:(id)a4 reply:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    learnedLocationManager = self->_learnedLocationManager;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__RTDaemonClientInternal_queryProvider_options_reply___block_invoke;
    v13[3] = &unk_2788C5508;
    v13[4] = self;
    v15 = a2;
    v14 = v9;
    [(RTLearnedLocationManager *)learnedLocationManager queryProvider:a3 options:a4 handler:v13];
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

- (void)fetchFingerprintsWithOptions:(id)a3 reply:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }

    goto LABEL_9;
  }

  if (!v7)
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

    v8[2](v8, 0, v12);
LABEL_9:

    goto LABEL_10;
  }

  fingerprintManager = self->_fingerprintManager;
  v10 = [v7 dateInterval];
  v11 = [v7 settledState];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__RTDaemonClientInternal_fetchFingerprintsWithOptions_reply___block_invoke;
  v17[3] = &unk_2788C5508;
  v17[4] = self;
  v19 = a2;
  v18 = v8;
  [(RTFingerprintManager *)fingerprintManager fetchFingerprintsInDateInterval:v10 filteredBySettledState:v11 handler:v17];

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

- (void)fetchWiFiAccessPointsForFingerprint:(id)a3 reply:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v8)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", buf, 2u);
    }

    goto LABEL_9;
  }

  if (!v7)
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
  v17 = v8;
  [(RTFingerprintManager *)fingerprintManager fetchWifiAccessPointsForFingerprint:v7 handler:v16];

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

- (void)injectFingerprintWithIdentifier:(id)a3 settledState:(unint64_t)a4 start:(id)a5 reply:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    if (!v11)
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

    if (a4 >= 3)
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

      if (v12)
      {
LABEL_8:
        if (v11)
        {
          goto LABEL_9;
        }

        goto LABEL_20;
      }
    }

    else if (v12)
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

    if (v11)
    {
LABEL_9:
      if (a4 >= 3)
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
        if (v12)
        {
          v15 = [objc_alloc(MEMORY[0x277D01108]) initWithIdentifier:v11 settledState:a4 start:v12 accessPoints:0];
          fingerprintManager = self->_fingerprintManager;
          v29 = v15;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __83__RTDaemonClientInternal_injectFingerprintWithIdentifier_settledState_start_reply___block_invoke;
          v26[3] = &unk_2788C56C0;
          v26[4] = self;
          v28 = a2;
          v27 = v13;
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

      (*(v13 + 2))(v13, v15);
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

- (void)injectFingerprintWithSettledState:(BOOL)a3 start:(id)a4 reply:(id)a5
{
  v6 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v6)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v12 = objc_alloc(MEMORY[0x277D01108]);
    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v12 initWithIdentifier:v13 settledState:v11 start:v9 accessPoints:0];

    fingerprintManager = self->_fingerprintManager;
    v21[0] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__RTDaemonClientInternal_injectFingerprintWithSettledState_start_reply___block_invoke;
    v17[3] = &unk_2788C56C0;
    v17[4] = self;
    v19 = a2;
    v18 = v10;
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

- (void)injectWiFiAccessPointWithMac:(id)a3 rssi:(int64_t)a4 channel:(int64_t)a5 age:(double)a6 date:(id)a7 reply:(id)a8
{
  v25[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a7;
  v17 = a8;
  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x277D01430]) initWithMac:v15 rssi:a4 channel:a5 age:v16 date:a6];
    fingerprintManager = self->_fingerprintManager;
    v25[0] = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __83__RTDaemonClientInternal_injectWiFiAccessPointWithMac_rssi_channel_age_date_reply___block_invoke;
    v21[3] = &unk_2788C56C0;
    v21[4] = self;
    v23 = a2;
    v22 = v17;
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

- (void)logDatabasesWithReply:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RTDaemonClientInternal *)self learnedLocationManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__RTDaemonClientInternal_logDatabasesWithReply___block_invoke;
    v7[3] = &unk_2788C4F60;
    v7[4] = self;
    v8 = v4;
    [v5 logDatabasesWithHandler:v7];
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

- (void)logSafetyCacheWithReply:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RTDaemonClientInternal *)self safetyCacheStore];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__RTDaemonClientInternal_logSafetyCacheWithReply___block_invoke;
    v7[3] = &unk_2788C4F60;
    v7[4] = self;
    v8 = v4;
    [v5 logStoreWithHandler:v7];
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

- (void)performExportMirroringRequest:(id)a3
{
  if (a3)
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

- (void)performImportMirroringRequest:(id)a3
{
  if (a3)
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

- (void)performZoneResetMirroringRequest:(id)a3
{
  if (a3)
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

- (void)mirroringDelegateSetupState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    persistenceManager = self->_persistenceManager;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__RTDaemonClientInternal_mirroringDelegateSetupState___block_invoke;
    v8[3] = &unk_2788CBC28;
    v9 = v4;
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

- (void)schemaUpdateWithModelFile:(id)a3 reply:(id)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
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
          v23 = v7;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@:%@, Dispatching CloudKit schema update, modelFile, %@", buf, 0x20u);
        }
      }

      persistenceManager = self->_persistenceManager;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __58__RTDaemonClientInternal_schemaUpdateWithModelFile_reply___block_invoke;
      v16[3] = &unk_2788C48C0;
      v17 = v8;
      [(RTPersistenceManager *)persistenceManager schemaUpdateWithModelFile:v7 handler:v16];
      v14 = v17;
    }

    else
    {
      v24 = *MEMORY[0x277CCA450];
      v25[0] = @"file path to model is required.";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v14];
      (*(v8 + 2))(v8, v15);
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

- (void)tearDownPersistenceStack:(id)a3
{
  if (a3)
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

- (void)fetchFMCEnabledWithReply:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RTDaemonClientInternal *)self vehicleLocationProvider];
    [v5 fetchFMCEnabledWithHandler:v4];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v6, 2u);
    }
  }
}

- (void)fetchMotionActivitiesFromStartDate:(id)a3 endDate:(id)a4 reply:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    motionActivityManager = self->_motionActivityManager;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __75__RTDaemonClientInternal_fetchMotionActivitiesFromStartDate_endDate_reply___block_invoke;
    v14[3] = &unk_2788C5D18;
    v18 = a2;
    v14[4] = self;
    v15 = v9;
    v16 = v10;
    v17 = v11;
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

- (void)submitMetrics:(id)a3 metricName:(id)a4 reply:(id)a5
{
  v33[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = NSClassFromString(v8);
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
          [v12 setAllMetrics:v7 error:&v26];
          v13 = v26;
          if (v13)
          {
            v14 = v13;
            v15 = v9[2];
          }

          else
          {
            v25 = 0;
            v22 = [v12 submitMetricsWithError:&v25];
            v14 = v25;
            v15 = v9[2];
            if (v22)
            {
              v23 = v9;
              v24 = 0;
LABEL_17:
              v15(v23, v24);

              goto LABEL_13;
            }
          }

          v23 = v9;
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

    (v9[2])(v9, v12);
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

- (void)submitTransitMetricsWithReply:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RTLearnedLocationManager *)self->_learnedLocationManager learnedLocationEngine];
    [v5 performTransitAnalyticsWithHandler:v4];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v6, 2u);
    }
  }
}

- (void)expireLifetimeOfVisitsWithIdentifiers:(id)a3 expirationDate:(id)a4 reply:(id)a5
{
  if (a5)
  {
    learnedLocationStore = self->_learnedLocationStore;

    [(RTLearnedLocationStore *)learnedLocationStore expireLifetimeOfVisitsWithIdentifiers:a3 expirationDate:a4 handler:?];
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

- (void)extendLifetimeOfVisitsWithIdentifiers:(id)a3 toExpireOn:(id)a4 reply:(id)a5
{
  if (a5)
  {
    learnedLocationStore = self->_learnedLocationStore;

    [(RTLearnedLocationStore *)learnedLocationStore updateExpirationDateOfVisitsWithIdentifiers:a3 expirationDate:a4 allowThresholdBypass:1 handler:a5];
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

- (void)forceProcessWorkoutsClearClusters:(BOOL)a3 clearExistingDistanceMatrix:(BOOL)a4 buildDistanceMatrix:(BOOL)a5 syncClustersToHealhtKit:(BOOL)a6 syncClustersToWatch:(BOOL)a7 filteringDistanceThreshold:(double)a8 topNWorkouts:(unint64_t)a9 isSchedulerTriggered:(BOOL)a10 reply:(id)a11
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v20 = a11;
  if (v20)
  {
    v30 = a9;
    v31 = a2;
    v21 = dispatch_group_create();
    v22 = objc_opt_new();
    if (v16)
    {
      dispatch_group_enter(v21);
      v23 = [(RTDaemonClientInternal *)self workoutScheduler];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __219__RTDaemonClientInternal_forceProcessWorkoutsClearClusters_clearExistingDistanceMatrix_buildDistanceMatrix_syncClustersToHealhtKit_syncClustersToWatch_filteringDistanceThreshold_topNWorkouts_isSchedulerTriggered_reply___block_invoke;
      v39[3] = &unk_2788CB988;
      v39[4] = self;
      v40 = v22;
      v41 = v21;
      [v23 clearTaskStatesWithHandler:v39];
    }

    dispatch_group_enter(v21);
    v24 = [(RTDaemonClientInternal *)self workoutRouteManager];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __219__RTDaemonClientInternal_forceProcessWorkoutsClearClusters_clearExistingDistanceMatrix_buildDistanceMatrix_syncClustersToHealhtKit_syncClustersToWatch_filteringDistanceThreshold_topNWorkouts_isSchedulerTriggered_reply___block_invoke_3;
    v36[3] = &unk_2788CB988;
    v36[4] = self;
    v25 = v22;
    v37 = v25;
    v38 = v21;
    v26 = v21;
    LOBYTE(v29) = a10;
    [v24 processWorkoutsClearClusters:v17 clearExistingDistanceMatrix:v16 buildDistanceMatrix:v15 syncClustersToHealhtKit:v14 syncClustersToWatch:v13 filteringDistanceThreshold:v30 topNWorkouts:a8 isSchedulerTriggered:v29 handler:v36];

    v27 = [(RTDaemonClientInternal *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __219__RTDaemonClientInternal_forceProcessWorkoutsClearClusters_clearExistingDistanceMatrix_buildDistanceMatrix_syncClustersToHealhtKit_syncClustersToWatch_filteringDistanceThreshold_topNWorkouts_isSchedulerTriggered_reply___block_invoke_5;
    block[3] = &unk_2788C4C20;
    v35 = v31;
    block[4] = self;
    v33 = v25;
    v34 = v20;
    v28 = v25;
    dispatch_group_notify(v26, v27, block);
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

- (void)displayWorkoutDistanceRecordsWithHandler:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(RTDaemonClientInternal *)self workoutRouteManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__RTDaemonClientInternal_displayWorkoutDistanceRecordsWithHandler___block_invoke;
    v8[3] = &unk_2788C56C0;
    v8[4] = self;
    v10 = a2;
    v9 = v5;
    [v6 displayWorkoutDistanceRecordsWithHandler:v8];
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

- (void)updateRelevanceScoresWithReply:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(RTDaemonClientInternal *)self workoutRouteManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__RTDaemonClientInternal_updateRelevanceScoresWithReply___block_invoke;
    v8[3] = &unk_2788C56C0;
    v8[4] = self;
    v10 = a2;
    v9 = v5;
    [v6 updateRelevanceScoresWithHandler:v8];
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

- (void)processNewlyAddedWorkout:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
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

  if (!v8)
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

  v10 = [(RTDaemonClientInternal *)self workoutRouteManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__RTDaemonClientInternal_processNewlyAddedWorkout_reply___block_invoke;
  v13[3] = &unk_2788C56C0;
  v13[4] = self;
  v15 = a2;
  v14 = v9;
  [v10 processNewlyAddedWorkout:v7 handler:v13];

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

- (void)deleteWorkout:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
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

  if (!v8)
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

  v10 = [(RTDaemonClientInternal *)self workoutRouteManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__RTDaemonClientInternal_deleteWorkout_reply___block_invoke;
  v13[3] = &unk_2788C56C0;
  v13[4] = self;
  v15 = a2;
  v14 = v9;
  [v10 deleteWorkout:v7 handler:v13];

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

- (void)fetchBuildingPolygonsFromLocations:(id)a3 radius:(double)a4 limit:(unint64_t)a5 reply:(id)a6
{
  v11 = a3;
  v12 = a6;
  if (v12)
  {
    v13 = [(RTDaemonClientInternal *)self buildingPolygonManager];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__RTDaemonClientInternal_fetchBuildingPolygonsFromLocations_radius_limit_reply___block_invoke;
    v15[3] = &unk_2788C5508;
    v15[4] = self;
    v17 = a2;
    v16 = v12;
    [v13 fetchClosestBuildingPolygonsFromLocations:v11 radius:a5 limit:v15 handler:a4];
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

- (void)fetchIntermittentGNSSRegistrationStateWithReply:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    intermittentGNSSManager = self->_intermittentGNSSManager;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__RTDaemonClientInternal_fetchIntermittentGNSSRegistrationStateWithReply___block_invoke;
    v9[3] = &unk_2788C4E00;
    v11 = a2;
    v9[4] = self;
    v10 = v5;
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

- (void)updateIntermittentGNSSRegistrationOverrideState:(unint64_t)a3 reply:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    intermittentGNSSManager = self->_intermittentGNSSManager;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __80__RTDaemonClientInternal_updateIntermittentGNSSRegistrationOverrideState_reply___block_invoke;
    v11[3] = &unk_2788CBC50;
    v13 = a2;
    v14 = a3;
    v11[4] = self;
    v12 = v7;
    [(RTIntermittentGNSSManager *)intermittentGNSSManager updateIntermittentGNSSRegistrationOverrideState:a3 handler:v11];
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

- (void)injectProximityEvent:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = self;
    v10 = [(RTDaemonClientInternal *)v9 peopleDiscoveryProvider];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__RTDaemonClientInternal_injectProximityEvent_handler___block_invoke;
    v11[3] = &unk_2788C56C0;
    v11[4] = v9;
    v13 = a2;
    v12 = v8;
    [v10 addProximityEvent:v7 handler:v11];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &v9->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
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

- (void)injectPeopleDiscoveryAdv:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = self;
    v10 = [(RTDaemonClientInternal *)v9 peopleDiscoveryProvider];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__RTDaemonClientInternal_injectPeopleDiscoveryAdv_handler___block_invoke;
    v11[3] = &unk_2788C56C0;
    v11[4] = v9;
    v13 = a2;
    v12 = v8;
    [v10 injectAdv:v7 handler:v11];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &v9->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
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

- (void)removeAllProximityEvent:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = self;
    v7 = [(RTDaemonClientInternal *)v6 peopleDiscoveryProvider];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__RTDaemonClientInternal_removeAllProximityEvent___block_invoke;
    v8[3] = &unk_2788C56C0;
    v8[4] = v6;
    v10 = a2;
    v9 = v5;
    [v7 clearProximityEvents:v8];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &v6->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
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

- (void)injectPeopleDensityBundle:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = self;
    v10 = [(RTDaemonClientInternal *)v9 peopleDiscoveryProvider];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__RTDaemonClientInternal_injectPeopleDensityBundle_handler___block_invoke;
    v11[3] = &unk_2788C56C0;
    v11[4] = v9;
    v13 = a2;
    v12 = v8;
    [v10 addPeopleDensityBundle:v7 handler:v11];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &v9->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
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

- (void)injectPeopleDensityStats:(unint64_t)a3 duration:(double)a4 date:(id)a5 advertisements:(id)a6 handler:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v15)
  {
    v16 = self;
    v17 = [(RTDaemonClientInternal *)v16 peopleDiscoveryProvider];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __88__RTDaemonClientInternal_injectPeopleDensityStats_duration_date_advertisements_handler___block_invoke;
    v18[3] = &unk_2788C56C0;
    v18[4] = v16;
    v20 = a2;
    v19 = v15;
    [v17 injectPeopleDensityStats:a3 duration:v13 date:v14 advertisements:v18 handler:a4];
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &v16->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
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

- (void)removeAllPeopleDensityBundles:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = self;
    v7 = [(RTDaemonClientInternal *)v6 peopleDiscoveryProvider];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__RTDaemonClientInternal_removeAllPeopleDensityBundles___block_invoke;
    v8[3] = &unk_2788C56C0;
    v8[4] = v6;
    v10 = a2;
    v9 = v5;
    [v7 clearPeopleDensityBundles:v8];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &v6->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
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

- (void)computeContactScores:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = self;
    v7 = [(RTDaemonClientInternal *)v6 peopleDiscoveryProvider];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__RTDaemonClientInternal_computeContactScores___block_invoke;
    v8[3] = &unk_2788C56C0;
    v8[4] = v6;
    v10 = a2;
    v9 = v5;
    [v7 computeContactScores:v8];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, &v6->super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
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

- (void)fetchAuthorizedLocations:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(RTDaemonClientInternal *)self authorizedLocationManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__RTDaemonClientInternal_fetchAuthorizedLocations___block_invoke;
    v8[3] = &unk_2788CBC78;
    v8[4] = self;
    v10 = a2;
    v9 = v5;
    [v6 fetchAuthorizedLocations:v8];
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

- (void)fetchAuthorizedLocationExtendedStatus:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(RTDaemonClientInternal *)self authorizedLocationManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__RTDaemonClientInternal_fetchAuthorizedLocationExtendedStatus___block_invoke;
    v8[3] = &unk_2788C9658;
    v8[4] = self;
    v10 = a2;
    v9 = v5;
    [v6 fetchAuthorizedLocationExtendedStatus:v8];
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

- (void)fetchAuthorizedLocationDetailedStatus:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(RTDaemonClientInternal *)self authorizedLocationManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__RTDaemonClientInternal_fetchAuthorizedLocationDetailedStatus___block_invoke;
    v8[3] = &unk_2788CBCF0;
    v8[4] = self;
    v10 = a2;
    v9 = v5;
    [v6 fetchAuthorizedLocationDetailedStatus:v8];
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

- (void)fetchAuthorizedLocationCachedStatus:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(RTDaemonClientInternal *)self authorizedLocationManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__RTDaemonClientInternal_fetchAuthorizedLocationCachedStatus___block_invoke;
    v8[3] = &unk_2788C9658;
    v8[4] = self;
    v10 = a2;
    v9 = v5;
    [v6 fetchAuthorizedLocationCachedStatus:v8];
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

- (void)forceAuthorizedLocationEraseInstallInitialization:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(RTDaemonClientInternal *)self authorizedLocationManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__RTDaemonClientInternal_forceAuthorizedLocationEraseInstallInitialization___block_invoke;
    v8[3] = &unk_2788C4E00;
    v8[4] = self;
    v10 = a2;
    v9 = v5;
    [v6 runEraseInstallDatabaseInitialization:v8];
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

- (void)eraseVisitLogDatabase:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(RTDaemonClientInternal *)self authorizedLocationManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__RTDaemonClientInternal_eraseVisitLogDatabase___block_invoke;
    v8[3] = &unk_2788C56C0;
    v8[4] = self;
    v10 = a2;
    v9 = v5;
    [v6 eraseVisitLogDatabase:v8];
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

- (void)fetchVisitLogsWithDateInterval:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [[RTAuthorizedLocationVisitLogFetchOptions alloc] initWithAscending:0 dateInterval:v7 limit:0];
    v10 = [(RTDaemonClientInternal *)self authorizedLocationManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__RTDaemonClientInternal_fetchVisitLogsWithDateInterval_reply___block_invoke;
    v11[3] = &unk_2788C5508;
    v11[4] = self;
    v13 = a2;
    v12 = v8;
    [v10 fetchVisitLogsWithOptions:v9 handler:v11];
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

- (void)fetchPlaceInferenceQueriesWithDateInterval:(id)a3 ascending:(BOOL)a4 reply:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  if (v10)
  {
    v11 = [(RTDaemonClientInternal *)self placeInferenceQueryStore];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __85__RTDaemonClientInternal_fetchPlaceInferenceQueriesWithDateInterval_ascending_reply___block_invoke;
    v13[3] = &unk_2788C5508;
    v13[4] = self;
    v15 = a2;
    v14 = v10;
    [v11 fetchPlaceInferenceQueriesWithDateInterval:v9 ascending:v6 handler:v13];
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

- (void)startSamplingPointOfInterestWithInterval:(double)a3 handler:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (v7)
  {
    v8 = [(RTDaemonClientInternal *)self pointOfInterestSampler];
    v9 = [(RTDaemonClientInternal *)self executablePath];
    v10 = [v9 lastPathComponent];
    [v8 startSamplingPointOfInterestFromRequester:v10 samplingInterval:a3];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = NSStringFromSelector(a2);
        v14 = 138412802;
        v15 = v12;
        v16 = 2112;
        v17 = self;
        v18 = 2112;
        v19 = 0;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v14, 0x20u);
      }
    }

    v7[2](v7, 0);
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

- (void)stopSamplingPointOfInterest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [(RTDaemonClientInternal *)self pointOfInterestSampler];
    v7 = [(RTDaemonClientInternal *)self executablePath];
    v8 = [v7 lastPathComponent];
    [v6 stopSamplingPointOfInterestFromRequester:v8];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromSelector(a2);
        v12 = 138412802;
        v13 = v10;
        v14 = 2112;
        v15 = self;
        v16 = 2112;
        v17 = 0;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, reply to client, %@, error, %@", &v12, 0x20u);
      }
    }

    v5[2](v5, 0);
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

- (void)fetchPointOfInterestsAroundCoordinate:(id)a3 radius:(double)a4 reply:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (v10)
  {
    v11 = [(RTDaemonClientInternal *)self mapServiceManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __77__RTDaemonClientInternal_fetchPointOfInterestsAroundCoordinate_radius_reply___block_invoke;
    v13[3] = &unk_2788C5508;
    v13[4] = self;
    v15 = a2;
    v14 = v10;
    [v11 fetchPointOfInterestsAroundCoordinate:v9 radius:0 options:v13 handler:a4];
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

- (void)fetchPointOfInterestAttributesWithIdentifier:(unint64_t)a3 reply:(id)a4
{
  v7 = a4;
  if (v7)
  {
    v8 = [(RTDaemonClientInternal *)self mapServiceManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__RTDaemonClientInternal_fetchPointOfInterestAttributesWithIdentifier_reply___block_invoke;
    v10[3] = &unk_2788CBD40;
    v10[4] = self;
    v12 = a2;
    v11 = v7;
    [v8 fetchPointOfInterestAttributesWithIdentifier:a3 options:0 handler:v10];
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

- (void)fetchBluePOITileWithGeoTileKey:(unint64_t)a3 reply:(id)a4
{
  v7 = a4;
  if (v7)
  {
    v8 = [(RTDaemonClientInternal *)self bluePOITileManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__RTDaemonClientInternal_fetchBluePOITileWithGeoTileKey_reply___block_invoke;
    v10[3] = &unk_2788CBD68;
    v10[4] = self;
    v12 = a2;
    v11 = v7;
    [v8 fetchBluePOITileWithGeoTileKey:a3 handler:v10];
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

- (void)fetchBluePOIMetadataWithHandler:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(RTDaemonClientInternal *)self bluePOITileManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__RTDaemonClientInternal_fetchBluePOIMetadataWithHandler___block_invoke;
    v8[3] = &unk_2788C7098;
    v8[4] = self;
    v10 = a2;
    v9 = v5;
    [v6 fetchBluePOIMetadataWithHandler:v8];
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

- (void)storeBluePOITiles:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [(RTDaemonClientInternal *)self bluePOITileManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__RTDaemonClientInternal_storeBluePOITiles_handler___block_invoke;
    v11[3] = &unk_2788C56C0;
    v11[4] = self;
    v13 = a2;
    v12 = v8;
    [v9 storeBluePOITiles:v7 handler:v11];
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

- (void)fetchCurrentLocationWithReply:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RTDaemonClientInternal *)self locationManager];
    [v5 fetchCurrentLocationWithHandler:v4];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply", v6, 2u);
    }
  }
}

- (void)fetchLocationsFromCoreLocationWithOptions:(id)a3 reply:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [(RTDaemonClientInternal *)self locationManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__RTDaemonClientInternal_fetchLocationsFromCoreLocationWithOptions_reply___block_invoke;
    v11[3] = &unk_2788C5508;
    v11[4] = self;
    v13 = a2;
    v12 = v8;
    [v9 fetchLocationsFromCoreLocationWithOptions:v7 handler:v11];
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

- (void)periodicPurgeWithReply:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RTDaemonClientInternal *)self purgeManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__RTDaemonClientInternal_periodicPurgeWithReply___block_invoke;
    v7[3] = &unk_2788C48C0;
    v8 = v4;
    [v5 purge:v7];

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

- (void)fetchUserCurationsWithOptions:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
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

  if (!v8)
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

  v10 = [(RTDaemonClientInternal *)self userCurationManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__RTDaemonClientInternal_fetchUserCurationsWithOptions_handler___block_invoke;
  v13[3] = &unk_2788C5508;
  v13[4] = self;
  v15 = a2;
  v14 = v9;
  [v10 fetchStoredUserCurationsWithOptions:v7 handler:v13];

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

- (void)purgeUserCurationsPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v13 = 0;
    v10 = "Invalid parameter not satisfying: date";
    v11 = &v13;
LABEL_9:
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    goto LABEL_7;
  }

  if (!v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = 0;
    v10 = "Invalid parameter not satisfying: handler";
    v11 = &v12;
    goto LABEL_9;
  }

  v9 = [(RTDaemonClientInternal *)self userCurationManager];
  [v9 purgeUserCurationsPredating:v6 handler:v8];
LABEL_7:
}

@end