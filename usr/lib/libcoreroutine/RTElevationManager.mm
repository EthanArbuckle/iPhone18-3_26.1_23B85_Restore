@interface RTElevationManager
- (RTElevationManager)initWithElevationStore:(id)a3 elevationProvider:(id)a4;
- (void)_addElevations:(id)a3 handler:(id)a4;
- (void)_fetchElevationsWithContext:(id)a3 handler:(id)a4;
- (void)_fetchElevationsWithOptions:(id)a3 handler:(id)a4;
- (void)_purgeElevationsPredating:(id)a3 handler:(id)a4;
- (void)addElevations:(id)a3 handler:(id)a4;
- (void)fetchElevationsWithContext:(id)a3 handler:(id)a4;
- (void)fetchElevationsWithOptions:(id)a3 handler:(id)a4;
- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
- (void)purgeElevationsPredating:(id)a3 handler:(id)a4;
@end

@implementation RTElevationManager

- (RTElevationManager)initWithElevationStore:(id)a3 elevationProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v15.receiver = self;
    v15.super_class = RTElevationManager;
    v9 = [(RTNotifier *)&v15 init];
    p_isa = &v9->super.super.super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_elevationStore, a3);
      objc_storeStrong(p_isa + 5, a4);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "RTElevationManager successfully initialized.", buf, 2u);
        }
      }
    }

    self = p_isa;
    v12 = self;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: elevationStore", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)_fetchElevationsWithOptions:(id)a3 handler:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[RTElevationManager _fetchElevationsWithOptions:handler:]";
      v18 = 1024;
      v19 = 42;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
    }
  }

  elevationStore = self->_elevationStore;
  if (elevationStore)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__RTElevationManager__fetchElevationsWithOptions_handler___block_invoke;
    v12[3] = &unk_2788C5508;
    v15 = a2;
    v13 = v7;
    v14 = v8;
    [(RTElevationStore *)elevationStore fetchStoredElevationsWithOptions:v13 handler:v12];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "ElevationStore was nil.", buf, 2u);
    }

    (*(v8 + 2))(v8, MEMORY[0x277CBEBF8], 0);
  }
}

void __58__RTElevationManager__fetchElevationsWithOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 48));
      v9 = [v5 count];
      v10 = *(a1 + 32);
      v14 = [v5 firstObject];
      v11 = [v14 startDate];
      v12 = [v5 lastObject];
      v13 = [v12 endDate];
      *buf = 138413314;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@ fetched %ld elevations, options, %@, first elevation start date, %@, last elevation end date, %@", buf, 0x34u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchElevationsWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RTElevationManager_fetchElevationsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchElevationsWithContext:(id)a3 handler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    elevationStore = self->_elevationStore;
    if (elevationStore)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __58__RTElevationManager__fetchElevationsWithContext_handler___block_invoke;
      v15[3] = &unk_2788C5508;
      v18 = a2;
      v16 = v7;
      v17 = v8;
      [(RTElevationStore *)elevationStore fetchStoredElevationsWithContext:v16 handler:v15];
    }

    else
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "ElevationStore was nil.", buf, 2u);
      }

      (*(v8 + 2))(v8, MEMORY[0x277CBEBF8], 0);
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[RTElevationManager _fetchElevationsWithContext:handler:]";
      v23 = 1024;
      v24 = 76;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v19 = *MEMORY[0x277CCA450];
    v20 = @"A completion handler is a required parameter.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v11];
    v13 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "A completion handler is a required parameter, %@", buf, 0xCu);
    }
  }
}

void __58__RTElevationManager__fetchElevationsWithContext_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(*(a1 + 48));
      v9 = [v5 count];
      v10 = *(a1 + 32);
      v14 = [v5 firstObject];
      v11 = [v14 endDate];
      v12 = [v5 lastObject];
      v13 = [v12 endDate];
      *buf = 138413315;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2117;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@,fetched %ld elevations, context, %{sensitive}@, first elevation date, %@, last elevation date, %@", buf, 0x34u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchElevationsWithContext:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RTElevationManager_fetchElevationsWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_addElevations:(id)a3 handler:(id)a4
{
  v58[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v43 = a4;
  if ([v5 count])
  {
    v6 = [v5 firstObject];
    v40 = [v6 endDate];

    v7 = [v5 lastObject];
    v39 = [v7 endDate];

    v41 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v40 endDate:v39];
    *&v53 = 0;
    *(&v53 + 1) = &v53;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__126;
    v56 = __Block_byref_object_dispose__126;
    v57 = 0;
    v8 = dispatch_semaphore_create(0);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v10;
        v51 = 2112;
        v52 = v41;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@ Deleting overlapping elevations in range: %@", buf, 0x16u);
      }
    }

    elevationStore = self->_elevationStore;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __45__RTElevationManager__addElevations_handler___block_invoke;
    v45[3] = &unk_2788C6F18;
    v47 = &v53;
    v48 = a2;
    v12 = v8;
    v46 = v12;
    [(RTElevationStore *)elevationStore removeInterimElevations:v41 handler:v45];
    v13 = (*(&v53 + 1) + 40);
    obj = *(*(&v53 + 1) + 40);
    v14 = v12;
    v15 = [MEMORY[0x277CBEAA8] now];
    v16 = dispatch_time(0, 3600000000000);
    if (!dispatch_semaphore_wait(v14, v16))
    {
      goto LABEL_14;
    }

    v17 = [MEMORY[0x277CBEAA8] now];
    [v17 timeIntervalSinceDate:v15];
    v19 = v18;
    v20 = objc_opt_new();
    v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_104];
    v22 = [MEMORY[0x277CCACC8] callStackSymbols];
    v23 = [v22 filteredArrayUsingPredicate:v21];
    v24 = [v23 firstObject];

    [v20 submitToCoreAnalytics:v24 type:1 duration:v19];
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *v49 = 0;
      _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v49, 2u);
    }

    v26 = MEMORY[0x277CCA9B8];
    v58[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v58 count:1];
    v28 = [v26 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v27];

    if (v28)
    {
      v29 = v28;

      objc_storeStrong(v13, v28);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v30 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v35 = NSStringFromSelector(a2);
          v36 = *(*(&v53 + 1) + 40);
          *buf = 138412546;
          *&buf[4] = v35;
          v51 = 2112;
          v52 = v36;
          _os_log_debug_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEBUG, "%@ Elevation removeElevations timeout %@", buf, 0x16u);
        }
      }
    }

    else
    {
LABEL_14:

      objc_storeStrong(v13, obj);
    }

    v31 = *(*(&v53 + 1) + 40);
    if (!v31)
    {
      v32 = self->_elevationStore;
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __45__RTElevationManager__addElevations_handler___block_invoke_6;
      v44[3] = &unk_2788CF0F0;
      v44[4] = &v53;
      v44[5] = a2;
      [(RTElevationStore *)v32 storeElevations:v5 handler:v44];
      v31 = *(*(&v53 + 1) + 40);
    }

    v43[2](v43, v31);

    _Block_object_dispose(&v53, 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v33 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = NSStringFromSelector(a2);
        LODWORD(v53) = 138412290;
        *(&v53 + 4) = v34;
        _os_log_debug_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEBUG, "%@ Adding empty elevation array", &v53, 0xCu);
      }
    }

    v43[2](v43, 0);
  }
}

void __45__RTElevationManager__addElevations_handler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = NSStringFromSelector(*(a1 + 48));
        v7 = 138412546;
        v8 = v6;
        v9 = 2112;
        v10 = v4;
        _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@ Error removing elevations: %@", &v7, 0x16u);
      }
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __45__RTElevationManager__addElevations_handler___block_invoke_6(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = NSStringFromSelector(*(a1 + 40));
        v7 = 138412546;
        v8 = v6;
        v9 = 2112;
        v10 = v4;
        _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@ Store elevations error %@", &v7, 0x16u);
      }
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (void)addElevations:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RTElevationManager_addElevations_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_purgeElevationsPredating:(id)a3 handler:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
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
    v12 = 136315394;
    v13 = "[RTElevationManager _purgeElevationsPredating:handler:]";
    v14 = 1024;
    v15 = 189;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", &v12, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[RTElevationManager _purgeElevationsPredating:handler:]";
      v14 = 1024;
      v15 = 190;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v12, 0x12u);
    }
  }

LABEL_10:
  v11 = [(RTElevationManager *)self elevationStore];
  [v11 removeElevationsPredating:v6 handler:v8];
}

- (void)purgeElevationsPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__RTElevationManager_purgeElevationsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RTElevationManager_performPurgeOfType_referenceDate_completion___block_invoke;
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

void __66__RTElevationManager_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) <= 2uLL && (v2 = *(a1 + 32)) != 0)
  {
    v3 = v2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__RTElevationManager_performPurgeOfType_referenceDate_completion___block_invoke_2;
    v6[3] = &unk_2788C4780;
    v8 = *(a1 + 64);
    v4 = *(a1 + 40);
    v7 = *(a1 + 48);
    [v4 purgeElevationsPredating:v3 handler:v6];
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __66__RTElevationManager_performPurgeOfType_referenceDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
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

@end