@interface RTLearnedPlaceTypeInferenceStore
+ (id)fetchRequestForLearnedPlaceTypeInferenceEnumerationOptions:(id)options error:(id *)error;
- (RTLearnedPlaceTypeInferenceStore)initWithPersistenceManager:(id)manager learnedLocationStore:(id)store;
- (id)_getLearnedPlacesMapFromLearnedPlaceIdentifiers:(id)identifiers error:(id *)error;
- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error;
- (void)_deletedLearnedPlaceTypeInferencesPredating:(id)predating handler:(id)handler;
- (void)_fetchLearnedPlaceTypeInferencesCountWithOptions:(id)options handler:(id)handler;
- (void)_fetchLearnedPlaceTypeInferencesWithOptions:(id)options handler:(id)handler;
- (void)_logCacheStoreWithReason:(id)reason handler:(id)handler;
- (void)_storeLearnedPlaceTypeInferences:(id)inferences handler:(id)handler;
- (void)deletedLearnedPlaceTypeInferencesPredating:(id)predating handler:(id)handler;
- (void)fetchLearnedPlaceTypeInferencesCountWithOptions:(id)options handler:(id)handler;
- (void)fetchLearnedPlaceTypeInferencesWithOptions:(id)options handler:(id)handler;
- (void)logCacheStoreWithReason:(id)reason handler:(id)handler;
- (void)storeLearnedPlaceTypeInferences:(id)inferences handler:(id)handler;
@end

@implementation RTLearnedPlaceTypeInferenceStore

- (RTLearnedPlaceTypeInferenceStore)initWithPersistenceManager:(id)manager learnedLocationStore:(id)store
{
  managerCopy = manager;
  storeCopy = store;
  v8 = storeCopy;
  if (!managerCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: persistenceManager";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_9;
  }

  if (!storeCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: learnedLocationStore";
    goto LABEL_12;
  }

  v15.receiver = self;
  v15.super_class = RTLearnedPlaceTypeInferenceStore;
  v9 = [(RTStore *)&v15 initWithPersistenceManager:managerCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_learnedLocationStore, store);
  }

  self = v10;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (void)storeLearnedPlaceTypeInferences:(id)inferences handler:(id)handler
{
  inferencesCopy = inferences;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__RTLearnedPlaceTypeInferenceStore_storeLearnedPlaceTypeInferences_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = inferencesCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = inferencesCopy;
  dispatch_async(queue, block);
}

- (void)_storeLearnedPlaceTypeInferences:(id)inferences handler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  inferencesCopy = inferences;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v13 = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      v17 = 2048;
      v18 = [inferencesCopy count];
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, %@, storing learnedPlaceTypeInferences with count, %lu", &v13, 0x20u);
    }
  }

  [(RTStore *)self storeWritableObjects:inferencesCopy handler:handlerCopy];
}

- (void)fetchLearnedPlaceTypeInferencesWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__RTLearnedPlaceTypeInferenceStore_fetchLearnedPlaceTypeInferencesWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = optionsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = optionsCopy;
  dispatch_async(queue, block);
}

- (void)_fetchLearnedPlaceTypeInferencesWithOptions:(id)options handler:(id)handler
{
  v28[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__RTLearnedPlaceTypeInferenceStore__fetchLearnedPlaceTypeInferencesWithOptions_handler___block_invoke;
    aBlock[3] = &unk_2788C4910;
    aBlock[4] = self;
    v20 = optionsCopy;
    v9 = handlerCopy;
    v21 = v9;
    v22 = a2;
    v10 = _Block_copy(aBlock);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__RTLearnedPlaceTypeInferenceStore__fetchLearnedPlaceTypeInferencesWithOptions_handler___block_invoke_8;
    v17[3] = &unk_2788C48C0;
    v18 = v9;
    [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v17];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[RTLearnedPlaceTypeInferenceStore _fetchLearnedPlaceTypeInferencesWithOptions:handler:]";
      v25 = 1024;
      LODWORD(v26) = 86;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v27 = *MEMORY[0x277CCA450];
    v28[0] = @"handler is a required parameter.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v12];
    v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138412546;
      v24 = v16;
      v25 = 2112;
      v26 = v13;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@: handler is a required parameter, %@", buf, 0x16u);
    }
  }
}

void __88__RTLearnedPlaceTypeInferenceStore__fetchLearnedPlaceTypeInferencesWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_class();
  v39 = a1;
  v5 = *(a1 + 40);
  v45 = 0;
  v6 = [v4 fetchRequestForLearnedPlaceTypeInferenceEnumerationOptions:v5 error:&v45];
  v7 = v45;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = [v6 fetchBatchSize];
      v29 = [v6 fetchOffset];
      *buf = 138413058;
      v48 = v27;
      v49 = 2048;
      v50 = v28;
      v51 = 2048;
      v52 = v29;
      v53 = 2112;
      v54 = v7;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@: using options fetch batch size, %lu, fetch offset, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v7)
  {
    (*(*(v39 + 48) + 16))();
  }

  else
  {
    v44 = 0;
    v9 = [v3 executeFetchRequest:v6 error:&v44];
    v7 = v44;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v30 = objc_opt_class();
        NSStringFromClass(v30);
        v32 = v31 = v9;
        v33 = NSStringFromSelector(*(v39 + 56));
        v34 = [v31 count];
        *buf = 138413314;
        v48 = v32;
        v49 = 2112;
        v50 = v33;
        v51 = 2112;
        v52 = v6;
        v53 = 2048;
        v54 = v34;
        v55 = 2112;
        v56 = v7;
        _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@: %@, request, %@, results count, %lu, error, %@", buf, 0x34u);

        v9 = v31;
      }
    }

    v11 = objc_opt_new();
    if (v7)
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v9;
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(*(v39 + 56));
        *buf = 138412802;
        v48 = v15;
        v49 = 2112;
        v50 = v16;
        v51 = 2112;
        v52 = v7;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@: %@, error, %@", buf, 0x20u);

        v9 = v13;
      }
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v12 = v9;
      v17 = [v12 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v17)
      {
        v18 = v17;
        v35 = v9;
        v36 = v3;
        v19 = *v41;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v41 != v19)
            {
              objc_enumerationMutation(v12);
            }

            v21 = *(*(&v40 + 1) + 8 * i);
            v22 = objc_autoreleasePoolPush();
            v23 = [RTLearnedPlaceTypeInference createWithManagedObject:v21];
            if (v23)
            {
              [v11 addObject:v23];
            }

            else
            {
              v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v25 = objc_opt_class();
                v38 = NSStringFromClass(v25);
                v37 = NSStringFromSelector(*(v39 + 56));
                *buf = 138413059;
                v48 = v38;
                v49 = 2112;
                v50 = v37;
                v51 = 2117;
                v52 = v21;
                v53 = 2117;
                v54 = 0;
                _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@: %@, learnedPlaceTypeInference MO, %{sensitive}@, learnedPlaceTypeInference, %{sensitive}@", buf, 0x2Au);
              }
            }

            objc_autoreleasePoolPop(v22);
          }

          v18 = [v12 countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v18);
        v3 = v36;
        v9 = v35;
        v7 = 0;
      }
    }

    (*(*(v39 + 48) + 16))();
  }
}

- (void)fetchLearnedPlaceTypeInferencesCountWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__RTLearnedPlaceTypeInferenceStore_fetchLearnedPlaceTypeInferencesCountWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = optionsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = optionsCopy;
  dispatch_async(queue, block);
}

- (void)_fetchLearnedPlaceTypeInferencesCountWithOptions:(id)options handler:(id)handler
{
  v28[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __93__RTLearnedPlaceTypeInferenceStore__fetchLearnedPlaceTypeInferencesCountWithOptions_handler___block_invoke;
    aBlock[3] = &unk_2788C4910;
    aBlock[4] = self;
    v20 = optionsCopy;
    v9 = handlerCopy;
    v21 = v9;
    v22 = a2;
    v10 = _Block_copy(aBlock);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __93__RTLearnedPlaceTypeInferenceStore__fetchLearnedPlaceTypeInferencesCountWithOptions_handler___block_invoke_10;
    v17[3] = &unk_2788C48C0;
    v18 = v9;
    [(RTStore *)self _performBlock:v10 contextType:1 errorHandler:v17];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[RTLearnedPlaceTypeInferenceStore _fetchLearnedPlaceTypeInferencesCountWithOptions:handler:]";
      v25 = 1024;
      LODWORD(v26) = 170;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v27 = *MEMORY[0x277CCA450];
    v28[0] = @"handler is a required parameter.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v12];
    v14 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138412546;
      v24 = v16;
      v25 = 2112;
      v26 = v13;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@: handler is a required parameter, %@", buf, 0x16u);
    }
  }
}

void __93__RTLearnedPlaceTypeInferenceStore__fetchLearnedPlaceTypeInferencesCountWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 40);
  v24 = 0;
  v6 = [v4 fetchRequestForLearnedPlaceTypeInferenceEnumerationOptions:v5 error:&v24];
  v7 = v24;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v6 fetchBatchSize];
      v15 = [v6 fetchOffset];
      *buf = 138413058;
      v26 = v13;
      v27 = 2048;
      v28 = v14;
      v29 = 2048;
      v30 = v15;
      v31 = 2112;
      v32 = v7;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@: using options fetch batch size, %lu, fetch offset, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v7)
  {
    goto LABEL_11;
  }

  v23 = 0;
  v9 = [v3 countForFetchRequest:v6 error:&v23];
  v7 = v23;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v6 fetchBatchSize];
      v19 = [v6 fetchOffset];
      *buf = 138413058;
      v26 = v17;
      v27 = 2048;
      v28 = v18;
      v29 = 2048;
      v30 = v19;
      v31 = 2112;
      v32 = v7;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@: using options fetch batch size, %lu, fetch offset, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v7)
  {
LABEL_11:
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(*(a1 + 56));
        *buf = 138413314;
        v26 = v21;
        v27 = 2112;
        v28 = v22;
        v29 = 2112;
        v30 = v6;
        v31 = 2048;
        v32 = v9;
        v33 = 2112;
        v34 = 0;
        _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@, %@, request, %@, total learnedPlaceTypeInferences count, %lu, error, %@", buf, 0x34u);
      }
    }

    (*(*(a1 + 48) + 16))();
    v7 = 0;
  }
}

- (void)deletedLearnedPlaceTypeInferencesPredating:(id)predating handler:(id)handler
{
  predatingCopy = predating;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__RTLearnedPlaceTypeInferenceStore_deletedLearnedPlaceTypeInferencesPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = predatingCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = predatingCopy;
  dispatch_async(queue, block);
}

- (void)_deletedLearnedPlaceTypeInferencesPredating:(id)predating handler:(id)handler
{
  predatingCopy = predating;
  handlerCopy = handler;
  if (handlerCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__RTLearnedPlaceTypeInferenceStore__deletedLearnedPlaceTypeInferencesPredating_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    v11 = predatingCopy;
    selfCopy = self;
    v8 = handlerCopy;
    v13 = v8;
    v9 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v9 contextType:0 errorHandler:v8];
  }
}

void __88__RTLearnedPlaceTypeInferenceStore__deletedLearnedPlaceTypeInferencesPredating_handler___block_invoke(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[RTLearnedPlaceTypeInferenceMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K < %@)", @"creationDate", a1[4]];
  [v4 setPredicate:v5];

  v6 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v6 setResultType:2];
  v7 = a1[5];
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v7 executeDeleteRequests:v8 context:v3 handler:a1[6]];
}

- (void)logCacheStoreWithReason:(id)reason handler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTLearnedPlaceTypeInferenceStore_logCacheStoreWithReason_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = reasonCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = reasonCopy;
  dispatch_async(queue, block);
}

- (void)_logCacheStoreWithReason:(id)reason handler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__RTLearnedPlaceTypeInferenceStore__logCacheStoreWithReason_handler___block_invoke;
  v13[3] = &unk_2788C4910;
  v14 = reasonCopy;
  selfCopy = self;
  v17 = a2;
  v16 = handlerCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__RTLearnedPlaceTypeInferenceStore__logCacheStoreWithReason_handler___block_invoke_25;
  v11[3] = &unk_2788C48C0;
  v12 = v16;
  v9 = v16;
  v10 = reasonCopy;
  [(RTStore *)self _performBlock:v13 contextType:1 errorHandler:v11];
}

void __69__RTLearnedPlaceTypeInferenceStore__logCacheStoreWithReason_handler___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v33 = a1;
  if (*(a1 + 32))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v45 = v5;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "start logging cache store with reason, %@", buf, 0xCu);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v45 = v28;
      v46 = 2112;
      v47 = v29;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@, %@, calling the fetch request", buf, 0x16u);
    }
  }

  v42 = 0;
  v31 = objc_alloc_init(RTLearnedPlaceTypeInferenceEnumerationOptions);
  v7 = [objc_opt_class() fetchRequestForLearnedPlaceTypeInferenceEnumerationOptions:v31 error:&v42];
  v8 = v42;
  [v7 setFetchLimit:5];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v30 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v45 = v30;
      v46 = 2112;
      v47 = v7;
      v48 = 2112;
      v49 = v8;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, request, %@, error, %@", buf, 0x20u);
    }
  }

  v10 = 0;
  v32 = v3;
  while (1)
  {
    v11 = objc_autoreleasePoolPush();
    v41 = v8;
    v12 = [v3 executeFetchRequest:v7 error:&v41];
    v13 = v41;

    if (v13)
    {
      break;
    }

    v14 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v10 = v12;
    v15 = [v10 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          v20 = [v19 learnedPlaceIdentifier];

          if (v20)
          {
            v21 = [v19 learnedPlaceIdentifier];
            [v14 addObject:v21];
          }
        }

        v16 = [v10 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v16);
    }

    v22 = v33[5];
    v36 = 0;
    v23 = [v22 _getLearnedPlacesMapFromLearnedPlaceIdentifiers:v14 error:&v36];
    v13 = v36;

    if (v13)
    {

      v3 = v32;
      break;
    }

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __69__RTLearnedPlaceTypeInferenceStore__logCacheStoreWithReason_handler___block_invoke_23;
    v34[3] = &unk_2788CF770;
    v35 = v23;
    [v10 enumerateObjectsUsingBlock:v34];
    [v7 setFetchOffset:{objc_msgSend(v7, "fetchOffset") + objc_msgSend(v10, "count")}];
    v3 = v32;
    [v32 reset];

    objc_autoreleasePoolPop(v11);
    v8 = 0;
    if (![v10 count])
    {
      goto LABEL_29;
    }
  }

  objc_autoreleasePoolPop(v11);
LABEL_29:
  if (v33[4])
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v33[4];
      *buf = 138412290;
      v45 = v25;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEFAULT, "end logging cache store with reason, %@", buf, 0xCu);
    }
  }

  v26 = v33[6];
  if (v26)
  {
    (*(v26 + 16))(v26, v13);
  }
}

void __69__RTLearnedPlaceTypeInferenceStore__logCacheStoreWithReason_handler___block_invoke_23(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [RTLearnedPlaceTypeInference createWithManagedObject:a2];
  v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218243;
    v17 = (a3 + 1);
    v18 = 2117;
    v19 = v5;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "index, %lu, learned place type inference, %{sensitive}@", &v16, 0x16u);
  }

  v7 = [v5 learnedPlaceIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = [v5 learnedPlaceIdentifier];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (v11)
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = [v5 learnedPlaceIdentifier];
        v15 = [v13 objectForKeyedSubscript:v14];
        v16 = 138739971;
        v17 = v15;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEFAULT, "learned place, %{sensitive}@", &v16, 0xCu);
      }
    }
  }
}

uint64_t __69__RTLearnedPlaceTypeInferenceStore__logCacheStoreWithReason_handler___block_invoke_25(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_getLearnedPlacesMapFromLearnedPlaceIdentifiers:(id)identifiers error:(id *)error
{
  v77[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v7 = identifiersCopy;
  if (!identifiersCopy)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedPlaceIdentifiers", buf, 2u);
    }

    if (error)
    {
      *error = _RTErrorInvalidParameterCreate(@"learnedPlaceIdentifiers");
    }

    goto LABEL_12;
  }

  if (![identifiersCopy count])
  {
LABEL_12:
    v8 = MEMORY[0x277CBEC10];
    goto LABEL_35;
  }

  aSelector = a2;
  *buf = 0;
  v66 = buf;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__133;
  v69 = __Block_byref_object_dispose__133;
  v70 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__133;
  v63 = __Block_byref_object_dispose__133;
  v64 = 0;
  v8 = objc_opt_new();
  v9 = dispatch_semaphore_create(0);
  learnedLocationStore = [(RTLearnedPlaceTypeInferenceStore *)self learnedLocationStore];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __90__RTLearnedPlaceTypeInferenceStore__getLearnedPlacesMapFromLearnedPlaceIdentifiers_error___block_invoke;
  v55[3] = &unk_2788C4490;
  v57 = &v59;
  v58 = buf;
  v11 = v9;
  v56 = v11;
  [learnedLocationStore fetchPlacesWithIdentifiers:v7 handler:v55];

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_109];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
    firstObject = [v21 firstObject];

    [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *v72 = 0;
      _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: persistenceManager", v72, 2u);
    }

    v24 = MEMORY[0x277CCA9B8];
    v77[0] = *MEMORY[0x277CCA450];
    *v72 = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v77 count:1];
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
  v49 = v29;
  if (error && v29)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = NSStringFromSelector(aSelector);
      *v72 = 138412802;
      *&v72[4] = v42;
      v73 = 2112;
      v74 = v43;
      v75 = 2112;
      v76 = v49;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v72, 0x20u);
    }

    v31 = v49;
  }

  else
  {
    if (error && *(v66 + 5))
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilityWorkout);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        v46 = NSStringFromSelector(aSelector);
        v47 = *(v66 + 5);
        *v72 = 138412802;
        *&v72[4] = v45;
        v73 = 2112;
        v74 = v46;
        v75 = 2112;
        v76 = v47;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, %@, RTOutErrorAssignConditionalReturn, error, %@", v72, 0x20u);
      }
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v33 = v60[5];
      v34 = [v33 countByEnumeratingWithState:&v51 objects:v71 count:16];
      if (v34)
      {
        v35 = *v52;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v52 != v35)
            {
              objc_enumerationMutation(v33);
            }

            v37 = *(*(&v51 + 1) + 8 * i);
            v38 = objc_autoreleasePoolPush();
            identifier = [v37 identifier];
            [v8 setObject:v37 forKeyedSubscript:identifier];

            objc_autoreleasePoolPop(v38);
          }

          v34 = [v33 countByEnumeratingWithState:&v51 objects:v71 count:16];
        }

        while (v34);
      }

      if (!error)
      {
        goto LABEL_34;
      }
    }

    v31 = *(v66 + 5);
  }

  *error = v31;
LABEL_34:

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(buf, 8);

LABEL_35:

  return v8;
}

void __90__RTLearnedPlaceTypeInferenceStore__getLearnedPlacesMapFromLearnedPlaceIdentifiers_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (id)fetchRequestForLearnedPlaceTypeInferenceEnumerationOptions:(id)options error:(id *)error
{
  v112 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v109 = "+[RTLearnedPlaceTypeInferenceStore fetchRequestForLearnedPlaceTypeInferenceEnumerationOptions:error:]";
      v110 = 2112;
      v111 = optionsCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%s, options, %@", buf, 0x16u);
    }
  }

  if (optionsCopy)
  {
    v81 = +[RTLearnedPlaceTypeInferenceMO fetchRequest];
    v7 = objc_opt_new();
    v8 = objc_opt_new();
    if ([optionsCopy sortByCreationDate])
    {
      v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"creationDate" ascending:{objc_msgSend(optionsCopy, "ascending")}];
      [v7 addObject:v9];
    }

    v80 = v7;
    dateInterval = [optionsCopy dateInterval];

    if (dateInterval)
    {
      v11 = MEMORY[0x277CCAC30];
      dateInterval2 = [optionsCopy dateInterval];
      startDate = [dateInterval2 startDate];
      dateInterval3 = [optionsCopy dateInterval];
      endDate = [dateInterval3 endDate];
      v16 = [v11 predicateWithFormat:@"%K >= %@ AND %K <= %@", @"creationDate", startDate, @"creationDate", endDate];
      [v8 addObject:v16];
    }

    filteredToPlaceTypes = [optionsCopy filteredToPlaceTypes];
    v18 = 0x277CCA000;
    v82 = v8;
    v83 = optionsCopy;
    if (filteredToPlaceTypes)
    {
      v19 = filteredToPlaceTypes;
      filteredToPlaceTypes2 = [optionsCopy filteredToPlaceTypes];
      v21 = [filteredToPlaceTypes2 count];

      if (v21)
      {
        v22 = objc_opt_new();
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        obj = [optionsCopy filteredToPlaceTypes];
        v23 = [obj countByEnumeratingWithState:&v100 objects:v107 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v101;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v101 != v25)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v100 + 1) + 8 * i);
              v28 = objc_autoreleasePoolPush();
              v29 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %ld)", @"placeType", objc_msgSend(v27, "unsignedIntegerValue")];
              [v22 addObject:v29];

              objc_autoreleasePoolPop(v28);
            }

            v24 = [obj countByEnumeratingWithState:&v100 objects:v107 count:16];
          }

          while (v24);
        }

        v18 = 0x277CCA000uLL;
        v30 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v22];
        [v8 addObject:v30];

        optionsCopy = v83;
      }
    }

    filteredToIdentifiers = [optionsCopy filteredToIdentifiers];
    if (filteredToIdentifiers)
    {
      v32 = filteredToIdentifiers;
      filteredToIdentifiers2 = [optionsCopy filteredToIdentifiers];
      v34 = [filteredToIdentifiers2 count];

      if (v34)
      {
        v35 = objc_opt_new();
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        obja = [optionsCopy filteredToIdentifiers];
        v36 = [obja countByEnumeratingWithState:&v96 objects:v106 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v97;
          do
          {
            for (j = 0; j != v37; ++j)
            {
              if (*v97 != v38)
              {
                objc_enumerationMutation(obja);
              }

              v40 = *(*(&v96 + 1) + 8 * j);
              v41 = objc_autoreleasePoolPush();
              v42 = MEMORY[0x277CCAC30];
              uUIDString = [v40 UUIDString];
              v44 = [v42 predicateWithFormat:@"(%K == %@)", @"identifier", uUIDString];
              [v35 addObject:v44];

              objc_autoreleasePoolPop(v41);
            }

            v37 = [obja countByEnumeratingWithState:&v96 objects:v106 count:16];
          }

          while (v37);
        }

        v18 = 0x277CCA000uLL;
        v45 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v35];
        v8 = v82;
        [v82 addObject:v45];

        optionsCopy = v83;
      }
    }

    filteredToSessionIds = [optionsCopy filteredToSessionIds];
    if (filteredToSessionIds)
    {
      v47 = filteredToSessionIds;
      filteredToSessionIds2 = [optionsCopy filteredToSessionIds];
      v49 = [filteredToSessionIds2 count];

      if (v49)
      {
        v50 = objc_opt_new();
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        objb = [optionsCopy filteredToSessionIds];
        v51 = [objb countByEnumeratingWithState:&v92 objects:v105 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = *v93;
          do
          {
            for (k = 0; k != v52; ++k)
            {
              if (*v93 != v53)
              {
                objc_enumerationMutation(objb);
              }

              v55 = *(*(&v92 + 1) + 8 * k);
              v56 = objc_autoreleasePoolPush();
              v57 = MEMORY[0x277CCAC30];
              uUIDString2 = [v55 UUIDString];
              v59 = [v57 predicateWithFormat:@"(%K == %@)", @"sessionId", uUIDString2];
              [v50 addObject:v59];

              objc_autoreleasePoolPop(v56);
            }

            v52 = [objb countByEnumeratingWithState:&v92 objects:v105 count:16];
          }

          while (v52);
        }

        v18 = 0x277CCA000uLL;
        v60 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v50];
        v8 = v82;
        [v82 addObject:v60];

        optionsCopy = v83;
      }
    }

    filteredToLearnedPlaceIdentifiers = [optionsCopy filteredToLearnedPlaceIdentifiers];
    if (filteredToLearnedPlaceIdentifiers)
    {
      v62 = filteredToLearnedPlaceIdentifiers;
      filteredToLearnedPlaceIdentifiers2 = [optionsCopy filteredToLearnedPlaceIdentifiers];
      v64 = [filteredToLearnedPlaceIdentifiers2 count];

      if (v64)
      {
        v65 = objc_opt_new();
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        objc = [optionsCopy filteredToLearnedPlaceIdentifiers];
        v66 = [objc countByEnumeratingWithState:&v88 objects:v104 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v89;
          do
          {
            for (m = 0; m != v67; ++m)
            {
              if (*v89 != v68)
              {
                objc_enumerationMutation(objc);
              }

              v70 = *(*(&v88 + 1) + 8 * m);
              v71 = objc_autoreleasePoolPush();
              v72 = MEMORY[0x277CCAC30];
              uUIDString3 = [v70 UUIDString];
              v74 = [v72 predicateWithFormat:@"(%K == %@)", @"learnedPlaceIdentifier", uUIDString3];
              [v65 addObject:v74];

              objc_autoreleasePoolPop(v71);
            }

            v67 = [objc countByEnumeratingWithState:&v88 objects:v104 count:16];
          }

          while (v67);
        }

        v18 = 0x277CCA000uLL;
        v75 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v65];
        v8 = v82;
        [v82 addObject:v75];

        optionsCopy = v83;
      }
    }

    v76 = [*(v18 + 2336) andPredicateWithSubpredicates:v8];
    v77 = v81;
    [v81 setPredicate:v76];

    [v81 setSortDescriptors:v80];
    [v81 setFetchBatchSize:{objc_msgSend(optionsCopy, "batchSize")}];
    [v81 setFetchLimit:{objc_msgSend(optionsCopy, "fetchLimit")}];
    [v81 setFetchOffset:{objc_msgSend(optionsCopy, "offset")}];
    [v81 setReturnsObjectsAsFaults:0];
  }

  else
  {
    v78 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v78, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"options");
      *error = v77 = 0;
    }

    else
    {
      v77 = 0;
    }
  }

  return v77;
}

- (id)fetchRequestFromOptions:(id)options offset:(unint64_t)offset error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v8 = optionsCopy;
  if (!error)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_13;
  }

  if (optionsCopy)
  {
    v9 = objc_opt_class();
    if (![v9 isEqual:objc_opt_class()])
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v15 stringWithFormat:@"error of type, %@, is not supported", v17];

      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277D01448];
      v27 = *MEMORY[0x277CCA450];
      v28[0] = v18;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v22 = [v19 errorWithDomain:v20 code:7 userInfo:v21];

      v23 = v22;
      *error = v22;

      goto LABEL_13;
    }

    v25 = 0;
    v10 = [objc_opt_class() fetchRequestForLearnedPlaceTypeInferenceEnumerationOptions:v8 error:&v25];
    v11 = v25;
    if (v11)
    {
      v12 = v11;
      *error = v12;

LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }

    [v10 setFetchOffset:offset];
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
    }

    _RTErrorInvalidParameterCreate(@"options");
    *error = v10 = 0;
  }

LABEL_14:

  return v10;
}

@end