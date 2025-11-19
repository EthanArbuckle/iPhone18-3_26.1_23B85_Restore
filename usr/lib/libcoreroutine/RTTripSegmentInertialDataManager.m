@interface RTTripSegmentInertialDataManager
+ (id)vendedClasses;
- (RTTripSegmentInertialDataManager)initWithInertialDataStore:(id)a3 routineLocationManager:(id)a4;
- (void)_addTripSegmentInertialData:(id)a3 handler:(id)a4;
- (void)_fetchTripSegmentInertialDataWithOptions:(id)a3 handler:(id)a4;
- (void)addTripSegmentInertialData:(id)a3 handler:(id)a4;
- (void)fetchEnumerableObjectsWithOptions:(id)a3 offset:(unint64_t)a4 handler:(id)a5;
- (void)fetchTripSegmentInertialDataWithOptions:(id)a3 handler:(id)a4;
- (void)inertialDataManager:(id)a3 didUpdateInertialData:(id)a4;
- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
@end

@implementation RTTripSegmentInertialDataManager

- (RTTripSegmentInertialDataManager)initWithInertialDataStore:(id)a3 routineLocationManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v12 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: inertialDataStore";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_9;
  }

  if (!v8)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: routineLocationManager";
    goto LABEL_12;
  }

  v16.receiver = self;
  v16.super_class = RTTripSegmentInertialDataManager;
  v10 = [(RTNotifier *)&v16 init];
  p_isa = &v10->super.super.super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_inertialDataStore, a3);
    objc_storeStrong(p_isa + 4, a4);
    [p_isa[4] setInertialDelegate:p_isa];
  }

  self = p_isa;
  v12 = self;
LABEL_10:

  return v12;
}

- (void)_fetchTripSegmentInertialDataWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "RTTripSegmentInertialDataManager: invoking RTTripSegmentInertialDataStore fetchTripSegmentInertialDataWithOptions", v10, 2u);
    }
  }

  v9 = [(RTTripSegmentInertialDataManager *)self inertialDataStore];
  [v9 fetchStoredTripSegmentInertialDataWithOptions:v6 handler:v7];
}

- (void)fetchTripSegmentInertialDataWithOptions:(id)a3 handler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[RTTripSegmentInertialDataManager fetchTripSegmentInertialDataWithOptions:handler:]";
    v19 = 1024;
    v20 = 62;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTTripSegmentInertialDataManager fetchTripSegmentInertialDataWithOptions:handler:]";
      v19 = 1024;
      v20 = 63;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__RTTripSegmentInertialDataManager_fetchTripSegmentInertialDataWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = v6;
  v16 = v8;
  v12 = v8;
  v13 = v6;
  dispatch_async(v11, block);
}

- (void)_addTripSegmentInertialData:(id)a3 handler:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 count])
  {
    v9 = [(RTTripSegmentInertialDataManager *)self inertialDataStore];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__RTTripSegmentInertialDataManager__addTripSegmentInertialData_handler___block_invoke;
    v14[3] = &unk_2788C4780;
    v16 = a2;
    v15 = v8;
    [v9 storeWritableObjects:v7 handler:v14];

    v10 = v15;
LABEL_5:

    goto LABEL_6;
  }

  if (v8)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D01448];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"requires valid locations.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v11 errorWithDomain:v12 code:7 userInfo:v10];
    (*(v8 + 2))(v8, v13);

    goto LABEL_5;
  }

LABEL_6:
}

void __72__RTTripSegmentInertialDataManager__addTripSegmentInertialData_handler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(*(a1 + 40));
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "RTTripSegmentInertialDataStore,%@,error,%@", &v7, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)addTripSegmentInertialData:(id)a3 handler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v19 = "[RTTripSegmentInertialDataManager addTripSegmentInertialData:handler:]";
    v20 = 1024;
    v21 = 105;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: samples (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTTripSegmentInertialDataManager addTripSegmentInertialData:handler:]";
      v20 = 1024;
      v21 = 106;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTTripSegmentInertialDataManager_addTripSegmentInertialData_handler___block_invoke;
  block[3] = &unk_2788C4500;
  v15 = v6;
  v16 = self;
  v17 = v8;
  v12 = v8;
  v13 = v6;
  dispatch_async(v11, block);
}

void __71__RTTripSegmentInertialDataManager_addTripSegmentInertialData_handler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) enumerateObjectsUsingBlock:&__block_literal_global_39];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__RTTripSegmentInertialDataManager_addTripSegmentInertialData_handler___block_invoke_23;
  v5[3] = &unk_2788C9428;
  v6 = v2;
  v4 = v2;
  [v3 enumerateObjectsUsingBlock:v5];
  [*(a1 + 40) _addTripSegmentInertialData:v4 handler:*(a1 + 48)];
}

void __71__RTTripSegmentInertialDataManager_addTripSegmentInertialData_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [v2 timestamp];
      [v4 timeIntervalSinceReferenceDate];
      v6 = v5;
      [v2 deltaCourse_rad];
      v8 = v7;
      [v2 deltaSpeed_mps];
      v10 = v9;
      [v2 dataPeriod_s];
      v12 = v11;
      [v2 deltaCourseVar_rad2];
      v14 = v13;
      [v2 deltaSpeedVar_mps2];
      v16 = v15;
      [v2 deltaCourseSpeedCovar_radmps];
      v18 = 134219521;
      v19 = v6;
      v20 = 2053;
      v21 = v8;
      v22 = 2053;
      v23 = v10;
      v24 = 2053;
      v25 = v12;
      v26 = 2053;
      v27 = v14;
      v28 = 2053;
      v29 = v16;
      v30 = 2053;
      v31 = v17;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "RTInertialDataManager,CLTripSegmentInertialData,gpsTime,%.3lf,deltaCourse_rad,%{sensitive}.3lf,deltaSpeed_mps,%{sensitive}.3lf,dataPeriod_s,%{sensitive}.3lf,deltaCourseVar_rad2,%{sensitive}8lf,deltaSpeedVar_mps2,%{sensitive}8lf,deltaCourseSpeedCovar_radmps,%{sensitive}8lf", &v18, 0x48u);
    }
  }
}

void __71__RTTripSegmentInertialDataManager_addTripSegmentInertialData_handler___block_invoke_23(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isValid])
  {
    [*(a1 + 32) addObject:v3];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "invalid CLTripSegmentInertialData,%@", &v5, 0xCu);
    }
  }
}

- (void)inertialDataManager:(id)a3 didUpdateInertialData:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__RTTripSegmentInertialDataManager_inertialDataManager_didUpdateInertialData___block_invoke;
  v8[3] = &unk_2788C4D10;
  v9 = v6;
  v10 = a2;
  v7 = v6;
  [(RTTripSegmentInertialDataManager *)self addTripSegmentInertialData:v7 handler:v8];
}

void __78__RTTripSegmentInertialDataManager_inertialDataManager_didUpdateInertialData___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = *(a1 + 32);
      v7 = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@, addTripSegmentInertialData, %@, error, %@", &v7, 0x20u);
    }
  }
}

- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__RTTripSegmentInertialDataManager_performPurgeOfType_referenceDate_completion___block_invoke;
  block[3] = &unk_2788C47A8;
  v17 = v10;
  v18 = a3;
  v15 = v9;
  v16 = self;
  v19 = a2;
  v12 = v10;
  v13 = v9;
  dispatch_async(v11, block);
}

void __80__RTTripSegmentInertialDataManager_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) <= 2uLL && (v2 = *(a1 + 32)) != 0)
  {
    v3 = v2;
    v4 = [*(a1 + 40) inertialDataStore];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __80__RTTripSegmentInertialDataManager_performPurgeOfType_referenceDate_completion___block_invoke_2;
    v6[3] = &unk_2788C4780;
    v8 = *(a1 + 64);
    v7 = *(a1 + 48);
    [v4 purgeTripSegmentInertialDataPredating:v3 handler:v6];
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __80__RTTripSegmentInertialDataManager_performPurgeOfType_referenceDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@, performPurgeOfType, error, %@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

+ (id)vendedClasses
{
  v2 = vendedClasses_vendedClasses_0;
  if (!vendedClasses_vendedClasses_0)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v4 = vendedClasses_vendedClasses_0;
    vendedClasses_vendedClasses_0 = v3;

    v2 = vendedClasses_vendedClasses_0;
  }

  return v2;
}

- (void)fetchEnumerableObjectsWithOptions:(id)a3 offset:(unint64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = [(RTNotifier *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__RTTripSegmentInertialDataManager_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke;
    v12[3] = &unk_2788C6940;
    v13 = v8;
    v14 = self;
    v15 = v9;
    v16 = a4;
    dispatch_async(v10, v12);

    v11 = v13;
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

void __85__RTTripSegmentInertialDataManager_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D01448];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"options cannot be nil";
    v8 = MEMORY[0x277CBEAC0];
    v9 = v17;
    v10 = &v16;
LABEL_8:
    v11 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
    v12 = [v6 errorWithDomain:v7 code:7 userInfo:v11];

    (*(*(a1 + 48) + 16))();
    return;
  }

  v3 = [v2 enumeratedType];
  v4 = [objc_opt_class() vendedClasses];
  v5 = [v4 member:v3];

  if (!v5)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D01448];
    v14 = *MEMORY[0x277CCA450];
    v15 = @"the type specified by options is not vended by this manager";
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v15;
    v10 = &v14;
    goto LABEL_8;
  }

  v13 = [*(a1 + 40) inertialDataStore];
  [v13 fetchEnumerableObjectsWithOptions:*(a1 + 32) offset:*(a1 + 56) handler:*(a1 + 48)];
}

@end