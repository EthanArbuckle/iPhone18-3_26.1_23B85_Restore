@interface RTTripSegmentProvider
+ (id)convertToTripSegmentLocations:(id)a3;
+ (int64_t)CLTripModeFromRTModeOfTransportation:(int64_t)a3;
- (BOOL)_isMatchingODPair:(id)a3 tripCluster2:(id)a4 distanceCalculator:(id)a5;
- (BOOL)_isValidTransitionToProcess:(id)a3;
- (BOOL)allowReprocessingOfTransitionsWithTripSegments;
- (BOOL)applyElevationAdjustmentToBreadcrumbs;
- (BOOL)buildTripSegmentsFromTripSegmentFeaturesList:(id)a3 startVisitLocation:(id)a4 stopVisitLocation:(id)a5 transitionStartStopLocations:(id)a6;
- (BOOL)chunkLocationsCloseEnoughToCompound:(id)a3 stitchDateEndInterval:(id)a4;
- (BOOL)isTripSegmentGenerationEnabled;
- (BOOL)processChunkWithIndex:(unint64_t)a3 inChunks:(id)a4;
- (BOOL)purgeUsedTripSegmentLocations;
- (RTTripSegmentProvider)initWithLearnedLocationManager:(id)a3 locationManager:(id)a4 motionActivityManager:(id)a5 tripSegmentInertialDataManager:(id)a6 inertialOdometryManager:(id)a7 vehicleStore:(id)a8 tripSegmentStore:(id)a9 tripSegmentManager:(id)a10 elevationAdjuster:(id)a11 distanceCalculator:(id)a12 defaultsManager:(id)a13 visitManager:(id)a14 tripClusterManager:(id)a15;
- (double)getProcessingChunkWidthSeconds;
- (id)_getTripClusterMetadata;
- (id)buildTinySegmentArrayForTransitionWithIndex:(unint64_t)a3 withinDateInterval:(id)a4 fromActivity:(id)a5 uuidType:(int64_t)a6;
- (id)buildTripSegmentsFeaturesWithIndex:(unint64_t)a3 inTransitions:(id)a4 trainMode:(unint64_t)a5 startVisitLocationOut:(id *)a6 stopVisitLocationOut:(id *)a7 transitionStartStopLocationsOut:(id *)a8;
- (id)collectVehicleConnectionTimeIntervals:(id)a3;
- (id)getStoredLocationWithOptions:(id)a3;
- (id)getTripSegmentOfTypeFinalInThisTimeInterval:(id)a3;
- (id)getTripSegmentStartAndEndTimeUsingAllChunks:(id)a3 currentChunk:(id)a4 numLocations:(id *)a5 distance:(id *)a6;
- (id)trimTimeOfTripSegment:(id)a3 dateInterval:(id)a4 uuidType:(int64_t)a5;
- (int)getMaxTripSegmentDuration;
- (void)_checkAndStartReconstructTripSegmentWithTrainMode:(unint64_t)a3 trainReason:(unint64_t)a4 currentPipelineError:(id)a5 handler:(id)a6;
- (void)_computeMultiModalMetric;
- (void)_fetchAndPreProcessVisitTransitions;
- (void)_logDeferTripSegmentAndClusterProcessingDate:(id)a3;
- (void)_processNextVisitTransition:(unint64_t)a3 completionHandler:(id)a4;
- (void)_processOneVisitTransition:(id)a3 trainMode:(unint64_t)a4;
- (void)_processSingleOrCompoundedVisitTransition:(unint64_t)a3;
- (void)_startReconstructTripSegmentWithTrainMode:(unint64_t)a3 trainReason:(unint64_t)a4 completionHandler:(id)a5;
- (void)_updateClusterMetricProcessingTime:(double)a3;
- (void)_updateClusterMetricTspRunTime:(double)a3;
- (void)addToTransitionLocationsBuffer:(id)a3 forDateInterval:(id)a4;
- (void)addTripSegmentFeaturesItem:(id)a3 intoList:(id)a4 overlapDateInterval:(id)a5 uuidType:(int64_t)a6;
- (void)deferTripSegmentAndClusterProcessing:(BOOL)a3;
- (void)getCountDistanceStartAndEndDateOfLocationsInInterval:(id)a3 startDate:(id *)a4 endDate:(id *)a5 numLocations:(id *)a6 distance:(id *)a7;
- (void)outputAndResetDebuggingData:(BOOL)a3 trainMode:(unint64_t)a4 trainReason:(unint64_t)a5;
- (void)prepareTripProcessorOptions;
- (void)saveFailedProcessingToTripSegmentMetaDataWithComuteID:(id)a3 inputData:(id)a4 allChunks:(id)a5 currentChunk:(id)a6 tripVisitStartLocation:(id)a7 tripVisitEndLocation:(id)a8 tripSegSequenceNumber:(int)a9 tripSegSequenceNumberMax:(int)a10 processingFailureError:(id)a11;
- (void)startTripSegmentAndClusterProcessing:(unint64_t)a3 trainReason:(unint64_t)a4 currentPipelineError:(id)a5 enableTripSegmentProcessingOnBattery:(BOOL)a6 handler:(id)a7;
- (void)unlockAllRouteClusters;
@end

@implementation RTTripSegmentProvider

- (RTTripSegmentProvider)initWithLearnedLocationManager:(id)a3 locationManager:(id)a4 motionActivityManager:(id)a5 tripSegmentInertialDataManager:(id)a6 inertialOdometryManager:(id)a7 vehicleStore:(id)a8 tripSegmentStore:(id)a9 tripSegmentManager:(id)a10 elevationAdjuster:(id)a11 distanceCalculator:(id)a12 defaultsManager:(id)a13 visitManager:(id)a14 tripClusterManager:(id)a15
{
  v87 = *MEMORY[0x277D85DE8];
  v70 = a3;
  v67 = a4;
  v20 = a4;
  v71 = a5;
  v72 = a6;
  v81 = a7;
  v75 = a8;
  v76 = a9;
  v80 = a10;
  v79 = a11;
  v78 = a12;
  v77 = a13;
  v74 = a14;
  v21 = a15;
  v73 = v21;
  if (v70)
  {
    if (v20)
    {
      v22 = v71;
      v23 = v75;
      if (v71)
      {
        v24 = v72;
        if (!v72)
        {
          v32 = v81;
          v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          v25 = v76;
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
LABEL_29:

            v31 = 0;
            goto LABEL_26;
          }

          *buf = 0;
          v40 = "Invalid parameter not satisfying: tripSegmentInertialDatamanager";
LABEL_43:
          _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, v40, buf, 2u);
          goto LABEL_29;
        }

        v25 = v76;
        if (v81)
        {
          if (v75)
          {
            if (v76)
            {
              if (v80)
              {
                if (v79)
                {
                  if (v78)
                  {
                    if (v77)
                    {
                      if (v21)
                      {
                        v82.receiver = self;
                        v82.super_class = RTTripSegmentProvider;
                        v26 = [(RTTripSegmentProvider *)&v82 init];
                        if (v26)
                        {
                          v69 = v26;
                          v27 = v26;
                          v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v29 = [(RTTripSegmentProvider *)v27 UTF8String];
                          }

                          else
                          {
                            [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v27];
                            v41 = v65 = v28;
                            v29 = [v41 UTF8String];

                            v28 = v65;
                          }

                          v42 = dispatch_queue_create(v29, v28);

                          queue = v27->_queue;
                          v27->_queue = v42;

                          objc_storeStrong(&v27->_inertialDataManager, a6);
                          objc_storeStrong(&v27->_inertialOdometryManager, a7);
                          objc_storeStrong(&v27->_learnedLocationManager, a3);
                          objc_storeStrong(&v27->_locationManager, v67);
                          objc_storeStrong(&v27->_motionActivityManager, a5);
                          objc_storeStrong(&v27->_vehicleStore, a8);
                          objc_storeStrong(&v27->_tripSegmentStore, a9);
                          objc_storeStrong(&v27->_tripSegmentManager, a10);
                          v44 = objc_alloc_init(MEMORY[0x277CBFCA8]);
                          tripProcessorManager = v27->_tripProcessorManager;
                          v27->_tripProcessorManager = v44;

                          v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
                          transitionLocations = v27->_transitionLocations;
                          v27->_transitionLocations = v46;

                          objc_storeStrong(&v27->_elevationAdjuster, a11);
                          objc_storeStrong(&v27->_defaultsManager, a13);
                          objc_storeStrong(&v27->_tripClusterManager, a15);
                          v48 = [[RTTripRegionChecker alloc] initWithDefaultsManager:v27->_defaultsManager];
                          regionChecker = v27->_regionChecker;
                          v27->_regionChecker = v48;

                          [(RTTripSegmentProvider *)v27 getProcessingChunkWidthSeconds];
                          v27->_processingChunkWidthSeconds = v50;
                          v23 = v75;
                          v51 = [[RTTripSegmentTransitionPreprocessor alloc] initWithMotionActivityManager:v71 locationManager:v20 learnedLocationManager:v70 vehicleStore:v75 distanceCalculator:v78 visitManager:v74 elevationAdjuster:v79 defaultsManager:v77];
                          transitionPreprocessor = v27->_transitionPreprocessor;
                          v27->_transitionPreprocessor = v51;

                          v27->_sessionInProgress = 0;
                          [(RTTripSegmentProvider *)v27 setShouldDeferTripSegmentAndClusterProcessing:0];
                          [(RTTripSegmentProvider *)v27 setIdOfCurrentlyProcessingChunk:0];
                          debuggingData = v27->_debuggingData;
                          v27->_debuggingData = 0;

                          v54 = +[RTPlatform currentPlatform];
                          v55 = [v54 internalInstall];

                          v56 = v27;
                          if (v55)
                          {
                            v57 = [MEMORY[0x277CBEB38] dictionary];
                            v58 = v27->_debuggingData;
                            v27->_debuggingData = v57;
                          }

                          *&v27->_numTripSegmentChunksProcessedInThisProcessingCycle = 0;
                          v27->_numTripSegmentsProcessedInThisProcessingCycle = 0;
                          [(RTTripSegmentProvider *)v27 prepareTripProcessorOptions];
                          v59 = [(RTTripSegmentProvider *)v27 defaultsManager];
                          v60 = [v59 objectForKey:@"RTDefaultsTripSegmentUseInertialOdometrySamples"];

                          if (v60)
                          {
                            v61 = [v60 BOOLValue] ^ 1;
                          }

                          else
                          {
                            v61 = 0;
                          }

                          v25 = v76;
                          v56->_usingLegacyInertialData = v61;
                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
                          {
                            v62 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
                            {
                              processingChunkWidthSeconds = v56->_processingChunkWidthSeconds;
                              v64 = v56->_debuggingData != 0;
                              *buf = 134218240;
                              v84 = processingChunkWidthSeconds;
                              v85 = 1024;
                              v86 = v64;
                              _os_log_debug_impl(&dword_2304B3000, v62, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider successfully initialized with the trip segment reconstruction length of %.1lf seconds,debuggingData,%d", buf, 0x12u);
                            }

                            v25 = v76;
                          }

                          v26 = v69;
                        }

                        v35 = v26;
                        v31 = v35;
                        goto LABEL_48;
                      }

                      v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                      v32 = v81;
                      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_29;
                      }

                      *buf = 0;
                      v40 = "Invalid parameter not satisfying: tripClusterManager";
                      goto LABEL_43;
                    }

                    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      v39 = "Invalid parameter not satisfying: defaultsManager";
                      goto LABEL_46;
                    }

LABEL_47:

                    v31 = 0;
                    v35 = self;
LABEL_48:
                    v32 = v81;
                    goto LABEL_27;
                  }

                  v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_47;
                  }

                  *buf = 0;
                  v39 = "Invalid parameter not satisfying: distanceCalculator";
                }

                else
                {
                  v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_47;
                  }

                  *buf = 0;
                  v39 = "Invalid parameter not satisfying: elevationAdjuster";
                }
              }

              else
              {
                v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_47;
                }

                *buf = 0;
                v39 = "Invalid parameter not satisfying: tripSegmentManager";
              }
            }

            else
            {
              v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_47;
              }

              *buf = 0;
              v39 = "Invalid parameter not satisfying: tripSegmentStore";
            }
          }

          else
          {
            v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_47;
            }

            *buf = 0;
            v39 = "Invalid parameter not satisfying: vehicleStore";
          }
        }

        else
        {
          v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_47;
          }

          *buf = 0;
          v39 = "Invalid parameter not satisfying: inertialOdometryManager";
        }

LABEL_46:
        _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, v39, buf, 2u);
        goto LABEL_47;
      }

      v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v24 = v72;
      v32 = v81;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: motionActivityManager", buf, 2u);
      }

      v31 = 0;
    }

    else
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v22 = v71;
      v23 = v75;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationManager", buf, 2u);
      }

      v31 = 0;
      v24 = v72;
      v32 = v81;
    }
  }

  else
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedLocationManager", buf, 2u);
    }

    v31 = 0;
    v22 = v71;
    v24 = v72;
    v32 = v81;
    v23 = v75;
  }

  v25 = v76;
LABEL_26:
  v35 = self;
LABEL_27:

  return v31;
}

+ (int64_t)CLTripModeFromRTModeOfTransportation:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_230B021F0[a3 - 1];
  }
}

- (id)trimTimeOfTripSegment:(id)a3 dateInterval:(id)a4 uuidType:(int64_t)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [RTTripSegmentManager uuidForTripSegmentOfType:a5];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v26 = [v9 UUIDString];
      v27 = 134218242;
      v28 = a5;
      v29 = 2112;
      v30 = v26;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:trimTimeOfTripSegment, uuidType, %lu, UUID, %@", &v27, 0x16u);
    }
  }

  [v8 setTripId:v9];
  v11 = [v8 dateInterval];
  v12 = [v11 startDate];
  v13 = [v7 startDate];
  v14 = [v12 laterDate:v13];

  v15 = [v8 dateInterval];
  v16 = [v15 endDate];
  v17 = [v7 endDate];

  v18 = [v16 earlierDate:v17];

  v19 = [RTTripSegmentFeatures alloc];
  v20 = [v8 transitionIndex];
  v21 = [v8 tripId];
  v22 = [v8 mode];

  v23 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v18];
  v24 = [(RTTripSegmentFeatures *)v19 initWithTransitionIndex:v20 tripId:v21 mode:v22 dateInterval:v23];

  return v24;
}

- (void)addTripSegmentFeaturesItem:(id)a3 intoList:(id)a4 overlapDateInterval:(id)a5 uuidType:(int64_t)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "[RTTripSegmentProvider addTripSegmentFeaturesItem:intoList:overlapDateInterval:uuidType:]";
      v35 = 1024;
      v36 = 320;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: itemToBeAdded (in %s:%d)", buf, 0x12u);
    }

    if (v11)
    {
LABEL_3:
      if (v12)
      {
        goto LABEL_4;
      }

LABEL_12:
      v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v34 = "[RTTripSegmentProvider addTripSegmentFeaturesItem:intoList:overlapDateInterval:uuidType:]";
        v35 = 1024;
        v36 = 322;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: overlapDateInterval (in %s:%d)", buf, 0x12u);
      }

      if (!v10)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    }
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v34 = "[RTTripSegmentProvider addTripSegmentFeaturesItem:intoList:overlapDateInterval:uuidType:]";
    v35 = 1024;
    v36 = 321;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: targetList (in %s:%d)", buf, 0x12u);
  }

  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_15:
  v16 = [v10 dateInterval];
  v17 = [v16 startDate];
  v18 = [v12 endDate];
  if (([v17 isBeforeDate:v18] & 1) == 0)
  {

LABEL_20:
    goto LABEL_21;
  }

  v19 = [v10 dateInterval];
  v20 = [v19 endDate];
  [v12 startDate];
  v32 = v10;
  v21 = v12;
  v22 = self;
  v23 = v11;
  v25 = v24 = a6;
  v31 = [v20 isAfterDate:v25];

  v26 = v24;
  v11 = v23;
  v27 = v22;
  v12 = v21;
  v10 = v32;

  if (v31)
  {
    v16 = [(RTTripSegmentProvider *)v27 trimTimeOfTripSegment:v32 dateInterval:v12 uuidType:v26];
    v28 = [v16 dateInterval];
    [v28 duration];
    v30 = v29;

    if (v30 > 5.0)
    {
      [v11 addObject:v16];
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (double)getProcessingChunkWidthSeconds
{
  v2 = [(RTTripSegmentProvider *)self defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsTripSegmentProcessingChunkWidth"];

  if (v3)
  {
    [v3 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 900.0;
  }

  return v5;
}

- (BOOL)allowReprocessingOfTransitionsWithTripSegments
{
  v2 = [(RTTripSegmentProvider *)self defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsTripSegmentAllowReprocessTransitions"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)getMaxTripSegmentDuration
{
  v2 = [(RTTripSegmentProvider *)self defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsTripSegmentMaxTripSegmentDuration"];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)prepareTripProcessorOptions
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [(RTTripSegmentProvider *)self defaultsManager];
  v4 = [v3 objectForKey:@"RTDefaultsTripProcessorOptionRunLinearInterpolator"];

  if (v4)
  {
    v23 = [v4 BOOLValue];
  }

  else
  {
    v23 = 1;
  }

  v5 = [(RTTripSegmentProvider *)self defaultsManager];
  v6 = [v5 objectForKey:@"RTDefaultsTripProcessorOptionRunInertialIntegrator"];

  if (v6)
  {
    v22 = [v6 BOOLValue];
  }

  else
  {
    v22 = 1;
  }

  v7 = [(RTTripSegmentProvider *)self defaultsManager];
  v8 = [v7 objectForKey:@"RTDefaultsTripProcessorOptionRunMapIntegrator"];

  if (v8)
  {
    v21 = [v8 BOOLValue];
  }

  else
  {
    v21 = 1;
  }

  v9 = [(RTTripSegmentProvider *)self defaultsManager];
  v10 = [v9 objectForKey:@"RTDefaultsTripProcessorOptionUseXPCServiceForMapQuery"];

  if (v10)
  {
    v11 = [v10 BOOLValue];
  }

  else
  {
    v11 = 1;
  }

  v12 = [(RTTripSegmentProvider *)self defaultsManager];
  v13 = [v12 objectForKey:@"RTDefaultsTripProcessorOptionRecordForReplay"];

  if (v13)
  {
    v14 = [v13 BOOLValue];
  }

  else
  {
    v14 = 1;
  }

  v15 = [(RTTripSegmentProvider *)self defaultsManager];
  v16 = [v15 objectForKey:@"RTDefaultsTripProcessorOptionCreateSparseDataFromOneHzData"];

  if (v16)
  {
    v17 = [v16 BOOLValue];
  }

  else
  {
    v17 = 1;
  }

  v18 = objc_alloc_init(MEMORY[0x277CBFCB0]);
  tripProcessorOptions = self->_tripProcessorOptions;
  self->_tripProcessorOptions = v18;

  [(CLTripSegmentProcessorOptions *)self->_tripProcessorOptions setRunLinearInterpolator:v23];
  [(CLTripSegmentProcessorOptions *)self->_tripProcessorOptions setRunInertialIntegrator:v22];
  [(CLTripSegmentProcessorOptions *)self->_tripProcessorOptions setRunMapIntegrator:v21];
  [(CLTripSegmentProcessorOptions *)self->_tripProcessorOptions setUseXPCService:v11];
  [(CLTripSegmentProcessorOptions *)self->_tripProcessorOptions setshouldRecordDataInFileForReplay:v14];
  [(CLTripSegmentProcessorOptions *)self->_tripProcessorOptions setCreateSparseDataFromOneHzData:v17];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67110400;
      v25 = v23;
      v26 = 1024;
      v27 = v22;
      v28 = 1024;
      v29 = v21;
      v30 = 1024;
      v31 = v11;
      v32 = 1024;
      v33 = v14;
      v34 = 1024;
      v35 = v17;
      _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:prepareTripProcessorOptions: setRunLinearInterpolator,%d,setRunInertialIntegrator,%d,setRunMapIntegrator,%d,setUseXPCService,%d,setshouldRecordDataInFileForReplay,%d,createSparseDataForOneHz,%d", buf, 0x26u);
    }
  }
}

- (void)_fetchAndPreProcessVisitTransitions
{
  v63[1] = *MEMORY[0x277D85DE8];
  self->_fetchedNewTransitionsForProcessing = 0;
  v3 = [MEMORY[0x277CBEAA8] now];
  transitionsToProcess = self->_transitionsToProcess;
  if (!transitionsToProcess || !-[NSMutableArray count](transitionsToProcess, "count") || !self->_lastTransitionPreprocessTimestamp || ([v3 timeIntervalSinceDate:?], v5 >= 3600.0))
  {
    objc_storeStrong(&self->_lastTransitionPreprocessTimestamp, v3);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Fetching and preprocessing new visit transitions", &buf, 2u);
      }
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy__207;
    v61 = __Block_byref_object_dispose__207;
    v62 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__207;
    v53 = __Block_byref_object_dispose__207;
    v54 = [MEMORY[0x277CBEA60] array];
    v9 = dispatch_semaphore_create(0);
    v10 = [(RTTripSegmentProvider *)self learnedLocationManager];
    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-691200.0];
    v12 = [MEMORY[0x277CBEAA8] now];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __60__RTTripSegmentProvider__fetchAndPreProcessVisitTransitions__block_invoke;
    v45[3] = &unk_2788C4490;
    p_buf = &buf;
    v48 = &v49;
    v13 = v9;
    v46 = v13;
    [v10 fetchTransitionsBetweenStartDate:v11 endDate:v12 handler:v45];

    v14 = v13;
    v15 = [MEMORY[0x277CBEAA8] now];
    v16 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v14, v16))
    {
      v17 = [MEMORY[0x277CBEAA8] now];
      [v17 timeIntervalSinceDate:v15];
      v19 = v18;
      v20 = objc_opt_new();
      v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_701];
      v22 = [MEMORY[0x277CCACC8] callStackSymbols];
      v23 = [v22 filteredArrayUsingPredicate:v21];
      v24 = [v23 firstObject];

      [v20 submitToCoreAnalytics:v24 type:1 duration:v19];
      v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *v55 = 0;
        _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v55, 2u);
      }

      v26 = MEMORY[0x277CCA9B8];
      v63[0] = *MEMORY[0x277CCA450];
      *v55 = @"semaphore wait timeout";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v63 count:1];
      v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

      if (v28)
      {
        v29 = v28;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = v28;
    if (v30 || *(*(&buf + 1) + 40))
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v42 = *(*(&buf + 1) + 40);
        *v55 = 138412546;
        *&v55[4] = v42;
        v56 = 2112;
        v57 = v30;
        _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "RTTripSegmentProvider: Failed in transition fetching,fetchError,%@,semaError,%@", v55, 0x16u);
      }
    }

    else
    {
      v32 = v50[5];
      if (v32 && [v32 count])
      {
        self->_fetchedNewTransitionsForProcessing = 1;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v33 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            v43 = [v50[5] count];
            *v55 = 134217984;
            *&v55[4] = v43;
            _os_log_debug_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider: fetchedTransitionSummary,transitionCount,%tu", v55, 0xCu);
          }
        }

        v34 = v50[5];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __60__RTTripSegmentProvider__fetchAndPreProcessVisitTransitions__block_invoke_300;
        v44[3] = &unk_2788D37C8;
        v44[4] = &v49;
        [v34 enumerateObjectsUsingBlock:v44];
        v35 = [(RTTripSegmentTransitionPreprocessor *)self->_transitionPreprocessor processTransitions:v50[5]];
        v36 = v35;
        if (v35 && [v35 count])
        {
          v37 = [v36 mutableCopy];
          v38 = self->_transitionsToProcess;
          self->_transitionsToProcess = v37;
        }

        v39 = v50[5];
        v50[5] = 0;

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_26;
        }

        v31 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v40 = [(NSMutableArray *)self->_transitionsToProcess count];
          *v55 = 134217984;
          *&v55[4] = v40;
          _os_log_debug_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider: processingTransition,transitionCount,%tu", v55, 0xCu);
        }
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_26;
        }

        v31 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v41 = [(NSMutableArray *)self->_transitionsToProcess count];
          *v55 = 134349056;
          *&v55[4] = v41;
          _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "RTTripSegmentProvider: did not fetch any new transitions,existing count,%{public}lu", v55, 0xCu);
        }
      }
    }

LABEL_26:
    _Block_object_dispose(&v49, 8);

    _Block_object_dispose(&buf, 8);
    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = self->_transitionsToProcess;
      if (v7)
      {
        v7 = [(NSMutableArray *)v7 count];
      }

      LODWORD(buf) = 134217984;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Not fetching and preprocessing new visit transitions,transitions to process count,%lu", &buf, 0xCu);
    }
  }

LABEL_27:
}

void __60__RTTripSegmentProvider__fetchAndPreProcessVisitTransitions__block_invoke(uint64_t a1, void *a2, void *a3)
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

void __60__RTTripSegmentProvider__fetchAndPreProcessVisitTransitions__block_invoke_300(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(*(*(a1 + 32) + 8) + 40) count];
      v8 = 134218498;
      v9 = a3;
      v10 = 2048;
      v11 = v7;
      v12 = 2112;
      v13 = v5;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider: fetchedTransitions,transitionIndex,%tu,count,%tu,transition,%@", &v8, 0x20u);
    }
  }
}

- (void)_processOneVisitTransition:(id)a3 trainMode:(unint64_t)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x277CBEA60] arrayWithObject:v6];
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v8 = [(RTTripSegmentProvider *)self buildTripSegmentsFeaturesWithIndex:0 inTransitions:v7 trainMode:a4 startVisitLocationOut:&v22 stopVisitLocationOut:&v21 transitionStartStopLocationsOut:&v20];
    v9 = v22;
    v10 = v21;
    v11 = v20;
    if (v8)
    {
      v12 = [(RTTripSegmentProvider *)self buildTripSegmentsFromTripSegmentFeaturesList:v8 startVisitLocation:v9 stopVisitLocation:v10 transitionStartStopLocations:v11];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v19 = [v6 identifier];
          v14 = [v19 UUIDString];
          *buf = 138412546;
          v24 = v14;
          v25 = 1026;
          v26 = v12;
          _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "RTTripSegmentProvider,buildTripSegmentsFromTripSegmentFeaturesList,transitionId,%@,status,%{public}d", buf, 0x12u);
        }
      }

      if (v12)
      {
        ++self->_successfulTransitionsSinceLastClustering;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v6 identifier];
        v18 = [v17 UUIDString];
        *buf = 138412290;
        v24 = v18;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "RTTripSegmentProvider,transitionId,%@,buildTripSegmentsFeaturesWithIndex,chunk generation failed", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[RTTripSegmentProvider _processOneVisitTransition:trainMode:]";
      v25 = 1024;
      v26 = 479;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: transition (in %s:%d)", buf, 0x12u);
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "_processOneVisitTransition,Unexpected - transition pointer is nil", buf, 2u);
    }
  }
}

- (void)outputAndResetDebuggingData:(BOOL)a3 trainMode:(unint64_t)a4 trainReason:(unint64_t)a5
{
  v36 = *MEMORY[0x277D85DE8];
  debuggingData = self->_debuggingData;
  if (a3)
  {
    if (debuggingData)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v28 = 67109120;
          v29 = 1;
          _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:debuggging data reset,isStartOfProcessing,%d", &v28, 8u);
        }

        debuggingData = self->_debuggingData;
      }

      [(NSMutableDictionary *)debuggingData removeAllObjects];
      v8 = self->_debuggingData;
      v9 = [MEMORY[0x277CBEAA8] now];
      [(NSMutableDictionary *)v8 setValue:v9 forKey:@"tspStartTime"];
    }
  }

  else if (debuggingData)
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [(NSMutableDictionary *)debuggingData setValue:v12 forKey:@"tspStopTime"];

    v13 = self->_debuggingData;
    v14 = [MEMORY[0x277CCABB0] numberWithInt:self->_numTripSegmentsProcessedInThisProcessingCycle];
    [(NSMutableDictionary *)v13 setValue:v14 forKey:@"numTSPProcessed"];

    v15 = self->_debuggingData;
    v16 = [MEMORY[0x277CCABB0] numberWithInt:a4];
    [(NSMutableDictionary *)v15 setValue:v16 forKey:@"trainMode"];

    v17 = self->_debuggingData;
    v18 = [MEMORY[0x277CCABB0] numberWithInt:a5];
    [(NSMutableDictionary *)v17 setValue:v18 forKey:@"trainReason"];

    v19 = self->_debuggingData;
    v20 = [MEMORY[0x277CCABB0] numberWithInt:self->_numTripSegmentChunksProcessedInThisProcessingCycle];
    [(NSMutableDictionary *)v19 setValue:v20 forKey:@"numTSPChunkProcessed"];

    v21 = self->_debuggingData;
    v22 = [MEMORY[0x277CCABB0] numberWithInt:self->_numTripSegmentProcessingFailedInThisProcessingCycle];
    [(NSMutableDictionary *)v21 setValue:v22 forKey:@"numTSPFailedProcessing"];

    tripProcessorManager = self->_tripProcessorManager;
    if (tripProcessorManager)
    {
      [(CLTripSegmentProcessorManager *)tripProcessorManager outputRouteLearningDebuggingDataInCLTSPFile:self->_debuggingData];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        numTripSegmentsProcessedInThisProcessingCycle = self->_numTripSegmentsProcessedInThisProcessingCycle;
        numTripSegmentChunksProcessedInThisProcessingCycle = self->_numTripSegmentChunksProcessedInThisProcessingCycle;
        numTripSegmentProcessingFailedInThisProcessingCycle = self->_numTripSegmentProcessingFailedInThisProcessingCycle;
        v28 = 67109888;
        v29 = 0;
        v30 = 1024;
        v31 = numTripSegmentsProcessedInThisProcessingCycle;
        v32 = 1024;
        v33 = numTripSegmentChunksProcessedInThisProcessingCycle;
        v34 = 1024;
        v35 = numTripSegmentProcessingFailedInThisProcessingCycle;
        _os_log_debug_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:debuggging data output and reset,isStartOfProcessing,%d,numTSPProcessed,%d,numTSPChunksProcessed,%d,numTSPFailed,%d", &v28, 0x1Au);
      }
    }

    [(NSMutableDictionary *)self->_debuggingData removeAllObjects];
  }

  *&self->_numTripSegmentChunksProcessedInThisProcessingCycle = 0;
  self->_numTripSegmentsProcessedInThisProcessingCycle = 0;
}

- (void)_startReconstructTripSegmentWithTrainMode:(unint64_t)a3 trainReason:(unint64_t)a4 completionHandler:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = [(RTTripRegionChecker *)self->_regionChecker shouldAllowProcessingTripSegmentInCurrentCountry];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v26 = a3;
      v27 = 1024;
      v28 = v10;
      _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:_startReconstructTripSegmentWithTrainMode, mode, %lu,allowTripReconstructionBasedOnCountryCheck,%d", buf, 0x12u);
    }
  }

  if (v10)
  {
    if (self->_debuggingData)
    {
      [(RTTripSegmentProvider *)self outputAndResetDebuggingData:1 trainMode:a3 trainReason:a4];
    }

    v12 = [MEMORY[0x277CBEAA8] now];
    [(RTTripSegmentProvider *)self prepareTripProcessorOptions];
    [(RTTripSegmentProvider *)self _fetchAndPreProcessVisitTransitions];
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v12];
    v15 = v14;

    [(RTTripSegmentProvider *)self _updateClusterMetricTspRunTime:v15];
    v16 = [(RTTripSegmentProvider *)self queue];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __97__RTTripSegmentProvider__startReconstructTripSegmentWithTrainMode_trainReason_completionHandler___block_invoke;
    v20 = &unk_2788C6710;
    v21 = self;
    v23 = a3;
    v24 = a2;
    v22 = v9;
    dispatch_async(v16, &v17);

    if (self->_debuggingData)
    {
      [(RTTripSegmentProvider *)self outputAndResetDebuggingData:0 trainMode:a3 trainReason:a4, v17, v18, v19, v20, v21];
    }
  }
}

void __97__RTTripSegmentProvider__startReconstructTripSegmentWithTrainMode_trainReason_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __97__RTTripSegmentProvider__startReconstructTripSegmentWithTrainMode_trainReason_completionHandler___block_invoke_2;
  v4[3] = &unk_2788D37F0;
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v4[4] = v1;
  v6 = v2;
  v5 = *(a1 + 40);
  [v1 _processNextVisitTransition:v3 completionHandler:v4];
}

void __97__RTTripSegmentProvider__startReconstructTripSegmentWithTrainMode_trainReason_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __97__RTTripSegmentProvider__startReconstructTripSegmentWithTrainMode_trainReason_completionHandler___block_invoke_3;
  v7[3] = &unk_2788C52E8;
  v6 = a1[6];
  v7[4] = a1[4];
  v7[5] = v6;
  dispatch_async(v5, v7);

  (*(a1[5] + 16))();
}

void __97__RTTripSegmentProvider__startReconstructTripSegmentWithTrainMode_trainReason_completionHandler___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _computeMultiModalMetric];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 40));
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "%@:%@ Submitting metric after segment processing", &v9, 0x16u);
    }
  }

  v3 = [*(a1 + 32) tripClusterManager];
  [v3 computeCloudSyncMetric];

  v4 = [*(a1 + 32) defaultsManager];
  v5 = [RTClusterLearnedRouteMetrics sharedInstance:v4];

  if (v5)
  {
    [v5 submitToCoreAnalytics:5];
  }
}

- (BOOL)_isValidTransitionToProcess:(id)a3
{
  v82[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCA970]);
    v6 = [v4 startDate];
    v7 = [v4 stopDate];
    v8 = [v5 initWithStartDate:v6 endDate:v7];

    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 1;
    v9 = dispatch_semaphore_create(0);
    tripSegmentManager = self->_tripSegmentManager;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __53__RTTripSegmentProvider__isValidTransitionToProcess___block_invoke;
    v66[3] = &unk_2788CCCB0;
    v68 = &v69;
    v11 = v9;
    v67 = v11;
    oslog = v8;
    [(RTTripSegmentManager *)tripSegmentManager tripSegmentExistsForDateInterval:v8 ignoreTemporary:1 handler:v66];
    v12 = v11;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v12, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_701];
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
      v82[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v82 count:1];
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

    v64 = v26;
    v30 = [(RTTripSegmentProvider *)self allowReprocessingOfTransitionsWithTripSegments];
    if (*(v70 + 24) == 1)
    {
      v31 = v30;
      v32 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v31)
      {
        if (v32)
        {
          v33 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            v62 = [oslog description];
            *buf = 138412290;
            *&buf[4] = v62;
            _os_log_debug_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider,_isValidTransitionToProcess,TripSegment already exists in store for date interval %@, and configuration set to reprocess trip segment data.", buf, 0xCu);
          }
        }
      }

      else
      {
        if (!v32)
        {
          goto LABEL_23;
        }

        v34 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v63 = [oslog description];
          *buf = 138412290;
          *&buf[4] = v63;
          _os_log_debug_impl(&dword_2304B3000, v34, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider,_isValidTransitionToProcess,TripSegment already exists in store for date interval %@, and configuration set to skip reprocessing trip segment data.", buf, 0xCu);
        }

        if (v70[3])
        {
LABEL_23:
          v29 = 0;
LABEL_36:

          _Block_object_dispose(&v69, 8);
          goto LABEL_37;
        }
      }
    }

    v35 = [(RTTripSegmentTransitionPreprocessor *)self->_transitionPreprocessor transitionStartStopLocations];
    v36 = [v4 identifier];
    v37 = [v36 UUIDString];
    v38 = [v35 objectForKeyedSubscript:v37];

    if (v38)
    {
      regionChecker = self->_regionChecker;
      v40 = [v38 startLocation];
      v41 = [v38 stopLocation];
      v42 = [v4 startDate];
      v43 = [v4 stopDate];
      v44 = [v4 identifier];
      LOBYTE(regionChecker) = [(RTTripRegionChecker *)regionChecker shouldGenerateTripSegmentForTransitionWithStartLocation:v40 stopLocation:v41 startDate:v42 stopDate:v43 identifier:v44];

      if (regionChecker)
      {
        v29 = 1;
LABEL_35:

        goto LABEL_36;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v45 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          v49 = [v4 identifier];
          v50 = [v49 UUIDString];
          v51 = [v38 startLocation];
          [v51 coordinate];
          v53 = v52;
          v54 = [v38 startLocation];
          [v54 coordinate];
          v56 = v55;
          v57 = [v38 stopLocation];
          [v57 coordinate];
          v59 = v58;
          v60 = [v38 stopLocation];
          [v60 coordinate];
          *buf = 138413315;
          *&buf[4] = v50;
          v74 = 2053;
          v75 = v53;
          v76 = 2053;
          v77 = v56;
          v78 = 2053;
          v79 = v59;
          v80 = 2053;
          v81 = v61;
          _os_log_debug_impl(&dword_2304B3000, v45, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider,_isValidTransitionToProcess,transition processing disallowed based on region check,%@,startCoordinate,%{sensitive}.7lf,%{sensitive}.7lf,stopCoordinate,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x34u);
        }

LABEL_33:
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v45 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        v46 = [v4 identifier];
        v47 = [v46 UUIDString];
        *buf = 138412290;
        *&buf[4] = v47;
        _os_log_debug_impl(&dword_2304B3000, v45, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider,_isValidTransitionToProcess,unable to verify region,coordinate not available,transition processing disallowed,%@", buf, 0xCu);
      }

      goto LABEL_33;
    }

    v29 = 0;
    goto LABEL_35;
  }

  v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[RTTripSegmentProvider _isValidTransitionToProcess:]";
    v74 = 1024;
    LODWORD(v75) = 612;
    _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: transition (in %s:%d)", buf, 0x12u);
  }

  oslog = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_ERROR, "_isValidTransitionToProcess,Unexpected - transition pointer is nil", buf, 2u);
  }

  v29 = 0;
LABEL_37:

  return v29;
}

- (id)getStoredLocationWithOptions:(id)a3
{
  v52[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:v4 horizontalAccuracy:0x7FFFFFFFFFFFFFFFLL batchSize:0 boundingBoxLocation:1.79769313e308];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__207;
  v45 = __Block_byref_object_dispose__207;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__207;
  v39 = __Block_byref_object_dispose__207;
  v40 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = [(RTTripSegmentProvider *)self locationManager];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __54__RTTripSegmentProvider_getStoredLocationWithOptions___block_invoke;
  v31[3] = &unk_2788C4490;
  v33 = &v41;
  v34 = &v35;
  v8 = v6;
  v32 = v8;
  [v7 fetchStoredLocationsWithOptions:v5 handler:v31];

  v9 = v8;
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceDate:v10];
    v14 = v13;
    v15 = objc_opt_new();
    v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_701];
    v17 = [MEMORY[0x277CCACC8] callStackSymbols];
    v18 = [v17 filteredArrayUsingPredicate:v16];
    v19 = [v18 firstObject];

    [v15 submitToCoreAnalytics:v19 type:1 duration:v14];
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v52[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v52 count:1];
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
  if (v25 || v42[5] || (v29 = v36[5]) == 0 || ![v29 count])
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v30 = v42[5];
      *buf = 138412802;
      *&buf[4] = v4;
      v48 = 2112;
      v49 = v30;
      v50 = 2112;
      v51 = v25;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "RTTripSegmentProvider: no clLocations fetched for,dateInterval,%@,fetchError,%@,semaError,%@", buf, 0x20u);
    }

    v27 = 0;
  }

  else
  {
    v27 = v36[5];
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v27;
}

void __54__RTTripSegmentProvider_getStoredLocationWithOptions___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)chunkLocationsCloseEnoughToCompound:(id)a3 stitchDateEndInterval:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(RTTripSegmentProvider *)self getStoredLocationWithOptions:v6];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v10 = [(RTTripSegmentProvider *)self getStoredLocationWithOptions:v7];
    if ([v9 count])
    {
      v11 = [v9 lastObject];
      [v11 coordinate];
      v29 = v12;
      v30 = v13;

      v14 = [v10 firstObject];
      [v14 coordinate];
      v27 = v15;
      v28 = v16;

      v17 = [(RTTripSegmentTransitionPreprocessor *)self->_transitionPreprocessor distanceCalculator];
      v26 = 0;
      [v17 distanceFromLocationCoordinate:&v29 toLocationCoordinate:&v27 error:&v26];
      v19 = v18;
      v20 = v26;

      [(RTTripClusterManager *)self->_tripClusterManager maximumInterTripSegmentDistanceAllowedForCompoundRoute];
      v22 = v19 <= v21;
      if (v19 <= v21)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
LABEL_22:

          goto LABEL_23;
        }

        v23 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134350081;
          v32 = v19;
          v33 = 2053;
          v34 = v29;
          v35 = 2053;
          v36 = v30;
          v37 = 2053;
          v38 = v27;
          v39 = 2053;
          v40 = v28;
          _os_log_debug_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEBUG, "chunkLocationsCloseEnoughToCompound,distance check ok,%{public}0.2f,frmLoc,%{sensitive}0.7f,%{sensitive}0.7f,toLoc,%{sensitive}0.7f,%{sensitive}0.7f", buf, 0x34u);
        }
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_22;
        }

        v23 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 134350081;
          v32 = v19;
          v33 = 2053;
          v34 = v29;
          v35 = 2053;
          v36 = v30;
          v37 = 2053;
          v38 = v27;
          v39 = 2053;
          v40 = v28;
          _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "chunkLocationsCloseEnoughToCompound,distance check fail,%{public}0.2f,frmLoc,%{sensitive}0.7f,%{sensitive}0.7f,toLoc,%{sensitive}0.7f,%{sensitive}0.7f", buf, 0x34u);
        }
      }

      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = *&v7;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "chunkLocationsCloseEnoughToCompound,no loc for dateInterval,%@", buf, 0xCu);
      }

      v22 = 0;
      goto LABEL_22;
    }

LABEL_17:
    v22 = 0;
LABEL_23:

    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = *&v6;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "chunkLocationsCloseEnoughToCompound,no loc for dateInterval,%@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v22 = 0;
LABEL_24:

  return v22;
}

- (void)_processSingleOrCompoundedVisitTransition:(unint64_t)a3
{
  v138 = *MEMORY[0x277D85DE8];
  transitionsToProcess = self->_transitionsToProcess;
  if (!transitionsToProcess || ![(NSMutableArray *)transitionsToProcess count])
  {
    return;
  }

  v6 = [(NSMutableArray *)self->_transitionsToProcess lastObject];
  v7 = [(RTTripSegmentProvider *)self _isValidTransitionToProcess:v6];

  v8 = self->_transitionsToProcess;
  if (!v7)
  {

    [(NSMutableArray *)v8 removeLastObject];
    return;
  }

  if ([(NSMutableArray *)v8 count]< 2)
  {
    goto LABEL_85;
  }

  v9 = [(RTTripSegmentTransitionPreprocessor *)self->_transitionPreprocessor compoundedVisitIntervals];
  if (!v9)
  {
    goto LABEL_85;
  }

  v10 = v9;
  v11 = [(RTTripSegmentTransitionPreprocessor *)self->_transitionPreprocessor compoundedVisitIntervals];
  if (![v11 count])
  {

LABEL_85:
    v85 = [(NSMutableArray *)self->_transitionsToProcess lastObject];
    [(RTTripSegmentProvider *)self _processOneVisitTransition:v85 trainMode:a3];

LABEL_86:
    [(NSMutableArray *)self->_transitionsToProcess removeLastObject];
    return;
  }

  v12 = [(RTTripSegmentTransitionPreprocessor *)self->_transitionPreprocessor isVisitCompoundingEnabled];

  if (!v12)
  {
    goto LABEL_85;
  }

  v13 = [(NSMutableArray *)self->_transitionsToProcess count];
  v124 = 0;
  while (1)
  {
    v14 = a3;
    v15 = v13--;
    if (v13 < 1)
    {
      a3 = v14;
      goto LABEL_45;
    }

    v16 = [(NSMutableArray *)self->_transitionsToProcess objectAtIndexedSubscript:v13];
    v17 = [(NSMutableArray *)self->_transitionsToProcess objectAtIndexedSubscript:v15 - 2];
    if (![(RTTripSegmentProvider *)self _isValidTransitionToProcess:v17])
    {
      break;
    }

    v18 = objc_alloc(MEMORY[0x277CCA970]);
    v19 = [v17 stopDate];
    v20 = [v16 startDate];
    v134 = 0;
    v21 = [v18 rt_initWithStartDate:v19 endDate:v20 error:&v134];
    v125 = v134;

    if (v21)
    {
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v22 = [(RTTripSegmentTransitionPreprocessor *)self->_transitionPreprocessor compoundedVisitIntervals];
      v23 = [v22 countByEnumeratingWithState:&v130 objects:v137 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v131;
LABEL_14:
        v26 = 0;
        while (1)
        {
          if (*v131 != v25)
          {
            objc_enumerationMutation(v22);
          }

          if ([*(*(&v130 + 1) + 8 * v26) intersectsDateInterval:v21])
          {
            break;
          }

          if (v24 == ++v26)
          {
            v24 = [v22 countByEnumeratingWithState:&v130 objects:v137 count:16];
            if (v24)
            {
              goto LABEL_14;
            }

            goto LABEL_20;
          }
        }

        v27 = (v124 + 1);

        if ([(RTTripSegmentTransitionPreprocessor *)self->_transitionPreprocessor maxAdjacentVisitsToCompound]< v27)
        {
          goto LABEL_22;
        }

        v124 = (v124 + 1);
        v31 = 1;
        goto LABEL_32;
      }

LABEL_20:

      v27 = v124;
LABEL_22:
      v124 = v27;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_30:
        v31 = 0;
LABEL_32:
        a3 = v14;
        goto LABEL_33;
      }

      v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        *v136 = v27;
        _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "_processSingleOrCompoundedVisitTransition,compounding check end,transitions to compound,%{public}d", buf, 8u);
      }

      a3 = v14;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      a3 = v14;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v17 stopDate];
        v30 = [v16 startDate];
        *buf = 138412802;
        *v136 = v29;
        *&v136[8] = 2112;
        *&v136[10] = v30;
        *&v136[18] = 2112;
        *&v136[20] = v125;
        _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "_processSingleOrCompoundedVisitTransition,no compounding,prevTransitionStopData,%@,currentTransitionStartDate,%@,error,%@", buf, 0x20u);
      }
    }

    v31 = 0;
LABEL_33:

    if ((v31 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  a3 = v14;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "_processSingleOrCompoundedVisitTransition,no compounding,_isValidTransitionToProcess failed", buf, 2u);
    }
  }

LABEL_45:
  v33 = v124;
  if (!v124)
  {
    goto LABEL_85;
  }

  if ([(NSMutableArray *)self->_transitionsToProcess count]<= v124)
  {
    v86 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v99 = [(NSMutableArray *)self->_transitionsToProcess count];
      *buf = 134349312;
      *v136 = v99;
      *&v136[8] = 1026;
      *&v136[10] = v124;
      _os_log_error_impl(&dword_2304B3000, v86, OS_LOG_TYPE_ERROR, "_processSingleOrCompoundedVisitTransition,transition count,%{public}lu,transitions to compound,%{public}d", buf, 0x12u);
    }

    goto LABEL_86;
  }

  v112 = [MEMORY[0x277CBEB18] array];
  v34 = [(NSMutableArray *)self->_transitionsToProcess count]+ ~v124;
  v35 = [MEMORY[0x277CCAB58] indexSet];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v100 = [(NSMutableArray *)self->_transitionsToProcess count];
      *buf = 134349568;
      *v136 = v100;
      *&v136[8] = 1026;
      *&v136[10] = v124;
      *&v136[14] = 2050;
      *&v136[16] = v34;
      _os_log_debug_impl(&dword_2304B3000, v36, OS_LOG_TYPE_DEBUG, "_processSingleOrCompoundedVisitTransition,transition count,%{public}lu,transitions to compound,%{public}d,start index,%{public}ld", buf, 0x1Cu);
    }
  }

  v121 = v14;
  if (v34 >= [(NSMutableArray *)self->_transitionsToProcess count])
  {
    v122 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    goto LABEL_92;
  }

  v37 = 0;
  v102 = 0;
  v103 = 0;
  v118 = 0;
  v110 = 0;
  v122 = 0;
  v113 = 1;
  v114 = 0;
  v101 = v35;
  while (2)
  {
    v38 = objc_autoreleasePoolPush();
    [v35 addIndex:v34];
    v39 = [(NSMutableArray *)self->_transitionsToProcess objectAtIndexedSubscript:v34];
    v40 = [MEMORY[0x277CBEA60] arrayWithObject:v39];
    v128 = 0;
    v129 = 0;
    v127 = 0;
    v41 = [(RTTripSegmentProvider *)self buildTripSegmentsFeaturesWithIndex:0 inTransitions:v40 trainMode:v121 startVisitLocationOut:&v129 stopVisitLocationOut:&v128 transitionStartStopLocationsOut:&v127];
    v42 = v129;
    v43 = v128;
    v126 = v127;
    v123 = v43;
    if (v41 && [v41 count])
    {
      v116 = v38;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v44 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          [v40 objectAtIndexedSubscript:0];
          v107 = v37;
          v46 = v45 = v42;
          [v46 identifier];
          v47 = v43;
          v49 = v48 = v40;
          v50 = [v41 count];
          *buf = 138412546;
          *v136 = v49;
          *&v136[8] = 2050;
          *&v136[10] = v50;
          _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, "_processSingleOrCompoundedVisitTransition,tripId,%@,num chunks generated to compound,%{public}lu", buf, 0x16u);

          v40 = v48;
          v43 = v47;

          v42 = v45;
          v37 = v107;
          v35 = v101;
        }
      }

      v115 = v40;
      if (!v37)
      {
        v109 = v42;

        v106 = v43;
        v120 = v126;

        v63 = [v41 lastObject];
        v114 = [v63 mode];

        v64 = [v41 lastObject];
        [v64 dateInterval];
        v66 = v65 = v42;

        [v112 addObjectsFromArray:v41];
        v55 = 9;
        v122 = v66;
        v42 = v65;
        v37 = 0;
        v38 = v116;
        v67 = v120;
        v118 = v106;
        v102 = v109;
        v103 = v67;
        goto LABEL_80;
      }

      v108 = v42;
      v105 = v43;

      v119 = v126;
      if (v114 == 2)
      {
        v51 = [v41 firstObject];
        if ([v51 mode] == 2)
        {
          v52 = [v41 firstObject];
          v53 = [v52 dateInterval];
          v111 = [(RTTripSegmentProvider *)self chunkLocationsCloseEnoughToCompound:v122 stitchDateEndInterval:v53];

          if (!v111)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v54 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              v40 = v115;
              v42 = v108;
              if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_2304B3000, v54, OS_LOG_TYPE_INFO, "_processSingleOrCompoundedVisitTransition,chunkLocationsNearEnoughToCompound failed,no compounding", buf, 2u);
              }

              v55 = 7;
              v113 = 0;
              v114 = 2;
              v38 = v116;
              v110 = v119;
              v118 = v105;
              goto LABEL_80;
            }

            v55 = 7;
            v113 = 0;
            v114 = 2;
            v38 = v116;
            v110 = v119;
            v118 = v105;
LABEL_79:
            v40 = v115;
            v42 = v108;
            goto LABEL_80;
          }
        }

        else
        {
        }
      }

      v104 = v39;
      v68 = v35;
      v69 = objc_alloc(MEMORY[0x277CCA970]);
      v70 = [v122 endDate];
      v71 = [v41 firstObject];
      v72 = [v71 dateInterval];
      v73 = [v72 startDate];
      v74 = [v69 initWithStartDate:v70 endDate:v73];

      v75 = v74;
      v76 = [RTTripSegmentFeatures alloc];
      v77 = [MEMORY[0x277CCAD78] UUID];
      v78 = [(RTTripSegmentFeatures *)v76 initWithTransitionIndex:0 tripId:v77 mode:1 dateInterval:v75];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v79 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
        {
          v80 = [v41 firstObject];
          v81 = [v80 mode];
          *buf = 138412802;
          *v136 = v78;
          *&v136[8] = 1024;
          *&v136[10] = v114;
          *&v136[14] = 1024;
          *&v136[16] = v81;
          _os_log_impl(&dword_2304B3000, v79, OS_LOG_TYPE_INFO, "_processSingleOrCompoundedVisitTransition,stitchWalkChunk,%@,prevMode,%d,currentMode,%d", buf, 0x18u);
        }
      }

      [v112 addObject:v78];
      [v112 addObjectsFromArray:v41];
      v82 = [v41 lastObject];
      v83 = [v82 dateInterval];

      v84 = [v41 lastObject];
      v114 = [v84 mode];

      v55 = 0;
      v122 = v83;
      v38 = v116;
      v110 = v119;
      v118 = v105;
      v35 = v68;
      v39 = v104;
      goto LABEL_79;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v117 = v41;
      v56 = v37;
      v57 = v42;
      v58 = v40;
      v59 = v39;
      v60 = v35;
      v61 = v38;
      v62 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v62, OS_LOG_TYPE_INFO, "_processSingleOrCompoundedVisitTransition,chunk generation failed,no compounding", buf, 2u);
      }

      v113 = 0;
      v55 = 7;
      v38 = v61;
      v35 = v60;
      v39 = v59;
      v40 = v58;
      v42 = v57;
      v37 = v56;
      v41 = v117;
    }

    else
    {
      v113 = 0;
      v55 = 7;
    }

LABEL_80:

    objc_autoreleasePoolPop(v38);
    if (v55 == 9 || !v55)
    {
      ++v34;
      --v37;
      if (v34 < [(NSMutableArray *)self->_transitionsToProcess count])
      {
        continue;
      }
    }

    break;
  }

  if (v113)
  {
    v91 = 0;
    v90 = v102;
    v88 = v103;
    v87 = v110;
    if (v103)
    {
      v33 = v124;
      v89 = v118;
      if (v110)
      {
        v95 = [TransitionStartStopLocations alloc];
        v96 = [v103 startLocation];
        v97 = [v110 stopLocation];
        v91 = [(TransitionStartStopLocations *)v95 initWithStartLocation:v96 stopLocation:v97];
      }
    }

    else
    {
      v33 = v124;
      v89 = v118;
    }

LABEL_92:
    v92 = [(RTTripSegmentProvider *)self buildTripSegmentsFromTripSegmentFeaturesList:v112 startVisitLocation:v90 stopVisitLocation:v89 transitionStartStopLocations:v91];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v93 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
      {
        v94 = [v112 count];
        *buf = 67240963;
        *v136 = v92;
        *&v136[4] = 2117;
        *&v136[6] = v90;
        *&v136[14] = 2117;
        *&v136[16] = v89;
        *&v136[24] = 2050;
        *&v136[26] = v94;
        _os_log_impl(&dword_2304B3000, v93, OS_LOG_TYPE_INFO, "_processSingleOrCompoundedVisitTransition,compounding success status,%{public}d,startLoc,%{sensitive}@,endLoc,%{sensitive}@,numChunks,%{public}lu", buf, 0x26u);
      }
    }

    if (v92)
    {
      self->_successfulTransitionsSinceLastClustering += v33 + 1;
    }

    [(NSMutableArray *)self->_transitionsToProcess removeObjectsAtIndexes:v35];
  }

  else
  {

    v98 = [(NSMutableArray *)self->_transitionsToProcess lastObject];
    [(RTTripSegmentProvider *)self _processOneVisitTransition:v98 trainMode:v121];

    [(NSMutableArray *)self->_transitionsToProcess removeLastObject];
    v90 = v102;
    v88 = v103;
    v87 = v110;
    v89 = v118;
  }
}

- (void)_processNextVisitTransition:(unint64_t)a3 completionHandler:(id)a4
{
  v50[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CBEAA8] now];
  if (![(RTTripSegmentProvider *)self shouldDeferTripSegmentAndClusterProcessing])
  {
    transitionsToProcess = self->_transitionsToProcess;
    if (!transitionsToProcess || ![(NSMutableArray *)transitionsToProcess count])
    {
      v24 = [(RTTripSegmentProvider *)self tripClusterManager];
      [v24 generateMissingRoutesForClusters];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          *buf = 138412290;
          v43 = v27;
          _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@,Cluster learning is complete", buf, 0xCu);
        }
      }

      if (v6)
      {
        (*(v6 + 2))(v6, 0, 0);
        goto LABEL_37;
      }

      v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      goto LABEL_28;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = [(NSMutableArray *)self->_transitionsToProcess count];
        *buf = 138412546;
        v43 = v18;
        v44 = 2048;
        *v45 = v19;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@,starting _processNextVisitTransition,num transitions remaining,%lu", buf, 0x16u);
      }
    }

    [(RTTripSegmentProvider *)self _processSingleOrCompoundedVisitTransition:a3];
    if ([(RTTripSegmentProvider *)self shouldDeferTripSegmentAndClusterProcessing])
    {
LABEL_36:
      v36 = [(RTTripSegmentProvider *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__RTTripSegmentProvider__processNextVisitTransition_completionHandler___block_invoke;
      block[3] = &unk_2788C6300;
      block[4] = self;
      v41 = a3;
      v40 = v6;
      dispatch_async(v36, block);

      goto LABEL_37;
    }

    if ([(NSMutableArray *)self->_transitionsToProcess count])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
LABEL_35:
        v35 = [MEMORY[0x277CBEAA8] now];
        [v35 timeIntervalSinceDate:v7];
        [(RTTripSegmentProvider *)self _updateClusterMetricProcessingTime:?];

        goto LABEL_36;
      }

      v20 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = [(NSMutableArray *)self->_transitionsToProcess count];
        fetchedNewTransitionsForProcessing = self->_fetchedNewTransitionsForProcessing;
        successfulTransitionsSinceLastClustering = self->_successfulTransitionsSinceLastClustering;
        *buf = 134349568;
        v43 = v21;
        v44 = 1026;
        *v45 = fetchedNewTransitionsForProcessing;
        *&v45[4] = 1026;
        *&v45[6] = successfulTransitionsSinceLastClustering;
        _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "_processNextVisitTransition,learnClusters,Skipped,count,%{public}lu,fetchedNewTransitions,%{public}d,successfulTransitionsSinceLastClustering,%{public}d", buf, 0x18u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v29 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = [(NSMutableArray *)self->_transitionsToProcess count];
          v33 = self->_fetchedNewTransitionsForProcessing;
          v34 = self->_successfulTransitionsSinceLastClustering;
          *buf = 138413058;
          v43 = v31;
          v44 = 2050;
          *v45 = v32;
          *&v45[8] = 1026;
          v46 = v33;
          v47 = 1026;
          v48 = v34;
          _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%@_processNextVisitTransition,learnClusters,starting,count,%{public}lu,fetchedNewTransitions,%{public}d,successfulTransitionsSinceLastClustering,%{public}d,learnClusters,starting.", buf, 0x22u);
        }
      }

      self->_fetchedNewTransitionsForProcessing = 0;
      self->_successfulTransitionsSinceLastClustering = 0;
      v20 = [(RTTripSegmentProvider *)self tripClusterManager];
      [v20 learnClusters];
    }

    goto LABEL_35;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412290;
      v43 = v10;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@,_processNextVisitTransition deferred due to XPC activity state", buf, 0xCu);
    }
  }

  if (!v6)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
LABEL_38:
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      *buf = 138412290;
      v43 = v38;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@,_processNextVisitTransition,Warning!! nil completionHandler", buf, 0xCu);
    }

LABEL_28:

    goto LABEL_37;
  }

  v11 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277D01448];
  v49 = *MEMORY[0x277CCA450];
  v50[0] = @"XPC Activity Defer: TripSegmentAndClusterProcessing";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  v14 = [v11 errorWithDomain:v12 code:12 userInfo:v13];

  (*(v6 + 2))(v6, v14, 1);
LABEL_37:
}

- (BOOL)isTripSegmentGenerationEnabled
{
  v2 = [(RTTripSegmentProvider *)self defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsTripSegmentGenerationEnabled"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = _os_feature_enabled_impl();
  }

  v5 = v4;

  return v5;
}

- (void)_logDeferTripSegmentAndClusterProcessingDate:(id)a3
{
  debuggingData = self->_debuggingData;
  if (debuggingData)
  {
    [(NSMutableDictionary *)debuggingData setValue:a3 forKey:@"tspDeferTime"];
  }
}

- (void)deferTripSegmentAndClusterProcessing:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v15 = v3;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:defer,TripSegmentAndClusterProcessing,%d", buf, 8u);
    }
  }

  [(RTTripSegmentProvider *)self setShouldDeferTripSegmentAndClusterProcessing:v3];
  v6 = [(RTTripSegmentProvider *)self tripClusterManager];
  [v6 deferClusterProcessing:v3];

  v7 = [(RTTripSegmentProvider *)self tripProcessorManager];
  if (v7)
  {
    v8 = v7;
    v9 = [(RTTripSegmentProvider *)self idOfCurrentlyProcessingChunk];

    if (v9)
    {
      v10 = [(RTTripSegmentProvider *)self tripProcessorManager];
      v11 = [(RTTripSegmentProvider *)self idOfCurrentlyProcessingChunk];
      [v10 killProcessingWithID:v11];

      [(RTTripSegmentProvider *)self setIdOfCurrentlyProcessingChunk:0];
    }
  }

  v12 = [(RTTripSegmentProvider *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RTTripSegmentProvider_deferTripSegmentAndClusterProcessing___block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v12, block);
}

void __62__RTTripSegmentProvider_deferTripSegmentAndClusterProcessing___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEAA8] now];
  [v1 _logDeferTripSegmentAndClusterProcessingDate:v2];
}

- (void)startTripSegmentAndClusterProcessing:(unint64_t)a3 trainReason:(unint64_t)a4 currentPipelineError:(id)a5 enableTripSegmentProcessingOnBattery:(BOOL)a6 handler:(id)a7
{
  v12 = a5;
  v13 = a7;
  v14 = [(RTTripSegmentProvider *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __140__RTTripSegmentProvider_startTripSegmentAndClusterProcessing_trainReason_currentPipelineError_enableTripSegmentProcessingOnBattery_handler___block_invoke;
  v17[3] = &unk_2788D1860;
  v22 = a6;
  v20 = a3;
  v21 = a4;
  v17[4] = self;
  v18 = v12;
  v19 = v13;
  v15 = v13;
  v16 = v12;
  dispatch_async(v14, v17);
}

void __140__RTTripSegmentProvider_startTripSegmentAndClusterProcessing_trainReason_currentPipelineError_enableTripSegmentProcessingOnBattery_handler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "Start TripSegment Processing.", &v6, 2u);
    }
  }

  [*(a1 + 32) unlockAllRouteClusters];
  if (*(a1 + 56) == 1 || *(a1 + 72) == 1)
  {
    [*(a1 + 32) _checkAndStartReconstructTripSegmentWithTrainMode:? trainReason:? currentPipelineError:? handler:?];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 56);
        v6 = 134217984;
        v7 = v5;
        _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "startTripSegmentAndClusterProcessing,mode, %lu, trip segment processing not supported in this mode.", &v6, 0xCu);
      }
    }

    (*(*(a1 + 48) + 16))();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v6) = 0;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "End TripSegment Processing.", &v6, 2u);
      }
    }
  }
}

- (id)_getTripClusterMetadata
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D01378]);
  v4 = dispatch_semaphore_create(0);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__207;
  v32 = __Block_byref_object_dispose__207;
  v33 = 0;
  v5 = [(RTTripSegmentProvider *)self tripClusterManager];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __48__RTTripSegmentProvider__getTripClusterMetadata__block_invoke;
  v25[3] = &unk_2788C45F0;
  v27 = &v28;
  v6 = v4;
  v26 = v6;
  [v5 fetchTripClusterMetadataWithOptions:v3 handler:v25];

  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_701];
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
    v34 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v34 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;
    }
  }

  v23 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v23;
}

void __48__RTTripSegmentProvider__getTripClusterMetadata__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_updateClusterMetricTspRunTime:(double)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(RTTripSegmentProvider *)self defaultsManager];
  v6 = [RTClusterLearnedRouteMetrics sharedInstance:v5];

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v6 clusterMetrics];

  if (!v7)
  {
    v8 = objc_alloc_init(RTLearnedRouteClusterStatisticsMetrics);
    [v6 setClusterMetrics:v8];
  }

  v9 = [v6 clusterMetrics];

  if (v9)
  {
    v11 = [v6 clusterMetrics];
    v10 = a3;
    *&v12 = v10;
    [v11 setTspRunTimeAvg:v12];
  }

  else
  {
LABEL_6:
    v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v17 = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@,%@,invalid metric instance", &v17, 0x16u);
    }
  }
}

- (void)_updateClusterMetricProcessingTime:(double)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(RTTripSegmentProvider *)self defaultsManager];
  v6 = [RTClusterLearnedRouteMetrics sharedInstance:v5];

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v6 clusterMetrics];

  if (!v7)
  {
    v8 = objc_alloc_init(RTLearnedRouteClusterStatisticsMetrics);
    [v6 setClusterMetrics:v8];
  }

  v9 = [v6 clusterMetrics];

  if (v9)
  {
    v10 = [v6 clusterMetrics];
    [v10 clusterProcessingRunTimeAvg];
    v12 = v11 + a3;
    *&v12 = v12;
    [v10 setClusterProcessingRunTimeAvg:v12];
  }

  else
  {
LABEL_6:
    v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      v17 = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@,%@,invalid metric instance", &v17, 0x16u);
    }
  }
}

- (BOOL)_isMatchingODPair:(id)a3 tripCluster2:(id)a4 distanceCalculator:(id)a5
{
  v5 = 0;
  if (a3 && a4 && a5)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    [v10 originLatitude];
    v12 = v11;
    [v10 originLongitude];
    v37 = CLLocationCoordinate2DMake(v12, v13);
    [v10 destinationLatitude];
    v15 = v14;
    [v10 destinationLongitude];
    v17 = v16;

    v36 = CLLocationCoordinate2DMake(v15, v17);
    [v9 originLatitude];
    v19 = v18;
    [v9 originLongitude];
    v35 = CLLocationCoordinate2DMake(v19, v20);
    [v9 destinationLatitude];
    v22 = v21;
    [v9 destinationLongitude];
    v24 = v23;

    v34 = CLLocationCoordinate2DMake(v22, v24);
    v33 = 0;
    [v8 distanceFromLocationCoordinate:&v37 toLocationCoordinate:&v35 error:&v33];
    v26 = v25;
    v27 = v33;
    v32 = v27;
    [v8 distanceFromLocationCoordinate:&v36 toLocationCoordinate:&v34 error:&v32];
    v29 = v28;

    v30 = v32;
    v5 = v29 < 200.0 && v26 < 200.0;
  }

  return v5;
}

- (void)_computeMultiModalMetric
{
  v157 = *MEMORY[0x277D85DE8];
  v4 = [(RTTripSegmentProvider *)self defaultsManager];
  v5 = [RTClusterLearnedRouteMetrics sharedInstance:v4];

  if (v5)
  {
    v130 = objc_alloc_init(RTLearnedRouteMultiModalStatisticsMetrics);
    if (v130)
    {
      aSelector = a2;
      v6 = [(RTTripSegmentProvider *)self _getTripClusterMetadata];
      v7 = [v5 clusterMetrics];

      if (!v7)
      {
        v8 = objc_alloc_init(RTLearnedRouteClusterStatisticsMetrics);
        [v5 setClusterMetrics:v8];
      }

      v137 = objc_alloc_init(RTDistanceCalculator);
      v129 = v5;
      v9 = [v5 clusterMetrics];

      p_super = &v130->super;
      if (v9)
      {
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v127 = v6;
        obj = v6;
        v131 = [obj countByEnumeratingWithState:&v146 objects:v152 count:16];
        if (v131)
        {
          v128 = *v147;
          do
          {
            v11 = 0;
            do
            {
              if (*v147 != v128)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v146 + 1) + 8 * v11);
              v142 = 0u;
              v143 = 0u;
              v144 = 0u;
              v145 = 0u;
              v13 = obj;
              v14 = [v13 countByEnumeratingWithState:&v142 objects:v151 count:16];
              v135 = v11;
              if (v14)
              {
                v15 = v14;
                v16 = 0;
                v17 = *v143;
                do
                {
                  for (i = 0; i != v15; ++i)
                  {
                    if (*v143 != v17)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v19 = *(*(&v142 + 1) + 8 * i);
                    v20 = [v12 clusterID];
                    v21 = [v19 clusterID];

                    if (v20 != v21)
                    {
                      v16 += [(RTTripSegmentProvider *)self _isMatchingODPair:v12 tripCluster2:v19 distanceCalculator:v137];
                    }
                  }

                  v15 = [v13 countByEnumeratingWithState:&v142 objects:v151 count:16];
                }

                while (v15);
              }

              else
              {
                v16 = 0;
              }

              v22 = [v129 clusterMetrics];
              v23 = [v22 numClustersBetweenODPairMax];

              if (v23 <= v16)
              {
                v24 = v16;
              }

              else
              {
                v24 = v23;
              }

              v25 = [v129 clusterMetrics];
              [v25 setNumClustersBetweenODPairMax:v24];

              v11 = v135 + 1;
              p_super = &v130->super;
            }

            while (v135 + 1 != v131);
            v131 = [v13 countByEnumeratingWithState:&v146 objects:v152 count:16];
          }

          while (v131);
        }

        v6 = v127;
      }

      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      obja = v6;
      v26 = [obja countByEnumeratingWithState:&v138 objects:v150 count:16];
      if (v26)
      {
        v27 = v26;
        LODWORD(v28) = 0;
        v132 = 0;
        v136 = 0;
        v29 = *v139;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v139 != v29)
            {
              objc_enumerationMutation(obja);
            }

            v31 = *(*(&v138 + 1) + 8 * j);
            if ([v31 clusterOrder] == 1)
            {
              [v31 avgBikeDistance];
              *&v32 = v32;
              [p_super setMultiModalBikeDistanceBeforeDriveAvg:v32];
              [p_super multiModalBikeDistanceBeforeDriveMax];
              v34 = v33;
              [p_super multiModalBikeDistanceBeforeDriveAvg];
              *&v36 = fmaxf(v34, v35);
              [p_super setMultiModalBikeDistanceBeforeDriveMax:v36];
              [v31 avgBikeTime];
              *&v37 = v37;
              [p_super setMultiModalBikeTimeBeforeDriveAvg:v37];
              [p_super multiModalBikeTimeBeforeDriveMax];
              v39 = v38;
              [p_super multiModalBikeTimeBeforeDriveAvg];
              *&v41 = fmaxf(v39, v40);
              [p_super setMultiModalBikeTimeBeforeDriveMax:v41];
              -[NSObject setNumCyclingBeforeDriveClusters:](p_super, "setNumCyclingBeforeDriveClusters:", -[NSObject numCyclingBeforeDriveClusters](p_super, "numCyclingBeforeDriveClusters") + [v31 bikeTraversalCount]);
              [v31 avgWalkDistance];
              *&v42 = v42;
              [p_super setMultiModalWalkDistanceBeforeDriveAvg:v42];
              [p_super multiModalWalkDistanceBeforeDriveMax];
              v44 = v43;
              [p_super multiModalWalkDistanceBeforeDriveAvg];
              *&v46 = fmaxf(v44, v45);
              [p_super setMultiModalWalkDistanceBeforeDriveMax:v46];
              [v31 avgWalkTime];
              *&v47 = v47;
              [p_super setMultiModalWalkTimeBeforeDriveAvg:v47];
              [p_super multiModalWalkTimeBeforeDriveMax];
              v49 = v48;
              [p_super multiModalWalkTimeBeforeDriveAvg];
              *&v51 = fmaxf(v49, v50);
              [p_super setMultiModalWalkTimeBeforeDriveMax:v51];
              -[NSObject setNumWalkingBeforeDriveClusters:](p_super, "setNumWalkingBeforeDriveClusters:", -[NSObject numWalkingBeforeDriveClusters](p_super, "numWalkingBeforeDriveClusters") + [v31 walkTraversalCount]);
              ++v136;
            }

            else if ([v31 clusterOrder] == 2)
            {
              [v31 avgBikeDistance];
              *&v52 = v52;
              [p_super setMultiModalBikeDistanceAfterDriveAvg:v52];
              [p_super multiModalBikeDistanceAfterDriveMax];
              v54 = v53;
              [p_super multiModalBikeDistanceAfterDriveAvg];
              *&v56 = fmaxf(v54, v55);
              [p_super setMultiModalBikeDistanceAfterDriveMax:v56];
              [v31 avgBikeTime];
              *&v57 = v57;
              [p_super setMultiModalBikeTimeAfterDriveAvg:v57];
              [p_super multiModalBikeTimeAfterDriveMax];
              v59 = v58;
              [p_super multiModalBikeTimeAfterDriveAvg];
              *&v61 = fmaxf(v59, v60);
              [p_super setMultiModalBikeTimeAfterDriveMax:v61];
              -[NSObject setNumCyclingAfterDriveClusters:](p_super, "setNumCyclingAfterDriveClusters:", -[NSObject numCyclingAfterDriveClusters](p_super, "numCyclingAfterDriveClusters") + [v31 bikeTraversalCount]);
              [v31 avgWalkDistance];
              *&v62 = v62;
              [p_super setMultiModalWalkDistanceAfterDriveAvg:v62];
              [p_super multiModalWalkDistanceAfterDriveMax];
              v64 = v63;
              [p_super multiModalWalkDistanceAfterDriveAvg];
              *&v66 = fmaxf(v64, v65);
              [p_super setMultiModalWalkDistanceAfterDriveMax:v66];
              [v31 avgWalkTime];
              *&v67 = v67;
              [p_super setMultiModalWalkTimeAfterDriveAvg:v67];
              [p_super multiModalWalkTimeAfterDriveMax];
              v69 = v68;
              [p_super multiModalWalkTimeAfterDriveAvg];
              *&v71 = fmaxf(v69, v70);
              [p_super setMultiModalWalkTimeAfterDriveMax:v71];
              -[NSObject setNumWalkingAfterDriveClusters:](p_super, "setNumWalkingAfterDriveClusters:", -[NSObject numWalkingAfterDriveClusters](p_super, "numWalkingAfterDriveClusters") + [v31 walkTraversalCount]);
              ++v132;
            }

            else if (![v31 clusterOrder])
            {
              [v31 averageTripTime];
              *&v72 = v72;
              [p_super setMultiModalDriveTimeMax:v72];
              [p_super multiModalDriveDistanceMax];
              v74 = v73;
              [v31 averageTripDistance];
              v76 = fmax(v74, v75);
              *&v76 = v76;
              [p_super setMultiModalDriveDistanceMax:v76];
            }

            [p_super multiModalNumBikeSegmentsMax];
            v78 = fmax(v77, ([p_super numCyclingAfterDriveClusters]+ [p_super numCyclingBeforeDriveClusters]));
            *&v78 = v78;
            [p_super setMultiModalNumBikeSegmentsMax:v78];
            [p_super multiModalNumWalkSegmentsMax];
            v80 = fmax(v79, ([p_super numWalkingAfterDriveClusters]+ [p_super numWalkingBeforeDriveClusters]));
            *&v80 = v80;
            [p_super setMultiModalNumWalkSegmentsMax:v80];
            if ([v31 modeOfTransport] == 3 && objc_msgSend(v31, "clusterOrder") == 3)
            {
              -[NSObject setMultiModalTripSegmentsBikeOnly:](p_super, "setMultiModalTripSegmentsBikeOnly:", -[NSObject multiModalTripSegmentsBikeOnly](p_super, "multiModalTripSegmentsBikeOnly") + [v31 bikeTraversalCount]);
              [p_super setNumCyclingOnlyClusters:[p_super numCyclingOnlyClusters]+ 1];
            }

            if ([v31 modeOfTransport] == 1 && objc_msgSend(v31, "clusterOrder") == 3)
            {
              -[NSObject setMultiModalTripSegmentsWalkOnly:](p_super, "setMultiModalTripSegmentsWalkOnly:", -[NSObject multiModalTripSegmentsWalkOnly](p_super, "multiModalTripSegmentsWalkOnly") + [v31 walkTraversalCount]);
              [p_super setNumWalkingOnlyClusters:[p_super numWalkingOnlyClusters]+ 1];
            }

            [v31 averageTripDistance];
            v82 = v81;
            [v31 avgBikeDistance];
            v84 = v83;
            [v31 avgWalkDistance];
            if (v82 > v84 + v85)
            {
              [p_super setMultiModalTripSegmentsWithDrive:[p_super multiModalTripSegmentsWithDrive]+ 1];
            }

            if (![v31 walkTraversalCount] && !objc_msgSend(v31, "bikeTraversalCount"))
            {
              [p_super setNumDrivingOnlyClusters:[p_super numDrivingOnlyClusters]+ 1];
            }

            v86 = [MEMORY[0x277CBEAA8] now];
            v87 = [v31 dateOfMostRecentTrip];
            [v86 timeIntervalSinceDate:v87];
            v89 = v88 / 86400;

            if (v28 <= v89)
            {
              v28 = v89;
            }

            else
            {
              v28 = v28;
            }
          }

          v27 = [obja countByEnumeratingWithState:&v138 objects:v150 count:16];
        }

        while (v27);
      }

      else
      {
        v28 = 0;
        v132 = 0;
        v136 = 0;
      }

      if ([obja count])
      {
        v5 = v129;
        if (v136)
        {
          [p_super multiModalBikeDistanceBeforeDriveAvg];
          *&v98 = v97 / v136;
          [p_super setMultiModalBikeDistanceBeforeDriveAvg:v98];
          [p_super multiModalBikeTimeBeforeDriveAvg];
          *&v100 = v99 / v136;
          [p_super setMultiModalBikeTimeBeforeDriveAvg:v100];
          [p_super multiModalWalkDistanceBeforeDriveAvg];
          *&v102 = v101 / v136;
          [p_super setMultiModalWalkDistanceBeforeDriveAvg:v102];
          [p_super multiModalWalkTimeBeforeDriveAvg];
          v104 = *&v103 / v136;
        }

        else
        {
          v104 = 0.0;
          [p_super setMultiModalBikeDistanceBeforeDriveAvg:0.0];
          [p_super setMultiModalBikeTimeBeforeDriveAvg:0.0];
          [p_super setMultiModalWalkDistanceBeforeDriveAvg:0.0];
        }

        *&v103 = v104;
        [p_super setMultiModalWalkTimeBeforeDriveAvg:v103];
        if (v132)
        {
          [p_super multiModalBikeDistanceAfterDriveAvg];
          *&v110 = v109 / v132;
          [p_super setMultiModalBikeDistanceAfterDriveAvg:v110];
          [p_super multiModalBikeTimeAfterDriveAvg];
          *&v112 = v111 / v132;
          [p_super setMultiModalBikeTimeAfterDriveAvg:v112];
          [p_super multiModalWalkDistanceAfterDriveAvg];
          *&v114 = v113 / v132;
          [p_super setMultiModalWalkDistanceAfterDriveAvg:v114];
          [p_super multiModalWalkTimeAfterDriveAvg];
          v116 = *&v115 / v132;
        }

        else
        {
          v116 = 0.0;
          [p_super setMultiModalBikeDistanceAfterDriveAvg:0.0];
          [p_super setMultiModalBikeTimeAfterDriveAvg:0.0];
          [p_super setMultiModalWalkDistanceAfterDriveAvg:0.0];
        }

        *&v115 = v116;
        [p_super setMultiModalWalkTimeAfterDriveAvg:v115];
        v117 = v136 + v132;
        if (v136 + v132)
        {
          v118 = [p_super numCyclingBeforeDriveClusters];
          *&v119 = ([p_super numCyclingAfterDriveClusters]+ v118) / v117;
          [p_super setMultiModalNumBikeSegmentsAvg:v119];
          v120 = [p_super numWalkingBeforeDriveClusters];
          v122 = ([p_super numWalkingAfterDriveClusters]+ v120) / v117;
        }

        else
        {
          v122 = 0.0;
          [p_super setMultiModalNumBikeSegmentsAvg:0.0];
        }

        *&v121 = v122;
        [p_super setMultiModalNumWalkSegmentsAvg:v121];
      }

      else
      {
        v5 = v129;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v105 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
          {
            v106 = objc_opt_class();
            v107 = NSStringFromClass(v106);
            v108 = NSStringFromSelector(aSelector);
            *buf = 138412546;
            v154 = v107;
            v155 = 2112;
            v156 = v108;
            _os_log_impl(&dword_2304B3000, v105, OS_LOG_TYPE_INFO, "%@,%@,No trip cluster meta deta found", buf, 0x16u);
          }
        }
      }

      v123 = [v5 clusterMetrics];

      if (!v123)
      {
        v124 = objc_alloc_init(RTLearnedRouteClusterStatisticsMetrics);
        [v5 setClusterMetrics:v124];
      }

      v125 = [v5 clusterMetrics];
      [v125 setNumOfDaysSinceClusterTraversalMax:v28];

      [v5 setMultiModalStatMetrics:p_super];
    }

    else
    {
      p_super = 0;
      obja = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(obja, OS_LOG_TYPE_ERROR))
      {
        v94 = objc_opt_class();
        v95 = NSStringFromClass(v94);
        v96 = NSStringFromSelector(a2);
        *buf = 138412546;
        v154 = v95;
        v155 = 2112;
        v156 = v96;
        _os_log_error_impl(&dword_2304B3000, obja, OS_LOG_TYPE_ERROR, "%@,%@,invalid multi modal metric instance", buf, 0x16u);

        p_super = 0;
      }
    }
  }

  else
  {
    p_super = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v90 = objc_opt_class();
      NSStringFromClass(v90);
      v92 = v91 = p_super;
      v93 = NSStringFromSelector(a2);
      *buf = 138412546;
      v154 = v92;
      v155 = 2112;
      v156 = v93;
      _os_log_error_impl(&dword_2304B3000, v91, OS_LOG_TYPE_ERROR, "%@,%@,invalid metric instance", buf, 0x16u);

      p_super = v91;
    }
  }
}

- (void)_checkAndStartReconstructTripSegmentWithTrainMode:(unint64_t)a3 trainReason:(unint64_t)a4 currentPipelineError:(id)a5 handler:(id)a6
{
  v61[1] = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  v13 = [(RTTripSegmentProvider *)self isTripSegmentGenerationEnabled];
  v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (!v13)
  {
    if (v14)
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = NSStringFromSelector(a2);
        *buf = 138412290;
        *&buf[4] = v25;
        _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:%@,trip segment generation is supported on this platform but is not enabled", buf, 0xCu);
      }
    }

    v26 = MEMORY[0x277CCA9B8];
    v60 = *MEMORY[0x277CCA450];
    v61[0] = @"TSP is supported on this platform but is not enabled";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:&v60 count:1];
    v20 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:13 userInfo:v27];

    if (v12)
    {
      v28 = _RTSafeArray();
      v29 = _RTMultiErrorCreate();
      v12[2](v12, v29, 0);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "End TripSegment Processing.", buf, 2u);
      }
    }

    goto LABEL_17;
  }

  if (v14)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = NSStringFromSelector(a2);
      *buf = 138412290;
      *&buf[4] = v16;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:%@,trip segment generation is supported on this platform and is enabled", buf, 0xCu);
    }
  }

  if (self->_sessionInProgress)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:startReconstructTripSegmentWithTrainMode: Session already in progress, ignoring request.", buf, 2u);
      }
    }

    v18 = MEMORY[0x277CCA9B8];
    v58 = *MEMORY[0x277CCA450];
    v59 = @"TSP session already in progress, ignoring request";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v20 = [v18 errorWithDomain:*MEMORY[0x277D01448] code:2 userInfo:v19];

    if (v12)
    {
      v21 = _RTSafeArray();
      v22 = _RTMultiErrorCreate();
      v12[2](v12, v22, 0);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "End TripSegment Processing.", buf, 2u);
      }
    }

LABEL_17:

    goto LABEL_45;
  }

  if (a3 == 1 && a4 == 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v33;
        *&buf[12] = 2112;
        *&buf[14] = v34;
        _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@,%@,resetting deferral flag to false for force learning trigger", buf, 0x16u);
      }
    }

    [(RTTripSegmentProvider *)self deferTripSegmentAndClusterProcessing:0];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:startReconstructTripSegmentWithTrainMode: Starting.", buf, 2u);
    }
  }

  self->_sessionInProgress = 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v55 = __Block_byref_object_copy__207;
  v56 = __Block_byref_object_dispose__207;
  v36 = MEMORY[0x277CCACA8];
  v37 = objc_opt_class();
  v38 = NSStringFromClass(v37);
  v39 = NSStringFromSelector(a2);
  v40 = [v36 stringWithFormat:@"%@-%@", v38, v39];
  v41 = v40;
  [v40 UTF8String];
  v57 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = NSStringFromSelector(a2);
      *v50 = 138412546;
      v51 = v44;
      v52 = 2112;
      v53 = v45;
      _os_log_debug_impl(&dword_2304B3000, v42, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", v50, 0x16u);
    }
  }

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __116__RTTripSegmentProvider__checkAndStartReconstructTripSegmentWithTrainMode_trainReason_currentPipelineError_handler___block_invoke;
  v46[3] = &unk_2788D3818;
  v46[4] = self;
  v49 = buf;
  v48 = v12;
  v47 = v11;
  [(RTTripSegmentProvider *)self _startReconstructTripSegmentWithTrainMode:a3 trainReason:a4 completionHandler:v46];

  _Block_object_dispose(buf, 8);
LABEL_45:
}

void __116__RTTripSegmentProvider__checkAndStartReconstructTripSegmentWithTrainMode_trainReason_currentPipelineError_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@,purgeUsedTripSegmentLocations", &v17, 0xCu);
    }
  }

  if (([*(a1 + 32) purgeUsedTripSegmentLocations] & 1) == 0)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = 138412290;
      v18 = v16;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@,purgeUsedTripSegmentLocations failed", &v17, 0xCu);
    }
  }

  *(*(a1 + 32) + 8) = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:startReconstructTripSegmentWithTrainMode: Finished.", &v17, 2u);
    }
  }

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, *(a1 + 40), a3);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "End TripSegment Processing.", &v17, 2u);
    }
  }
}

- (id)buildTinySegmentArrayForTransitionWithIndex:(unint64_t)a3 withinDateInterval:(id)a4 fromActivity:(id)a5 uuidType:(int64_t)a6
{
  v103 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v9 || ![v9 count])
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v100 = "[RTTripSegmentProvider buildTinySegmentArrayForTransitionWithIndex:withinDateInterval:fromActivity:uuidType:]";
      v101 = 1024;
      v102 = 1390;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "RTTripSegmentProvider:Activities cannot be nil or empty for a transition (in %s:%d)", buf, 0x12u);
    }
  }

  v75 = self;
  context = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [RTTripSegmentFeatures alloc];
  v13 = objc_alloc(MEMORY[0x277CCA970]);
  v14 = [MEMORY[0x277CBEAA8] distantPast];
  v15 = [MEMORY[0x277CBEAA8] date];
  v16 = [v13 initWithStartDate:v14 endDate:v15];
  v17 = [(RTTripSegmentFeatures *)v12 initWithTransitionIndex:a3 tripId:0 mode:0 dateInterval:v16];

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v10;
  v70 = v8;
  v72 = v17;
  v81 = [obj countByEnumeratingWithState:&v93 objects:v98 count:16];
  if (v81)
  {
    v18 = *v94;
    while (2)
    {
      for (i = 0; i != v81; ++i)
      {
        if (*v94 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v93 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        v22 = [v20 startDate];
        v23 = [v8 endDate];
        v24 = [v22 isAfterDate:v23];

        if (v24)
        {
          objc_autoreleasePoolPop(v21);
          goto LABEL_18;
        }

        v25 = [MEMORY[0x277D01180] modeOfTransportationFromMotionActivityType:{objc_msgSend(v20, "type")}];
        if (v25 != [(RTTripSegmentFeatures *)v17 mode])
        {
          v26 = objc_alloc(MEMORY[0x277CCA970]);
          v27 = [(RTTripSegmentFeatures *)v17 dateInterval];
          v28 = [v27 startDate];
          v29 = [v20 startDate];
          v30 = [v26 initWithStartDate:v28 endDate:v29];
          [(RTTripSegmentFeatures *)v72 setDateInterval:v30];

          v8 = v70;
          [(RTTripSegmentProvider *)v75 addTripSegmentFeaturesItem:v72 intoList:context overlapDateInterval:v70 uuidType:a6];
          v31 = objc_alloc(MEMORY[0x277CCA970]);
          v32 = [v20 startDate];
          v33 = [MEMORY[0x277CBEAA8] date];
          v34 = [v31 initWithStartDate:v32 endDate:v33];
          [(RTTripSegmentFeatures *)v72 setDateInterval:v34];

          v17 = v72;
          [(RTTripSegmentFeatures *)v72 setMode:v25];
        }

        objc_autoreleasePoolPop(v21);
      }

      v81 = [obj countByEnumeratingWithState:&v93 objects:v98 count:16];
      if (v81)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v35 = v75;
  [(RTTripSegmentProvider *)v75 addTripSegmentFeaturesItem:v17 intoList:context overlapDateInterval:v8 uuidType:a6];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __110__RTTripSegmentProvider_buildTinySegmentArrayForTransitionWithIndex_withinDateInterval_fromActivity_uuidType___block_invoke;
  v90[3] = &unk_2788D3840;
  v92 = a3;
  v36 = context;
  v91 = v36;
  [v36 enumerateObjectsUsingBlock:v90];
  v82 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v73 = v36;
  v76 = [v73 countByEnumeratingWithState:&v86 objects:v97 count:16];
  if (v76)
  {
    v74 = *v87;
    do
    {
      v37 = 0;
      do
      {
        if (*v87 != v74)
        {
          objc_enumerationMutation(v73);
        }

        v80 = v37;
        v38 = *(*(&v86 + 1) + 8 * v37);
        contexta = objc_autoreleasePoolPush();
        v39 = [v38 tripId];
        v40 = [v38 dateInterval];
        v41 = [v40 startDate];

        v42 = [v38 dateInterval];
        v43 = [v42 startDate];
        v44 = [v43 dateByAddingTimeInterval:v35->_processingChunkWidthSeconds];

        v45 = [v38 dateInterval];
        v46 = [v45 endDate];
        v47 = [v46 dateByAddingTimeInterval:v35->_processingChunkWidthSeconds * -0.5];

        v48 = [v38 dateInterval];
        v49 = [v48 endDate];
        v50 = [v44 isBeforeDate:v49];

        if (v50)
        {
          while (([v44 isAfterDate:v47] & 1) == 0)
          {
            v51 = [RTTripSegmentFeatures alloc];
            v52 = [v38 transitionIndex];
            v53 = [v38 mode];
            v54 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v41 endDate:v44];
            v55 = [(RTTripSegmentFeatures *)v51 initWithTransitionIndex:v52 tripId:v39 mode:v53 dateInterval:v54];
            [v82 addObject:v55];

            v56 = v44;
            v44 = [v56 dateByAddingTimeInterval:v35->_processingChunkWidthSeconds];

            v57 = [v38 dateInterval];
            v58 = [v57 endDate];
            LOBYTE(v52) = [v44 isBeforeDate:v58];

            v41 = v56;
            if ((v52 & 1) == 0)
            {
              goto LABEL_28;
            }
          }
        }

        v56 = v41;
LABEL_28:
        v59 = [RTTripSegmentFeatures alloc];
        v60 = [v38 transitionIndex];
        v61 = [v38 mode];
        v62 = objc_alloc(MEMORY[0x277CCA970]);
        v63 = [v38 dateInterval];
        v64 = [v63 endDate];
        v65 = [v62 initWithStartDate:v56 endDate:v64];
        v66 = [(RTTripSegmentFeatures *)v59 initWithTransitionIndex:v60 tripId:v39 mode:v61 dateInterval:v65];
        [v82 addObject:v66];

        v35 = v75;
        objc_autoreleasePoolPop(contexta);
        v37 = v80 + 1;
      }

      while (v80 + 1 != v76);
      v76 = [v73 countByEnumeratingWithState:&v86 objects:v97 count:16];
    }

    while (v76);
  }

  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __110__RTTripSegmentProvider_buildTinySegmentArrayForTransitionWithIndex_withinDateInterval_fromActivity_uuidType___block_invoke_360;
  v83[3] = &unk_2788D3840;
  v85 = a3;
  v67 = v82;
  v84 = v67;
  [v67 enumerateObjectsUsingBlock:v83];

  return v67;
}

void __110__RTTripSegmentProvider_buildTinySegmentArrayForTransitionWithIndex_withinDateInterval_fromActivity_uuidType___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 40);
      v16 = [*(a1 + 32) count];
      v15 = [v5 mode];
      v7 = [v5 dateInterval];
      v8 = [v7 startDate];
      v9 = [v8 stringFromDate];
      v10 = [v5 dateInterval];
      v11 = [v10 endDate];
      v12 = [v11 stringFromDate];
      v13 = [v5 dateInterval];
      [v13 duration];
      *buf = 134219523;
      v19 = v17;
      v20 = 2048;
      v21 = v16;
      v22 = 2048;
      v23 = a3;
      v24 = 2048;
      v25 = v15;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v12;
      v30 = 2053;
      v31 = v14;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:tripSegmentGenerated,TransitionIndex,%tu,SegmentCount,%tu,SegmentIndex,%tu,mode,%zd,startTime,%@,endTime,%@,duration,%{sensitive}.1f", buf, 0x48u);
    }
  }
}

void __110__RTTripSegmentProvider_buildTinySegmentArrayForTransitionWithIndex_withinDateInterval_fromActivity_uuidType___block_invoke_360(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) count];
      v9 = 134218754;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      v13 = 2048;
      v14 = a3;
      v15 = 2112;
      v16 = v5;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:chunkGenerated,TransitionIndex,%tu,ChunkCount,%tu,ChunkIndex,%tu,thisChunk,%@", &v9, 0x2Au);
    }
  }
}

- (void)addToTransitionLocationsBuffer:(id)a3 forDateInterval:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 sortedArrayUsingComparator:&__block_literal_global_161];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 firstObject];
    v10 = [v9 timestamp];

    v11 = [v6 startDate];
    v12 = [v10 isBeforeDate:v11];

    if (v12 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v34 = [v8 firstObject];
        *buf = 138740227;
        v40 = v34;
        v41 = 2112;
        v42 = v6;
        _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:addToTransitionLocationsBuffer Fetched location, %{sensitive}@, before the desired chunk time interval, %@", buf, 0x16u);
      }
    }

    v14 = [v8 lastObject];
    v15 = [v14 timestamp];

    v16 = [v6 endDate];
    v17 = [v15 isAfterDate:v16];

    if (v17 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v35 = [v8 lastObject];
        *buf = 138740227;
        v40 = v35;
        v41 = 2112;
        v42 = v6;
        _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:addToTransitionLocationsBuffer Fetched location, %{sensitive}@, after the desired chunk time interval, %@", buf, 0x16u);
      }
    }
  }

  if ([(NSMutableArray *)self->_transitionLocations count])
  {
    v19 = [(NSMutableArray *)self->_transitionLocations lastObject];
    v20 = [v19 timestamp];

    v21 = MEMORY[0x277CCAC30];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __72__RTTripSegmentProvider_addToTransitionLocationsBuffer_forDateInterval___block_invoke_363;
    v37[3] = &unk_2788D3888;
    v38 = v20;
    transitionLocations = v20;
    v23 = [v21 predicateWithBlock:v37];
    v24 = [v8 filteredArrayUsingPredicate:v23];

    [(NSMutableArray *)self->_transitionLocations addObjectsFromArray:v24];
  }

  else
  {
    v25 = [MEMORY[0x277CBEB18] arrayWithArray:v8];
    transitionLocations = self->_transitionLocations;
    self->_transitionLocations = v25;
  }

  if ([(NSMutableArray *)self->_transitionLocations count])
  {
    v27 = 0;
    v28 = MEMORY[0x277D86220];
    *&v26 = 138739971;
    v36 = v26;
    do
    {
      v29 = [(NSMutableArray *)self->_transitionLocations objectAtIndexedSubscript:v27, v36];
      v30 = +[RTTripSegmentProvider isLocationTypeSupported:](RTTripSegmentProvider, "isLocationTypeSupported:", [v29 type]);

      if (!v30)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v31 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v32 = [(NSMutableArray *)self->_transitionLocations objectAtIndexedSubscript:v27];
            v33 = [v32 toString];
            *buf = v36;
            v40 = v33;
            _os_log_debug_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:addToTransitionLocationsBuffer Removing unsupported location %{sensitive}@", buf, 0xCu);
          }
        }

        [(NSMutableArray *)self->_transitionLocations removeObjectAtIndex:v27--];
      }

      ++v27;
    }

    while (v27 < [(NSMutableArray *)self->_transitionLocations count]);
  }
}

uint64_t __72__RTTripSegmentProvider_addToTransitionLocationsBuffer_forDateInterval___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 timestamp];
  v6 = [v4 timestamp];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __72__RTTripSegmentProvider_addToTransitionLocationsBuffer_forDateInterval___block_invoke_363(uint64_t a1, void *a2)
{
  v3 = [a2 timestamp];
  v4 = [v3 isAfterDate:*(a1 + 32)];

  return v4;
}

- (BOOL)applyElevationAdjustmentToBreadcrumbs
{
  v2 = [(RTTripSegmentProvider *)self defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsTripSegmentAdjustElevationForBreadcrumbs"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)convertToTripSegmentLocations:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x277CBFC98]);
        v12 = [v11 initWithCLLocation:{v10, v14}];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)getTripSegmentStartAndEndTimeUsingAllChunks:(id)a3 currentChunk:(id)a4 numLocations:(id *)a5 distance:(id *)a6
{
  v50 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v40 = a4;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v10)
  {
    v11 = v10;
    v34 = a5;
    v35 = a6;
    v38 = 0;
    v12 = 0;
    v13 = 0;
    v39 = *v46;
    v14 = 0.0;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v46 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v45 + 1) + 8 * i);
        v17 = [v40 tripId];
        v18 = [v17 UUIDString];
        v19 = [v16 tripId];
        v20 = [v19 UUIDString];
        v21 = [v18 isEqualToString:v20];

        if (v21)
        {
          v22 = [v16 dateInterval];
          v43 = 0;
          v44 = 0;
          v41 = 0;
          v42 = 0;
          [(RTTripSegmentProvider *)self getCountDistanceStartAndEndDateOfLocationsInInterval:v22 startDate:&v44 endDate:&v43 numLocations:&v42 distance:&v41];
          v23 = v44;
          v24 = v43;
          v25 = v42;
          v26 = v41;

          if (v25)
          {
            v38 += [v25 intValue];
          }

          if (v26)
          {
            v14 = v14 + [v26 intValue];
          }

          if (v13)
          {
LABEL_14:
            if (!v24)
            {
              goto LABEL_17;
            }
          }

          else
          {
            if (v23)
            {
              v13 = v23;
              goto LABEL_14;
            }

            v28 = [v16 dateInterval];
            v13 = [v28 startDate];

            if (!v24)
            {
LABEL_17:
              v29 = [v16 dateInterval];
              v27 = [v29 endDate];

              v12 = v29;
              goto LABEL_18;
            }
          }

          v27 = v24;
LABEL_18:

          v12 = v27;
          continue;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (!v11)
      {
        v30 = v14;
        a5 = v34;
        a6 = v35;
        v31 = v38;
        goto LABEL_23;
      }
    }
  }

  v31 = 0;
  v30 = 0;
  v12 = 0;
  v13 = 0;
LABEL_23:
  *a5 = [MEMORY[0x277CCABB0] numberWithInt:v31];
  *a6 = [MEMORY[0x277CCABB0] numberWithInt:v30];
  v32 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:v12];

  return v32;
}

- (id)getTripSegmentOfTypeFinalInThisTimeInterval:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__207;
  v41 = __Block_byref_object_dispose__207;
  v42 = 0;
  v5 = [objc_alloc(MEMORY[0x277D01328]) initWithAscending:1 dateInterval:v4 limit:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v43) = 138412290;
      *(&v43 + 4) = v4;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider,searching for trip segment of type FINAL for interval %@", &v43, 0xCu);
    }
  }

  v7 = dispatch_semaphore_create(0);
  *&v43 = 0;
  *(&v43 + 1) = &v43;
  v44 = 0x2020000000;
  v45 = 0;
  tripSegmentStore = self->_tripSegmentStore;
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __69__RTTripSegmentProvider_getTripSegmentOfTypeFinalInThisTimeInterval___block_invoke;
  v32 = &unk_2788C69F0;
  v9 = v4;
  v33 = v9;
  v35 = &v43;
  v36 = &v37;
  v10 = v7;
  v34 = v10;
  [(RTTripSegmentStore *)tripSegmentStore fetchTripSegmentsWithOptions:v5 handler:&v29];
  v11 = v10;
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v11, v13))
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    [v14 timeIntervalSinceDate:v12];
    v16 = v15;
    v17 = objc_opt_new();
    v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_701];
    v19 = [MEMORY[0x277CCACC8] callStackSymbols];
    v20 = [v19 filteredArrayUsingPredicate:v18];
    v21 = [v20 firstObject];

    [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v23 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v46 count:1];
    v25 = [v23 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v24];

    if (v25)
    {
      v26 = v25;
    }
  }

  v27 = v38[5];
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v37, 8);

  return v27;
}

void __69__RTTripSegmentProvider_getTripSegmentOfTypeFinalInThisTimeInterval___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (v5 && !a3)
  {
    if ([v5 count])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v8)
      {
        v10 = v8;
        v25 = a1;
        v11 = *v27;
        *&v9 = 138412290;
        v24 = v9;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v26 + 1) + 8 * i);
            v14 = [v13 identifier];
            if ([RTTripSegmentManager tripSegmentUUIDTypeFromUUID:v14])
            {
            }

            else
            {
              v15 = [v13 tripCommuteID];

              if (v15)
              {
                a1 = v25;
                objc_storeStrong((*(v25[7] + 8) + 40), v13);
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
                {
                  v21 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                  {
                    v22 = v25[4];
                    v23 = *(*(v25[6] + 8) + 24);
                    *buf = 138412546;
                    v32 = v22;
                    v33 = 1024;
                    v34 = v23;
                    _os_log_debug_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider,trip segment of type FINAL found for interval %@, tripSegmentExist,%d", buf, 0x12u);
                  }
                }

                goto LABEL_26;
              }
            }

            v16 = [v13 tripCommuteID];

            if (!v16)
            {
              v17 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                v18 = v25[4];
                *buf = v24;
                v32 = v18;
                _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "RTTripSegmentProvider, trip segment with nil commuteID found for interval %@", buf, 0xCu);
              }
            }
          }

          v10 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

        a1 = v25;
      }

      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v19 = a1[4];
        v20 = *(*(a1[6] + 8) + 24);
        *buf = 138412546;
        v32 = v19;
        v33 = 1024;
        v34 = v20;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider,no trip segment data found for interval %@, tripSegmentExist,%d", buf, 0x12u);
      }

LABEL_26:
    }
  }

  dispatch_semaphore_signal(a1[5]);
}

- (void)saveFailedProcessingToTripSegmentMetaDataWithComuteID:(id)a3 inputData:(id)a4 allChunks:(id)a5 currentChunk:(id)a6 tripVisitStartLocation:(id)a7 tripVisitEndLocation:(id)a8 tripSegSequenceNumber:(int)a9 tripSegSequenceNumberMax:(int)a10 processingFailureError:(id)a11
{
  v108 = *MEMORY[0x277D85DE8];
  v77 = a3;
  v18 = a4;
  v83 = a5;
  v84 = a6;
  v79 = a7;
  v80 = a8;
  v19 = a11;
  v85 = v18;
  if (v18)
  {
    v71 = self;
    aSelector = a2;
    v76 = v19;
    v97 = 0;
    v98 = 0;
    v82 = [(RTTripSegmentProvider *)self getTripSegmentStartAndEndTimeUsingAllChunks:v83 currentChunk:v84 numLocations:&v98 distance:&v97];
    v74 = v98;
    v75 = v97;
    v78 = [v82 startDate];
    v81 = [v82 endDate];
    v88 = [MEMORY[0x277CBEB18] array];
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = [v18 tripLocations];
    v20 = 0;
    v21 = [obj countByEnumeratingWithState:&v93 objects:v105 count:16];
    if (v21)
    {
      v22 = *v94;
      v23 = 0.0;
      do
      {
        v24 = 0;
        v25 = v20;
        do
        {
          if (*v94 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v93 + 1) + 8 * v24);
          v27 = objc_alloc(MEMORY[0x277CBFC98]);
          v28 = [v26 timestamp];
          [v26 latitude];
          v30 = v29;
          [v26 longitude];
          v32 = v31;
          [v26 horizontalAccuracy];
          v20 = [v27 initWithTime:v28 latitude:objc_msgSend(v26 longitude:"locType") horizontalAccuracy:objc_msgSend(v26 course:"referenceFrame") courseAccuracy:v30 speed:v32 speedAccuracy:v33 altitude:0.0 altitudeAccuracy:180.0 locType:0.0 referenceFrame:{0.5, 0.0, 0x4059000000000000}];

          [v88 addObject:v20];
          if (v25)
          {
            [v20 distanceFromLocation:v25];
            v23 = v23 + v34;
          }

          ++v24;
          v25 = v20;
        }

        while (v21 != v24);
        v21 = [obj countByEnumeratingWithState:&v93 objects:v105 count:16];
      }

      while (v21);
    }

    else
    {
      v23 = 0.0;
    }

    if ([v88 count] > 1)
    {
      if (v23 > 20.0)
      {
        v39 = v23;
      }

      else
      {
        v39 = 20.0;
      }

      [v78 timeIntervalSinceDate:v81];
      if (fabs(v40) >= 0.0001)
      {
        v42 = v81;
      }

      else
      {
        v41 = [v78 dateByAddingTimeInterval:1.0];

        v42 = v41;
      }

      v81 = v42;
      [v42 timeIntervalSinceDate:v78];
      v44 = v43;
      v45 = objc_alloc(MEMORY[0x277CBFCA0]);
      v46 = [v18 tripSegmentID];
      v47 = [MEMORY[0x277CBEB18] array];
      v35 = [v45 initWithTripSegmentID:v46 isFinalPart:1 startDate:v78 endDate:v81 duration:0 modeOfTransport:v88 distance:v44 distanceUnc:v39 tripLocations:v39 * 0.05 routeRoads:v47];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v48 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v49 = NSStringFromSelector(aSelector);
          v50 = [v76 code];
          v51 = [v18 tripSegmentID];
          *buf = 138413827;
          *&buf[4] = v49;
          *&buf[12] = 1024;
          *&buf[14] = v50;
          *&buf[18] = 2112;
          *&buf[20] = v51;
          *&buf[28] = 2117;
          *&buf[30] = v79;
          *&buf[38] = 2117;
          v100 = v80;
          v101 = 1024;
          v102 = a9;
          v103 = 1024;
          v104 = a10;
          _os_log_impl(&dword_2304B3000, v48, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:%@,adding trip segment that failed processing,processingErrorCode,%d,tripId,%@,tripVisitStartLoc,%{sensitive}@,tripVisitEndLoc,%{sensitive}@,tripSeq,%d,tripSeqMax,%d", buf, 0x3Cu);
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__207;
      *&buf[32] = __Block_byref_object_dispose__207;
      v100 = 0;
      v52 = dispatch_semaphore_create(0);
      tripSegmentManager = v71->_tripSegmentManager;
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __226__RTTripSegmentProvider_saveFailedProcessingToTripSegmentMetaDataWithComuteID_inputData_allChunks_currentChunk_tripVisitStartLocation_tripVisitEndLocation_tripSegSequenceNumber_tripSegSequenceNumberMax_processingFailureError___block_invoke;
      v89[3] = &unk_2788C6F18;
      v91 = buf;
      v92 = aSelector;
      v54 = v52;
      v90 = v54;
      [(RTTripSegmentManager *)tripSegmentManager addTripSegmentData:v35 isEndOfSegment:1 originLocation:v79 destinationLocation:v80 tripSegSequenceNumber:a9 tripSegSequenceNumberMax:a10 tripCommuteID:v77 handler:v89];
      v55 = (*&buf[8] + 40);
      aSelectora = *(*&buf[8] + 40);
      v56 = v54;
      obja = [MEMORY[0x277CBEAA8] now];
      v57 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v56, v57))
      {
        v58 = [MEMORY[0x277CBEAA8] now];
        [v58 timeIntervalSinceDate:obja];
        v60 = v59;
        v61 = objc_opt_new();
        v62 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_701];
        v63 = [MEMORY[0x277CCACC8] callStackSymbols];
        v64 = [v63 filteredArrayUsingPredicate:v62];
        v65 = [v64 firstObject];

        [v61 submitToCoreAnalytics:v65 type:1 duration:v60];
        v66 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
        {
          *v107 = 0;
          _os_log_fault_impl(&dword_2304B3000, v66, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v107, 2u);
        }

        v67 = MEMORY[0x277CCA9B8];
        v106 = *MEMORY[0x277CCA450];
        *v107 = @"semaphore wait timeout";
        v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:&v106 count:1];
        v69 = [v67 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v68];

        if (v69)
        {
          v70 = v69;

          aSelectora = v69;
        }
      }

      objc_storeStrong(v55, aSelectora);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_34:

        v19 = v76;
        goto LABEL_35;
      }

      v35 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = NSStringFromSelector(aSelector);
        v37 = [v18 tripSegmentID];
        v38 = [v37 UUIDString];
        *buf = 138412546;
        *&buf[4] = v36;
        *&buf[12] = 2112;
        *&buf[14] = v38;
        _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:%@,failed to add trip segment meta data for the one that failed TSP processing,tripsID,%@", buf, 0x16u);
      }
    }

    goto LABEL_34;
  }

LABEL_35:
}

void __226__RTTripSegmentProvider_saveFailedProcessingToTripSegmentMetaDataWithComuteID_inputData_allChunks_currentChunk_tripVisitStartLocation_tripVisitEndLocation_tripSegSequenceNumber_tripSegSequenceNumberMax_processingFailureError___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 48));
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:%@,adding trip segment that failed processing, returned error,%@", &v9, 0x16u);
    }
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)getCountDistanceStartAndEndDateOfLocationsInInterval:(id)a3 startDate:(id *)a4 endDate:(id *)a5 numLocations:(id *)a6 distance:(id *)a7
{
  v45 = a7;
  v71[1] = *MEMORY[0x277D85DE8];
  v48 = a3;
  v49 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:v48 horizontalAccuracy:0x7FFFFFFFFFFFFFFFLL batchSize:0 boundingBoxLocation:1.79769313e308];
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__207;
  v64 = __Block_byref_object_dispose__207;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__207;
  v58 = __Block_byref_object_dispose__207;
  v59 = [MEMORY[0x277CBEA60] array];
  v10 = dispatch_semaphore_create(0);
  v11 = [(RTTripSegmentProvider *)self locationManager];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __118__RTTripSegmentProvider_getCountDistanceStartAndEndDateOfLocationsInInterval_startDate_endDate_numLocations_distance___block_invoke;
  v50[3] = &unk_2788C4490;
  v52 = &v60;
  v53 = &v54;
  v12 = v10;
  v51 = v12;
  [v11 fetchStoredLocationsWithOptions:v49 handler:v50];

  v13 = v12;
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v13, v15))
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    [v16 timeIntervalSinceDate:v14];
    v18 = v17;
    v19 = objc_opt_new();
    v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_701];
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
    v71[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v71 count:1];
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

  v47 = v27;
  if (!v61[5])
  {
    v29 = [v55[5] sortedArrayUsingComparator:&__block_literal_global_374];
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0.0;
    while (v32 < [v29 count])
    {
      v34 = [v29 objectAtIndexedSubscript:v32];
      v35 = +[RTTripSegmentProvider isLocationTypeSupported:](RTTripSegmentProvider, "isLocationTypeSupported:", [v34 type]);

      if (v35)
      {
        if (!*a4)
        {
          v36 = [v29 objectAtIndexedSubscript:v32];
          *a4 = [v36 timestamp];
        }

        if (v30)
        {
          v37 = [v29 objectAtIndexedSubscript:v32];
          [v37 distanceFromLocation:v30];
          v39 = v38;

          v33 = v33 + v39;
        }

        v40 = [v29 objectAtIndexedSubscript:v32];
        *a5 = [v40 timestamp];

        v41 = [v29 objectAtIndexedSubscript:v32];

        v31 = (v31 + 1);
        v30 = v41;
      }

      ++v32;
    }

    *a6 = [MEMORY[0x277CCABB0] numberWithInt:v31];
    *v45 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v42 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v43 = *a4;
        v44 = *a5;
        *buf = 138412802;
        *&buf[4] = v43;
        v67 = 2112;
        v68 = v44;
        v69 = 2112;
        v70 = v48;
        _os_log_debug_impl(&dword_2304B3000, v42, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:getCountDistanceStartAndEndDateOfLocationsInInterval,startDate,%@,endDate,%@,chunkInterval,%@", buf, 0x20u);
      }
    }
  }

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);
}

void __118__RTTripSegmentProvider_getCountDistanceStartAndEndDateOfLocationsInInterval_startDate_endDate_numLocations_distance___block_invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t __118__RTTripSegmentProvider_getCountDistanceStartAndEndDateOfLocationsInInterval_startDate_endDate_numLocations_distance___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 timestamp];
  v6 = [v4 timestamp];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)processChunkWithIndex:(unint64_t)a3 inChunks:(id)a4
{
  v359[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  if ([v7 count] > a3)
  {
    v245 = a2;
    v329 = 0;
    v330 = &v329;
    v331 = 0x3032000000;
    v332 = __Block_byref_object_copy__207;
    v333 = __Block_byref_object_dispose__207;
    v258 = v7;
    v259 = a3;
    v334 = [v7 objectAtIndexedSubscript:a3];
    v253 = [v7 count] - 1;
    if (v253 == a3)
    {
      v254 = 1;
    }

    else
    {
      v9 = [v330[5] tripId];
      v10 = [v7 objectAtIndexedSubscript:a3 + 1];
      v11 = [v10 tripId];
      v254 = v9 != v11;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v190 = [v330[5] transitionIndex];
        v191 = [v258 count];
        v192 = [v330[5] mode];
        v193 = [v330[5] tripId];
        v194 = [v330[5] dateInterval];
        *buf = 134219778;
        *&buf[4] = v190;
        *&buf[12] = 2048;
        *&buf[14] = v259;
        *&buf[22] = 2048;
        *&buf[24] = v191;
        *&buf[32] = 2048;
        *&buf[34] = v192;
        *&buf[42] = 1024;
        *&buf[44] = v254;
        *&buf[48] = 1024;
        *&buf[50] = v253 == v259;
        *&buf[54] = 2112;
        *&buf[56] = v193;
        *&buf[64] = 2112;
        *&buf[66] = v194;
        _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider: processChunk,inTransition,%tu,chunkIndex,%tu,chunkCount,%tu,mode,%zd,isFinalSegmentPart,%d,isLastChunk,%d,tripId,%@,timeInterval,%@", buf, 0x4Au);
      }
    }

    v13 = objc_alloc(MEMORY[0x277D01320]);
    v14 = [v330[5] dateInterval];
    v255 = [v13 initWithDateInterval:v14 horizontalAccuracy:0x7FFFFFFFFFFFFFFFLL batchSize:0 boundingBoxLocation:1.79769313e308];

    v323 = 0;
    v324 = &v323;
    v325 = 0x3032000000;
    v326 = __Block_byref_object_copy__207;
    v327 = __Block_byref_object_dispose__207;
    v328 = 0;
    v317 = 0;
    v318 = &v317;
    v319 = 0x3032000000;
    v320 = __Block_byref_object_copy__207;
    v321 = __Block_byref_object_dispose__207;
    v322 = [MEMORY[0x277CBEA60] array];
    v15 = dispatch_semaphore_create(0);
    v16 = [(RTTripSegmentProvider *)self locationManager];
    v313[0] = MEMORY[0x277D85DD0];
    v313[1] = 3221225472;
    v313[2] = __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke;
    v313[3] = &unk_2788C4490;
    v315 = &v323;
    v316 = &v317;
    v17 = v15;
    v314 = v17;
    [v16 fetchStoredLocationsWithOptions:v255 handler:v313];

    dsema = v17;
    v18 = [MEMORY[0x277CBEAA8] now];
    v19 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v19))
    {
      v20 = [MEMORY[0x277CBEAA8] now];
      [v20 timeIntervalSinceDate:v18];
      v22 = v21;
      v23 = objc_opt_new();
      v24 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_701];
      v25 = [MEMORY[0x277CCACC8] callStackSymbols];
      v26 = [v25 filteredArrayUsingPredicate:v24];
      v27 = [v26 firstObject];

      [v23 submitToCoreAnalytics:v27 type:1 duration:v22];
      v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v28, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v29 = MEMORY[0x277CCA9B8];
      *v353 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v353 count:1];
      v31 = [v29 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v30];

      if (v31)
      {
        v32 = v31;
      }
    }

    else
    {
      v31 = 0;
    }

    v33 = v31;
    if (v33 || v324[5])
    {
      v34 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v182 = v324[5];
        *buf = 138412546;
        *&buf[4] = v182;
        *&buf[12] = 2112;
        *&buf[14] = v33;
        _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "RTTripSegmentProvider: Failed in clLocations fetching,fetchError,%@,semaError,%@", buf, 0x16u);
      }

      v252 = v33;

      goto LABEL_21;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__207;
    *&buf[32] = __Block_byref_object_dispose__207;
    *&buf[40] = 0;
    v43 = dispatch_semaphore_create(0);
    if (v318[5] && [(RTTripSegmentProvider *)self applyElevationAdjustmentToBreadcrumbs])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v44 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          v233 = [v318[5] count];
          *v353 = 134217984;
          *&v353[4] = v233;
          _os_log_debug_impl(&dword_2304B3000, v44, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider: adjusting the elevation for %lu CLLocation breadcrumb samples", v353, 0xCu);
        }
      }

      elevationAdjuster = self->_elevationAdjuster;
      v46 = v318[5];
      v309[0] = MEMORY[0x277D85DD0];
      v309[1] = 3221225472;
      v309[2] = __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_375;
      v309[3] = &unk_2788C4490;
      v311 = buf;
      v312 = &v317;
      v47 = v43;
      v310 = v47;
      [(RTElevationAdjuster *)elevationAdjuster adjustElevationForLocations:v46 handler:v309];
      v48 = v47;
      v49 = [MEMORY[0x277CBEAA8] now];
      v50 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v48, v50))
      {
        v257 = [MEMORY[0x277CBEAA8] now];
        [v257 timeIntervalSinceDate:v49];
        v52 = v51;
        v53 = objc_opt_new();
        v54 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_701];
        v55 = [MEMORY[0x277CCACC8] callStackSymbols];
        v56 = [v55 filteredArrayUsingPredicate:v54];
        v57 = [v56 firstObject];

        [v53 submitToCoreAnalytics:v57 type:1 duration:v52];
        v58 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
        {
          *v353 = 0;
          _os_log_fault_impl(&dword_2304B3000, v58, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v353, 2u);
        }

        v59 = MEMORY[0x277CCA9B8];
        v347 = *MEMORY[0x277CCA450];
        *v353 = @"semaphore wait timeout";
        v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v353 forKeys:&v347 count:1];
        v61 = [v59 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v60];

        if (v61)
        {
          v62 = v61;
        }
      }

      else
      {
        v61 = 0;
      }

      v205 = v61;
      if (v205 || *(*&buf[8] + 40))
      {
        v206 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
        {
          v232 = *(*&buf[8] + 40);
          *v353 = 138412546;
          *&v353[4] = v232;
          *&v353[12] = 2112;
          *&v353[14] = v205;
          _os_log_error_impl(&dword_2304B3000, v206, OS_LOG_TYPE_ERROR, "RTTripSegmentProvider: Failed in to adjust elevations for locations,adjustError,%@,semaError,%@", v353, 0x16u);
        }

        v252 = v205;

        v207 = 0;
        v208 = v310;
        goto LABEL_133;
      }
    }

    v224 = v318[5];
    v308[0] = MEMORY[0x277D85DD0];
    v308[1] = 3221225472;
    v308[2] = __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_376;
    v308[3] = &unk_2788D38B0;
    v308[4] = &v329;
    v308[5] = &v317;
    [v224 enumerateObjectsUsingBlock:v308];
    if (![v318[5] count])
    {
      v252 = 0;
      v207 = 1;
LABEL_135:

      _Block_object_dispose(buf, 8);
      if ((v207 & 1) == 0)
      {
        v8 = 0;
LABEL_106:

        _Block_object_dispose(&v317, 8);
        _Block_object_dispose(&v323, 8);

        _Block_object_dispose(&v329, 8);
        v7 = v258;
        goto LABEL_107;
      }

LABEL_21:
      v35 = [(RTTripSegmentProvider *)self defaultsManager];
      v256 = [v35 objectForKey:@"RTDefaultsTripSegmentUseTransitionStartEndLoILoc"];

      if (v256)
      {
        v36 = [v256 intValue];
        v37 = v36;
        if (!v259 && v36 >= 1)
        {
          transitionStartLocation = self->_transitionStartLocation;
          if (transitionStartLocation)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v39 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                v230 = [(CLLocation *)self->_transitionStartLocation toString];
                *buf = 138739971;
                *&buf[4] = v230;
                _os_log_debug_impl(&dword_2304B3000, v39, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider: adding LOI start location, %{sensitive}@", buf, 0xCu);
              }

              transitionStartLocation = self->_transitionStartLocation;
            }

            v358 = transitionStartLocation;
            v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v358 count:1];
            v41 = [v330[5] dateInterval];
            [(RTTripSegmentProvider *)self addToTransitionLocationsBuffer:v40 forDateInterval:v41];

            v42 = self->_transitionStartLocation;
          }

          else
          {
            v42 = 0;
          }

          self->_transitionStartLocation = 0;
        }

        if (v253 == v259 && v37 >= 2)
        {
          transitionStopLocation = self->_transitionStopLocation;
          if (transitionStopLocation)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v64 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
              {
                v231 = [(CLLocation *)self->_transitionStopLocation toString];
                *buf = 138739971;
                *&buf[4] = v231;
                _os_log_debug_impl(&dword_2304B3000, v64, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider: adding LOI stop location, %{sensitive}@", buf, 0xCu);
              }

              transitionStopLocation = self->_transitionStopLocation;
            }

            v357 = transitionStopLocation;
            v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v357 count:1];
            v66 = [v330[5] dateInterval];
            [(RTTripSegmentProvider *)self addToTransitionLocationsBuffer:v65 forDateInterval:v66];

            v67 = self->_transitionStopLocation;
          }

          else
          {
            v67 = 0;
          }

          self->_transitionStopLocation = 0;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v68 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          v195 = [v330[5] transitionIndex];
          v196 = [v330[5] tripId];
          v197 = [v196 UUIDString];
          v198 = [v330[5] mode];
          v199 = [(NSMutableArray *)self->_transitionLocations count];
          if (v199)
          {
            v200 = [(NSMutableArray *)self->_transitionLocations objectAtIndexedSubscript:0];
          }

          else
          {
            v200 = &unk_2845A0950;
          }

          v223 = [(NSMutableArray *)self->_transitionLocations count];
          *buf = 134219267;
          *&buf[4] = v195;
          *&buf[12] = 2048;
          *&buf[14] = v259;
          *&buf[22] = 2112;
          *&buf[24] = v197;
          *&buf[32] = 2048;
          *&buf[34] = v198;
          *&buf[42] = 2117;
          *&buf[44] = v200;
          *&buf[52] = 2048;
          *&buf[54] = v223;
          _os_log_debug_impl(&dword_2304B3000, v68, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider: bufferedCLLocations,transitionIndex,%tu,chunkIndex,%zu,segmentUUID,%@,mode,%zd,firstBuffedLoc,%{sensitive}@,bufferedLocCount,%tu", buf, 0x3Eu);
          if (v199)
          {
          }
        }
      }

      v304 = 0;
      v305 = &v304;
      v306 = 0x2020000000;
      v307 = 0;
      *v353 = 0;
      *&v353[8] = v353;
      *&v353[16] = 0x3032000000;
      v354 = __Block_byref_object_copy__207;
      v355 = __Block_byref_object_dispose__207;
      v356 = 0;
      v300 = 0;
      v301 = &v300;
      v302 = 0x2020000000;
      v303 = [v330[5] tripSequenceNumber];
      if ([(NSMutableArray *)self->_transitionLocations count]< 2)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v92 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            v209 = [v330[5] tripId];
            v210 = [v209 UUIDString];
            v211 = [(NSMutableArray *)self->_transitionLocations count];
            *buf = 138412802;
            *&buf[4] = v210;
            *&buf[12] = 1024;
            *&buf[14] = v211;
            *&buf[18] = 1024;
            *&buf[20] = 2;
            _os_log_debug_impl(&dword_2304B3000, v92, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:not enough locations available for this tripID,%@,available,%d,required,%d", buf, 0x18u);
          }
        }

        v93 = objc_alloc(MEMORY[0x277CCA9B8]);
        v336 = *MEMORY[0x277CCA450];
        v337 = @"No locations exist in current chunk";
        v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v337 forKeys:&v336 count:1];
        v95 = [v93 initWithDomain:@"com.apple.routined.tsp" code:-1 userInfo:v94];
        v96 = *(*&v353[8] + 40);
        *(*&v353[8] + 40) = v95;

        v97 = objc_alloc(MEMORY[0x277CBFC98]);
        v98 = [v330[5] dateInterval];
        v99 = [v98 startDate];
        [(CLLocation *)self->_startVisitLocation coordinate];
        v249 = v100;
        [(CLLocation *)self->_startVisitLocation coordinate];
        v102 = v101;
        [(CLLocation *)self->_startVisitLocation horizontalAccuracy];
        v104 = v103;
        [(CLLocation *)self->_startVisitLocation course];
        v106 = v105;
        [(CLLocation *)self->_startVisitLocation courseAccuracy];
        v108 = v107;
        [(CLLocation *)self->_startVisitLocation speed];
        v110 = v109;
        [(CLLocation *)self->_startVisitLocation speedAccuracy];
        v112 = v111;
        [(CLLocation *)self->_startVisitLocation altitude];
        v114 = v113;
        [(CLLocation *)self->_startVisitLocation verticalAccuracy];
        v116 = [v97 initWithTime:v99 latitude:-[CLLocation type](self->_startVisitLocation longitude:"type") horizontalAccuracy:v249 course:v102 courseAccuracy:v104 speed:v106 speedAccuracy:v108 altitude:v110 altitudeAccuracy:v112 locType:{v114, v115}];

        v117 = objc_alloc(MEMORY[0x277CBFC98]);
        v118 = [v330[5] dateInterval];
        v119 = [v118 endDate];
        [(CLLocation *)self->_stopVisitLocation coordinate];
        v250 = v120;
        [(CLLocation *)self->_stopVisitLocation coordinate];
        v122 = v121;
        [(CLLocation *)self->_stopVisitLocation horizontalAccuracy];
        v124 = v123;
        [(CLLocation *)self->_stopVisitLocation course];
        v126 = v125;
        [(CLLocation *)self->_stopVisitLocation courseAccuracy];
        v128 = v127;
        [(CLLocation *)self->_stopVisitLocation speed];
        v130 = v129;
        [(CLLocation *)self->_stopVisitLocation speedAccuracy];
        v132 = v131;
        [(CLLocation *)self->_stopVisitLocation altitude];
        v134 = v133;
        [(CLLocation *)self->_stopVisitLocation verticalAccuracy];
        v136 = [v117 initWithTime:v119 latitude:-[CLLocation type](self->_stopVisitLocation longitude:"type") horizontalAccuracy:v250 course:v122 courseAccuracy:v124 speed:v126 speedAccuracy:v128 altitude:v130 altitudeAccuracy:v132 locType:{v134, v135}];

        v137 = objc_alloc(MEMORY[0x277CBFC90]);
        tripCommuteID = self->_tripCommuteID;
        v139 = [v330[5] tripId];
        v140 = +[RTTripSegmentProvider CLTripModeFromRTModeOfTransportation:](RTTripSegmentProvider, "CLTripModeFromRTModeOfTransportation:", [v330[5] mode]);
        v335[0] = v116;
        v335[1] = v136;
        v141 = [MEMORY[0x277CBEA60] arrayWithObjects:v335 count:2];
        v142 = [MEMORY[0x277CBEA60] array];
        v143 = [v137 initWithCommuteID:tripCommuteID tripSegmentID:v139 isFinalPart:v254 modeOfTransport:v140 tripLocations:v141 startTripLocation:v116 stopTripLocation:v136 inertialOdometryData:v142];

        LODWORD(v240) = *(v301 + 6);
        HIDWORD(v240) = self->_maxTripSequenceNumberBetweenOneTransition;
        [(RTTripSegmentProvider *)self saveFailedProcessingToTripSegmentMetaDataWithComuteID:self->_tripCommuteID inputData:v143 allChunks:v258 currentChunk:v330[5] tripVisitStartLocation:self->_startVisitLocation tripVisitEndLocation:self->_stopVisitLocation tripSegSequenceNumber:v240 tripSegSequenceNumberMax:*(*&v353[8] + 40) processingFailureError:?];
        *(v305 + 24) = 1;
        ++self->_numTripSegmentProcessingFailedInThisProcessingCycle;
      }

      else
      {
        transitionLocations = self->_transitionLocations;
        v299[0] = MEMORY[0x277D85DD0];
        v299[1] = 3221225472;
        v299[2] = __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_382;
        v299[3] = &unk_2788D38D8;
        v299[4] = &v329;
        [(NSMutableArray *)transitionLocations enumerateObjectsUsingBlock:v299];
        v70 = [(NSMutableArray *)self->_transitionLocations firstObject];
        v248 = [v70 timestamp];

        v71 = [(NSMutableArray *)self->_transitionLocations lastObject];
        v246 = [v71 timestamp];

        if ([v248 isBeforeDate:v246])
        {
          v244 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v248 endDate:v246];
          v242 = [MEMORY[0x277CBEA60] array];
          v347 = 0;
          v348 = &v347;
          v349 = 0x3032000000;
          v350 = __Block_byref_object_copy__207;
          v351 = __Block_byref_object_dispose__207;
          v352 = 0;
          v293 = 0;
          v294 = &v293;
          v295 = 0x3032000000;
          v296 = __Block_byref_object_copy__207;
          v297 = __Block_byref_object_dispose__207;
          v298 = [MEMORY[0x277CBEA60] array];
          v72 = dispatch_semaphore_create(0);
          v73 = [objc_alloc(MEMORY[0x277D010A0]) initWithDateInterval:v244];
          inertialOdometryManager = self->_inertialOdometryManager;
          v289[0] = MEMORY[0x277D85DD0];
          v289[1] = 3221225472;
          v289[2] = __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_384;
          v289[3] = &unk_2788C4490;
          v291 = &v347;
          v292 = &v293;
          v75 = v72;
          v290 = v75;
          [(RTBackgroundInertialOdometryManager *)inertialOdometryManager fetchBackgroundInertialOdometrySamplesWithOptions:v73 handler:v289];
          v241 = v73;
          v76 = v75;
          v77 = [MEMORY[0x277CBEAA8] now];
          v78 = dispatch_time(0, 3600000000000);
          if (dispatch_semaphore_wait(v76, v78))
          {
            v79 = [MEMORY[0x277CBEAA8] now];
            [v79 timeIntervalSinceDate:v77];
            v81 = v80;
            v82 = objc_opt_new();
            v83 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_701];
            v84 = [MEMORY[0x277CCACC8] callStackSymbols];
            v85 = [v84 filteredArrayUsingPredicate:v83];
            v86 = [v85 firstObject];

            [v82 submitToCoreAnalytics:v86 type:1 duration:v81];
            v87 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_2304B3000, v87, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
            }

            v88 = MEMORY[0x277CCA9B8];
            v345[0] = *MEMORY[0x277CCA450];
            *buf = @"semaphore wait timeout";
            v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v345 count:1];
            v90 = [v88 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v89];

            if (v90)
            {
              v91 = v90;
            }
          }

          else
          {
            v90 = 0;
          }

          v145 = v90;
          if (v145 || v348[5])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v146 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v146, OS_LOG_TYPE_DEBUG))
              {
                v226 = [v330[5] transitionIndex];
                v227 = [v330[5] tripId];
                v228 = [v227 UUIDString];
                v229 = v348[5];
                *buf = 134218755;
                *&buf[4] = v226;
                *&buf[12] = 2112;
                *&buf[14] = v228;
                *&buf[22] = 2117;
                *&buf[24] = v229;
                *&buf[32] = 2117;
                *&buf[34] = v145;
                _os_log_debug_impl(&dword_2304B3000, v146, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider: Failed in trip segment inertial data fetching,transitionIndex,%tu,segmentUUID,%@,fetchError,%{sensitive}@,semaError,%{sensitive}@", buf, 0x2Au);
              }
            }
          }

          else if ([v294[5] count])
          {
            v183 = v294[5];
            v288[0] = MEMORY[0x277D85DD0];
            v288[1] = 3221225472;
            v288[2] = __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_385;
            v288[3] = &unk_2788D3900;
            v288[4] = self;
            v184 = [MEMORY[0x277CCAC30] predicateWithBlock:v288];
            v185 = [v183 filteredArrayUsingPredicate:v184];

            v287[0] = MEMORY[0x277D85DD0];
            v287[1] = 3221225472;
            v287[2] = __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_2;
            v287[3] = &unk_2788D3900;
            v287[4] = self;
            v186 = [MEMORY[0x277CCAC30] predicateWithBlock:v287];
            v242 = [v185 filteredArrayUsingPredicate:v186];

            v187 = [v242 count];
            if (v187 != [v294[5] count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v188 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_debug_impl(&dword_2304B3000, v188, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:inertial data fetched are out of location-based dateInterval", buf, 2u);
              }
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v189 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG))
              {
                v234 = [v330[5] transitionIndex];
                v235 = [v330[5] tripId];
                v236 = [v235 UUIDString];
                v237 = [v330[5] mode];
                v238 = [v294[5] count];
                v239 = [v242 count];
                *buf = 134219010;
                *&buf[4] = v234;
                *&buf[12] = 2112;
                *&buf[14] = v236;
                *&buf[22] = 2048;
                *&buf[24] = v237;
                *&buf[32] = 2048;
                *&buf[34] = v238;
                *&buf[42] = 2048;
                *&buf[44] = v239;
                _os_log_debug_impl(&dword_2304B3000, v189, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:Succeeded in trip segment background IO data fetching,transitionIndex,%tu,segmentUUID,%@,mode,%zd,count,%tu,inputInertialCount,%tu", buf, 0x34u);
              }
            }
          }

          v147 = objc_alloc(MEMORY[0x277CBFC90]);
          v148 = self->_tripCommuteID;
          v149 = [v330[5] tripId];
          v150 = +[RTTripSegmentProvider CLTripModeFromRTModeOfTransportation:](RTTripSegmentProvider, "CLTripModeFromRTModeOfTransportation:", [v330[5] mode]);
          v151 = [RTTripSegmentProvider convertToTripSegmentLocations:self->_transitionLocations];
          v152 = [objc_alloc(MEMORY[0x277CBFC98]) initWithCLLocation:self->_startVisitLocation];
          v153 = [objc_alloc(MEMORY[0x277CBFC98]) initWithCLLocation:self->_stopVisitLocation];
          v144 = [v147 initWithCommuteID:v148 tripSegmentID:v149 isFinalPart:v254 modeOfTransport:v150 tripLocations:v151 startTripLocation:v152 stopTripLocation:v153 inertialOdometryData:v242];

          _Block_object_dispose(&v293, 8);
          _Block_object_dispose(&v347, 8);
        }

        else
        {
          v244 = 0;
          v144 = 0;
        }

        v347 = 0;
        v348 = &v347;
        v349 = 0x3032000000;
        v350 = __Block_byref_object_copy__207;
        v351 = __Block_byref_object_dispose__207;
        v352 = self->_startVisitLocation;
        v293 = 0;
        v294 = &v293;
        v295 = 0x3032000000;
        v296 = __Block_byref_object_copy__207;
        v297 = __Block_byref_object_dispose__207;
        v298 = self->_stopVisitLocation;
        v285[0] = 0;
        v285[1] = v285;
        v285[2] = 0x2020000000;
        maxTripSequenceNumberBetweenOneTransition = self->_maxTripSequenceNumberBetweenOneTransition;
        v345[0] = 0;
        v345[1] = v345;
        v345[2] = 0x3032000000;
        v345[3] = __Block_byref_object_copy__207;
        v345[4] = __Block_byref_object_dispose__207;
        v346 = self->_tripCommuteID;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_388;
        aBlock[3] = &unk_2788D3950;
        v243 = v248;
        v276 = v243;
        v247 = v246;
        v277 = v247;
        v278 = self;
        v279 = &v347;
        v280 = &v293;
        v281 = &v300;
        v282 = v285;
        v283 = v345;
        v284 = v245;
        v251 = _Block_copy(aBlock);
        if ([v144 isFinalPart])
        {
          ++self->_numTripSegmentsProcessedInThisProcessingCycle;
        }

        ++self->_numTripSegmentChunksProcessedInThisProcessingCycle;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v154 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
          {
            v212 = [v144 tripSegmentID];
            v213 = [v144 isFinalPart];
            v214 = [v144 modeOfTransport];
            v215 = [v144 tripLocations];
            v216 = [v215 count];
            [v247 timeIntervalSinceDate:v243];
            v218 = v217;
            v219 = [(NSMutableArray *)self->_transitionLocations firstObject];
            v220 = [(NSMutableArray *)self->_transitionLocations lastObject];
            numTripSegmentsProcessedInThisProcessingCycle = self->_numTripSegmentsProcessedInThisProcessingCycle;
            numTripSegmentChunksProcessedInThisProcessingCycle = self->_numTripSegmentChunksProcessedInThisProcessingCycle;
            *buf = 138414851;
            *&buf[4] = v212;
            *&buf[12] = 1024;
            *&buf[14] = v213;
            *&buf[18] = 2048;
            *&buf[20] = v214;
            *&buf[28] = 2048;
            *&buf[30] = v216;
            *&buf[38] = 2112;
            *&buf[40] = v243;
            *&buf[48] = 2112;
            *&buf[50] = v247;
            *&buf[58] = 2048;
            *&buf[60] = v218;
            *&buf[68] = 2117;
            *&buf[70] = v219;
            v339 = 2117;
            v340 = v220;
            v341 = 1024;
            v342 = numTripSegmentChunksProcessedInThisProcessingCycle;
            v343 = 1024;
            v344 = numTripSegmentsProcessedInThisProcessingCycle;
            _os_log_debug_impl(&dword_2304B3000, v154, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:tripInputData,ID,%@,isFinalPart,%d,mode,%zd,locationCount,%tu,startDate,%@,endDate,%@,Interval,%.3lf,firstBreadcrumb,%{sensitive}@,lastBreadcrumb,%{sensitive}@,numChunks,%d,numTripSegments,%d", buf, 0x64u);
          }
        }

        v155 = dispatch_semaphore_create(0);
        v156 = [v144 tripSegmentID];
        [(RTTripSegmentProvider *)self setIdOfCurrentlyProcessingChunk:v156];

        v157 = [(RTTripSegmentProvider *)self tripProcessorManager];
        tripProcessorOptions = self->_tripProcessorOptions;
        v261[0] = MEMORY[0x277D85DD0];
        v261[1] = 3221225472;
        v261[2] = __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_391;
        v261[3] = &unk_2788D3978;
        v261[4] = self;
        v265 = v345;
        v159 = v144;
        v262 = v159;
        v263 = v258;
        v266 = &v329;
        v267 = &v347;
        v268 = &v293;
        v269 = &v300;
        v270 = v285;
        v273 = v259;
        v274 = v253;
        v271 = &v304;
        v272 = v353;
        v160 = v155;
        v264 = v160;
        [v157 processTripSegmentData:v159 withOptions:tripProcessorOptions outputHandler:v251 completionHandler:v261];

        v161 = v160;
        v162 = [MEMORY[0x277CBEAA8] now];
        v163 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v161, v163))
        {
          v164 = [MEMORY[0x277CBEAA8] now];
          [v164 timeIntervalSinceDate:v162];
          v166 = v165;
          v167 = objc_opt_new();
          v168 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_701];
          v169 = [MEMORY[0x277CCACC8] callStackSymbols];
          v170 = [v169 filteredArrayUsingPredicate:v168];
          v171 = [v170 firstObject];

          [v167 submitToCoreAnalytics:v171 type:1 duration:v166];
          v172 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v172, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v172, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v173 = MEMORY[0x277CCA9B8];
          v359[0] = *MEMORY[0x277CCA450];
          *buf = @"semaphore wait timeout";
          v174 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v359 count:1];
          v175 = [v173 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v174];

          if (v175)
          {
            v176 = v175;
          }
        }

        else
        {
          v175 = 0;
        }

        v177 = v175;
        if (v177 || *(*&v353[8] + 40))
        {
          v178 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
          {
            v204 = *(*&v353[8] + 40);
            *buf = 138412546;
            *&buf[4] = v204;
            *&buf[12] = 2112;
            *&buf[14] = v177;
            _os_log_error_impl(&dword_2304B3000, v178, OS_LOG_TYPE_ERROR, "RTTripSegmentProvider: Failed in processTripSegmentData,procError,%@,procSemaError,%@", buf, 0x16u);
          }
        }

        _Block_object_dispose(v345, 8);
        _Block_object_dispose(v285, 8);
        _Block_object_dispose(&v293, 8);

        _Block_object_dispose(&v347, 8);
      }

      if (v254)
      {
        v179 = 1;
      }

      else
      {
        if (*(v305 + 24) != 1)
        {
          [(NSMutableArray *)self->_transitionLocations removeObjectsInRange:0, [(NSMutableArray *)self->_transitionLocations count]- 1];
          v179 = 0;
          goto LABEL_101;
        }

        v179 = 0;
      }

      [(NSMutableArray *)self->_transitionLocations removeAllObjects];
LABEL_101:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v180 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
        {
          v201 = [v330[5] transitionIndex];
          v202 = *(v305 + 24);
          v203 = *(*&v353[8] + 40) == 0;
          *buf = 134219264;
          *&buf[4] = v201;
          *&buf[12] = 2048;
          *&buf[14] = v259;
          *&buf[22] = 2048;
          *&buf[24] = v253;
          *&buf[32] = 1024;
          *&buf[34] = v179;
          *&buf[38] = 1024;
          *&buf[40] = v202;
          *&buf[44] = 1024;
          *&buf[46] = v203;
          _os_log_debug_impl(&dword_2304B3000, v180, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider: processTripSegmentData,completedOneChunk,transitionIndex,%tu,currentChunkIndex,%tu,lastChunkIndex,%tu,isFinalPart,%d,procFailedTripSegmentSaved,%d,processingError,%d", buf, 0x32u);
        }
      }

      v8 = *(*&v353[8] + 40) == 0;
      _Block_object_dispose(&v300, 8);
      _Block_object_dispose(v353, 8);

      _Block_object_dispose(&v304, 8);
      goto LABEL_106;
    }

    v225 = v318[5];
    v208 = [v330[5] dateInterval];
    [(RTTripSegmentProvider *)self addToTransitionLocationsBuffer:v225 forDateInterval:v208];
    v252 = 0;
    v207 = 1;
LABEL_133:

    goto LABEL_135;
  }

  v8 = 0;
LABEL_107:

  return v8;
}

void __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_375(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(*(*(a1 + 48) + 8) + 40) count];
      v10 = 134217984;
      v11 = v9;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider: _elevationAdjuster returned with %lu CLLocation breadcrumb samples", &v10, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_376(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(*(*(a1 + 32) + 8) + 40) transitionIndex];
      v6 = [*(*(*(a1 + 32) + 8) + 40) tripId];
      v7 = [v6 UUIDString];
      v8 = [*(*(*(a1 + 32) + 8) + 40) mode];
      v9 = [*(*(*(a1 + 40) + 8) + 40) count];
      v10 = [v3 toString];
      v11 = 134219011;
      v12 = v5;
      v13 = 2112;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2117;
      v20 = v10;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider: fetchedCLLocations,transitionIndex,%tu,segmentUUID,%@,mode,%zd,locCount,%tu,location,%{sensitive}@", &v11, 0x34u);
    }
  }
}

void __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_382(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(*(*(a1 + 32) + 8) + 40) transitionIndex];
      v6 = [*(*(*(a1 + 32) + 8) + 40) tripId];
      v7 = [v6 UUIDString];
      v8 = [*(*(*(a1 + 32) + 8) + 40) mode];
      v9 = [v3 toString];
      v10 = 134218755;
      v11 = v5;
      v12 = 2112;
      v13 = v7;
      v14 = 2048;
      v15 = v8;
      v16 = 2117;
      v17 = v9;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:breadcrumbLocations,transitionIndex,%tu,tripSegmentUUID,%@,mode,%zd,location,%{sensitive}@", &v10, 0x2Au);
    }
  }
}

void __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_384(uint64_t a1, void *a2, void *a3)
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

uint64_t __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_385(uint64_t a1, void *a2)
{
  v3 = [a2 cfAbsTimestamp];
  v4 = [*(*(a1 + 32) + 184) firstObject];
  v5 = [v4 timestamp];
  v6 = [v3 isAfterDate:v5];

  return v6;
}

uint64_t __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 cfAbsTimestamp];
  v4 = [*(*(a1 + 32) + 184) lastObject];
  v5 = [v4 timestamp];
  v6 = [v3 isBeforeDate:v5];

  return v6;
}

void __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_388(void *a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    goto LABEL_14;
  }

  v48 = v3;
  v4 = [v3 tripLocations];
  v5 = [v4 firstObject];
  v6 = [v5 timestamp];
  if ([v6 isBeforeDate:a1[4]])
  {

LABEL_5:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v37 = [v48 tripLocations];
      v38 = [v37 firstObject];
      v39 = [v38 timestamp];
      v40 = a1[4];
      v41 = [v48 tripLocations];
      v42 = [v41 lastObject];
      v43 = [v42 timestamp];
      v44 = a1[5];
      *buf = 138740739;
      *&buf[4] = v39;
      *&buf[12] = 2112;
      *&buf[14] = v40;
      *&buf[22] = 2117;
      v57 = v43;
      LOWORD(v58) = 2112;
      *(&v58 + 2) = v44;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "RTTripSegmentProvider:reconstructed location beyond desired time interval,%{sensitive}@,%@,%{sensitive}@,%@", buf, 0x2Au);
    }

    goto LABEL_8;
  }

  v7 = [v48 tripLocations];
  v8 = [v7 lastObject];
  v9 = [v8 timestamp];
  v10 = [v9 isAfterDate:a1[5]];

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_8:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v57 = __Block_byref_object_copy__207;
  *&v58 = __Block_byref_object_dispose__207;
  *(&v58 + 1) = 0;
  v12 = dispatch_semaphore_create(0);
  obja = *(a1[6] + 64);
  v45 = [v48 isFinalPart];
  v13 = *(*(a1[7] + 8) + 40);
  v14 = *(*(a1[8] + 8) + 40);
  v15 = *(*(a1[9] + 8) + 24);
  v16 = *(*(a1[10] + 8) + 24);
  v17 = *(*(a1[11] + 8) + 40);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_389;
  v49[3] = &unk_2788D3928;
  v55 = a1[12];
  v50 = v48;
  v18 = *(a1 + 9);
  v52 = *(a1 + 7);
  v53 = v18;
  v54 = buf;
  v19 = v12;
  v51 = v19;
  [obja addTripSegmentData:v50 isEndOfSegment:v45 originLocation:v13 destinationLocation:v14 tripSegSequenceNumber:v15 tripSegSequenceNumberMax:v16 tripCommuteID:v17 handler:v49];
  v20 = (*&buf[8] + 40);
  obj = *(*&buf[8] + 40);
  v21 = v19;
  v22 = [MEMORY[0x277CBEAA8] now];
  v23 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v21, v23))
  {
    v24 = [MEMORY[0x277CBEAA8] now];
    [v24 timeIntervalSinceDate:v22];
    v26 = v25;
    v27 = objc_opt_new();
    v28 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_701];
    v29 = [MEMORY[0x277CCACC8] callStackSymbols];
    v30 = [v29 filteredArrayUsingPredicate:v28];
    v31 = [v30 firstObject];

    [v27 submitToCoreAnalytics:v31 type:1 duration:v26];
    v32 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      *v60 = 0;
      _os_log_fault_impl(&dword_2304B3000, v32, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v60, 2u);
    }

    v33 = MEMORY[0x277CCA9B8];
    v59 = *MEMORY[0x277CCA450];
    *v60 = @"semaphore wait timeout";
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    v35 = [v33 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v34];

    if (v35)
    {
      v36 = v35;

      obj = v35;
    }
  }

  objc_storeStrong(v20, obj);
  _Block_object_dispose(buf, 8);

  v3 = v48;
LABEL_14:
}

void __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_389(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 88));
      v6 = *(a1 + 32);
      v7 = [v6 tripSegmentID];
      v8 = [*(a1 + 32) isFinalPart];
      v9 = *(*(*(a1 + 48) + 8) + 40);
      v10 = *(*(*(a1 + 56) + 8) + 40);
      v11 = *(*(*(a1 + 64) + 8) + 24);
      v12 = *(*(*(a1 + 72) + 8) + 24);
      v16 = 138414339;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      v22 = 1024;
      v23 = v8;
      v24 = 2117;
      v25 = v9;
      v26 = 2117;
      v27 = v10;
      v28 = 1024;
      v29 = v11;
      v30 = 1024;
      v31 = v12;
      v32 = 2112;
      v33 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:%@,addedTripSegment,%@,tripId,%@,isFinalPart,%d,tripVisitStartLoc,%{sensitive}@,tripVisitEndLoc,%{sensitive}@,tripSeq,%d,tripSeqMax,%d,error,%@", &v16, 0x50u);
    }
  }

  v13 = *(*(a1 + 80) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v3;
  v15 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __56__RTTripSegmentProvider_processChunkWithIndex_inChunks___block_invoke_391(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 code] != 2 && objc_msgSend(v4, "code") != 13)
    {
      LODWORD(v21) = *(*(*(a1 + 96) + 8) + 24);
      HIDWORD(v21) = *(*(*(a1 + 104) + 8) + 24);
      [*(a1 + 32) saveFailedProcessingToTripSegmentMetaDataWithComuteID:*(*(*(a1 + 64) + 8) + 40) inputData:*(a1 + 40) allChunks:*(a1 + 48) currentChunk:*(*(*(a1 + 72) + 8) + 40) tripVisitStartLocation:*(*(*(a1 + 80) + 8) + 40) tripVisitEndLocation:*(*(*(a1 + 88) + 8) + 40) tripSegSequenceNumber:v21 tripSegSequenceNumberMax:v4 processingFailureError:?];
      *(*(*(a1 + 112) + 8) + 24) = 1;
      ++*(*(a1 + 32) + 28);
      goto LABEL_10;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(*(*(a1 + 72) + 8) + 40) transitionIndex];
      v7 = *(a1 + 128);
      v8 = *(a1 + 136);
      v9 = [*(a1 + 40) isFinalPart];
      v10 = [*(a1 + 40) tripSegmentID];
      *buf = 134219266;
      v24 = v6;
      v25 = 2048;
      v26 = v7;
      v27 = 2048;
      v28 = v8;
      v29 = 1024;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      v33 = 2112;
      v34 = v4;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "RTTripSegmentProvider: processTripSegmentData,fail,transitionIndex,%tu,chunkIndex,%tu,lastIndex,%tu,isFinalPart,%d,tripId,%@,receivedError,%@,completionHandler", buf, 0x3Au);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v14 = [*(*(*(a1 + 72) + 8) + 40) transitionIndex];
      v15 = *(a1 + 128);
      v22 = *(a1 + 136);
      v16 = [*(a1 + 40) isFinalPart];
      v17 = [*(a1 + 40) tripLocations];
      v18 = [v17 count];
      v19 = [*(a1 + 40) modeOfTransport];
      v20 = [*(a1 + 40) tripSegmentID];
      *buf = 134219522;
      v24 = v14;
      v25 = 2048;
      v26 = v15;
      v27 = 2048;
      v28 = v22;
      v29 = 1024;
      v30 = v16;
      v31 = 2048;
      v32 = v18;
      v33 = 2048;
      v34 = v19;
      v35 = 2112;
      v36 = v20;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider: processTripSegmentData,success,transitionIndex,%tu,currentChunkIndex,%tu,lastChunkIndex,%tu,isFinalPart,%d,locationCount,%tu,mode,%zd,tripId,%@", buf, 0x44u);
    }

LABEL_9:
  }

LABEL_10:
  v11 = *(*(a1 + 120) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v4;
  v13 = v4;

  [*(a1 + 32) setIdOfCurrentlyProcessingChunk:0];
  dispatch_semaphore_signal(*(a1 + 56));
}

- (id)collectVehicleConnectionTimeIntervals:(id)a3
{
  v70[1] = *MEMORY[0x277D85DE8];
  v42 = a3;
  v4 = [objc_alloc(MEMORY[0x277D01338]) initWithDateInterval:v42 limit:0];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__207;
  v62 = __Block_byref_object_dispose__207;
  v63 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__207;
  v56 = __Block_byref_object_dispose__207;
  v57 = 0;
  v5 = dispatch_semaphore_create(0);
  vehicleStore = self->_vehicleStore;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __63__RTTripSegmentProvider_collectVehicleConnectionTimeIntervals___block_invoke;
  v48[3] = &unk_2788C4490;
  v50 = &v52;
  v51 = &v58;
  v7 = v5;
  v49 = v7;
  v41 = v4;
  [(RTVehicleStore *)vehicleStore fetchVehiclesWithOptions:v4 handler:v48];
  dsema = v7;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_701];
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
    v70[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v70 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = v21;
  v24 = [MEMORY[0x277CBEB18] array];
  if (v23 || v59[5])
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v39 = v59[5];
      *buf = 138412546;
      *&buf[4] = v39;
      v65 = 2112;
      v66 = v23;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "RTTripSegmentProvider: failed in vehicle connection fetching,fetchError,%@,semaError,%@", buf, 0x16u);
    }

LABEL_11:

    goto LABEL_12;
  }

  v27 = v53[5];
  if (v27 && [v27 count])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v25 = v53[5];
    v28 = [v25 countByEnumeratingWithState:&v44 objects:v69 count:16];
    if (v28)
    {
      v30 = 0;
      v31 = *v45;
      v32 = MEMORY[0x277D86220];
      *&v29 = 134218498;
      v40 = v29;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v45 != v31)
          {
            objc_enumerationMutation(v25);
          }

          v34 = *(*(&v44 + 1) + 8 * i);
          v35 = [v34 dateInterval];
          [v24 addObject:v35];

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v36 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              v37 = [v53[5] count];
              v38 = [v34 dateInterval];
              *buf = v40;
              *&buf[4] = v37;
              v65 = 2048;
              v66 = v30;
              v67 = 2112;
              v68 = v38;
              _os_log_debug_impl(&dword_2304B3000, v36, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider: VehicleConnectionTimeIntervals,count,%tu,index,%tu,dateInterval,%@", buf, 0x20u);

              v23 = 0;
            }
          }

          ++v30;
        }

        v28 = [v25 countByEnumeratingWithState:&v44 objects:v69 count:16];
      }

      while (v28);
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v42;
      _os_log_debug_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider: collectVehicleConnectionTimeIntervals, no vehicles found for transitionInterval,%@", buf, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_12:

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  return v24;
}

void __63__RTTripSegmentProvider_collectVehicleConnectionTimeIntervals___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)buildTripSegmentsFeaturesWithIndex:(unint64_t)a3 inTransitions:(id)a4 trainMode:(unint64_t)a5 startVisitLocationOut:(id *)a6 stopVisitLocationOut:(id *)a7 transitionStartStopLocationsOut:(id *)a8
{
  v111[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (!v9)
  {
    v10 = a6;
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v107 = 136315394;
      *&v107[4] = "[RTTripSegmentProvider buildTripSegmentsFeaturesWithIndex:inTransitions:trainMode:startVisitLocationOut:stopVisitLocationOut:transitionStartStopLocationsOut:]";
      *&v107[12] = 1024;
      *&v107[14] = 2269;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: transitions (in %s:%d)", v107, 0x12u);
    }

    a6 = v10;
  }

  v77 = a6;
  if (!a6)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v107 = 136315394;
      *&v107[4] = "[RTTripSegmentProvider buildTripSegmentsFeaturesWithIndex:inTransitions:trainMode:startVisitLocationOut:stopVisitLocationOut:transitionStartStopLocationsOut:]";
      *&v107[12] = 1024;
      *&v107[14] = 2270;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startVisitLocationOut (in %s:%d)", v107, 0x12u);
    }
  }

  if (!a7)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v107 = 136315394;
      *&v107[4] = "[RTTripSegmentProvider buildTripSegmentsFeaturesWithIndex:inTransitions:trainMode:startVisitLocationOut:stopVisitLocationOut:transitionStartStopLocationsOut:]";
      *&v107[12] = 1024;
      *&v107[14] = 2271;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: stopVisitLocationOut (in %s:%d)", v107, 0x12u);
    }
  }

  if (!a8)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v107 = 136315394;
      *&v107[4] = "[RTTripSegmentProvider buildTripSegmentsFeaturesWithIndex:inTransitions:trainMode:startVisitLocationOut:stopVisitLocationOut:transitionStartStopLocationsOut:]";
      *&v107[12] = 1024;
      *&v107[14] = 2272;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: transitionStartStopLocationsOut (in %s:%d)", v107, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *v107 = 134217984;
      *&v107[4] = a5;
      _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider: buildTripSegmentsFeaturesWithIndex, trainMode, %lu", v107, 0xCu);
    }
  }

  if ([v9 count] && objc_msgSend(v9, "count") - 1 >= a3)
  {
    v16 = [v9 objectAtIndexedSubscript:a3];
    v18 = objc_alloc(MEMORY[0x277CCA970]);
    v19 = [v16 startDate];
    v20 = [v16 stopDate];
    v76 = [v18 initWithStartDate:v19 endDate:v20];

    v75 = [(RTTripSegmentProvider *)self collectVehicleConnectionTimeIntervals:v76];
    *v107 = 0;
    *&v107[8] = v107;
    *&v107[16] = 0x3032000000;
    v108 = __Block_byref_object_copy__207;
    v109 = __Block_byref_object_dispose__207;
    v110 = 0;
    v96 = 0;
    v97 = &v96;
    v98 = 0x3032000000;
    v99 = __Block_byref_object_copy__207;
    v100 = __Block_byref_object_dispose__207;
    v101 = [MEMORY[0x277CBEA60] array];
    v21 = dispatch_semaphore_create(0);
    v22 = [(RTTripSegmentProvider *)self motionActivityManager];
    v23 = [v16 startDate];
    v24 = [v16 stopDate];
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __159__RTTripSegmentProvider_buildTripSegmentsFeaturesWithIndex_inTransitions_trainMode_startVisitLocationOut_stopVisitLocationOut_transitionStartStopLocationsOut___block_invoke;
    v92[3] = &unk_2788C4490;
    v94 = v107;
    v95 = &v96;
    v25 = v21;
    v93 = v25;
    [v22 fetchMotionActivitiesFromStartDate:v23 endDate:v24 handler:v92];

    v26 = v25;
    v27 = [MEMORY[0x277CBEAA8] now];
    v28 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v26, v28))
    {
      v29 = [MEMORY[0x277CBEAA8] now];
      [v29 timeIntervalSinceDate:v27];
      v31 = v30;
      v32 = objc_opt_new();
      v33 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_701];
      v34 = [MEMORY[0x277CCACC8] callStackSymbols];
      v35 = [v34 filteredArrayUsingPredicate:v33];
      v36 = [v35 firstObject];

      [v32 submitToCoreAnalytics:v36 type:1 duration:v31];
      v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v37, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v38 = MEMORY[0x277CCA9B8];
      v111[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v111 count:1];
      v40 = [v38 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v39];

      if (v40)
      {
        v41 = v40;
      }
    }

    else
    {
      v40 = 0;
    }

    v42 = v40;
    if (v42 || *(*&v107[8] + 40))
    {
      v43 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v58 = *(*&v107[8] + 40);
        *buf = 138412546;
        *&buf[4] = v58;
        v103 = 2112;
        v104 = v42;
        _os_log_error_impl(&dword_2304B3000, v43, OS_LOG_TYPE_ERROR, "RTTripSegmentProvider,buildTripSegmentsFeaturesWithIndex,failed in motion activity fetching,fetchError,%@,semaError,%@", buf, 0x16u);
      }

      v17 = 0;
      goto LABEL_37;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v45 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = [v16 identifier];
        v47 = [v16 stopDate];
        v48 = [v16 stopDate];
        *buf = 138412802;
        *&buf[4] = v46;
        v103 = 2112;
        v104 = v47;
        v105 = 2112;
        v106 = v48;
        _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_INFO, "RTTripSegmentProvider,buildTripSegmentsFeaturesWithIndex,for tripId,%@,start date,%@,stop date,%@", buf, 0x20u);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v49 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v71 = [v97[5] count];
        *buf = 134218240;
        *&buf[4] = a3;
        v103 = 2048;
        v104 = v71;
        _os_log_debug_impl(&dword_2304B3000, v49, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider,buildTripSegmentsFeaturesWithIndex,fetchedMotionActivitySummary,transitionIndex,%tu,countOfFetchedActivities,%tu", buf, 0x16u);
      }
    }

    v50 = v97[5];
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __159__RTTripSegmentProvider_buildTripSegmentsFeaturesWithIndex_inTransitions_trainMode_startVisitLocationOut_stopVisitLocationOut_transitionStartStopLocationsOut___block_invoke_399;
    v91[3] = &unk_2788D39A0;
    v91[4] = &v96;
    v91[5] = a3;
    [v50 enumerateObjectsUsingBlock:v91];
    v43 = objc_opt_new();
    v74 = [v43 removeNonTransportationModeActivities:v97[5] dateInterval:v76 vehicleIntervals:v75 predominantActivityType:[v16 predominantMotionActivityType]];
    if ([v74 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v51 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          v72 = [v74 count];
          *buf = 134218240;
          *&buf[4] = a3;
          v103 = 2048;
          v104 = v72;
          _os_log_debug_impl(&dword_2304B3000, v51, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider,buildTripSegmentsFeaturesWithIndex,filteredMotionActivitySummary,transitionIndex,%tu,activityCount,%tu", buf, 0x16u);
        }
      }

      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __159__RTTripSegmentProvider_buildTripSegmentsFeaturesWithIndex_inTransitions_trainMode_startVisitLocationOut_stopVisitLocationOut_transitionStartStopLocationsOut___block_invoke_402;
      v88[3] = &unk_2788D39C8;
      v90 = a3;
      v52 = v74;
      v89 = v52;
      [v52 enumerateObjectsUsingBlock:v88];
      if (a5 == 1)
      {
        v53 = [v16 identifier];
        v54 = [RTTripSegmentManager tripSegmentUUIDTypeFromUUID:v53]!= 0;
      }

      else
      {
        v54 = 1;
      }

      v59 = [(RTTripSegmentProvider *)self buildTinySegmentArrayForTransitionWithIndex:a3 withinDateInterval:v76 fromActivity:v52 uuidType:v54, v74];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v60 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          v73 = [v59 count];
          *buf = 134218240;
          *&buf[4] = a3;
          v103 = 2048;
          v104 = v73;
          _os_log_debug_impl(&dword_2304B3000, v60, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider,buildTripSegmentsFeaturesWithIndex,generatedChunksSummary,transitionIndex,%tu,chunkCount,%tu", buf, 0x16u);
        }
      }

      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __159__RTTripSegmentProvider_buildTripSegmentsFeaturesWithIndex_inTransitions_trainMode_startVisitLocationOut_stopVisitLocationOut_transitionStartStopLocationsOut___block_invoke_403;
      v83[3] = &unk_2788D39F0;
      v84 = v16;
      v87 = a3;
      v85 = v52;
      v86 = v59;
      v61 = v86;
      [v86 enumerateObjectsUsingBlock:v83];
      v62 = [(RTTripSegmentTransitionPreprocessor *)self->_transitionPreprocessor transitionStartStopLocations];
      v63 = [v9 objectAtIndexedSubscript:a3];
      v64 = [v63 identifier];
      v65 = [v64 UUIDString];
      *a8 = [v62 objectForKeyedSubscript:v65];

      transitionPreprocessor = self->_transitionPreprocessor;
      v67 = [v9 objectAtIndexedSubscript:a3];
      *v77 = [(RTTripSegmentTransitionPreprocessor *)transitionPreprocessor fetchEndpointCLLocationForTransition:v67 atOrigin:1];

      v68 = self->_transitionPreprocessor;
      v69 = [v9 objectAtIndexedSubscript:a3];
      *a7 = [(RTTripSegmentTransitionPreprocessor *)v68 fetchEndpointCLLocationForTransition:v69 atOrigin:0];

      v70 = v86;
      v17 = v61;

      v56 = v89;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v17 = 0;
        goto LABEL_67;
      }

      v56 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = [v16 predominantMotionActivityType];
        *buf = 134218240;
        *&buf[4] = a3;
        v103 = 2048;
        v104 = v57;
        _os_log_impl(&dword_2304B3000, v56, OS_LOG_TYPE_INFO, "RTTripSegmentProvider,buildTripSegmentsFeaturesWithIndex,skipThisTransition,%tu,lack of real mode of transportation,predominantType,%tu", buf, 0x16u);
      }

      v17 = 0;
    }

LABEL_67:
LABEL_37:

    _Block_object_dispose(&v96, 8);
    _Block_object_dispose(v107, 8);

    goto LABEL_38;
  }

  v16 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v55 = [v9 count];
    *v107 = 134349568;
    *&v107[4] = a5;
    *&v107[12] = 2050;
    *&v107[14] = v55;
    *&v107[22] = 2050;
    v108 = a3;
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "RTTripSegmentProvider,buildTripSegmentsFeaturesWithIndex,trainMode,%{public}lu,transition cnt,%{public}lu,curr index,%{public}lu", v107, 0x20u);
  }

  v17 = 0;
LABEL_38:

  return v17;
}

void __159__RTTripSegmentProvider_buildTripSegmentsFeaturesWithIndex_inTransitions_trainMode_startVisitLocationOut_stopVisitLocationOut_transitionStartStopLocationsOut___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __159__RTTripSegmentProvider_buildTripSegmentsFeaturesWithIndex_inTransitions_trainMode_startVisitLocationOut_stopVisitLocationOut_transitionStartStopLocationsOut___block_invoke_399(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 40);
      v8 = [*(*(*(a1 + 32) + 8) + 40) count];
      v9 = 134218754;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      v13 = 2048;
      v14 = a3;
      v15 = 2112;
      v16 = v5;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider,buildTripSegmentsFeaturesWithIndex,fetchedMotionActivity,transitionIndex,%tu,rawActivityCount,%tu,rawActivityIndex,%tu,thisRawActivity,%@", &v9, 0x2Au);
    }
  }
}

void __159__RTTripSegmentProvider_buildTripSegmentsFeaturesWithIndex_inTransitions_trainMode_startVisitLocationOut_stopVisitLocationOut_transitionStartStopLocationsOut___block_invoke_402(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) count];
      v9 = 134218754;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      v13 = 2048;
      v14 = a3;
      v15 = 2112;
      v16 = v5;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider,buildTripSegmentsFeaturesWithIndex,filteredMotionActivity,transitionIndex,%tu,activityCount,%tu,activityIndex,%tu,thisFilteredActivity,%@", &v9, 0x2Au);
    }
  }
}

void __159__RTTripSegmentProvider_buildTripSegmentsFeaturesWithIndex_inTransitions_trainMode_startVisitLocationOut_stopVisitLocationOut_transitionStartStopLocationsOut___block_invoke_403(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(a1 + 32) identifier];
      v8 = *(a1 + 56);
      v9 = [*(a1 + 40) count];
      v10 = [*(a1 + 48) count];
      v11 = 138413570;
      v12 = v7;
      v13 = 2048;
      v14 = v8;
      v15 = 2048;
      v16 = v9;
      v17 = 2048;
      v18 = a3;
      v19 = 2048;
      v20 = v10;
      v21 = 2112;
      v22 = v5;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider,buildTripSegmentsFeaturesWithIndex,generatedChunks,tId,%@,transitionIndex,%tu,activityCount,%tu,chunkIndex,%tu,chunkCount,%tu,thisChunk,%@", &v11, 0x3Eu);
    }
  }
}

- (BOOL)buildTripSegmentsFromTripSegmentFeaturesList:(id)a3 startVisitLocation:(id)a4 stopVisitLocation:(id)a5 transitionStartStopLocations:(id)a6
{
  v197 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v162 = a4;
  v161 = a5;
  v11 = a6;
  if (!v10)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v194 = "[RTTripSegmentProvider buildTripSegmentsFromTripSegmentFeaturesList:startVisitLocation:stopVisitLocation:transitionStartStopLocations:]";
      *&v194[8] = 1024;
      *v195 = 2396;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: chunks (in %s:%d)", buf, 0x12u);
    }
  }

  transitionStartLocation = self->_transitionStartLocation;
  self->_transitionStartLocation = 0;

  transitionStopLocation = self->_transitionStopLocation;
  self->_transitionStopLocation = 0;

  if (v11)
  {
    v15 = [v11 startLocation];
    v16 = self->_transitionStartLocation;
    self->_transitionStartLocation = v15;

    v17 = [v11 stopLocation];
    v18 = self->_transitionStopLocation;
    self->_transitionStopLocation = v17;
  }

  objc_storeStrong(&self->_startVisitLocation, a4);
  objc_storeStrong(&self->_stopVisitLocation, a5);
  self->_maxTripSequenceNumberBetweenOneTransition = 0;
  v19 = objc_alloc_init(MEMORY[0x277CCAD78]);
  tripCommuteID = self->_tripCommuteID;
  self->_tripCommuteID = v19;

  [(NSMutableArray *)self->_transitionLocations removeAllObjects];
  v163 = [MEMORY[0x277CBEB38] dictionary];
  v165 = [MEMORY[0x277CBEB38] dictionary];
  v173 = [MEMORY[0x277CBEB18] array];
  v167 = [MEMORY[0x277CBEB18] array];
  v164 = v10;
  v166 = v11;
  v168 = self;
  v21 = 0;
  if ([v10 count])
  {
    v22 = 0;
    while (1)
    {
      v23 = [v10 objectAtIndexedSubscript:v22];
      v24 = [v23 tripId];

      if (v24)
      {
        break;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v36 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = [v10 count];
          *buf = 67109376;
          *v194 = v22;
          *&v194[4] = 1024;
          *&v194[6] = v37;
          _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:Chunk index,%d/%d has nil tripId, skipping index", buf, 0xEu);
        }

        goto LABEL_44;
      }

LABEL_45:
      if (++v22 >= [v10 count])
      {
        goto LABEL_54;
      }
    }

    v25 = [v10 objectAtIndexedSubscript:v22];
    v26 = [v25 tripId];
    v27 = [v26 UUIDString];
    v28 = [v165 valueForKey:v27];

    if (v28)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v29 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [v10 count];
          v31 = [v10 objectAtIndexedSubscript:v22];
          v32 = [v31 tripId];
          v33 = [v32 UUIDString];
          v34 = [(NSUUID *)v168->_tripCommuteID UUIDString];
          v35 = [v167 count];
          *buf = 67110146;
          *v194 = v22;
          *&v194[4] = 1024;
          *&v194[6] = v30;
          *v195 = 2112;
          *&v195[2] = v33;
          *&v195[10] = 2112;
          *&v195[12] = v34;
          *&v195[20] = 1024;
          *&v195[22] = v35;
          _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:existing skipped chunk of same tripID,index,%d/%d,id,chunkID,%@,currentCommuteID,%@,existInDatabaseCount,%d", buf, 0x28u);

          v11 = v166;
          v10 = v164;
        }
      }

      v36 = [v10 objectAtIndexedSubscript:v22];
      [v36 setTripSequenceNumber:v21];
      goto LABEL_43;
    }

    v38 = [v10 objectAtIndexedSubscript:v22];
    v39 = [v38 tripId];
    v40 = [v39 UUIDString];
    [v165 setValue:@"Y" forKey:v40];

    v41 = [v10 objectAtIndexedSubscript:v22];
    v188 = 0;
    v189 = 0;
    v42 = [(RTTripSegmentProvider *)v168 getTripSegmentStartAndEndTimeUsingAllChunks:v10 currentChunk:v41 numLocations:&v189 distance:&v188];
    v36 = v189;
    v43 = v188;

    if (v36)
    {
      v44 = [v36 intValue];
      if (v43)
      {
LABEL_21:
        [v43 doubleValue];
        v46 = v45;
LABEL_24:
        [v42 duration];
        if (v47 < 10.0 || v44 < 2 || v46 < 10.0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v60 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              [v42 duration];
              v67 = v66;
              v150 = [v42 startDate];
              v68 = [v42 endDate];
              v158 = [v10 objectAtIndexedSubscript:v22];
              v154 = [v158 tripId];
              v69 = [v154 UUIDString];
              *buf = 134219522;
              *v194 = v67;
              *&v194[8] = 1024;
              *v195 = v44;
              *&v195[4] = 2048;
              *&v195[6] = v46;
              *&v195[14] = 2112;
              *&v195[16] = v150;
              *&v195[24] = 2112;
              *&v195[26] = v68;
              *&v195[34] = 2112;
              *&v195[36] = v69;
              *&v195[44] = 1024;
              v196[0] = v21;
              _os_log_debug_impl(&dword_2304B3000, v60, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:duration,%.2lf,numLocCount,%d,distance,%.2lf,check failed,startDate,%@,endData,%@,chunkID,%@,tripSegmentSequenceNumber,%d", buf, 0x40u);

              v10 = v164;
            }
          }

          v52 = [v10 objectAtIndexedSubscript:v22];
          v59 = [v52 tripId];
          [v173 addObject:v59];
        }

        else
        {
          v48 = (v21 + 1);
          v49 = [v10 objectAtIndexedSubscript:v22];
          v21 = v48;
          [v49 setTripSequenceNumber:v48];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v50 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              v159 = [v42 startDate];
              v70 = [v42 endDate];
              v155 = [v10 objectAtIndexedSubscript:v22];
              v151 = [v155 tripId];
              v71 = [v151 UUIDString];
              [v42 duration];
              v73 = v72;
              v74 = [v36 intValue];
              [v43 doubleValue];
              *buf = 138413826;
              *v194 = v159;
              *&v194[8] = 2112;
              *v195 = v70;
              *&v195[8] = 2112;
              *&v195[10] = v71;
              *&v195[18] = 2048;
              *&v195[20] = v73;
              *&v195[28] = 1024;
              *&v195[30] = v74;
              v11 = v166;
              *&v195[34] = 2048;
              *&v195[36] = v75;
              *&v195[44] = 1024;
              v196[0] = v21;
              _os_log_debug_impl(&dword_2304B3000, v50, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider: Trip segment chunk check,startDate,%@,endData,%@,chunkID,%@,duration,%.2lf,numLocCount,%d,distance,%.2lf,tripSegmentSequenceNumber,%d", buf, 0x40u);

              v10 = v164;
            }
          }

          v51 = [(RTTripSegmentProvider *)v168 getTripSegmentOfTypeFinalInThisTimeInterval:v42];
          if (v51)
          {
            v52 = v51;
            v53 = v42;
            [v51 setTripSegmentSequence:v21];
            [v167 addObject:v52];
            v54 = [v10 objectAtIndexedSubscript:v22];
            v55 = [v54 tripId];
            [v173 addObject:v55];

            v56 = [v52 tripCommuteID];
            v57 = [v52 tripCommuteID];
            v58 = [v57 UUIDString];
            [v163 setValue:v56 forKey:v58];

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v10 = v164;
              v11 = v166;
              v42 = v53;
              goto LABEL_42;
            }

            v59 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
            {
              v145 = [v164 count];
              v152 = [v164 objectAtIndexedSubscript:v22];
              v148 = [v152 tripId];
              v160 = [v148 UUIDString];
              v147 = [v52 identifier];
              v156 = [v147 UUIDString];
              v146 = [v52 tripCommuteID];
              v144 = [v146 UUIDString];
              v76 = [(NSUUID *)v168->_tripCommuteID UUIDString];
              v143 = [v167 count];
              v77 = [v163 count];
              *buf = 67110914;
              *v194 = v22;
              *&v194[4] = 1024;
              *&v194[6] = v145;
              *v195 = 2112;
              *&v195[2] = v160;
              *&v195[10] = 2112;
              *&v195[12] = v156;
              *&v195[20] = 2112;
              *&v195[22] = v144;
              *&v195[30] = 2112;
              *&v195[32] = v76;
              v78 = v76;
              *&v195[40] = 1024;
              *&v195[42] = v143;
              v10 = v164;
              LOWORD(v196[0]) = 1024;
              *(v196 + 2) = v77;
              _os_log_debug_impl(&dword_2304B3000, v59, OS_LOG_TYPE_DEBUG, "RTTripSegmentProvider:foundExisting trip Segment,index,%d/%d,id,chunkID,%@,storedTripID,%@,storedCommutedID,%@,currentCommuteID,%@,existInDatabaseCount,%d,commuteIDCount,%d", buf, 0x42u);
            }

            else
            {
              v10 = v164;
            }

            v42 = v53;
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v52 = 0;
              goto LABEL_42;
            }

            v59 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              v149 = [v10 count];
              v157 = [v10 objectAtIndexedSubscript:v22];
              v153 = [v157 tripId];
              v61 = [v153 UUIDString];
              v62 = [(NSUUID *)v168->_tripCommuteID UUIDString];
              v63 = v42;
              v64 = [v167 count];
              v65 = [v163 count];
              *buf = 67110402;
              *v194 = v22;
              *&v194[4] = 1024;
              *&v194[6] = v149;
              *v195 = 2112;
              *&v195[2] = v61;
              *&v195[10] = 2112;
              *&v195[12] = v62;
              *&v195[20] = 1024;
              *&v195[22] = v64;
              v42 = v63;
              *&v195[26] = 1024;
              *&v195[28] = v65;
              _os_log_impl(&dword_2304B3000, v59, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:existing trip not found,index,%d/%d,id,chunkID,%@,currentCommuteID,%@,existInDatabaseCount,%d,commuteIDCount,%d", buf, 0x2Eu);

              v10 = v164;
            }

            v52 = 0;
          }
        }

        v11 = v166;
LABEL_42:

LABEL_43:
        self = v168;
LABEL_44:

        goto LABEL_45;
      }
    }

    else
    {
      v44 = 0;
      if (v43)
      {
        goto LABEL_21;
      }
    }

    v46 = 0.0;
    goto LABEL_24;
  }

LABEL_54:
  self->_maxTripSequenceNumberBetweenOneTransition = v21;
  if ([v163 count] == 1)
  {
    v79 = [v163 allKeys];
    v80 = [v79 firstObject];
    v81 = [v163 valueForKey:v80];
    v82 = self->_tripCommuteID;
    self->_tripCommuteID = v81;

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_78;
    }

    v83 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
    {
      v84 = [v167 count];
      v85 = [v163 count];
      v86 = self->_tripCommuteID;
      *buf = 67109634;
      *v194 = v84;
      *&v194[4] = 1024;
      *&v194[6] = v85;
      *v195 = 2112;
      *&v195[2] = v86;
      _os_log_impl(&dword_2304B3000, v83, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:overwriting commuteID with existing commuteID for this transition,existInDatabaseCount,%d,commuteIDCount,%d,tripCommuteID,%@", buf, 0x18u);
    }
  }

  else
  {
    if ([v163 count] < 2)
    {
      goto LABEL_78;
    }

    v170 = [MEMORY[0x277CBEB18] array];
    v184 = 0u;
    v185 = 0u;
    v186 = 0u;
    v187 = 0u;
    obj = v167;
    v172 = [obj countByEnumeratingWithState:&v184 objects:v192 count:16];
    if (v172)
    {
      v171 = *v185;
      do
      {
        v87 = 0;
        do
        {
          if (*v185 != v171)
          {
            objc_enumerationMutation(obj);
          }

          v174 = v87;
          v88 = *(*(&v184 + 1) + 8 * v87);
          v180 = 0u;
          v181 = 0u;
          v182 = 0u;
          v183 = 0u;
          v89 = v173;
          v90 = [v89 countByEnumeratingWithState:&v180 objects:v191 count:16];
          if (v90)
          {
            v91 = v90;
            v92 = *v181;
            while (2)
            {
              for (i = 0; i != v91; ++i)
              {
                if (*v181 != v92)
                {
                  objc_enumerationMutation(v89);
                }

                v94 = *(*(&v180 + 1) + 8 * i);
                v95 = [v88 identifier];
                v96 = [v95 UUIDString];
                v97 = [v94 UUIDString];
                v98 = [v96 isEqualToString:v97];

                if (v98)
                {
                  [v170 addObject:v94];
                  goto LABEL_74;
                }
              }

              v91 = [v89 countByEnumeratingWithState:&v180 objects:v191 count:16];
              if (v91)
              {
                continue;
              }

              break;
            }
          }

LABEL_74:

          v87 = v174 + 1;
        }

        while (v174 + 1 != v172);
        v172 = [obj countByEnumeratingWithState:&v184 objects:v192 count:16];
      }

      while (v172);
    }

    v83 = v170;
    [v173 removeObjectsInArray:v170];
    [obj removeAllObjects];
    [v163 removeAllObjects];
    v10 = v164;
    v11 = v166;
    self = v168;
  }

LABEL_78:
  if ([v10 count])
  {
    v175 = 0;
    v99 = 0;
    while (1)
    {
      if ([(RTTripSegmentProvider *)self shouldDeferTripSegmentAndClusterProcessing])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v134 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
          {
            v135 = [v10 count];
            v136 = [v10 objectAtIndexedSubscript:v99];
            v137 = [v136 dateInterval];
            v138 = [v137 startDate];
            v139 = [v10 objectAtIndexedSubscript:v99];
            v140 = [v139 dateInterval];
            v141 = [v140 endDate];
            *buf = 67240963;
            *v194 = v99;
            *&v194[4] = 1026;
            *&v194[6] = v135;
            *v195 = 2113;
            *&v195[2] = v138;
            *&v195[10] = 2113;
            *&v195[12] = v141;
            _os_log_impl(&dword_2304B3000, v134, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:processChunkWithIndex,deferring,chunk,%{public}d/%{public}d,tripStart,%{private}@,tripEnd,%{private}@", buf, 0x22u);

            v10 = v164;
          }
        }

        v133 = 0;
        v132 = v165;
        goto LABEL_116;
      }

      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v100 = v173;
      v101 = [v100 countByEnumeratingWithState:&v176 objects:v190 count:16];
      if (v101)
      {
        break;
      }

LABEL_89:

      if ([(RTTripSegmentProvider *)v168 processChunkWithIndex:v99 inChunks:v10])
      {
        v175 = 1;
      }

      else
      {
        v116 = [v10 objectAtIndexedSubscript:v99];
        v117 = [v116 tripId];
        [v100 addObject:v117];

        v175 = 1;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v100 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          v175 = 1;
          if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
          {
            v118 = [v10 count];
            v108 = [v10 objectAtIndexedSubscript:v99];
            v110 = [v108 dateInterval];
            v111 = [v110 startDate];
            v112 = [v10 objectAtIndexedSubscript:v99];
            v113 = [v112 dateInterval];
            v114 = [v113 endDate];
            *buf = 67109890;
            *v194 = v99;
            *&v194[4] = 1024;
            *&v194[6] = v118;
            *v195 = 2112;
            *&v195[2] = v111;
            *&v195[10] = 2112;
            *&v195[12] = v114;
            v175 = 1;
            _os_log_impl(&dword_2304B3000, v100, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:processChunkWithIndex,%d/%d,returned false,tripStart,%@,tripEnd,%@", buf, 0x22u);
LABEL_97:

            goto LABEL_98;
          }

LABEL_99:
        }
      }

      ++v99;
      self = v168;
      if (v99 >= [v10 count])
      {
        goto LABEL_103;
      }
    }

    v102 = v101;
    v103 = *v177;
LABEL_83:
    v104 = 0;
    while (1)
    {
      if (*v177 != v103)
      {
        objc_enumerationMutation(v100);
      }

      v105 = *(*(&v176 + 1) + 8 * v104);
      v106 = [v10 objectAtIndexedSubscript:v99];
      v107 = [v106 tripId];

      if (v105 == v107)
      {
        break;
      }

      if (v102 == ++v104)
      {
        v102 = [v100 countByEnumeratingWithState:&v176 objects:v190 count:16];
        if (v102)
        {
          goto LABEL_83;
        }

        goto LABEL_89;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_99;
    }

    v108 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
    {
      v109 = [v10 count];
      v110 = [v10 objectAtIndexedSubscript:v99];
      v111 = [v110 dateInterval];
      v112 = [v111 startDate];
      v113 = [v10 objectAtIndexedSubscript:v99];
      v114 = [v113 dateInterval];
      v115 = [v114 endDate];
      *buf = 67109890;
      *v194 = v99;
      *&v194[4] = 1024;
      *&v194[6] = v109;
      *v195 = 2112;
      *&v195[2] = v112;
      *&v195[10] = 2112;
      *&v195[12] = v115;
      _os_log_impl(&dword_2304B3000, v108, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:processChunkWithIndex,%d/%d,shouldSkipThisTrip,tripStart,%@,tripEnd,%@", buf, 0x22u);

      v10 = v164;
      goto LABEL_97;
    }

LABEL_98:

    v11 = v166;
    goto LABEL_99;
  }

  v175 = 0;
LABEL_103:
  if ([v167 count])
  {
    v119 = 0;
    v120 = MEMORY[0x277D86220];
    do
    {
      if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
      {
        v121 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
        {
          v122 = [v167 objectAtIndexedSubscript:v119];
          v123 = [v122 identifier];
          v124 = [v123 UUIDString];
          *buf = 138412290;
          *v194 = v124;
          _os_log_impl(&dword_2304B3000, v121, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:update existing tripSegment,%@,to fix sequence numbers", buf, 0xCu);
        }

        v11 = v166;
      }

      maxTripSequenceNumberBetweenOneTransition = v168->_maxTripSequenceNumberBetweenOneTransition;
      v126 = [v167 objectAtIndexedSubscript:v119];
      [v126 setTripSegmentSequenceMax:maxTripSequenceNumberBetweenOneTransition];

      v127 = [(RTTripSegmentProvider *)v168 tripSegmentStore];
      v128 = [v167 objectAtIndexedSubscript:v119];
      v129 = [v128 identifier];
      [v127 deleteTripSegmentWithUUID:v129];

      v130 = [(RTTripSegmentProvider *)v168 tripSegmentStore];
      v131 = [v167 objectAtIndexedSubscript:v119];
      [v130 storeTripSegment:v131];

      ++v119;
    }

    while (v119 < [v167 count]);
  }

  v132 = v165;
  v133 = v175;
LABEL_116:

  return v133 & 1;
}

- (BOOL)purgeUsedTripSegmentLocations
{
  v25 = *MEMORY[0x277D85DE8];
  if (![(RTTripSegmentProvider *)self isTripSegmentGenerationEnabled])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v14 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = NSStringFromSelector(a2);
      *buf = 138412290;
      v22 = v16;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:%@,trip segment generation is supported on this platform but is not enabled", buf, 0xCu);
    }

    v11 = 0;
    goto LABEL_18;
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [v4 stringWithFormat:@"%@-%@", v6, v7];
  [v8 UTF8String];
  v9 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(a2);
      *buf = 138412546;
      v22 = v19;
      v23 = 2112;
      v24 = v20;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  v11 = [(RTTripSegmentManager *)self->_tripSegmentManager purgeUsedTripSegmentLocations];
  if (!v11 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:%@: failed.", buf, 0xCu);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "RTTripSegmentProvider:%@: Done", buf, 0xCu);
    }

LABEL_18:
  }

  return v11;
}

- (void)unlockAllRouteClusters
{
  tripClusterManager = self->_tripClusterManager;
  if (tripClusterManager)
  {
    [(RTTripClusterManager *)tripClusterManager unlockAllRouteClusters];
  }
}

@end