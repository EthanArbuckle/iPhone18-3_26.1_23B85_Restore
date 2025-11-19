@interface RTPlaceTypeClassifierExpertInferred
- (RTPlaceTypeClassifierExpertInferred)initWithBiomeManager:(id)a3 defaultsManager:(id)a4 distanceCalculator:(id)a5 learnedLocationStore:(id)a6 placeTypeClassifierMetricsCalculator:(id)a7 platform:(id)a8;
- (id)classifyWithError:(id *)a3;
@end

@implementation RTPlaceTypeClassifierExpertInferred

- (RTPlaceTypeClassifierExpertInferred)initWithBiomeManager:(id)a3 defaultsManager:(id)a4 distanceCalculator:(id)a5 learnedLocationStore:(id)a6 placeTypeClassifierMetricsCalculator:(id)a7 platform:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v27 = a6;
  v26 = a7;
  v18 = a8;
  v25 = v18;
  if (!v15)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: biomeManager";
LABEL_22:
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    goto LABEL_23;
  }

  if (!v16)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_22;
  }

  if (!v17)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_22;
  }

  if (!v27)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: learnedLocationStore";
    goto LABEL_22;
  }

  if (!v26)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: placeTypeClassifierMetricsCalculator";
    goto LABEL_22;
  }

  if (!v18)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "Invalid parameter not satisfying: platform";
      goto LABEL_22;
    }

LABEL_23:

    v21 = 0;
    goto LABEL_24;
  }

  v28.receiver = self;
  v28.super_class = RTPlaceTypeClassifierExpertInferred;
  v19 = [(RTPlaceTypeClassifierExpertInferred *)&v28 init];
  p_isa = &v19->super.isa;
  if (v19)
  {
    objc_storeStrong(&v19->_biomeManager, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
    objc_storeStrong(p_isa + 6, a8);
  }

  self = p_isa;
  v21 = self;
LABEL_24:

  return v21;
}

- (id)classifyWithError:(id *)a3
{
  v62 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__83;
  v58 = __Block_byref_object_dispose__83;
  v4 = [RTLearnedPlaceTypeInferenceGenerator alloc];
  v5 = [(RTPlaceTypeClassifierExpertInferred *)self biomeManager];
  v6 = [(RTPlaceTypeClassifierExpertInferred *)self defaultsManager];
  v7 = [(RTPlaceTypeClassifierExpertInferred *)self distanceCalculator];
  v8 = [(RTPlaceTypeClassifierExpertInferred *)self learnedLocationStore];
  v9 = [(RTPlaceTypeClassifierExpertInferred *)self placeTypeClassifierMetricsCalculator];
  v10 = [(RTPlaceTypeClassifierExpertInferred *)self platform];
  v59 = [(RTLearnedPlaceTypeInferenceGenerator *)v4 initWithBiomeManager:v5 defaultsManager:v6 distanceCalculator:v7 learnedLocationStore:v8 placeTypeClassifierMetricsCalculator:v9 platform:v10];

  v11 = objc_alloc(MEMORY[0x277CCA970]);
  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-3628800.0];
  v13 = [MEMORY[0x277CBEAA8] distantFuture];
  v14 = [v11 initWithStartDate:v12 endDate:v13];

  v15 = [[RTStoredLocationOfInterestEnumerationOptions alloc] initWithAscendingVisitEntryDate:1 batchSize:5 dateInterval:v14 singleVisit:0];
  v16 = dispatch_semaphore_create(0);
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__83;
  v52 = __Block_byref_object_dispose__83;
  v53 = 0;
  learnedLocationStore = self->_learnedLocationStore;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __57__RTPlaceTypeClassifierExpertInferred_classifyWithError___block_invoke;
  v44[3] = &unk_2788CBA50;
  v46 = &v48;
  v47 = &v54;
  v18 = v16;
  v45 = v18;
  [(RTLearnedLocationStore *)learnedLocationStore enumerateStoredLocationsOfInterestWithOptions:v15 enumerationBlock:v44];
  v19 = v18;
  v20 = [MEMORY[0x277CBEAA8] now];
  v21 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v19, v21))
  {
    v22 = [MEMORY[0x277CBEAA8] now];
    [v22 timeIntervalSinceDate:v20];
    v24 = v23;
    v25 = objc_opt_new();
    v26 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_68];
    v27 = [MEMORY[0x277CCACC8] callStackSymbols];
    v28 = [v27 filteredArrayUsingPredicate:v26];
    v29 = [v28 firstObject];

    [v25 submitToCoreAnalytics:v29 type:1 duration:v24];
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v30, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v31 = MEMORY[0x277CCA9B8];
    v60 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v60 count:1];
    v33 = [v31 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v32];

    if (v33)
    {
      v34 = v33;

      v35 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v33 = 0;
  }

  v35 = 1;
LABEL_8:

  v36 = v33;
  if ((v35 & 1) == 0)
  {
    objc_storeStrong(v49 + 5, v33);
  }

  v37 = v49[5];
  if (v37)
  {
    v38 = v37;
    v39 = 0;
  }

  else
  {
    v39 = [v55[5] inferPlaceTypes];
  }

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);

  objc_autoreleasePoolPop(context);
  if (a3)
  {
    v40 = v37;
    *a3 = v37;
  }

  return v39;
}

void __57__RTPlaceTypeClassifierExpertInferred_classifyWithError___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          v15 = objc_autoreleasePoolPush();
          v16 = [v14 place];
          v17 = [v14 visits];
          [*(*(*(a1 + 48) + 8) + 40) submitVisits:v17 place:v16];

          objc_autoreleasePoolPop(v15);
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

@end