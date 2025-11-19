@interface RTLearnedLocationReconcilerPerVisit
+ (void)submitMetricsOnReconciledGraphDensity:(id)a3 algorithm:(unint64_t)a4 persistenceManager:(id)a5 managedObjectContext:(id)a6;
- (RTLearnedLocationReconcilerPerVisit)initWithPersistenceManager:(id)a3 defaultsManager:(id)a4;
- (RTLearnedLocationReconcilerPerVisit)initWithPersistenceManager:(id)a3 defaultsManager:(id)a4 distanceCalculator:(id)a5 reconciliationModels:(id)a6;
- (id)_currentModel;
- (id)_findWinner:(id)a3 currentVisit:(id)a4 model:(id)a5 modelContext:(id)a6;
- (id)_visitFollowingVisit:(id)a3 visits:(id)a4;
- (id)_visitsWithContext:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 error:(id *)a6;
- (void)_performReconciliationWithHandler:(id)a3;
- (void)_reconcileVisits:(id)a3 context:(id)a4 handler:(id)a5;
- (void)_reconcileVisits:(id)a3 handler:(id)a4;
- (void)_reconcileVisitsWithContext:(id)a3 handler:(id)a4;
- (void)collapseReconciledVisitsToLocationsOfInterest:(id)a3 context:(id)a4 handler:(id)a5;
- (void)collapseVisits:(id)a3 context:(id)a4;
- (void)performReconciliationWithHandler:(id)a3;
- (void)reconcileVisits:(id)a3 context:(id)a4 handler:(id)a5;
- (void)reconcileVisits:(id)a3 handler:(id)a4;
@end

@implementation RTLearnedLocationReconcilerPerVisit

- (RTLearnedLocationReconcilerPerVisit)initWithPersistenceManager:(id)a3 defaultsManager:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v13[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [(RTLearnedLocationReconcilerPerVisit *)self initWithPersistenceManager:v7 defaultsManager:v6 distanceCalculator:v8 reconciliationModels:v10];

  return v11;
}

- (RTLearnedLocationReconcilerPerVisit)initWithPersistenceManager:(id)a3 defaultsManager:(id)a4 distanceCalculator:(id)a5 reconciliationModels:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[RTLearnedLocationReconcilerPerVisit initWithPersistenceManager:defaultsManager:distanceCalculator:reconciliationModels:]";
      v36 = 1024;
      v37 = 164;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: persistenceManager (in %s:%d)", buf, 0x12u);
    }

    if (v12)
    {
LABEL_3:
      if (v13)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v35 = "[RTLearnedLocationReconcilerPerVisit initWithPersistenceManager:defaultsManager:distanceCalculator:reconciliationModels:]";
    v36 = 1024;
    v37 = 165;
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager (in %s:%d)", buf, 0x12u);
  }

  if (!v13)
  {
LABEL_11:
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[RTLearnedLocationReconcilerPerVisit initWithPersistenceManager:defaultsManager:distanceCalculator:reconciliationModels:]";
      v36 = 1024;
      v37 = 166;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distanceCalculator (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_14:
  if (![v14 count])
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[RTLearnedLocationReconcilerPerVisit initWithPersistenceManager:defaultsManager:distanceCalculator:reconciliationModels:]";
      v36 = 1024;
      v37 = 167;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "no reconcilation models available (in %s:%d)", buf, 0x12u);
    }
  }

  v19 = 0;
  if (v11 && v12 && v13)
  {
    if ([v14 count])
    {
      v33.receiver = self;
      v33.super_class = RTLearnedLocationReconcilerPerVisit;
      v20 = [(RTLearnedLocationReconcilerPerVisit *)&v33 init];
      v21 = v20;
      if (v20)
      {
        obj = a4;
        v22 = v20;
        v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [(RTLearnedLocationReconcilerPerVisit *)v22 UTF8String];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v22];
          v25 = v31 = a5;
          v24 = [v25 UTF8String];

          a5 = v31;
        }

        v26 = dispatch_queue_create(v24, v23);

        queue = v22->_queue;
        v22->_queue = v26;

        objc_storeStrong(&v22->_persistenceManager, a3);
        objc_storeStrong(&v22->_defaultsManager, obj);
        objc_storeStrong(&v22->_distanceCalculator, a5);
        v28 = [v14 copy];
        reconciliationModels = v22->_reconciliationModels;
        v22->_reconciliationModels = v28;
      }

      self = v21;
      v19 = self;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (void)performReconciliationWithHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__RTLearnedLocationReconcilerPerVisit_performReconciliationWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_performReconciliationWithHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[RTLearnedLocationReconcilerPerVisit _performReconciliationWithHandler:]";
      v12 = 1024;
      v13 = 196;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  persistenceManager = self->_persistenceManager;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__RTLearnedLocationReconcilerPerVisit__performReconciliationWithHandler___block_invoke;
  v8[3] = &unk_2788C9110;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(RTPersistenceManager *)persistenceManager createManagedObjectContext:v8];
}

void __73__RTLearnedLocationReconcilerPerVisit__performReconciliationWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73__RTLearnedLocationReconcilerPerVisit__performReconciliationWithHandler___block_invoke_2;
    v9[3] = &unk_2788C4500;
    v9[4] = v5;
    v10 = v3;
    v11 = *(a1 + 40);
    dispatch_async(v6, v9);
  }

  else if (*(a1 + 40))
  {
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"reconciliation requires a managed object context.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v7];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_reconcileVisitsWithContext:(id)a3 handler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
LABEL_11:
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __75__RTLearnedLocationReconcilerPerVisit__reconcileVisitsWithContext_handler___block_invoke;
      v13[3] = &unk_2788C4500;
      v13[4] = self;
      v14 = v6;
      v15 = v8;
      [v14 performBlock:v13];

      goto LABEL_12;
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTLearnedLocationReconcilerPerVisit _reconcileVisitsWithContext:handler:]";
      v20 = 1024;
      v21 = 223;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context (in %s:%d)", buf, 0x12u);
    }

    if (v8)
    {
      v16 = *MEMORY[0x277CCA450];
      v17 = @"reconciliation requires a managed object context.";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v10];
      (v8)[2](v8, 0, v11);

      goto LABEL_12;
    }
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v19 = "[RTLearnedLocationReconcilerPerVisit _reconcileVisitsWithContext:handler:]";
    v20 = 1024;
    v21 = 224;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

  if (v6)
  {
    goto LABEL_11;
  }

LABEL_12:
}

void __75__RTLearnedLocationReconcilerPerVisit__reconcileVisitsWithContext_handler___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"entryDate" ascending:1];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != NULL", @"place.mapItem"];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = v2;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v9 = 0;
  v7 = [v4 _visitsWithContext:v5 predicate:v3 sortDescriptors:v6 error:&v9];
  v8 = v9;

  [*(a1 + 32) _reconcileVisits:v7 context:*(a1 + 40) handler:*(a1 + 48)];
}

- (void)reconcileVisits:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RTLearnedLocationReconcilerPerVisit_reconcileVisits_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_reconcileVisits:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  persistenceManager = self->_persistenceManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__RTLearnedLocationReconcilerPerVisit__reconcileVisits_handler___block_invoke;
  v11[3] = &unk_2788C9138;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [(RTPersistenceManager *)persistenceManager createManagedObjectContext:v11];
}

void __64__RTLearnedLocationReconcilerPerVisit__reconcileVisits_handler___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(v5 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__RTLearnedLocationReconcilerPerVisit__reconcileVisits_handler___block_invoke_2;
    block[3] = &unk_2788C5530;
    block[4] = v5;
    v10 = v4;
    v11 = v3;
    v12 = *(a1 + 48);
    dispatch_async(v6, block);
  }

  else if (*(a1 + 48))
  {
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"reconciliation requires a managed object context.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v7];
    (*(*(a1 + 48) + 16))();
  }
}

- (void)reconcileVisits:(id)a3 context:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__RTLearnedLocationReconcilerPerVisit_reconcileVisits_context_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)_reconcileVisits:(id)a3 context:(id)a4 handler:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTLearnedLocationReconcilerPerVisit _reconcileVisits:context:handler:]";
      v22 = 1024;
      v23 = 307;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context (in %s:%d)", buf, 0x12u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__RTLearnedLocationReconcilerPerVisit__reconcileVisits_context_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v13 performBlock:v15];
}

void __72__RTLearnedLocationReconcilerPerVisit__reconcileVisits_context_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  [*(a1 + 40) collapseVisits:v2 context:*(a1 + 48)];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__48;
  v5[4] = __Block_byref_object_dispose__48;
  v6 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__RTLearnedLocationReconcilerPerVisit__reconcileVisits_context_handler___block_invoke_24;
  v4[3] = &unk_2788C9160;
  v4[4] = v5;
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:v4];
  [v2 filterUsingPredicate:v3];
  [*(a1 + 40) collapseReconciledVisitsToLocationsOfInterest:v2 context:*(a1 + 48) handler:*(a1 + 56)];

  _Block_object_dispose(v5, 8);
}

uint64_t __72__RTLearnedLocationReconcilerPerVisit__reconcileVisits_context_handler___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = *(*(a1 + 32) + 8);
  if (*(v8 + 40))
  {
    v9 = [v6 entryDate];
    v10 = [*(*(*(a1 + 32) + 8) + 40) exitDate];
    v11 = [v9 isAfterDate:v10];

    if (!v11)
    {
      v12 = 0;
      goto LABEL_6;
    }

    v8 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v8 + 40), a2);
  v12 = 1;
LABEL_6:

  return v12;
}

- (void)collapseReconciledVisitsToLocationsOfInterest:(id)a3 context:(id)a4 handler:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTLearnedLocationReconcilerPerVisit collapseReconciledVisitsToLocationsOfInterest:context:handler:]";
      v22 = 1024;
      v23 = 336;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context (in %s:%d)", buf, 0x12u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __101__RTLearnedLocationReconcilerPerVisit_collapseReconciledVisitsToLocationsOfInterest_context_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v13 performBlock:v15];
}

void __101__RTLearnedLocationReconcilerPerVisit_collapseReconciledVisitsToLocationsOfInterest_context_handler___block_invoke(uint64_t a1)
{
  v163 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v120 = a1;
  obj = *(a1 + 32);
  v136 = [obj countByEnumeratingWithState:&v156 objects:v162 count:16];
  v3 = 0;
  if (v136)
  {
    v135 = *v157;
    v145 = v2;
    do
    {
      v4 = 0;
      do
      {
        v154 = v3;
        if (*v157 != v135)
        {
          objc_enumerationMutation(obj);
        }

        v144 = v4;
        v5 = *(*(&v156 + 1) + 8 * v4);
        context = objc_autoreleasePoolPush();
        v155[0] = MEMORY[0x277D85DD0];
        v155[1] = 3221225472;
        v155[2] = __101__RTLearnedLocationReconcilerPerVisit_collapseReconciledVisitsToLocationsOfInterest_context_handler___block_invoke_2;
        v155[3] = &unk_2788C9188;
        v155[4] = v5;
        v152 = [v2 indexOfObjectPassingTest:v155];
        v6 = objc_alloc(MEMORY[0x277D01160]);
        v7 = [v5 locationLatitude];
        [v7 doubleValue];
        v9 = v8;
        v10 = [v5 locationLongitude];
        [v10 doubleValue];
        v12 = v11;
        v13 = [v5 locationHorizontalUncertainty];
        [v13 doubleValue];
        v15 = v14;
        v16 = [v5 locationAltitude];
        [v16 doubleValue];
        v18 = v17;
        v19 = [v5 locationVerticalUncertainty];
        [v19 doubleValue];
        v21 = v20;
        v22 = [v5 locationReferenceFrame];
        v23 = [v22 intValue];
        v24 = [v5 locationSourceAccuracy];
        v25 = [v6 initWithLatitude:0 longitude:v23 horizontalUncertainty:objc_msgSend(v24 altitude:"intValue") verticalUncertainty:v9 date:v12 referenceFrame:v15 speed:v18 sourceAccuracy:{v21, 0.0}];

        v26 = [RTLearnedLocation alloc];
        v27 = [v5 dataPointCount];
        v28 = [v27 unsignedIntegerValue];
        v29 = [v5 confidence];
        [v29 doubleValue];
        v149 = v25;
        v30 = [(RTLearnedLocation *)v26 initWithLocation:v25 dataPointCount:v28 confidence:?];

        v150 = [RTLearnedVisit alloc];
        v31 = [v5 identifier];
        v32 = [v5 entryDate];
        v33 = [v5 exitDate];
        v34 = [v5 creationDate];
        v35 = v34;
        if (!v34)
        {
          v35 = [MEMORY[0x277CBEAA8] distantPast];
          v127 = v35;
        }

        v36 = [v5 expirationDate];
        v37 = [v5 placeConfidence];
        [v37 doubleValue];
        v39 = v38;
        v40 = [v5 placeSource];
        v142 = v30;
        v151 = -[RTLearnedVisit initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:](v150, "initWithIdentifier:location:entryDate:exitDate:creationDate:expirationDate:placeConfidence:placeSource:", v31, v30, v32, v33, v35, v36, v39, [v40 unsignedIntegerValue]);

        if (!v34)
        {
        }

        if (v152 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v140 = [v154 device];
          v131 = [v140 identifier];
          v134 = [v5 device];
          v88 = [v134 identifier];
          v89 = [v154 outbound];
          v90 = [v89 predominantMotionActivityType];
          v91 = [v90 unsignedIntegerValue];
          v92 = [v5 inbound];
          v93 = [v92 predominantMotionActivityType];
          v94 = [v93 unsignedIntegerValue];
          v95 = [v131 isEqual:v88];
          if (v91 == v94)
          {
            v96 = 1;
          }

          else
          {
            v96 = v95;
          }

          if (v96)
          {
            v97 = v94;
          }

          else
          {
            v97 = 0;
          }

          v148 = v97;

          v141 = [RTLearnedTransition alloc];
          v98 = [MEMORY[0x277CCAD78] UUID];
          v99 = [v154 exitDate];
          v100 = v99;
          if (!v99)
          {
            v100 = [MEMORY[0x277CBEAA8] distantPast];
            v122 = v100;
          }

          v101 = [v5 entryDate];
          v102 = [v154 identifier];
          v103 = v102;
          if (!v102)
          {
            v103 = [MEMORY[0x277CCAD78] nilUUID];
            v121 = v103;
          }

          v104 = [v5 identifier];
          v105 = [MEMORY[0x277CBEAA8] date];
          v106 = [v5 expirationDate];
          v107 = [(RTLearnedTransition *)v141 initWithIdentifier:v98 startDate:v100 stopDate:v101 visitIdentifierOrigin:v103 visitIdentifierDestination:v104 creationDate:v105 expirationDate:v106 predominantMotionActivityType:v148];

          if (!v102)
          {
          }

          if (!v99)
          {
          }

          v108 = [v145 objectAtIndex:v152];
          v109 = MEMORY[0x277CBEB18];
          v110 = [(RTLearnedPlace *)v108 visits];
          v75 = [v109 arrayWithArray:v110];

          if (v151)
          {
            [(RTLearnedTransition *)v75 addObject:v151];
          }

          v111 = MEMORY[0x277CBEB18];
          v112 = [(RTLearnedPlace *)v108 transitions];
          v79 = [v111 arrayWithArray:v112];

          if (v107)
          {
            [(RTLearnedLocation *)v79 addObject:v107];
          }

          v86 = v107;
          v113 = [RTLearnedLocationOfInterest alloc];
          v114 = [(RTLearnedPlace *)v108 place];
          v115 = [v114 identifier];
          v116 = [(RTLearnedPlace *)v108 location];
          v147 = v108;
          v117 = [(RTLearnedPlace *)v108 place];
          v84 = [(RTLearnedLocationOfInterest *)v113 initWithIdentifier:v115 location:v116 place:v117 visits:v75 transitions:v79];

          if (v84)
          {
            [v145 setObject:v84 atIndexedSubscript:v152];
          }

          v85 = v154;
          v87 = v142;
          v76 = v151;
          goto LABEL_57;
        }

        v41 = [v5 place];

        if (v41)
        {
          v42 = MEMORY[0x277D011A0];
          v43 = [v5 place];
          v44 = [v43 mapItem];
          v41 = [v42 createWithManagedObject:v44];
        }

        v153 = v41;
        v146 = [RTLearnedPlace alloc];
        v137 = [v5 place];
        v45 = [v137 identifier];
        v46 = v45;
        if (!v45)
        {
          v45 = [MEMORY[0x277CCAD78] UUID];
          v123 = v45;
        }

        v128 = v45;
        v132 = [v5 place];
        v129 = [v132 type];
        v47 = [v129 unsignedIntegerValue];
        v48 = [v5 place];
        v49 = [v48 typeSource];
        v50 = [v49 unsignedIntegerValue];
        v51 = [v5 place];
        v52 = [v51 customLabel];
        v53 = [MEMORY[0x277CBEAA8] date];
        v54 = [v5 expirationDate];
        v147 = [(RTLearnedPlace *)v146 initWithIdentifier:v128 type:v47 typeSource:v50 mapItem:v153 customLabel:v52 creationDate:v53 expirationDate:v54];

        if (!v46)
        {
        }

        v138 = [v154 device];
        v55 = [v138 identifier];
        v130 = [v5 device];
        v56 = [v130 identifier];
        v57 = [v154 outbound];
        v58 = [v57 predominantMotionActivityType];
        v59 = [v58 unsignedIntegerValue];
        v60 = [v5 inbound];
        v61 = [v60 predominantMotionActivityType];
        v62 = [v61 unsignedIntegerValue];
        v63 = [v55 isEqual:v56];
        if (v59 == v62)
        {
          v64 = 1;
        }

        else
        {
          v64 = v63;
        }

        if (v64)
        {
          v65 = v62;
        }

        else
        {
          v65 = 0;
        }

        v133 = v65;

        v66 = [RTLearnedTransition alloc];
        v139 = [MEMORY[0x277CCAD78] UUID];
        v67 = [v154 exitDate];
        v68 = v67;
        if (!v67)
        {
          v68 = [MEMORY[0x277CBEAA8] distantPast];
          v124 = v68;
        }

        v69 = [v5 entryDate];
        v70 = [v154 identifier];
        v71 = v70;
        if (!v70)
        {
          v71 = [MEMORY[0x277CCAD78] nilUUID];
          v125 = v71;
        }

        v72 = [v5 identifier];
        v73 = [MEMORY[0x277CBEAA8] date];
        v74 = [v5 expirationDate];
        v75 = [(RTLearnedTransition *)v66 initWithIdentifier:v139 startDate:v68 stopDate:v69 visitIdentifierOrigin:v71 visitIdentifierDestination:v72 creationDate:v73 expirationDate:v74 predominantMotionActivityType:v133];

        if (!v70)
        {
        }

        v2 = v145;
        v76 = v151;
        if (!v67)
        {
        }

        if (v151 && v75)
        {
          v77 = [RTLearnedLocation alloc];
          v78 = [v5 locationSourceAccuracy];
          v79 = -[RTLearnedLocation initWithLocation:dataPointCount:type:](v77, "initWithLocation:dataPointCount:type:", v149, [v78 intValue] == 2, 2);

          v80 = [RTLearnedLocationOfInterest alloc];
          v81 = [(RTLearnedPlace *)v147 identifier];
          v161 = v151;
          v82 = [MEMORY[0x277CBEA60] arrayWithObjects:&v161 count:1];
          v160 = v75;
          v83 = [MEMORY[0x277CBEA60] arrayWithObjects:&v160 count:1];
          v84 = [(RTLearnedLocationOfInterest *)v80 initWithIdentifier:v81 location:v79 place:v147 visits:v82 transitions:v83];

          if (v84)
          {
            [v145 addObject:v84];
          }

          v86 = v153;
          v85 = v154;
          v87 = v142;
LABEL_57:

          v3 = v5;
          v2 = v145;
          goto LABEL_59;
        }

        v85 = v153;
        v3 = v154;
        v87 = v142;
LABEL_59:

        objc_autoreleasePoolPop(context);
        v4 = v144 + 1;
      }

      while (v136 != v144 + 1);
      v136 = [obj countByEnumeratingWithState:&v156 objects:v162 count:16];
    }

    while (v136);
  }

  logReconciledGraph(v2, 0);
  [objc_opt_class() submitMetricsOnReconciledGraphDensity:v120[4] algorithm:0 persistenceManager:*(v120[5] + 16) managedObjectContext:v120[6]];
  v118 = v120[7];
  if (v118)
  {
    v119 = [v2 copy];
    (*(v118 + 16))(v118, v119, 0);
  }
}

uint64_t __101__RTLearnedLocationReconcilerPerVisit_collapseReconciledVisitsToLocationsOfInterest_context_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D011A0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 place];
  v6 = [v5 mapItem];
  v7 = [v2 createWithManagedObject:v6];

  v8 = [v4 place];

  v9 = [v8 mapItem];
  v10 = [v9 isEqualToMapItem:v7];

  return v10;
}

- (void)collapseVisits:(id)a3 context:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTLearnedLocationReconcilerPerVisit collapseVisits:context:]";
      v17 = 1024;
      v18 = 473;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context (in %s:%d)", buf, 0x12u);
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__RTLearnedLocationReconcilerPerVisit_collapseVisits_context___block_invoke;
  v11[3] = &unk_2788C76F8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v9 performBlockAndWait:v11];
}

unint64_t __62__RTLearnedLocationReconcilerPerVisit_collapseVisits_context___block_invoke(id *a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  result = [a1[4] count];
  if (result)
  {
    result = [a1[4] count];
    if (result)
    {
      for (i = 0; i < result; ++i)
      {
        v4 = objc_autoreleasePoolPush();
        v5 = [a1[4] objectAtIndexedSubscript:i];
        v6 = a1[4];
        v7 = MEMORY[0x277CCAC30];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __62__RTLearnedLocationReconcilerPerVisit_collapseVisits_context___block_invoke_2;
        v36[3] = &unk_2788C91B0;
        v8 = v5;
        v37 = v8;
        v9 = [v7 predicateWithBlock:v36];
        v10 = [v6 filteredArrayUsingPredicate:v9];

        v11 = MEMORY[0x277CCAC30];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __62__RTLearnedLocationReconcilerPerVisit_collapseVisits_context___block_invoke_3;
        v33[3] = &unk_2788C91D8;
        v12 = v8;
        v13 = a1[5];
        v34 = v12;
        v35 = v13;
        v14 = [v11 predicateWithBlock:v33];
        v15 = [v10 filteredArrayUsingPredicate:v14];

        if ([v15 count])
        {
          v31 = v10;
          v32 = v4;
          v16 = objc_opt_new();
          v30 = +[RTDeviceMO fetchRequest];
          v17 = [a1[6] executeFetchRequest:? error:?];
          v29 = 0;
          [v16 setDevices:v17];

          [v16 setOverlappingVisits:v15];
          v18 = a1[5];
          v19 = [v18 _currentModel];
          v20 = [v18 _findWinner:v15 currentVisit:v12 model:v19 modelContext:v16];

          v21 = v20;
          v22 = objc_opt_new();
          v23 = [a1[5] _visitFollowingVisit:v12 visits:a1[4]];
          if (v23)
          {
            v24 = v23;
            while (([v24 overlapsWithVisit:v21] & 1) != 0)
            {
              [v22 addObject:v24];
              v25 = [a1[5] _visitFollowingVisit:v24 visits:a1[4]];

              v24 = v25;
              if (!v25)
              {
                goto LABEL_12;
              }
            }
          }

LABEL_12:
          [v22 removeObject:v21];
          if (v20 != v12)
          {
            [v22 addObject:v12];
          }

          [a1[4] removeObjectsInArray:v22];
          v26 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"entryDate" ascending:1];
          v27 = a1[4];
          v38[0] = v26;
          v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
          [v27 sortUsingDescriptors:v28];

          v10 = v31;
          v4 = v32;
        }

        else
        {
          [a1[4] removeObjectsInArray:v10];
        }

        objc_autoreleasePoolPop(v4);
        result = [a1[4] count];
      }
    }
  }

  return result;
}

BOOL __62__RTLearnedLocationReconcilerPerVisit_collapseVisits_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 entryDate];
  v5 = [*(a1 + 32) exitDate];
  v6 = [v4 isAfterDate:v5];

  v7 = (v6 & 1) == 0 && ([v3 isEqual:*(a1 + 32)] & 1) == 0 && (objc_msgSend(*(a1 + 32), "overlapsWithVisit:", v3) & 1) != 0;
  return v7;
}

- (id)_currentModel
{
  v2 = [(RTLearnedLocationReconcilerPerVisit *)self reconciliationModels];
  v3 = [v2 firstObject];

  return v3;
}

- (id)_findWinner:(id)a3 currentVisit:(id)a4 model:(id)a5 modelContext:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v10;
  [v11 weightForVisit:v13 modelContext:v12];
  v15 = v14;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = v9;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
  v18 = v13;
  if (v17)
  {
    v19 = v17;
    v20 = *v28;
    v18 = v13;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v27 + 1) + 8 * i);
        [v11 weightForVisit:v22 modelContext:{v12, v27}];
        if (v23 > v15)
        {
          v24 = v23;
          v25 = v22;

          v15 = v24;
          v18 = v25;
        }
      }

      v19 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v19);
  }

  return v18;
}

- (id)_visitFollowingVisit:(id)a3 visits:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5 || ![v6 count])
  {
    goto LABEL_9;
  }

  v8 = [v7 indexOfObjectIdenticalTo:v5];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[RTLearnedLocationReconcilerPerVisit _visitFollowingVisit:visits:]";
      v15 = 1024;
      v16 = 593;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "current visit is not found in the array! (in %s:%d)", &v13, 0x12u);
    }
  }

  v10 = v8 + 1;
  if (v10 < [v7 count])
  {
    v11 = [v7 objectAtIndexedSubscript:v10];
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

- (id)_visitsWithContext:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__48;
  v33 = __Block_byref_object_dispose__48;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__48;
  v27 = __Block_byref_object_dispose__48;
  v28 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__RTLearnedLocationReconcilerPerVisit__visitsWithContext_predicate_sortDescriptors_error___block_invoke;
  v17[3] = &unk_2788C9200;
  v12 = v10;
  v18 = v12;
  v13 = v11;
  v19 = v13;
  v21 = &v29;
  v14 = v9;
  v20 = v14;
  v22 = &v23;
  [v14 performBlockAndWait:v17];
  if (a6)
  {
    *a6 = v24[5];
  }

  v15 = v30[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

void __90__RTLearnedLocationReconcilerPerVisit__visitsWithContext_predicate_sortDescriptors_error___block_invoke(void *a1)
{
  v2 = +[RTLearnedVisitMO fetchRequest];
  [v2 setPredicate:a1[4]];
  [v2 setSortDescriptors:a1[5]];
  [v2 setFetchBatchSize:100];
  v3 = a1[6];
  v4 = *(a1[8] + 8);
  obj = *(v4 + 40);
  v5 = [v3 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (void)submitMetricsOnReconciledGraphDensity:(id)a3 algorithm:(unint64_t)a4 persistenceManager:(id)a5 managedObjectContext:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (v11)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __136__RTLearnedLocationReconcilerPerVisit_Metrics__submitMetricsOnReconciledGraphDensity_algorithm_persistenceManager_managedObjectContext___block_invoke;
    v14[3] = &unk_2788C4C70;
    v15 = v11;
    v16 = v9;
    v17 = v10;
    v18 = a4;
    [v15 performBlockAndWait:v14];

    v13 = v15;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }
  }
}

void __136__RTLearnedLocationReconcilerPerVisit_Metrics__submitMetricsOnReconciledGraphDensity_algorithm_persistenceManager_managedObjectContext___block_invoke(uint64_t a1)
{
  v111[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"entryDate" ascending:1];
  v4 = +[RTLearnedVisitMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == $RT_CURRENT_DEVICE", @"device"];
  [v4 setPredicate:v5];

  v111[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:1];
  [v4 setSortDescriptors:v6];

  v7 = *(a1 + 32);
  v103 = 0;
  v8 = [v7 executeFetchRequest:v4 error:&v103];
  v9 = v103;
  if (!v9)
  {
    v89 = a1;
    v84 = v4;
    v85 = v3;
    v92 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-4838400.0];
    v82 = [v8 count];
    v83 = v8;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v99 objects:v110 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v100;
      do
      {
        v15 = v10;
        for (i = 0; i != v12; ++i)
        {
          if (*v100 != v14)
          {
            objc_enumerationMutation(v15);
          }

          v17 = [*(*(&v99 + 1) + 8 * i) entryDate];
          v18 = [v17 isOnOrAfter:v92];

          v13 += v18;
        }

        v10 = v15;
        v12 = [v15 countByEnumeratingWithState:&v99 objects:v110 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != $RT_CURRENT_DEVICE", @"device"];
    v20 = +[RTLearnedVisitMO fetchRequest];
    v3 = v85;
    v109 = v85;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v109 count:1];
    [v20 setSortDescriptors:v21];

    [v20 setPredicate:v19];
    v22 = *(v89 + 32);
    v98 = 0;
    v23 = [v22 executeFetchRequest:v20 error:&v98];
    v9 = v98;
    if (!v9)
    {
      v77 = v10;
      v79 = v2;
      v80 = v23;
      v78 = v20;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      obj = *(v89 + 40);
      v90 = [obj countByEnumeratingWithState:&v94 objects:v108 count:16];
      v81 = v19;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      if (v90)
      {
        v87 = *v95;
        do
        {
          for (j = 0; j != v90; ++j)
          {
            if (*v95 != v87)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v94 + 1) + 8 * j);
            v30 = [v29 device];
            v31 = [*(v89 + 32) currentDevice];
            v32 = [v30 isEqual:v31];

            v33 = [v29 entryDate];
            v34 = [v33 isOnOrAfter:v92];

            if (v32)
            {
              v25 += v34;
            }

            else
            {
              v24 += v34;
            }

            if (v32)
            {
              ++v27;
            }

            else
            {
              ++v26;
            }
          }

          v90 = [obj countByEnumeratingWithState:&v94 objects:v108 count:16];
        }

        while (v90);
      }

      v35 = [MEMORY[0x277CBEB18] arrayWithArray:v77];
      [v35 addObjectsFromArray:v80];
      v3 = v85;
      v107 = v85;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
      [v35 sortUsingDescriptors:v36];

      v91 = v35;
      v37 = [v35 firstObject];
      v38 = [v37 creationDate];

      v88 = v38;
      [v38 timeIntervalSinceReferenceDate];
      v40 = v39;
      v105 = @"RT_CURRENT_DEVICE";
      v41 = [*(v89 + 32) currentDevice];
      v106 = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
      v43 = [v81 predicateWithSubstitutionVariables:v42];

      v44 = [*(v89 + 40) filteredArrayUsingPredicate:v43];
      v104 = v85;
      v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
      v46 = [v44 sortedArrayUsingDescriptors:v45];

      v47 = [v46 firstObject];
      v48 = [v47 creationDate];

      v76 = v48;
      [v48 timeIntervalSinceReferenceDate];
      v50 = v27 + v26;
      v51 = 0.0;
      if (v82 < 1)
      {
        v52 = INFINITY;
        v53 = 0.0;
      }

      else
      {
        v52 = ((v50 - v82) / v82 * 100.0);
        v53 = ((v82 - v27) / v82 * 100.0);
      }

      v54 = v40 - v49;
      if (v13 >= 1)
      {
        v55 = (v25 + v24) / v13;
      }

      else
      {
        v55 = 1.0;
      }

      v56 = 0.0;
      if (v50 >= 1)
      {
        v57 = v27 / v50;
        v51 = (v57 * 100.0);
        v56 = ((1.0 - v57) * 100.0);
      }

      v58 = +[RTDeviceMO fetchRequest];
      v59 = *(v89 + 32);
      v93 = 0;
      v60 = [v59 countForFetchRequest:v58 error:&v93];
      v61 = v93;
      v62 = [*(v89 + 48) mirroringDelegateStateForStoreType:1] == 1;
      v63 = [MEMORY[0x277CCABB0] numberWithDouble:v52];
      [v79 setObject:v63 forKeyedSubscript:@"reconciledGraphVisitCountImprovement"];

      v64 = [MEMORY[0x277CCABB0] numberWithDouble:v51];
      [v79 setObject:v64 forKeyedSubscript:@"reconciledGraphVisitContributionThisDevice"];

      v65 = [MEMORY[0x277CCABB0] numberWithDouble:v56];
      [v79 setObject:v65 forKeyedSubscript:@"reconciledGraphVisitContributionOtherDevices"];

      v66 = [MEMORY[0x277CCABB0] numberWithDouble:v53];
      [v79 setObject:v66 forKeyedSubscript:@"reconciledGraphVisitLoss"];

      v67 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
      [v79 setObject:v67 forKeyedSubscript:@"reconciledGraphDensity"];

      v68 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
      [v79 setObject:v68 forKeyedSubscript:@"ageOfOldestVisit"];

      v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v89 + 56)];
      [v79 setObject:v69 forKeyedSubscript:@"algorithmType"];

      v70 = [MEMORY[0x277CCABB0] numberWithDouble:v54];
      [v79 setObject:v70 forKeyedSubscript:@"ageDifferenceOldestVisit"];

      v71 = [MEMORY[0x277CCABB0] numberWithBool:v62];
      [v79 setObject:v71 forKeyedSubscript:@"syncEnabled"];

      if (v60 == 1)
      {
        v72 = MEMORY[0x277CBEC28];
      }

      else
      {
        v72 = MEMORY[0x277CBEC38];
      }

      [v79 setObject:v72 forKeyedSubscript:@"multiDevice"];
      v73 = objc_alloc(MEMORY[0x277CCACA8]);
      v74 = [v73 initWithCString:RTAnalyticsEventReconciliationGraphDensity encoding:1];
      log_analytics_submission(v74, v79);
      v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v74];
      AnalyticsSendEvent();

      v2 = v79;
      v23 = v80;
      v19 = v81;
      v9 = 0;
      v20 = v78;
    }

    v8 = v83;
    v4 = v84;
  }
}

@end