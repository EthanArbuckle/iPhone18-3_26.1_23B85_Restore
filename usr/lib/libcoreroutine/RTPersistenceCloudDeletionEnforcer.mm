@interface RTPersistenceCloudDeletionEnforcer
- (BOOL)applyTombstonesToEntityWithName:(id)name identifiers:(id)identifiers context:(id)context error:(id *)error;
- (BOOL)performBatchDeleteOfEntityWithName:(id)name identifiers:(id)identifiers context:(id)context error:(id *)error;
- (BOOL)processRequestsSinceReferenceDate:(id)date context:(id)context error:(id *)error;
@end

@implementation RTPersistenceCloudDeletionEnforcer

- (BOOL)processRequestsSinceReferenceDate:(id)date context:(id)context error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  contextCopy = context;
  if (contextCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([contextCopy options] & 2) == 0)
    {
      v16 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"This opertion requires a context with RTPersistenceContextOptionsAllowTombstones." userInfo:0];
      objc_exception_throw(v16);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__121;
    v25 = __Block_byref_object_dispose__121;
    v26 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __86__RTPersistenceCloudDeletionEnforcer_processRequestsSinceReferenceDate_context_error___block_invoke;
    v17[3] = &unk_2788C4EF0;
    v18 = dateCopy;
    selfCopy = self;
    p_buf = &buf;
    v19 = contextCopy;
    [v19 performBlockAndWait:v17];

    if (error)
    {
      *error = *(*(&buf + 1) + 40);
    }

    v10 = *(*(&buf + 1) + 40) == 0;
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v27 = *MEMORY[0x277CCA450];
    v28[0] = @"A managed object context is required.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v11];
    v13 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = @"A managed object context is required.";
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
    }

    if (error)
    {
      v14 = v12;
      *error = v12;
    }

    v10 = 0;
  }

  return v10;
}

void __86__RTPersistenceCloudDeletionEnforcer_processRequestsSinceReferenceDate_context_error___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = +[RTEntityDeletionRequestMO fetchRequest];
  v3 = MEMORY[0x277CCAC30];
  v4 = *(a1 + 32);
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v6 = [v3 predicateWithFormat:@"%K >= %@", @"creationDate", v5];
  [v2 setPredicate:v6];

  if (!v4)
  {
  }

  [v2 setFetchLimit:10];
  v7 = 0;
  v39 = v2;
  while (1)
  {
    v8 = *(a1 + 40);
    v51 = 0;
    v9 = [v8 executeFetchRequest:v2 error:&v51];
    v10 = v51;

    if (v10)
    {
      v35 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v54 = v10;
        _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "error while fetching entity deletion requests to process, %@", buf, 0xCu);
      }

      v36 = *(*(a1 + 56) + 8);
      v37 = *(v36 + 40);
      *(v36 + 40) = v10;
      v38 = v10;

      goto LABEL_31;
    }

    v11 = [v9 count];
    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (!v11)
    {
      break;
    }

    if (v12)
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v9 count];
        *buf = 134217984;
        v54 = v14;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "processing %lu entity deletion requests", buf, 0xCu);
      }
    }

    v40 = [*(a1 + 40) transactionAuthor];
    [*(a1 + 40) setTransactionAuthor:@"CloudDeletion"];
    v43 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v41 = v9;
    obj = v9;
    v15 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v48;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v48 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v47 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          v21 = [v19 recordIDs];
          v22 = [v19 targetDeviceIdentifier];
          v23 = [*(a1 + 40) currentDevice];
          v24 = [v23 identifier];
          v25 = [v22 isEqual:v24];

          if (v25)
          {
            v26 = v46;
            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v27 = __86__RTPersistenceCloudDeletionEnforcer_processRequestsSinceReferenceDate_context_error___block_invoke_20;
          }

          else
          {
            v26 = v45;
            v45[0] = MEMORY[0x277D85DD0];
            v45[1] = 3221225472;
            v27 = __86__RTPersistenceCloudDeletionEnforcer_processRequestsSinceReferenceDate_context_error___block_invoke_2;
          }

          v26[2] = v27;
          v26[3] = &unk_2788CEA38;
          v28 = *(a1 + 40);
          v26[4] = *(a1 + 48);
          v26[5] = v28;
          v26[6] = v43;
          [v21 enumerateKeysAndObjectsUsingBlock:v26];

          objc_autoreleasePoolPop(v20);
        }

        v16 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v16);
    }

    v7 = obj;

    v2 = v39;
    v9 = v41;
    if ([*(a1 + 40) hasChanges])
    {
      v29 = *(a1 + 40);
      v44 = 0;
      [v29 save:&v44];
      v30 = v44;
      if (v30)
      {
        [v43 addObject:v30];
      }
    }

    v31 = _RTSafeArray();
    v32 = _RTMultiErrorCreate();
    v33 = *(*(a1 + 56) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;

    [*(a1 + 40) setTransactionAuthor:{v40, 1}];
    [v39 setFetchOffset:{objc_msgSend(v39, "fetchOffset") + objc_msgSend(obj, "count")}];
    [*(a1 + 40) reset];

    if (![obj count])
    {
      goto LABEL_35;
    }
  }

  if (v12)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "no entity deletion requests to process", buf, 2u);
    }

LABEL_31:
  }

LABEL_35:
}

void __86__RTPersistenceCloudDeletionEnforcer_processRequestsSinceReferenceDate_context_error___block_invoke_20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = 0;
  [v4 performBatchDeleteOfEntityWithName:a2 identifiers:a3 context:v5 error:&v7];
  v6 = v7;
  if (v6)
  {
    [*(a1 + 48) addObject:v6];
  }
}

void __86__RTPersistenceCloudDeletionEnforcer_processRequestsSinceReferenceDate_context_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = 0;
  [v4 applyTombstonesToEntityWithName:a2 identifiers:a3 context:v5 error:&v7];
  v6 = v7;
  if (v6)
  {
    [*(a1 + 48) addObject:v6];
  }
}

- (BOOL)performBatchDeleteOfEntityWithName:(id)name identifiers:(id)identifiers context:(id)context error:(id *)error
{
  nameCopy = name;
  identifiersCopy = identifiers;
  contextCopy = context;
  v13 = contextCopy;
  if (!nameCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: entityName", buf, 2u);
    }

    if (error)
    {
      v16 = @"entityName";
LABEL_15:
      _RTErrorInvalidParameterCreate(v16);
      *error = v14 = 0;
      goto LABEL_18;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_18;
  }

  if (!contextCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    if (error)
    {
      v16 = @"context";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if ([identifiersCopy count])
  {
    *buf = 0;
    v26 = buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__121;
    v29 = __Block_byref_object_dispose__121;
    v30 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __99__RTPersistenceCloudDeletionEnforcer_performBatchDeleteOfEntityWithName_identifiers_context_error___block_invoke;
    v19[3] = &unk_2788CB638;
    v20 = nameCopy;
    v21 = identifiersCopy;
    v23 = buf;
    v24 = a2;
    v22 = v13;
    [v22 performBlockAndWait:v19];

    if (error)
    {
      *error = *(v26 + 5);
    }

    v14 = *(v26 + 5) == 0;
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = 1;
  }

LABEL_18:

  return v14;
}

void __99__RTPersistenceCloudDeletionEnforcer_performBatchDeleteOfEntityWithName_identifiers_context_error___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:*(a1 + 32)];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K in (%@)", @"identifier", *(a1 + 40)];
  [v2 setPredicate:v3];

  v4 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v2];
  [v4 setResultType:2];
  v5 = *(a1 + 48);
  v13 = 0;
  v6 = [v5 executeRequest:v4 error:&v13];
  v7 = v13;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(*(a1 + 64));
      v10 = [v6 result];
      *buf = 138413058;
      v15 = v9;
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, request, %@, deleted count, %@, error, %@", buf, 0x2Au);
    }
  }

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;
}

- (BOOL)applyTombstonesToEntityWithName:(id)name identifiers:(id)identifiers context:(id)context error:(id *)error
{
  nameCopy = name;
  identifiersCopy = identifiers;
  contextCopy = context;
  v13 = contextCopy;
  if (!nameCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: entityName", buf, 2u);
    }

    if (error)
    {
      v16 = @"entityName";
LABEL_15:
      _RTErrorInvalidParameterCreate(v16);
      *error = v14 = 0;
      goto LABEL_18;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_18;
  }

  if (!contextCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    if (error)
    {
      v16 = @"context";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if ([identifiersCopy count])
  {
    *buf = 0;
    v26 = buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__121;
    v29 = __Block_byref_object_dispose__121;
    v30 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __96__RTPersistenceCloudDeletionEnforcer_applyTombstonesToEntityWithName_identifiers_context_error___block_invoke;
    v19[3] = &unk_2788CB638;
    v20 = nameCopy;
    v21 = identifiersCopy;
    v23 = buf;
    v24 = a2;
    v22 = v13;
    [v22 performBlockAndWait:v19];

    if (error)
    {
      *error = *(v26 + 5);
    }

    v14 = *(v26 + 5) == 0;
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = 1;
  }

LABEL_18:

  return v14;
}

void __96__RTPersistenceCloudDeletionEnforcer_applyTombstonesToEntityWithName_identifiers_context_error___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBE380]) initWithEntityName:*(a1 + 32)];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K in (%@)", @"identifier", *(a1 + 40)];
  [v2 setPredicate:v3];

  v4 = [MEMORY[0x277CCA9C0] expressionWithFormat:@"bitwiseOr:with:(%@, %lu)", @"flags", 1];
  v23 = @"flags";
  v24[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [v2 setPropertiesToUpdate:v5];

  [v2 setResultType:2];
  v6 = *(a1 + 48);
  v14 = 0;
  v7 = [v6 executeRequest:v2 error:&v14];
  v8 = v14;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(*(a1 + 64));
      v11 = [v7 result];
      *buf = 138413058;
      v16 = v10;
      v17 = 2112;
      v18 = v2;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, request, %@, updated count, %@, error, %@", buf, 0x2Au);
    }
  }

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
}

@end