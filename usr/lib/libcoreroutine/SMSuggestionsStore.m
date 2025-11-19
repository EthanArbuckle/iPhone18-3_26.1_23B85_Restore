@interface SMSuggestionsStore
+ (id)fetchRequestForSuggestionEnumerationOptions:(id)a3 error:(id *)a4;
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (void)_clearSuggestionsWithHandler:(id)a3;
- (void)_deleteSuggestionsPredating:(id)a3 handler:(id)a4;
- (void)_fetchSuggestionsCountWithOptions:(id)a3 handler:(id)a4;
- (void)_fetchSuggestionsWithOptions:(id)a3 handler:(id)a4;
- (void)clearSuggestionsWithHandler:(id)a3;
- (void)deleteSuggestionsPredating:(id)a3 handler:(id)a4;
- (void)fetchSuggestionsCountWithOptions:(id)a3 handler:(id)a4;
- (void)fetchSuggestionsWithOptions:(id)a3 handler:(id)a4;
- (void)storeSuggestions:(id)a3 handler:(id)a4;
@end

@implementation SMSuggestionsStore

- (void)fetchSuggestionsWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SMSuggestionsStore_fetchSuggestionsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchSuggestionsWithOptions:(id)a3 handler:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__SMSuggestionsStore__fetchSuggestionsWithOptions_handler___block_invoke;
    aBlock[3] = &unk_2788C4910;
    aBlock[4] = self;
    v20 = v7;
    v9 = v8;
    v21 = v9;
    v22 = a2;
    v10 = _Block_copy(aBlock);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__SMSuggestionsStore__fetchSuggestionsWithOptions_handler___block_invoke_9;
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
      v24 = "[SMSuggestionsStore _fetchSuggestionsWithOptions:handler:]";
      v25 = 1024;
      LODWORD(v26) = 43;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v27 = *MEMORY[0x277CCA450];
    v28[0] = @"handler is a required parameter.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v12];
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
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

void __59__SMSuggestionsStore__fetchSuggestionsWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_class();
  v34 = a1;
  v5 = *(a1 + 40);
  v40 = 0;
  v6 = [v4 fetchRequestForSuggestionEnumerationOptions:v5 error:&v40];
  v7 = v40;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [v6 fetchBatchSize];
      v25 = [v6 fetchOffset];
      *buf = 138413058;
      v43 = v23;
      v44 = 2048;
      v45 = v24;
      v46 = 2048;
      v47 = v25;
      v48 = 2112;
      v49 = v7;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@: using options fetch batch size, %lu, fetch offset, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v7)
  {
    (*(*(v34 + 48) + 16))();
  }

  else
  {
    v39 = 0;
    v9 = [v3 executeFetchRequest:v6 error:&v39];
    v7 = v39;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = NSStringFromSelector(*(v34 + 56));
        v29 = [v9 count];
        *buf = 138413314;
        v43 = v27;
        v44 = 2112;
        v45 = v28;
        v46 = 2112;
        v47 = v6;
        v48 = 2048;
        v49 = v29;
        v50 = 2112;
        v51 = v7;
        _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@: %@, request, %@, results count, %lu, error, %@", buf, 0x34u);
      }
    }

    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "fetchBatchSize")}];
    if (!v7)
    {
      v31 = v3;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v30 = v9;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v36;
        do
        {
          v16 = 0;
          do
          {
            if (*v36 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v35 + 1) + 8 * v16);
            v18 = objc_autoreleasePoolPush();
            v19 = [MEMORY[0x277D4AC10] createWithManagedObject:v17];
            if (v19)
            {
              [v11 addObject:v19];
            }

            else
            {
              v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v21 = objc_opt_class();
                v33 = NSStringFromClass(v21);
                v32 = NSStringFromSelector(*(v34 + 56));
                *buf = 138413058;
                v43 = v33;
                v44 = 2112;
                v45 = v32;
                v46 = 2112;
                v47 = v17;
                v48 = 2112;
                v49 = 0;
                _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@: %@, suggestion MO, %@, suggestion, %@", buf, 0x2Au);
              }
            }

            objc_autoreleasePoolPop(v18);
            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v14);
      }

      v3 = v31;
      v9 = v30;
      v7 = 0;
    }

    (*(*(v34 + 48) + 16))();
  }
}

- (void)fetchSuggestionsCountWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SMSuggestionsStore_fetchSuggestionsCountWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchSuggestionsCountWithOptions:(id)a3 handler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[SMSuggestionsStore _fetchSuggestionsCountWithOptions:handler:]";
      v22 = 1024;
      v23 = 120;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__SMSuggestionsStore__fetchSuggestionsCountWithOptions_handler___block_invoke;
  aBlock[3] = &unk_2788C4910;
  aBlock[4] = self;
  v17 = v7;
  v10 = v8;
  v18 = v10;
  v19 = a2;
  v11 = v7;
  v12 = _Block_copy(aBlock);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__SMSuggestionsStore__fetchSuggestionsCountWithOptions_handler___block_invoke_11;
  v14[3] = &unk_2788C48C0;
  v15 = v10;
  v13 = v10;
  [(RTStore *)self _performBlock:v12 contextType:1 errorHandler:v14];
}

void __64__SMSuggestionsStore__fetchSuggestionsCountWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 40);
  v21 = 0;
  v6 = [v4 fetchRequestForSuggestionEnumerationOptions:v5 error:&v21];
  v7 = v21;
  v20 = 0;
  v8 = [v3 countForFetchRequest:v6 error:&v20];

  v9 = v20;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v6 fetchBatchSize];
      v16 = [v6 fetchOffset];
      *buf = 138413058;
      v23 = v14;
      v24 = 2048;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      v28 = 2112;
      v29 = v7;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@: using options fetch batch size, %lu, fetch offset, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v7)
  {
    v11 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(*(a1 + 56));
        *buf = 138413314;
        v23 = v18;
        v24 = 2112;
        v25 = v19;
        v26 = 2112;
        v27 = v6;
        v28 = 2048;
        v29 = v8;
        v30 = 2112;
        v31 = v9;
        _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%@, %@, request, %@, total suggestions count, %lu, error, %@", buf, 0x34u);
      }
    }

    v11 = *(*(a1 + 48) + 16);
  }

  v11();
}

- (void)storeSuggestions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SMSuggestionsStore_storeSuggestions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)clearSuggestionsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SMSuggestionsStore_clearSuggestionsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_clearSuggestionsWithHandler:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6[0] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(RTStore *)self removeAll:v5 handler:v4];
}

- (void)deleteSuggestionsPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SMSuggestionsStore_deleteSuggestionsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_deleteSuggestionsPredating:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__SMSuggestionsStore__deleteSuggestionsPredating_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    v11 = v6;
    v12 = self;
    v8 = v7;
    v13 = v8;
    v9 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v9 contextType:0 errorHandler:v8];
  }
}

void __58__SMSuggestionsStore__deleteSuggestionsPredating_handler___block_invoke(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SMSuggestionMO fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K < %@)", @"endDate", a1[4]];
  [v4 setPredicate:v5];

  v6 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v6 setResultType:2];
  v7 = a1[5];
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v7 executeDeleteRequests:v8 context:v3 handler:a1[6]];
}

+ (id)fetchRequestForSuggestionEnumerationOptions:(id)a3 error:(id *)a4
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v81 = "+[SMSuggestionsStore fetchRequestForSuggestionEnumerationOptions:error:]";
      v82 = 2112;
      v83 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, options, %@", buf, 0x16u);
    }
  }

  v63 = +[SMSuggestionMO fetchRequest];
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  if ([v4 sortByCreationDate])
  {
    v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"creationDate" ascending:{objc_msgSend(v4, "ascending")}];
    [v6 addObject:v8];
  }

  if (([v4 includeSuppressed] & 1) == 0)
  {
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %ld)", @"suppressionReason", 1];
    [v7 addObject:v9];
  }

  v62 = v6;
  v10 = [v4 dateInterval];

  if (v10)
  {
    v11 = MEMORY[0x277CCAC30];
    v12 = [v4 dateInterval];
    v13 = [v12 startDate];
    v14 = [v4 dateInterval];
    v15 = [v14 endDate];
    v16 = [v11 predicateWithFormat:@"%K >= %@ AND %K <= %@", @"creationDate", v13, @"creationDate", v15];
    [v7 addObject:v16];
  }

  v17 = [v4 filteredToSuggestionTriggers];
  v18 = 0x277CCA000;
  v64 = v7;
  if (v17)
  {
    v19 = v17;
    v20 = [v4 filteredToSuggestionTriggers];
    v21 = [v20 count];

    if (v21)
    {
      v22 = objc_opt_new();
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v23 = [v4 filteredToSuggestionTriggers];
      v24 = [v23 countByEnumeratingWithState:&v73 objects:v79 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v74;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v74 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v73 + 1) + 8 * i);
            v29 = objc_autoreleasePoolPush();
            v30 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %ld)", @"suggestionTrigger", objc_msgSend(v28, "unsignedIntegerValue")];
            [v22 addObject:v30];

            objc_autoreleasePoolPop(v29);
          }

          v25 = [v23 countByEnumeratingWithState:&v73 objects:v79 count:16];
        }

        while (v25);
      }

      v18 = 0x277CCA000uLL;
      v31 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v22];
      v7 = v64;
      [v64 addObject:v31];
    }
  }

  v32 = [v4 filteredToSuggestionUserTypes];
  if (v32)
  {
    v33 = v32;
    v34 = [v4 filteredToSuggestionUserTypes];
    v35 = [v34 count];

    if (v35)
    {
      v36 = objc_opt_new();
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v37 = [v4 filteredToSuggestionUserTypes];
      v38 = [v37 countByEnumeratingWithState:&v69 objects:v78 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v70;
        do
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v70 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v69 + 1) + 8 * j);
            v43 = objc_autoreleasePoolPush();
            v44 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %ld)", @"suggestionUserType", objc_msgSend(v42, "unsignedIntegerValue")];
            [v36 addObject:v44];

            objc_autoreleasePoolPop(v43);
          }

          v39 = [v37 countByEnumeratingWithState:&v69 objects:v78 count:16];
        }

        while (v39);
      }

      v18 = 0x277CCA000uLL;
      v45 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v36];
      v7 = v64;
      [v64 addObject:v45];
    }
  }

  v46 = [v4 filteredToSessionTypes];
  if (v46)
  {
    v47 = v46;
    v48 = [v4 filteredToSessionTypes];
    v49 = [v48 count];

    if (v49)
    {
      v50 = objc_opt_new();
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v51 = [v4 filteredToSessionTypes];
      v52 = [v51 countByEnumeratingWithState:&v65 objects:v77 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v66;
        do
        {
          for (k = 0; k != v53; ++k)
          {
            if (*v66 != v54)
            {
              objc_enumerationMutation(v51);
            }

            v56 = *(*(&v65 + 1) + 8 * k);
            v57 = objc_autoreleasePoolPush();
            v58 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %ld)", @"sessionType", objc_msgSend(v56, "unsignedIntegerValue")];
            [v50 addObject:v58];

            objc_autoreleasePoolPop(v57);
          }

          v53 = [v51 countByEnumeratingWithState:&v65 objects:v77 count:16];
        }

        while (v53);
      }

      v18 = 0x277CCA000uLL;
      v59 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v50];
      v7 = v64;
      [v64 addObject:v59];
    }
  }

  v60 = [*(v18 + 2336) andPredicateWithSubpredicates:v7];
  [v63 setPredicate:v60];

  [v63 setSortDescriptors:v62];
  [v63 setFetchBatchSize:{objc_msgSend(v4, "batchSize")}];
  [v63 setFetchLimit:{objc_msgSend(v4, "fetchLimit")}];
  [v63 setFetchOffset:{objc_msgSend(v4, "offset")}];
  [v63 setReturnsObjectsAsFaults:0];

  return v63;
}

- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (!a5)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_13;
  }

  if (v7)
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
      *a5 = v22;

      goto LABEL_13;
    }

    v25 = 0;
    v10 = [objc_opt_class() fetchRequestForSuggestionEnumerationOptions:v8 error:&v25];
    v11 = v25;
    if (v11)
    {
      v12 = v11;
      *a5 = v12;

LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }

    [v10 setFetchOffset:a4];
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
    *a5 = v10 = 0;
  }

LABEL_14:

  return v10;
}

@end