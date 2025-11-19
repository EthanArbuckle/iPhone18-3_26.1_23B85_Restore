@interface RTBiomeManager
+ (id)biomeStreamTypeToBiomeStream:(int64_t)a3;
+ (id)streamTypeToString:(int64_t)a3;
- (BOOL)_isValidEvent:(id)a3 streamType:(int64_t)a4;
- (RTBiomeManager)initWithAuthorizationManager:(id)a3 dataProtectionManager:(id)a4 defaultsManager:(id)a5 learnedLocationManager:(id)a6 platform:(id)a7;
- (id)_extractDateIntervalFromBiomeEvent1:(id)a3 event2:(id)a4 streamType:(int64_t)a5;
- (id)_getLatestBiomeDataForStreamType:(int64_t)a3 error:(id *)a4;
- (id)_translateRTVisitToBiomeObject:(id)a3;
- (id)_translateToBiomeMapItem:(id)a3;
- (id)_translateToBiomePlaceInference:(id)a3;
- (id)_translateToBiomeVisitLocation:(id)a3;
- (int)_translateToBiomePlaceType:(unint64_t)a3;
- (int)_translateToBiomeUserSpecificPlaceType:(unint64_t)a3;
- (int)_translateToBiomeUserSpecificPlaceTypeSource:(unint64_t)a3;
- (int)_translateToBiomeVisitLocationReferenceFrame:(int)a3;
- (int)_translateToBiomeVisitLocationSourceAccuracy:(unint64_t)a3;
- (int)_translateToBiomeVisitSource:(int64_t)a3;
- (int)_translateToBiomeVisitType:(int64_t)a3;
- (int64_t)_compareEvent1:(id)a3 event2:(id)a4 streamType:(int64_t)a5;
- (void)_cancelSubscriptionBiomeConnectionCompanion;
- (void)_clearBiomeStreamForStreamType:(int64_t)a3 error:(id *)a4;
- (void)_onAuthorizationNotification:(id)a3;
- (void)_onDataProtectionNotification:(id)a3;
- (void)_onLearnedLocationManagerAvailabilityDidChangeNotification:(id)a3;
- (void)_onLearnedLocationManagerDidUpdateNotification:(id)a3;
- (void)_publishNewHindsightVisitsToBiomeWithError:(id *)a3;
- (void)_setup;
- (void)_startSubscriptionBiomeConnectionCompanion;
- (void)cancelSubscriptionBiomeConnectionCompanion;
- (void)enumerateEventsWithinDateInterval:(id)a3 streamType:(int64_t)a4 handler:(id)a5;
- (void)onAuthorizationNotification:(id)a3;
- (void)onDataProtectionNotification:(id)a3;
- (void)onLearnedLocationManagerAvailabilityDidChangeNotification:(id)a3;
- (void)onLearnedLocationManagerDidUpdateNotification:(id)a3;
- (void)startSubscriptionBiomeConnectionCompanion;
@end

@implementation RTBiomeManager

- (RTBiomeManager)initWithAuthorizationManager:(id)a3 dataProtectionManager:(id)a4 defaultsManager:(id)a5 learnedLocationManager:(id)a6 platform:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v24 = v17;
  if (!v13)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: authorizationManager";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_20;
  }

  if (!v14)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: dataProtectionManager";
    goto LABEL_19;
  }

  if (!v15)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_19;
  }

  if (!v16)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: learnedLocationManager";
    goto LABEL_19;
  }

  if (!v17)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = "Invalid parameter not satisfying: platform";
      goto LABEL_19;
    }

LABEL_20:

    v20 = 0;
    goto LABEL_21;
  }

  v25.receiver = self;
  v25.super_class = RTBiomeManager;
  v18 = [(RTNotifier *)&v25 init];
  p_isa = &v18->super.super.super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_authorizationManager, a3);
    objc_storeStrong(p_isa + 8, a4);
    objc_storeStrong(p_isa + 9, a5);
    objc_storeStrong(p_isa + 11, a6);
    objc_storeStrong(p_isa + 12, a7);
    [p_isa setup];
  }

  self = p_isa;
  v20 = self;
LABEL_21:

  return v20;
}

- (void)_setup
{
  v20 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v4 = [(RTBiomeManager *)self authorizationManager];
    v5 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
    [v4 addObserver:self selector:sel_onAuthorizationNotification_ name:v5];

    v6 = [(RTBiomeManager *)self dataProtectionManager];
    v7 = +[(RTNotification *)RTDataProtectionManagerNotificationEncryptedDataAvailability];
    [v6 addObserver:self selector:sel_onDataProtectionNotification_ name:v7];

    v8 = [(RTBiomeManager *)self learnedLocationManager];
    v9 = +[(RTNotification *)RTLearnedLocationManagerNotificationAvailabilityDidChange];
    [v8 addObserver:self selector:sel_onLearnedLocationManagerAvailabilityDidChangeNotification_ name:v9];

    v15 = [(RTBiomeManager *)self learnedLocationManager];
    v10 = +[(RTNotification *)RTLearnedLocationManagerNotificationDidUpdate];
    [v15 addObserver:self selector:sel_onLearnedLocationManagerDidUpdateNotification_ name:v10];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      *buf = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, %@, feature not enabled", buf, 0x16u);
    }
  }
}

- (void)startSubscriptionBiomeConnectionCompanion
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTBiomeManager_startSubscriptionBiomeConnectionCompanion__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_startSubscriptionBiomeConnectionCompanion
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = NSStringFromSelector(a2);
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, %@, BMCarouselCompanion Currently unavailable in platforms other than watch_os", &v7, 0x16u);
    }
  }
}

- (void)cancelSubscriptionBiomeConnectionCompanion
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RTBiomeManager_cancelSubscriptionBiomeConnectionCompanion__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_cancelSubscriptionBiomeConnectionCompanion
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = NSStringFromSelector(a2);
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, %@, BMCarouselCompanion Currently unavailable in platforms other than watch_os", &v7, 0x16u);
    }
  }
}

- (void)enumerateEventsWithinDateInterval:(id)a3 streamType:(int64_t)a4 handler:(id)a5
{
  v107[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if ((a4 - 1) >= 4)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    *buf = 0;
    v38 = "Invalid parameter not satisfying: RT_BIOME_STREAM_STREAM_TYPE_VALID(streamType)";
LABEL_20:
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, v38, buf, 2u);
    goto LABEL_47;
  }

  if (!v9)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    *buf = 0;
    v38 = "Invalid parameter not satisfying: dateInterval";
    goto LABEL_20;
  }

  if (!v10)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    *buf = 0;
    v38 = "Invalid parameter not satisfying: handler";
    goto LABEL_20;
  }

  aSelector = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = NSStringFromSelector(aSelector);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [objc_opt_class() streamTypeToString:a4];
      *buf = 138413058;
      *&buf[4] = v13;
      v97 = 2112;
      v98 = v15;
      v99 = 2112;
      v100 = v16;
      v101 = 2112;
      v102 = v9;
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, streamType, %@, date interval, %@", buf, 0x2Au);
    }
  }

  v17 = [objc_opt_class() biomeStreamTypeToBiomeStream:a4];
  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x277CF1A50]);
    v19 = [v9 startDate];
    v20 = [v9 endDate];
    v68 = [v18 initWithStartDate:v19 endDate:v20 maxEvents:0 lastN:0 reversed:0];

    v90 = 0;
    v91 = &v90;
    v92 = 0x3032000000;
    v93 = __Block_byref_object_copy__160;
    v94 = __Block_byref_object_dispose__160;
    v95 = 0;
    v88[0] = 0;
    v88[1] = v88;
    v88[2] = 0x3032000000;
    v88[3] = __Block_byref_object_copy__160;
    v88[4] = __Block_byref_object_dispose__160;
    v89 = 0;
    v86[0] = 0;
    v86[1] = v86;
    v86[2] = 0x3032000000;
    v86[3] = __Block_byref_object_copy__160;
    v86[4] = __Block_byref_object_dispose__160;
    v87 = 0;
    v85[0] = 0;
    v85[1] = v85;
    v85[2] = 0x2020000000;
    v85[3] = -1;
    v79 = 0;
    v80 = &v79;
    v81 = 0x3032000000;
    v82 = __Block_byref_object_copy__160;
    v83 = __Block_byref_object_dispose__160;
    v84 = objc_opt_new();
    v21 = [v17 publisherWithOptions:v68];
    v22 = dispatch_semaphore_create(0);
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __71__RTBiomeManager_enumerateEventsWithinDateInterval_streamType_handler___block_invoke;
    v71[3] = &unk_2788D0C18;
    v71[4] = self;
    v73 = &v90;
    v74 = v88;
    v77 = aSelector;
    v78 = a4;
    v75 = v86;
    v76 = &v79;
    v23 = v22;
    v72 = v23;
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __71__RTBiomeManager_enumerateEventsWithinDateInterval_streamType_handler___block_invoke_31;
    v70[3] = &unk_2788D0C40;
    v70[9] = aSelector;
    v70[10] = a4;
    v70[4] = self;
    v70[5] = v86;
    v70[6] = v88;
    v70[7] = v85;
    v70[8] = &v79;
    v64 = v21;
    v24 = [v21 sinkWithCompletion:v71 receiveInput:v70];
    dsema = v23;
    v65 = [MEMORY[0x277CBEAA8] now];
    v25 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(dsema, v25))
    {
      v63 = [MEMORY[0x277CBEAA8] now];
      [v63 timeIntervalSinceDate:v65];
      v27 = v26;
      v28 = objc_opt_new();
      v29 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_134];
      v30 = [MEMORY[0x277CCACC8] callStackSymbols];
      v31 = [v30 filteredArrayUsingPredicate:v29];
      v32 = [v31 firstObject];

      [v28 submitToCoreAnalytics:v32 type:1 duration:v27];
      v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v33, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v34 = MEMORY[0x277CCA9B8];
      v107[0] = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v107 count:1];
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

    v66 = v36;
    if (v66)
    {
      objc_storeStrong(v91 + 5, v36);
    }

    if (v91[5])
    {
      v41 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v58 = NSStringFromSelector(aSelector);
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        v61 = [objc_opt_class() streamTypeToString:a4];
        *buf = 138413058;
        *&buf[4] = v58;
        v97 = 2112;
        v98 = v60;
        v99 = 2112;
        v100 = v61;
        v101 = 2112;
        v102 = v9;
        _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, "%@, %@, streamType, %@, date interval, %@", buf, 0x2Au);
      }

      v42 = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v43 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = NSStringFromSelector(aSelector);
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          v47 = [objc_opt_class() streamTypeToString:a4];
          v48 = [v80[5] count];
          *buf = 138413314;
          *&buf[4] = v44;
          v97 = 2112;
          v98 = v46;
          v99 = 2112;
          v100 = v47;
          v101 = 2112;
          v102 = v9;
          v103 = 2048;
          v104 = v48;
          _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "%@, %@, streamType, %@, date interval, %@, outputDateIntervals count, %lu", buf, 0x34u);
        }
      }

      v49 = 0;
      v50 = 1;
      v51 = MEMORY[0x277D86220];
      while (1)
      {
        v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG);
        if ((v50 & 1) == 0 || !v52 || ![v80[5] count])
        {
          break;
        }

        v53 = objc_autoreleasePoolPush();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          v54 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            v62 = NSStringFromSelector(aSelector);
            v55 = objc_opt_class();
            v56 = NSStringFromClass(v55);
            v57 = [v80[5] objectAtIndexedSubscript:v49];
            *buf = 138413058;
            *&buf[4] = v62;
            v97 = 2112;
            v98 = v56;
            v99 = 2048;
            v100 = (v49 + 1);
            v101 = 2112;
            v102 = v57;
            _os_log_debug_impl(&dword_2304B3000, v54, OS_LOG_TYPE_DEBUG, "%@, %@, %lu output date interval, %@", buf, 0x2Au);
          }
        }

        objc_autoreleasePoolPop(v53);
        v50 = 0;
        v49 = 1;
      }

      v42 = v80[5];
    }

    (v11)[2](v11, v42, v91[5]);

    _Block_object_dispose(&v79, 8);
    _Block_object_dispose(v85, 8);
    _Block_object_dispose(v86, 8);

    _Block_object_dispose(v88, 8);
    _Block_object_dispose(&v90, 8);
  }

  else
  {
    v105 = *MEMORY[0x277CCA450];
    v106 = @"Invalid biome stream type.";
    v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
    v39 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTBiomeStreamErrorDomain" code:1 userInfo:v68];
    v40 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a4;
      _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "Invalid biome stream type, %lu", buf, 0xCu);
    }

    (v11)[2](v11, 0, v39);
  }

LABEL_47:
}

void __71__RTBiomeManager_enumerateEventsWithinDateInterval_streamType_handler___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 80));
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v19 = 138412802;
      v20 = v5;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, completion, %@", &v19, 0x20u);
    }
  }

  if ([v3 state])
  {
    v8 = [v3 error];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
LABEL_7:

    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    goto LABEL_8;
  }

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  if (v12 && *(*(*(a1 + 64) + 8) + 40))
  {
    v10 = [*(a1 + 32) _extractDateIntervalFromBiomeEvent1:? event2:? streamType:?];
    if (v10)
    {
      [*(*(*(a1 + 72) + 8) + 40) addObject:v10];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = NSStringFromSelector(*(a1 + 80));
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = 138412802;
          v20 = v16;
          v21 = 2112;
          v22 = v18;
          v23 = 2112;
          v24 = v10;
          _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, %@, output date interval, %@", &v19, 0x20u);
        }
      }
    }

    goto LABEL_7;
  }

LABEL_8:
  *(v11 + 40) = 0;

  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __71__RTBiomeManager_enumerateEventsWithinDateInterval_streamType_handler___block_invoke_31(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v15 = NSStringFromSelector(*(a1 + 72));
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = MEMORY[0x277CBEAA8];
      [v4 timestamp];
      v19 = [v18 dateWithTimeIntervalSinceReferenceDate:?];
      v23 = 138412802;
      v24 = v15;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v19;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@, %@, received event, %@", &v23, 0x20u);
    }
  }

  if ([*(a1 + 32) _isValidEvent:v4 streamType:*(a1 + 80)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    if (!v7)
    {
      v13 = *(*(*(a1 + 40) + 8) + 40);
      v12 = *(v6 + 40);
      *(v6 + 40) = v13;
      goto LABEL_17;
    }

    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _compareEvent1:v7 event2:*(*(*(a1 + 40) + 8) + 40) streamType:*(a1 + 80)];
    v8 = *(*(*(a1 + 56) + 8) + 24);
    if (v8 == 1)
    {
      v12 = [*(a1 + 32) _extractDateIntervalFromBiomeEvent1:*(*(*(a1 + 48) + 8) + 40) event2:*(*(*(a1 + 40) + 8) + 40) streamType:*(a1 + 80)];
      if (v12)
      {
        [*(*(*(a1 + 64) + 8) + 40) addObject:v12];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v14 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v20 = NSStringFromSelector(*(a1 + 72));
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            v23 = 138412802;
            v24 = v20;
            v25 = 2112;
            v26 = v22;
            v27 = 2112;
            v28 = v12;
            _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "%@, %@, final output date interval, %@", &v23, 0x20u);
          }
        }
      }

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 40) + 8) + 40));
      goto LABEL_17;
    }

    if (v8 == -1)
    {
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v10 = *(*(a1 + 48) + 8);
      v11 = v9;
      v12 = *(v10 + 40);
      *(v10 + 40) = v11;
LABEL_17:
    }
  }
}

- (BOOL)_isValidEvent:(id)a3 streamType:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      v12 = 0;
      goto LABEL_11;
    }

    v16 = 0;
    v10 = "Invalid parameter not satisfying: event";
    v11 = &v16;
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    goto LABEL_8;
  }

  if ((a4 - 1) >= 4)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v15 = 0;
    v10 = "Invalid parameter not satisfying: RT_BIOME_STREAM_STREAM_TYPE_VALID(streamType)";
    v11 = &v15;
    goto LABEL_13;
  }

  v7 = [v5 eventBody];
  v8 = v7;
  if (a4 == 3)
  {
    v13 = [v7 hasStationary];
  }

  else
  {
    v13 = [v7 hasStarting];
  }

  v12 = v13;

LABEL_11:
  return v12;
}

- (int64_t)_compareEvent1:(id)a3 event2:(id)a4 streamType:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v29 = 0;
    v15 = "Invalid parameter not satisfying: event1";
    v16 = &v29;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v15, v16, 2u);
    goto LABEL_13;
  }

  if (!v8)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v28 = 0;
    v15 = "Invalid parameter not satisfying: event2";
    v16 = &v28;
    goto LABEL_12;
  }

  if ((a5 - 1) < 4)
  {
    v10 = v7;
    v11 = v9;
    v12 = [v10 eventBody];
    v13 = v12;
    if (a5 == 3)
    {
      if ([v12 stationary])
      {
        a5 = [v11 eventBody];
        v19 = [a5 stationary];

        if (!v19)
        {
LABEL_20:
          v17 = 1;
LABEL_37:

          goto LABEL_14;
        }
      }

      else
      {
      }

      v21 = [v10 eventBody];
      v22 = [v21 stationary];
      if ((v22 & 1) != 0 || ([v11 eventBody], a5 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(a5, "stationary") & 1) == 0))
      {
        v23 = [v10 eventBody];
        if (([v23 stationary] & 1) == 0)
        {
          v24 = [v11 eventBody];
          v25 = [v24 stationary];
          goto LABEL_33;
        }

LABEL_31:
        v26 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      if ([v12 starting])
      {
        a5 = [v11 eventBody];
        v20 = [a5 starting];

        if (!v20)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      v21 = [v10 eventBody];
      v22 = [v21 starting];
      if ((v22 & 1) != 0 || ([v11 eventBody], a5 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(a5, "starting") & 1) == 0))
      {
        v23 = [v10 eventBody];
        if (([v23 starting] & 1) == 0)
        {
          v24 = [v11 eventBody];
          v25 = [v24 starting];
LABEL_33:
          v26 = v25 ^ 1u;

LABEL_34:
          if (v22)
          {
LABEL_36:

            v17 = v26 << 63 >> 63;
            goto LABEL_37;
          }

LABEL_35:

          goto LABEL_36;
        }

        goto LABEL_31;
      }
    }

    v26 = 1;
    goto LABEL_35;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v27 = 0;
    v15 = "Invalid parameter not satisfying: RT_BIOME_STREAM_STREAM_TYPE_VALID(streamType)";
    v16 = &v27;
    goto LABEL_12;
  }

LABEL_13:

  v17 = -1;
LABEL_14:

  return v17;
}

- (id)_extractDateIntervalFromBiomeEvent1:(id)a3 event2:(id)a4 streamType:(int64_t)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    LOWORD(v23) = 0;
    v17 = "Invalid parameter not satisfying: event1";
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v17, &v23, 2u);
    goto LABEL_16;
  }

  if (!v9)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    LOWORD(v23) = 0;
    v17 = "Invalid parameter not satisfying: event2";
    goto LABEL_15;
  }

  if ((a5 - 1) >= 4)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      v17 = "Invalid parameter not satisfying: RT_BIOME_STREAM_STREAM_TYPE_VALID(streamType)";
      goto LABEL_15;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  if (v8 == v9)
  {
    v12 = 0;
    v15 = 0;
LABEL_21:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(a2);
        v23 = 138413058;
        v24 = v21;
        v25 = 2112;
        v26 = v22;
        v27 = 2112;
        v28 = v12;
        v29 = 2112;
        v30 = v15;
        _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, "%@, %@, start date, %@, end date, %@", &v23, 0x2Au);
      }
    }

    v16 = 0;
    goto LABEL_26;
  }

  v11 = MEMORY[0x277CBEAA8];
  [v8 timestamp];
  v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
  v13 = MEMORY[0x277CBEAA8];
  [v10 timestamp];
  v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
  v15 = v14;
  if (!v12 || !v14 || [v12 compare:v14]== 1)
  {
    goto LABEL_21;
  }

  v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 endDate:v15];
LABEL_26:

LABEL_17:

  return v16;
}

- (void)onAuthorizationNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__RTBiomeManager_onAuthorizationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onAuthorizationNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[RTBiomeManager setRoutineEnabled:](self, "setRoutineEnabled:", [v5 enabled]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(RTBiomeManager *)self routineEnabled];
        v8 = @"NO";
        if (v7)
        {
          v8 = @"YES";
        }

        *buf = 138412290;
        v16 = v8;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Updated routine enabled %@", buf, 0xCu);
      }
    }

    if ([(RTBiomeManager *)self routineEnabled])
    {
      v14 = 0;
      v9 = &v14;
      [(RTBiomeManager *)self _publishNewHindsightVisitsToBiomeWithError:&v14];
    }

    else
    {
      v13 = 0;
      v9 = &v13;
      [(RTBiomeManager *)self _clearBiomeStreamForStreamType:5 error:&v13];
    }

    v10 = *v9;
LABEL_15:

    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      v12 = [v5 name];
      *buf = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, unhandled notification, %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (void)onDataProtectionNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__RTBiomeManager_onDataProtectionNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onDataProtectionNotification:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138412802;
      v12 = v9;
      v13 = 2080;
      v14 = "[RTBiomeManager _onDataProtectionNotification:]";
      v15 = 1024;
      v16 = 544;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unknown notification class, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }

  -[RTBiomeManager setEncryptedDataAvailability:](self, "setEncryptedDataAvailability:", [v4 availability]);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [RTDataProtectionManager encryptedDataAvailabilityToString:[(RTBiomeManager *)self encryptedDataAvailability]];
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Received keybag notification, %@", buf, 0xCu);
    }
  }

  v10 = 0;
  [(RTBiomeManager *)self _publishNewHindsightVisitsToBiomeWithError:&v10];
}

- (void)onLearnedLocationManagerAvailabilityDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__RTBiomeManager_onLearnedLocationManagerAvailabilityDidChangeNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onLearnedLocationManagerAvailabilityDidChangeNotification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
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
      v15 = "[RTBiomeManager _onLearnedLocationManagerAvailabilityDidChangeNotification:]";
      v16 = 1024;
      LODWORD(v17) = 575;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", &v12, 0x1Cu);
    }
  }
}

- (void)onLearnedLocationManagerDidUpdateNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__RTBiomeManager_onLearnedLocationManagerDidUpdateNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onLearnedLocationManagerDidUpdateNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        [v6 intervalSinceLastUpdate];
        *buf = 138412802;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        v17 = 2048;
        v18 = v11;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, learned location manager did update, %f", buf, 0x20u);
      }
    }

    v12 = 0;
    [(RTBiomeManager *)self _publishNewHindsightVisitsToBiomeWithError:&v12];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v14 = v5;
      v15 = 2080;
      v16 = "[RTBiomeManager _onLearnedLocationManagerDidUpdateNotification:]";
      v17 = 1024;
      LODWORD(v18) = 603;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (int)_translateToBiomeVisitLocationReferenceFrame:(int)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 2);
  }
}

- (int)_translateToBiomeVisitLocationSourceAccuracy:(unint64_t)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 2);
  }
}

- (id)_translateToBiomeVisitLocation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CF12D8]);
    v6 = MEMORY[0x277CCABB0];
    [v4 latitude];
    v7 = [v6 numberWithDouble:?];
    v8 = MEMORY[0x277CCABB0];
    [v4 longitude];
    v9 = [v8 numberWithDouble:?];
    v10 = MEMORY[0x277CCABB0];
    [v4 horizontalUncertainty];
    v11 = [v10 numberWithDouble:?];
    v12 = MEMORY[0x277CCABB0];
    [v4 altitude];
    v13 = [v12 numberWithDouble:?];
    v14 = MEMORY[0x277CCABB0];
    [v4 verticalUncertainty];
    v15 = [v14 numberWithDouble:?];
    v16 = [v4 date];
    v17 = [v5 initWithLatitude:v7 longitude:v9 horizontalUncertainty:v11 altitude:v13 verticalUncertainty:v15 date:v16 referenceFrame:__PAIR64__(-[RTBiomeManager _translateToBiomeVisitLocationSourceAccuracy:](self sourceAccuracy:{"_translateToBiomeVisitLocationSourceAccuracy:", objc_msgSend(v4, "sourceAccuracy")), -[RTBiomeManager _translateToBiomeVisitLocationReferenceFrame:](self, "_translateToBiomeVisitLocationReferenceFrame:", objc_msgSend(v4, "referenceFrame")))}];
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location", buf, 2u);
    }

    v17 = 0;
  }

  return v17;
}

- (int)_translateToBiomePlaceType:(unint64_t)a3
{
  if (a3 - 1 < 4)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (int)_translateToBiomeUserSpecificPlaceType:(unint64_t)a3
{
  if (a3 - 1 < 4)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (int)_translateToBiomeUserSpecificPlaceTypeSource:(unint64_t)a3
{
  if (a3 > 3)
  {
    if (a3 != 4)
    {
      if (a3 == 16)
      {
        return 5;
      }

      return 0;
    }

    return 3;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return 2;
      }

      return 0;
    }

    return 1;
  }
}

- (id)_translateToBiomeMapItem:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CF1420]);
    v5 = [v3 identifier];
    v6 = [v3 name];
    v7 = [v3 address];
    v8 = [v7 description];
    v9 = [v3 category];
    v10 = [v4 initWithIdentifier:v5 name:v6 address:v8 category:v9];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapItem", v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)_translateToBiomePlaceInference:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CF1418]);
    v6 = [v4 loiIdentifier];
    v7 = -[RTBiomeManager _translateToBiomePlaceType:](self, "_translateToBiomePlaceType:", [v4 placeType]);
    v8 = -[RTBiomeManager _translateToBiomeUserSpecificPlaceType:](self, "_translateToBiomeUserSpecificPlaceType:", [v4 userType]);
    v9 = -[RTBiomeManager _translateToBiomeUserSpecificPlaceTypeSource:](self, "_translateToBiomeUserSpecificPlaceTypeSource:", [v4 userTypeSource]);
    v10 = [v4 mapItem];
    v11 = [(RTBiomeManager *)self _translateToBiomeMapItem:v10];
    v12 = [v5 initWithIdentifier:v6 placeType:v7 userSpecificPlaceType:v8 userSpecificPlaceTypeSource:v9 mapItem:v11];
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: placeInference", v15, 2u);
    }

    v12 = 0;
  }

  return v12;
}

- (int)_translateToBiomeVisitType:(int64_t)a3
{
  if ((a3 - 1) < 3)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (int)_translateToBiomeVisitSource:(int64_t)a3
{
  if ((a3 - 1) < 3)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (id)_translateRTVisitToBiomeObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v20 = objc_alloc(MEMORY[0x277CF12D0]);
    v19 = [v4 date];
    v18 = -[RTBiomeManager _translateToBiomeVisitType:](self, "_translateToBiomeVisitType:", [v4 type]);
    v5 = [v4 location];
    v6 = [(RTBiomeManager *)self _translateToBiomeVisitLocation:v5];
    v7 = [v4 entry];
    v8 = [v4 exit];
    v9 = MEMORY[0x277CCABB0];
    [v4 confidence];
    v10 = [v9 numberWithDouble:?];
    v11 = -[RTBiomeManager _translateToBiomeVisitSource:](self, "_translateToBiomeVisitSource:", [v4 source]);
    v12 = [v4 placeInference];
    v13 = [(RTBiomeManager *)self _translateToBiomePlaceInference:v12];
    LODWORD(v17) = v11;
    v14 = [v20 initWithDetectionDate:v19 type:v18 location:v6 entryDate:v7 exitDate:v8 confidence:v10 source:v17 placeInference:v13];
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (void)_publishNewHindsightVisitsToBiomeWithError:(id *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__160;
  v30 = __Block_byref_object_dispose__160;
  v31 = 0;
  if ([(RTBiomeManager *)self routineEnabled])
  {
    if ([(RTBiomeManager *)self encryptedDataAvailability]== 2)
    {
      v6 = (v27 + 5);
      obj = v27[5];
      v7 = [(RTBiomeManager *)self _getLatestBiomeDataForStreamType:5 error:&obj];
      objc_storeStrong(v6, obj);
      v8 = v27[5];
      if (v8)
      {
        *a3 = v8;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v15 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138739971;
            v33 = v7;
            _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "Latest visit in Biome %{sensitive}@", buf, 0xCu);
          }
        }

        v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
        v17 = [v7 exitDate];
        if (v17)
        {
          v18 = [v7 exitDate];
          v19 = [v18 compare:v16] == 1;

          if (v19)
          {
            v20 = [v7 exitDate];

            v16 = v20;
          }
        }

        v21 = [(RTBiomeManager *)self learnedLocationManager];
        v22 = [MEMORY[0x277CBEAA8] distantFuture];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __61__RTBiomeManager__publishNewHindsightVisitsToBiomeWithError___block_invoke;
        v24[3] = &unk_2788D0C68;
        v24[4] = self;
        v24[5] = &v26;
        v24[6] = a2;
        [v21 fetchHindsightVisitsBetweenStartDate:v16 endDate:v22 ascending:1 handler:v24];

        v23 = v27[5];
        if (v23)
        {
          *a3 = v23;
        }
      }

LABEL_21:

      goto LABEL_22;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        *buf = 138412546;
        v33 = v13;
        v34 = 2112;
        v35 = v14;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, %@, Encrypted data not available, data is not published", buf, 0x16u);
      }

      goto LABEL_21;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      *buf = 138412546;
      v33 = v10;
      v34 = 2112;
      v35 = v11;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, %@, Significant Locations disabled, data is not published", buf, 0x16u);
    }

    goto LABEL_21;
  }

LABEL_22:
  _Block_object_dispose(&v26, 8);
}

void __61__RTBiomeManager__publishNewHindsightVisitsToBiomeWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Fetch hindsight visits error, %@", buf, 0xCu);
    }

    v8 = *(*(a1 + 40) + 8);
    v9 = v6;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v11 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__RTBiomeManager__publishNewHindsightVisitsToBiomeWithError___block_invoke_47;
    block[3] = &unk_2788C5020;
    v12 = v5;
    v13 = *(a1 + 32);
    v15 = v12;
    v16 = v13;
    v17 = *(a1 + 48);
    dispatch_async(v11, block);

    v10 = v15;
  }
}

void __61__RTBiomeManager__publishNewHindsightVisitsToBiomeWithError___block_invoke_47(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) count];
      *buf = 134217984;
      v24 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "New hindsight visits count %lu", buf, 0xCu);
    }
  }

  v16 = [objc_opt_class() biomeStreamTypeToBiomeStream:5];
  v4 = [v16 source];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v9 = MEMORY[0x277D86220];
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(a1 + 40) _translateRTVisitToBiomeObject:*(*(&v19 + 1) + 8 * v10)];
        [v4 sendEvent:v11];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = objc_opt_class();
            v18 = NSStringFromClass(v13);
            v17 = NSStringFromSelector(*(a1 + 48));
            v14 = [objc_opt_class() streamTypeToString:5];
            *buf = 138413059;
            v24 = v18;
            v25 = 2112;
            v26 = v17;
            v27 = 2117;
            v28 = v11;
            v29 = 2112;
            v30 = v14;
            v15 = v14;
            _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@, %@, sent event, %{sensitive}@, streamType, %@", buf, 0x2Au);
          }
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v7);
  }
}

- (void)_clearBiomeStreamForStreamType:(int64_t)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (a3 == 5)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v5 = v4;
    v6 = [objc_opt_class() biomeStreamTypeToBiomeStream:5];
    v7 = [v6 pruner];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__RTBiomeManager__clearBiomeStreamForStreamType_error___block_invoke;
    v16[3] = &__block_descriptor_40_e26_B24__0__BMStoreEvent_8_B16l;
    v16[4] = v5;
    [v7 deleteEventsPassingTest:v16];
  }

  else
  {
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"Unsupported stream type";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v6];
    *a4 = v7;
    v11 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      v15 = [objc_opt_class() streamTypeToString:a3];
      *buf = 138413058;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v7;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, %@, streamType, %@, error, %@", buf, 0x2Au);
    }
  }
}

BOOL __55__RTBiomeManager__clearBiomeStreamForStreamType_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [v3 timestamp];
      v9 = v8;
      v10 = [v3 eventBody];
      v11 = 134218243;
      v12 = v9;
      v13 = 2117;
      v14 = v10;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "Pruned Biome Event %f, %{sensitive}@", &v11, 0x16u);
    }
  }

  [v3 timestamp];
  v6 = v5 < *(a1 + 32);

  return v6;
}

- (id)_getLatestBiomeDataForStreamType:(int64_t)a3 error:(id *)a4
{
  v66[1] = *MEMORY[0x277D85DE8];
  if (a3 == 5)
  {
    v4 = [objc_opt_class() biomeStreamTypeToBiomeStream:5];
    v5 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:1 lastN:1 reversed:0];
    v6 = [v4 publisherWithOptions:v5];

    v7 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v64 = __Block_byref_object_copy__160;
    *&v65 = __Block_byref_object_dispose__160;
    *(&v65 + 1) = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__160;
    v52 = __Block_byref_object_dispose__160;
    v53 = 0;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __57__RTBiomeManager__getLatestBiomeDataForStreamType_error___block_invoke;
    v45[3] = &unk_2788D0CB0;
    v47 = &v48;
    v8 = v7;
    v46 = v8;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __57__RTBiomeManager__getLatestBiomeDataForStreamType_error___block_invoke_2;
    v44[3] = &unk_2788D0CD8;
    v44[4] = buf;
    v9 = [v6 sinkWithCompletion:v45 receiveInput:v44];
    v10 = v8;
    v11 = [MEMORY[0x277CBEAA8] now];
    v12 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v10, v12))
    {
      v13 = [MEMORY[0x277CBEAA8] now];
      [v13 timeIntervalSinceDate:v11];
      v15 = v14;
      v16 = objc_opt_new();
      v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_134];
      v18 = [MEMORY[0x277CCACC8] callStackSymbols];
      v19 = [v18 filteredArrayUsingPredicate:v17];
      v20 = [v19 firstObject];

      [v16 submitToCoreAnalytics:v20 type:1 duration:v15];
      v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *v56 = 0;
        _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v56, 2u);
      }

      v22 = MEMORY[0x277CCA9B8];
      v66[0] = *MEMORY[0x277CCA450];
      *v56 = @"semaphore wait timeout";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v66 count:1];
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

    v29 = v24;
    if (v29)
    {
      objc_storeStrong(v49 + 5, v24);
    }

    v30 = v49[5];
    if (v30)
    {
      *a4 = v30;
      v31 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = NSStringFromSelector(a2);
        v40 = [objc_opt_class() streamTypeToString:5];
        v41 = v49[5];
        *v56 = 138413058;
        *&v56[4] = v38;
        v57 = 2112;
        v58 = v39;
        v59 = 2112;
        v60 = v40;
        v61 = 2112;
        v62 = v41;
        _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "%@, %@, streamType, %@, error, %@", v56, 0x2Au);
      }
    }

    v28 = *(*&buf[8] + 40);

    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v54 = *MEMORY[0x277CCA450];
    v55 = @"Unsupported stream type";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v4];
    v27 = v6;
    *a4 = v6;
    v10 = _rt_log_facility_get_os_log(RTLogFacilityBiome);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = NSStringFromSelector(a2);
      v36 = [objc_opt_class() streamTypeToString:a3];
      *buf = 138413058;
      *&buf[4] = v34;
      *&buf[12] = 2112;
      *&buf[14] = v35;
      *&buf[22] = 2112;
      v64 = v36;
      LOWORD(v65) = 2112;
      *(&v65 + 2) = v6;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%@, %@, streamType, %@, error, %@", buf, 0x2Au);
    }

    v28 = 0;
  }

  return v28;
}

void __57__RTBiomeManager__getLatestBiomeDataForStreamType_error___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 state])
  {
    v3 = [v6 error];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __57__RTBiomeManager__getLatestBiomeDataForStreamType_error___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v8 eventBody];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

+ (id)biomeStreamTypeToBiomeStream:(int64_t)a3
{
  v3 = 0;
  if (a3 <= 2)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_15;
      }

      v4 = BiomeLibrary();
      v5 = [v4 Device];
      v6 = [v5 ScreenLocked];
      goto LABEL_10;
    }

    v4 = BiomeLibrary();
    v5 = [v4 Device];
    v7 = [v5 Power];
    v8 = [v7 PluggedIn];
    goto LABEL_13;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      if (a3 != 5)
      {
        goto LABEL_15;
      }

      v4 = BiomeLibrary();
      v5 = [v4 Location];
      v6 = [v5 Visit];
      goto LABEL_10;
    }

    v4 = BiomeLibrary();
    v5 = [v4 Device];
    v7 = [v5 Wireless];
    v8 = [v7 WiFi];
LABEL_13:
    v3 = v8;

    goto LABEL_14;
  }

  v4 = BiomeLibrary();
  v5 = [v4 Motion];
  v6 = [v5 Activity];
LABEL_10:
  v3 = v6;
LABEL_14:

LABEL_15:

  return v3;
}

+ (id)streamTypeToString:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788D0CF8[a3 - 1];
  }
}

@end