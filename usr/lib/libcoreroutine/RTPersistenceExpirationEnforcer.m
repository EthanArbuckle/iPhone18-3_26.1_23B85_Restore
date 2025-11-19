@interface RTPersistenceExpirationEnforcer
- (BOOL)removeExpiredRecordsBeforeDate:(id)a3 context:(id)a4 error:(id *)a5;
- (BOOL)removeExpiredRecordsWithObjectIDs:(id)a3 context:(id)a4 error:(id *)a5;
- (BOOL)removeRecordsOwnedByOtherDevicesExpiredBeforeDate:(id)a3 allowPropagation:(BOOL)a4 context:(id)a5 error:(id *)a6;
- (BOOL)removeRecordsOwnedByThisDeviceExpiredBeforeDate:(id)a3 context:(id)a4 error:(id *)a5;
- (BOOL)repairInvalidExpirationDatesWithContext:(id)a3 error:(id *)a4;
- (RTPersistenceExpirationEnforcer)initWithPersistenceManager:(id)a3;
- (id)collectRecordIDsByTypeExpiredBeforeDate:(id)a3 ownedByThisDevice:(BOOL)a4 context:(id)a5 error:(id *)a6;
- (id)entitiesWithDeviceAndExpirationProperty:(id)a3 ownedByThisDevice:(BOOL)a4;
- (id)objectIDsByTypeAffectedByDeletingObjectWithID:(id)a3 context:(id)a4 error:(id *)a5;
- (id)objectsWithLifetimeMatchingObjectWithID:(id)a3 context:(id)a4 error:(id *)a5;
- (void)mergeEntriesFromDictionary:(id)a3 intoDictionary:(id)a4;
- (void)mergeIdentifiersFromArray:(id)a3 entityName:(id)a4 intoDictionary:(id)a5;
@end

@implementation RTPersistenceExpirationEnforcer

- (RTPersistenceExpirationEnforcer)initWithPersistenceManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v29.receiver = self;
    v29.super_class = RTPersistenceExpirationEnforcer;
    v6 = [(RTPersistenceExpirationEnforcer *)&v29 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_persistenceManager, a3);
      v28 = MEMORY[0x277CBEB98];
      v8 = +[RTAddressMO entity];
      v9 = [v8 name];
      v10 = +[RTDeviceMO entity];
      v11 = [v10 name];
      v12 = +[RTEntityDeletionRequestMO entity];
      v13 = [v12 name];
      v14 = +[RTMapItemMO entity];
      v15 = [v14 name];
      v16 = [v28 setWithObjects:{v9, v11, v13, v15, 0}];
      v17 = _MergedGlobals_117;
      _MergedGlobals_117 = v16;

      v18 = MEMORY[0x277CBEB98];
      v19 = +[RTDeviceMO entity];
      v20 = [v19 name];
      v21 = +[RTEntityDeletionRequestMO entity];
      v22 = [v21 name];
      v23 = [v18 setWithObjects:{v20, v22, 0}];
      v24 = qword_2814A7D48;
      qword_2814A7D48 = v23;
    }

    self = v7;
    v25 = self;
  }

  else
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: persistenceManager", buf, 2u);
    }

    v25 = 0;
  }

  return v25;
}

- (id)entitiesWithDeviceAndExpirationProperty:(id)a3 ownedByThisDevice:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v5 = [a3 persistentStoreCoordinator];
  v21 = [v5 managedObjectModel];

  v6 = objc_opt_new();
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K != nil", @"propertiesByName", @"expirationDate"];
  if (v7)
  {
    [v6 addObject:v7];
  }

  v20 = v7;
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K != nil", @"propertiesByName", @"device"];
  if (v8)
  {
    [v6 addObject:v8];
  }

  v9 = &_MergedGlobals_117;
  if (!v4)
  {
    v9 = &qword_2814A7D48;
  }

  v10 = *v9;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %@", @"name", *(*(&v22 + 1) + 8 * i)];
        if (v15)
        {
          [v6 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v16 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v6];
  v17 = [v21 entities];
  v18 = [v17 filteredArrayUsingPredicate:v16];

  return v18;
}

- (id)collectRecordIDsByTypeExpiredBeforeDate:(id)a3 ownedByThisDevice:(BOOL)a4 context:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a5;
  v13 = v12;
  if (a6)
  {
    if (v11)
    {
      if (v12)
      {
        v14 = [MEMORY[0x277CBEB18] array];
        *buf = 0;
        v34 = buf;
        v35 = 0x3032000000;
        v36 = __Block_byref_object_copy__106;
        v37 = __Block_byref_object_dispose__106;
        v38 = 0;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __107__RTPersistenceExpirationEnforcer_collectRecordIDsByTypeExpiredBeforeDate_ownedByThisDevice_context_error___block_invoke;
        v26[3] = &unk_2788CDC10;
        v26[4] = self;
        v32 = a4;
        v27 = v13;
        v30 = buf;
        v28 = v11;
        v31 = a2;
        v15 = v14;
        v29 = v15;
        [v27 performBlockAndWait:v26];
        v16 = _RTSafeArray();
        v17 = _RTMultiErrorCreate();

        v18 = _RTSafeArray();
        *a6 = _RTMultiErrorCreate();

        if (v17)
        {
          v19 = 0;
        }

        else
        {
          v19 = *(v34 + 5);
        }

        v21 = v19;

        _Block_object_dispose(buf, 8);
        goto LABEL_18;
      }

      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
      }

      v23 = @"context";
    }

    else
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceDate", buf, 2u);
      }

      v23 = @"referenceDate";
    }

    _RTErrorInvalidParameterCreate(v23);
    *a6 = v21 = 0;
  }

  else
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v21 = 0;
  }

LABEL_18:

  return v21;
}

void __107__RTPersistenceExpirationEnforcer_collectRecordIDsByTypeExpiredBeforeDate_ownedByThisDevice_context_error___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) entitiesWithDeviceAndExpirationProperty:*(a1 + 40) ownedByThisDevice:*(a1 + 80)];
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 80);
  v7 = MEMORY[0x277CCAC30];
  v8 = [*(a1 + 40) currentDevice];
  v9 = v8;
  if (v6)
  {
    v10 = @"%K == %@ && %K <= %@";
  }

  else
  {
    v10 = @"%K != %@ && %K <= %@";
  }

  v11 = [v7 predicateWithFormat:v10, @"device", v8, @"expirationDate", *(a1 + 48)];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = v2;
  v13 = v11;
  v14 = v12;
  v36 = [v12 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v36)
  {
    v15 = *v39;
    v34 = v14;
    v35 = *v39;
    do
    {
      v16 = 0;
      do
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v14);
        }

        v17 = *(*(&v38 + 1) + 8 * v16);
        v18 = objc_alloc(MEMORY[0x277CBE428]);
        v19 = [v17 name];
        v20 = [v18 initWithEntityName:v19];

        [v20 setResultType:1];
        [v20 setPredicate:v13];
        v21 = *(a1 + 40);
        v37 = 0;
        v22 = [v21 executeFetchRequest:v20 error:&v37];
        v23 = v37;
        if (v23)
        {
          v24 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v32 = NSStringFromSelector(*(a1 + 72));
            v33 = [v17 name];
            *buf = 138412802;
            v43 = v32;
            v44 = 2112;
            v45 = v33;
            v46 = 2112;
            v47 = v23;
            _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@, encountered error fetching expired %@s, error, %@", buf, 0x20u);

            v15 = v35;
          }

          [*(a1 + 56) addObject:v23];
        }

        else if ([v22 count])
        {
          v25 = v13;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v26 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v27 = [v22 count];
              v28 = [v17 name];
              *buf = 134218242;
              v43 = v27;
              v44 = 2112;
              v45 = v28;
              _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "adding %lu object IDs of type %@ to redaction map", buf, 0x16u);
            }
          }

          v29 = *(*(*(a1 + 64) + 8) + 40);
          v30 = [MEMORY[0x277CBEB98] setWithArray:v22];
          v31 = [v17 name];
          [v29 setObject:v30 forKey:v31];

          v13 = v25;
          v14 = v34;
          v15 = v35;
        }

        ++v16;
      }

      while (v36 != v16);
      v36 = [v14 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v36);
  }
}

- (BOOL)removeRecordsOwnedByOtherDevicesExpiredBeforeDate:(id)a3 allowPropagation:(BOOL)a4 context:(id)a5 error:(id *)a6
{
  v40[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = v12;
  if (!a6)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_12;
  }

  if (!v11)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceDate", buf, 2u);
    }

    v19 = @"referenceDate";
    goto LABEL_19;
  }

  if (!v12)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    v19 = @"context";
LABEL_19:
    _RTErrorInvalidParameterCreate(v19);
    *a6 = v16 = 0;
    goto LABEL_20;
  }

  v14 = [(RTPersistenceManager *)self->_persistenceManager mirroringDelegateStateForStoreType:1];
  if (v14 == 2)
  {
    v22 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA450];
    v40[0] = @"The mirroring request failed because the mirroring delegate failed setup.";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v24 = [v22 errorWithDomain:@"RTPersistenceMirroringManagerErrorDomain" code:7 userInfo:v23];

    v25 = v24;
    *a6 = v24;

LABEL_12:
    v16 = 0;
    goto LABEL_20;
  }

  if (v14)
  {
    v26 = [MEMORY[0x277CBEB18] array];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __116__RTPersistenceExpirationEnforcer_removeRecordsOwnedByOtherDevicesExpiredBeforeDate_allowPropagation_context_error___block_invoke;
    v31[3] = &unk_2788CCA70;
    v32 = v13;
    v33 = self;
    v35 = v26;
    v36 = a2;
    v34 = v11;
    v37 = a4;
    v27 = v26;
    [v32 performBlockAndWait:v31];
    v28 = _RTSafeArray();
    v29 = _RTMultiErrorCreate();

    v30 = v29;
    *a6 = v29;
    v16 = v29 == 0;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Attempted to remove records from other device with RTPersistenceMirroringDelegateStateUnknown", buf, 2u);
    }

    *a6 = 0;
    v16 = 1;
  }

LABEL_20:

  return v16;
}

void __116__RTPersistenceExpirationEnforcer_removeRecordsOwnedByOtherDevicesExpiredBeforeDate_allowPropagation_context_error___block_invoke(uint64_t a1)
{
  v105[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) transactionAuthor];
  [*v2 setTransactionAuthor:@"ExpirationEnforcer"];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *v2;
  v87 = 0;
  v7 = [v4 collectRecordIDsByTypeExpiredBeforeDate:v5 ownedByThisDevice:0 context:v6 error:&v87];
  v8 = v87;
  if (!v8)
  {
    *v101 = 0;
    *&v101[8] = v101;
    *&v101[16] = 0x3032000000;
    v102 = __Block_byref_object_copy__106;
    v103 = __Block_byref_object_dispose__106;
    v104 = 0;
    v10 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v7];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __116__RTPersistenceExpirationEnforcer_removeRecordsOwnedByOtherDevicesExpiredBeforeDate_allowPropagation_context_error___block_invoke_51;
    v83[3] = &unk_2788CDC38;
    v69 = *(a1 + 32);
    v11 = v69.i64[0];
    v84 = vextq_s8(v69, v69, 8uLL);
    v86 = v101;
    v12 = v10;
    v85 = v12;
    [v7 enumerateKeysAndObjectsUsingBlock:v83];
    if (*(*&v101[8] + 40))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v39 = NSStringFromSelector(*(a1 + 64));
        v40 = *(*&v101[8] + 40);
        *v97 = 138412546;
        *&v97[4] = v39;
        *&v97[12] = 2112;
        *&v97[14] = v40;
        _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, encountered error while collecting matched lifetime records from other devices, error, %@", v97, 0x16u);
      }

      [*(a1 + 56) addObject:*(*&v101[8] + 40)];
      goto LABEL_48;
    }

    *v97 = 0;
    *&v97[8] = v97;
    *&v97[16] = 0x3032000000;
    v98 = __Block_byref_object_copy__106;
    v99 = __Block_byref_object_dispose__106;
    v100 = 0;
    v14 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v12];
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __116__RTPersistenceExpirationEnforcer_removeRecordsOwnedByOtherDevicesExpiredBeforeDate_allowPropagation_context_error___block_invoke_53;
    v79[3] = &unk_2788CDC38;
    v70 = *(a1 + 32);
    v15 = v70.i64[0];
    v80 = vextq_s8(v70, v70, 8uLL);
    v82 = v97;
    v16 = v14;
    v81 = v16;
    [v12 enumerateKeysAndObjectsUsingBlock:v79];
    if (*(*&v97[8] + 40))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v43 = NSStringFromSelector(*(a1 + 64));
        v44 = *(*&v97[8] + 40);
        *v93 = 138412546;
        *&v93[4] = v43;
        *&v93[12] = 2112;
        *&v93[14] = v44;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "%@, encountered error while finding object IDs affected by deleting object, from other devices, error, %@", v93, 0x16u);
      }

      [*(a1 + 56) addObject:*(*&v97[8] + 40)];
      goto LABEL_47;
    }

    if ((*(a1 + 72) & 1) != 0 || ![v7 count])
    {
LABEL_38:
      v48 = *(a1 + 32);
      v47 = *(a1 + 40);
      v72 = 0;
      [v47 removeExpiredRecordsWithObjectIDs:v7 context:v48 error:&v72];
      v49 = v72;
      if (v49)
      {
        v50 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v55 = NSStringFromSelector(*(a1 + 64));
          *v93 = 138412546;
          *&v93[4] = v55;
          *&v93[12] = 2112;
          *&v93[14] = v49;
          _os_log_error_impl(&dword_2304B3000, v50, OS_LOG_TYPE_ERROR, "%@, encountered error while removing expired records for other devices on this device, error, %@", v93, 0x16u);
        }

        [*(a1 + 56) addObject:v49];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v51 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = NSStringFromSelector(*(a1 + 64));
          *v93 = 138412290;
          *&v93[4] = v52;
          _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_INFO, "%@, successfully removed expired records from other devices on this device", v93, 0xCu);
        }
      }

      [*(a1 + 32) setTransactionAuthor:v3];

      goto LABEL_47;
    }

    *v93 = 0;
    *&v93[8] = v93;
    *&v93[16] = 0x3032000000;
    v94 = __Block_byref_object_copy__106;
    v95 = __Block_byref_object_dispose__106;
    v96 = 0;
    v18 = dispatch_semaphore_create(0);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v16 count];
        *buf = 134217984;
        *&buf[4] = v20;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "submitting reset metadata request for %lu entity types", buf, 0xCu);
      }
    }

    v21 = objc_alloc(MEMORY[0x277CBE3E0]);
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __116__RTPersistenceExpirationEnforcer_removeRecordsOwnedByOtherDevicesExpiredBeforeDate_allowPropagation_context_error___block_invoke_55;
    v76[3] = &unk_2788CDC60;
    v78 = v93;
    v66 = v18;
    v77 = v66;
    v71 = [v21 initWithOptions:0 completionBlock:v76];
    v22 = objc_opt_new();
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __116__RTPersistenceExpirationEnforcer_removeRecordsOwnedByOtherDevicesExpiredBeforeDate_allowPropagation_context_error___block_invoke_57;
    v74[3] = &unk_2788CDC88;
    v23 = v22;
    v75 = v23;
    [v16 enumerateKeysAndObjectsUsingBlock:v74];
    v24 = [MEMORY[0x277CBEB98] setWithArray:v23];
    [v71 setObjectIDsToReset:v24];
    v65 = v23;

    v25 = *(a1 + 32);
    v73 = 0;
    v68 = [v25 executeRequest:v71 error:&v73];
    v26 = v73;
    v67 = v26;
    if (!v68 || v26)
    {
      v41 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v56 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412802;
        *&buf[4] = v56;
        v89 = 2112;
        v90 = v65;
        v91 = 2112;
        v92 = v67;
        _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, "%@, encountered error during metadata reset request with object IDs %@s, error, %@", buf, 0x20u);
      }

      if (v67)
      {
        [*(a1 + 56) addObject:v67];
      }

      v42 = 0;
    }

    else
    {
      v27 = v66;
      v63 = [MEMORY[0x277CBEAA8] now];
      v28 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v27, v28))
      {
        v62 = [MEMORY[0x277CBEAA8] now];
        [v62 timeIntervalSinceDate:v63];
        v30 = v29;
        v60 = objc_opt_new();
        v61 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_88];
        v31 = [MEMORY[0x277CCACC8] callStackSymbols];
        v32 = [v31 filteredArrayUsingPredicate:v61];
        v59 = [v32 firstObject];

        [v60 submitToCoreAnalytics:v59 type:1 duration:v30];
        v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v33, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v34 = MEMORY[0x277CCA9B8];
        v105[0] = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v105 count:1];
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

      v42 = v36;
      if (!*(*&v93[8] + 40))
      {
        v46 = 1;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v53 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v64 = NSStringFromSelector(*(a1 + 64));
            v54 = [v65 count];
            *buf = 138412802;
            *&buf[4] = v64;
            v89 = 2048;
            v90 = v54;
            v91 = 2112;
            v92 = v65;
            _os_log_impl(&dword_2304B3000, v53, OS_LOG_TYPE_INFO, "%@, successfully submitted metadata reset request for %lu object IDs, %@", buf, 0x20u);
          }

          v46 = 1;
        }

LABEL_37:

        _Block_object_dispose(v93, 8);
        if ((v46 & 1) == 0)
        {
LABEL_47:

          _Block_object_dispose(v97, 8);
LABEL_48:

          _Block_object_dispose(v101, 8);
          goto LABEL_49;
        }

        goto LABEL_38;
      }

      v45 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v57 = NSStringFromSelector(*(a1 + 64));
        v58 = *(*&v93[8] + 40);
        *buf = 138412802;
        *&buf[4] = v57;
        v89 = 2112;
        v90 = v65;
        v91 = 2112;
        v92 = v58;
        _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "%@, encountered error during metadata reset request with object IDs %@s, error, %@", buf, 0x20u);
      }

      [*(a1 + 56) addObject:*(*&v93[8] + 40)];
    }

    v46 = 0;
    goto LABEL_37;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v38 = NSStringFromSelector(*(a1 + 64));
    *v101 = 138412546;
    *&v101[4] = v38;
    *&v101[12] = 2112;
    *&v101[14] = v8;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@, encountered error while collecting expired records from other devices, error, %@", v101, 0x16u);
  }

  [*(a1 + 56) addObject:v8];
LABEL_49:
}

void __116__RTPersistenceExpirationEnforcer_removeRecordsOwnedByOtherDevicesExpiredBeforeDate_allowPropagation_context_error___block_invoke_51(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v7 copy];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 32);
        v16 = *(a1 + 40);
        v17 = *(*(a1 + 56) + 8);
        obj = *(v17 + 40);
        v18 = [v15 objectsWithLifetimeMatchingObjectWithID:v13 context:v16 error:&obj];
        objc_storeStrong((v17 + 40), obj);
        if (*(*(*(a1 + 56) + 8) + 40))
        {
          *a4 = 1;

          objc_autoreleasePoolPop(v14);
          goto LABEL_11;
        }

        [*(a1 + 32) mergeEntriesFromDictionary:v18 intoDictionary:*(a1 + 48)];

        objc_autoreleasePoolPop(v14);
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __116__RTPersistenceExpirationEnforcer_removeRecordsOwnedByOtherDevicesExpiredBeforeDate_allowPropagation_context_error___block_invoke_53(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [a3 copy];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v14 = *(*(a1 + 56) + 8);
        obj = *(v14 + 40);
        v15 = [v12 objectIDsByTypeAffectedByDeletingObjectWithID:v11 context:v13 error:&obj];
        objc_storeStrong((v14 + 40), obj);
        if (*(*(*(a1 + 56) + 8) + 40))
        {
          *a4 = 1;

          goto LABEL_11;
        }

        [*(a1 + 32) mergeEntriesFromDictionary:v15 intoDictionary:*(a1 + 48)];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __116__RTPersistenceExpirationEnforcer_removeRecordsOwnedByOtherDevicesExpiredBeforeDate_allowPropagation_context_error___block_invoke_55(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 request];
      v6 = [v5 requestIdentifier];
      v7 = [v6 UUIDString];
      v8 = [v3 madeChanges];
      v9 = [v3 success];
      v10 = [v3 error];
      v14 = 138413058;
      v15 = v7;
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "result for metadata reset request, CD request identifier, %@, made changes, %d, success, %d, error, %@", &v14, 0x22u);
    }
  }

  v11 = [v3 error];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __116__RTPersistenceExpirationEnforcer_removeRecordsOwnedByOtherDevicesExpiredBeforeDate_allowPropagation_context_error___block_invoke_57(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allObjects];
  [v3 addObjectsFromArray:v4];
}

- (id)objectsWithLifetimeMatchingObjectWithID:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a5)
  {
    if (v8)
    {
      if (v9)
      {
        v11 = objc_opt_new();
        *buf = 0;
        v27 = buf;
        v28 = 0x3032000000;
        v29 = __Block_byref_object_copy__106;
        v30 = __Block_byref_object_dispose__106;
        v31 = 0;
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __89__RTPersistenceExpirationEnforcer_objectsWithLifetimeMatchingObjectWithID_context_error___block_invoke;
        v20[3] = &unk_2788C98E0;
        v21 = v10;
        v25 = buf;
        v22 = v8;
        v23 = self;
        v12 = v11;
        v24 = v12;
        [v21 performBlockAndWait:v20];
        *a5 = *(v27 + 5);
        v13 = v24;
        v14 = v12;

        _Block_object_dispose(buf, 8);
        goto LABEL_15;
      }

      v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
      }

      v17 = @"context";
    }

    else
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: objectID", buf, 2u);
      }

      v17 = @"objectID";
    }

    _RTErrorInvalidParameterCreate(v17);
    *a5 = v14 = 0;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v14 = 0;
  }

LABEL_15:

  return v14;
}

void __89__RTPersistenceExpirationEnforcer_objectsWithLifetimeMatchingObjectWithID_context_error___block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v64 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v64];
  v5 = v64;
  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v48 = *(a1 + 40);
      *buf = 138412290;
      v69 = v48;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unable to return an object for ID, %@", buf, 0xCu);
    }

    v7 = *(*(a1 + 64) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_34:

      goto LABEL_35;
    }

    v17 = *(a1 + 40);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 138412546;
    v69 = v17;
    v70 = 2112;
    v71 = v19;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "object with ID, %@, is not of type RTCloudManagedObject, is %@", buf, 0x16u);
LABEL_14:

    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    v10 = [v4 inbound];
    v11 = [v10 objectID];

    if (v11)
    {
      [v9 addObject:v11];
    }

    v12 = [v4 outbound];
    v13 = [v12 objectID];

    if (v13)
    {
      [v9 addObject:v13];
    }

    v14 = *(a1 + 48);
    v15 = +[RTLearnedTransitionMO entity];
    v16 = [v15 name];
    [v14 mergeIdentifiersFromArray:v9 entityName:v16 intoDictionary:*(a1 + 56)];

    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
    v21 = [v4 mapItem];
    v22 = [v21 objectID];

    if (v22)
    {
      [v20 addObject:v22];
    }

    v23 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
    v24 = [v4 mapItem];
    v25 = [v24 address];
    v26 = [v25 objectID];

    if (v26)
    {
      [v23 addObject:v26];
    }

    v57 = v20;
    v58 = v23;
    v27 = objc_alloc(MEMORY[0x277CBEB58]);
    v28 = [v4 visits];
    v29 = [v27 initWithCapacity:{objc_msgSend(v28, "count")}];

    v59 = v4;
    v30 = [v4 objectIDsForRelationshipNamed:@"visits"];
    if (v30)
    {
      [v29 addObjectsFromArray:v30];
    }

    v53 = v30;
    v55 = v26;
    v56 = v22;
    v54 = v29;
    v31 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{2 * objc_msgSend(v29, "count")}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v32 = [v59 visits];
    v33 = [v32 countByEnumeratingWithState:&v60 objects:v67 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v61;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v61 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v60 + 1) + 8 * i);
          v38 = [v37 inbound];
          v39 = [v38 objectID];

          if (v39)
          {
            [v31 addObject:v39];
          }

          v40 = [v37 outbound];
          v41 = [v40 objectID];

          if (v41)
          {
            [v31 addObject:v41];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v60 objects:v67 count:16];
      }

      while (v34);
    }

    v52 = +[RTMapItemMO entity];
    v51 = [v52 name];
    v65[0] = v51;
    v9 = v57;
    v66[0] = v57;
    v50 = +[RTAddressMO entity];
    v49 = [v50 name];
    v65[1] = v49;
    v66[1] = v58;
    v42 = +[RTLearnedVisitMO entity];
    v43 = [v42 name];
    v65[2] = v43;
    v66[2] = v54;
    v44 = +[RTLearnedTransitionMO entity];
    v45 = [v44 name];
    v65[3] = v45;
    v66[3] = v31;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:4];

    [*(a1 + 48) mergeEntriesFromDictionary:v46 intoDictionary:*(a1 + 56)];
    v4 = v59;
    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_34;
            }

            v47 = objc_opt_class();
            v19 = NSStringFromClass(v47);
            *buf = 138412290;
            v69 = v19;
            _os_log_fault_impl(&dword_2304B3000, v9, OS_LOG_TYPE_FAULT, "Unhandled entity type, %@", buf, 0xCu);
            goto LABEL_14;
          }
        }
      }
    }
  }

LABEL_35:
}

- (id)objectIDsByTypeAffectedByDeletingObjectWithID:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a5)
  {
    if (v8)
    {
      if (v9)
      {
        *buf = 0;
        v26 = buf;
        v27 = 0x3032000000;
        v28 = __Block_byref_object_copy__106;
        v29 = __Block_byref_object_dispose__106;
        v30 = 0;
        v11 = objc_opt_new();
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __95__RTPersistenceExpirationEnforcer_objectIDsByTypeAffectedByDeletingObjectWithID_context_error___block_invoke;
        v19[3] = &unk_2788C98E0;
        v20 = v10;
        v21 = v8;
        v24 = buf;
        v12 = v11;
        v22 = v12;
        v23 = self;
        [v20 performBlockAndWait:v19];
        *a5 = *(v26 + 5);
        v13 = v12;

        _Block_object_dispose(buf, 8);
        goto LABEL_15;
      }

      v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
      }

      v16 = @"context";
    }

    else
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: objectID", buf, 2u);
      }

      v16 = @"objectID";
    }

    _RTErrorInvalidParameterCreate(v16);
    *a5 = v13 = 0;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v13 = 0;
  }

LABEL_15:

  return v13;
}

void __95__RTPersistenceExpirationEnforcer_objectIDsByTypeAffectedByDeletingObjectWithID_context_error___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v25 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v25];
  v5 = v25;
  if (v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      *buf = 138412290;
      v27 = v17;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unable to return an object for ID, %@", buf, 0xCu);
    }

    v7 = *(*(a1 + 64) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_opt_class();
      v9 = NSStringFromClass(v10);
      v11 = MEMORY[0x277CBEB58];
      v12 = [v4 objectID];
      v13 = [v11 setWithObjects:{v12, 0}];

      [*(a1 + 48) setValue:v13 forKey:v9];
      v14 = [v4 entity];
      v15 = [v14 relationshipsByName];

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __95__RTPersistenceExpirationEnforcer_objectIDsByTypeAffectedByDeletingObjectWithID_context_error___block_invoke_69;
      v22[3] = &unk_2788CDCB0;
      v23 = v4;
      v21 = *(a1 + 48);
      v16 = v21.i64[0];
      v24 = vextq_s8(v21, v21, 8uLL);
      [v15 enumerateKeysAndObjectsUsingBlock:v22];
    }

    else
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 40);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138412546;
        v27 = v18;
        v28 = 2112;
        v29 = v20;
        _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "object with ID, %@, is not of type RTCloudManagedObject, is %@", buf, 0x16u);
      }
    }
  }
}

void __95__RTPersistenceExpirationEnforcer_objectIDsByTypeAffectedByDeletingObjectWithID_context_error___block_invoke_69(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v10 = [v5 objectIDsForRelationshipNamed:a2];
  v7 = a1[5];
  v8 = [v6 destinationEntity];

  v9 = [v8 name];
  [v7 mergeIdentifiersFromArray:v10 entityName:v9 intoDictionary:a1[6]];
}

- (void)mergeIdentifiersFromArray:(id)a3 entityName:(id)a4 intoDictionary:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v7 objectForKey:v8];
  v11 = [v10 mutableCopy];

  if (v11)
  {
    [v11 addObjectsFromArray:v9];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB58] setWithArray:v9];
  }

  [v7 setObject:v11 forKey:v8];
}

- (void)mergeEntriesFromDictionary:(id)a3 intoDictionary:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__RTPersistenceExpirationEnforcer_mergeEntriesFromDictionary_intoDictionary___block_invoke;
  v8[3] = &unk_2788CDCD8;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
}

void __77__RTPersistenceExpirationEnforcer_mergeEntriesFromDictionary_intoDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 allObjects];
  [v5 mergeIdentifiersFromArray:v7 entityName:v6 intoDictionary:*(a1 + 40)];
}

- (BOOL)removeRecordsOwnedByThisDeviceExpiredBeforeDate:(id)a3 context:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (a5)
  {
    if (v9)
    {
      if (v10)
      {
        v12 = [MEMORY[0x277CBEB18] array];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __97__RTPersistenceExpirationEnforcer_removeRecordsOwnedByThisDeviceExpiredBeforeDate_context_error___block_invoke;
        v23[3] = &unk_2788C50E8;
        v23[4] = self;
        v24 = v9;
        v26 = v12;
        v27 = a2;
        v25 = v11;
        v13 = v12;
        [v25 performBlockAndWait:v23];
        v14 = _RTSafeArray();
        v15 = _RTMultiErrorCreate();

        v16 = v15;
        *a5 = v15;
        v17 = v15 == 0;

        goto LABEL_15;
      }

      v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
      }

      v20 = @"context";
    }

    else
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceDate", buf, 2u);
      }

      v20 = @"referenceDate";
    }

    _RTErrorInvalidParameterCreate(v20);
    *a5 = v17 = 0;
    goto LABEL_15;
  }

  v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v17 = 0;
LABEL_15:

  return v17;
}

void __97__RTPersistenceExpirationEnforcer_removeRecordsOwnedByThisDeviceExpiredBeforeDate_context_error___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v17 = 0;
  v5 = [v2 collectRecordIDsByTypeExpiredBeforeDate:v3 ownedByThisDevice:1 context:v4 error:&v17];
  v6 = v17;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(*(a1 + 64));
      *buf = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, encountered error while collecting expired records from this device, error, %@", buf, 0x16u);
    }

    [*(a1 + 56) addObject:v6];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v16 = 0;
    [v8 removeExpiredRecordsWithObjectIDs:v5 context:v9 error:&v16];
    v10 = v16;
    if (v10)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412546;
        v19 = v15;
        v20 = 2112;
        v21 = v10;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@, encountered error while removing expired records from this device, error, %@", buf, 0x16u);
      }

      [*(a1 + 56) addObject:v10];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412290;
        v19 = v13;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, successfully removed expired records from this device", buf, 0xCu);
      }
    }
  }
}

- (BOOL)removeExpiredRecordsWithObjectIDs:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a5)
  {
    if (v9)
    {
      v11 = [MEMORY[0x277CBEB18] array];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __83__RTPersistenceExpirationEnforcer_removeExpiredRecordsWithObjectIDs_context_error___block_invoke;
      v20[3] = &unk_2788C4C70;
      v21 = v10;
      v23 = v11;
      v24 = a2;
      v22 = v8;
      v12 = v11;
      [v21 performBlockAndWait:v20];
      v13 = _RTSafeArray();
      v14 = _RTMultiErrorCreate();

      v15 = v14;
      *a5 = v14;
      v16 = v14 == 0;
    }

    else
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
      }

      _RTErrorInvalidParameterCreate(@"context");
      *a5 = v16 = 0;
    }
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v16 = 0;
  }

  return v16;
}

void __83__RTPersistenceExpirationEnforcer_removeExpiredRecordsWithObjectIDs_context_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionAuthor];
  [*(a1 + 32) setTransactionAuthor:@"ExpirationEnforcer"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__RTPersistenceExpirationEnforcer_removeExpiredRecordsWithObjectIDs_context_error___block_invoke_2;
  v6[3] = &unk_2788CDD00;
  v3 = *(a1 + 40);
  v7 = *(a1 + 32);
  v5 = *(a1 + 48);
  v4 = v5;
  v8 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  [*(a1 + 32) setTransactionAuthor:v2];
}

void __83__RTPersistenceExpirationEnforcer_removeExpiredRecordsWithObjectIDs_context_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = MEMORY[0x277CBE360];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [v7 allObjects];

  v10 = [v8 initWithObjectIDs:v9];
  [v10 setResultType:2];
  v11 = *(a1 + 32);
  v19 = 0;
  v12 = [v11 executeRequest:v10 error:&v19];
  v13 = v19;
  if (v13)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412802;
      v21 = v18;
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = v13;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, encountered error while removing expired %@s, error, %@", buf, 0x20u);
    }

    [*(a1 + 40) addObject:v13];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = NSStringFromSelector(*(a1 + 48));
      v17 = [v12 result];
      *buf = 138412802;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, successfully deleted %@ expired %@s", buf, 0x20u);
    }
  }
}

- (BOOL)removeExpiredRecordsBeforeDate:(id)a3 context:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (a5)
  {
    if (v9)
    {
      if (v10)
      {
        v33 = 0;
        v12 = [(RTPersistenceExpirationEnforcer *)self repairInvalidExpirationDatesWithContext:v10 error:&v33];
        v13 = v33;
        v32 = 0;
        v14 = [(RTPersistenceExpirationEnforcer *)self removeRecordsOwnedByThisDeviceExpiredBeforeDate:v9 context:v11 error:&v32];
        v15 = v32;
        v31 = 0;
        v16 = [(RTPersistenceExpirationEnforcer *)self removeRecordsOwnedByOtherDevicesExpiredBeforeDate:v9 allowPropagation:0 context:v11 error:&v31];
        v17 = v31;
        v18 = v17;
        if (!v12 || v13 || !v16 || !v14 || v15 || v17)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = NSStringFromSelector(a2);
              *buf = 138412290;
              v35 = v20;
              v21 = "%@, failed";
              goto LABEL_22;
            }

LABEL_23:
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = NSStringFromSelector(a2);
            *buf = 138412290;
            v35 = v20;
            v21 = "%@, successful";
LABEL_22:
            _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, v21, buf, 0xCu);

            goto LABEL_23;
          }

          goto LABEL_23;
        }

        v26 = _RTSafeArray();
        v27 = _RTMultiErrorCreate();

        v28 = v27;
        *a5 = v27;
        v23 = v27 == 0;

        goto LABEL_29;
      }

      v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
      }

      v25 = @"context";
    }

    else
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceDate", buf, 2u);
      }

      v25 = @"referenceDate";
    }

    _RTErrorInvalidParameterCreate(v25);
    *a5 = v23 = 0;
    goto LABEL_29;
  }

  v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v23 = 0;
LABEL_29:

  return v23;
}

- (BOOL)repairInvalidExpirationDatesWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    if (v6)
    {
      v8 = objc_opt_new();
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __81__RTPersistenceExpirationEnforcer_repairInvalidExpirationDatesWithContext_error___block_invoke;
      v17[3] = &unk_2788C5020;
      v19 = v8;
      v20 = a2;
      v18 = v7;
      v9 = v8;
      [v18 performBlockAndWait:v17];
      v10 = _RTSafeArray();
      v11 = _RTMultiErrorCreate();

      v12 = v11;
      *a4 = v11;
      v13 = v11 == 0;
    }

    else
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
      }

      _RTErrorInvalidParameterCreate(@"context");
      *a4 = v13 = 0;
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

void __81__RTPersistenceExpirationEnforcer_repairInvalidExpirationDatesWithContext_error___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];

  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K != nil", @"propertiesByName", @"expirationDate"];
  if (v5)
  {
    [v4 addObject:v5];
  }

  v37 = v5;
  v38 = v4;
  v6 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v4];
  v39 = v3;
  v7 = [v3 entitiesForConfiguration:@"Cloud"];
  v36 = v6;
  v8 = [v7 filteredArrayUsingPredicate:v6];
  v9 = [v8 mutableCopy];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v10 = [v9 copy];
  v11 = [v10 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v49;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v48 + 1) + 8 * i);
        v16 = [v15 propertiesByName];
        v17 = [v16 objectForKey:@"expirationDate"];

        if ([v17 attributeType] != 900)
        {
          [v9 removeObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v12);
  }

  v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
  v42 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:4838400.0];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v9;
  v19 = [obj countByEnumeratingWithState:&v44 objects:v60 count:16];
  v20 = 0x277CCA000uLL;
  if (v19)
  {
    v21 = v19;
    v22 = *v45;
    v40 = v18;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = [objc_alloc(MEMORY[0x277CBE380]) initWithEntity:*(*(&v44 + 1) + 8 * j)];
        v25 = [*(v20 + 3120) predicateWithFormat:@"%K == nil || %K == %@", @"expirationDate", @"expirationDate", v18];
        [v24 setPredicate:v25];

        v58 = @"expirationDate";
        v59 = v42;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        [v24 setPropertiesToUpdate:v26];

        [v24 setResultType:1];
        v27 = *(a1 + 32);
        v43 = 0;
        v28 = [v27 executeRequest:v24 error:&v43];
        v29 = v43;
        if (v29)
        {
          v30 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v35 = NSStringFromSelector(*(a1 + 48));
            *buf = 138412546;
            v53 = v35;
            v54 = 2112;
            v55 = v29;
            _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@, encountered error updating expiration dates that were invalid, error, %@", buf, 0x16u);

            v18 = v40;
          }

          [*(a1 + 40) addObject:v29];
        }

        else
        {
          v31 = [v28 result];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v32 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = NSStringFromSelector(*(a1 + 48));
              v34 = [v31 count];
              *buf = 138412802;
              v53 = v33;
              v54 = 2048;
              v55 = v34;
              v56 = 2112;
              v57 = v31;
              _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@, updated %lu expiration dates, object IDs, %@", buf, 0x20u);

              v20 = 0x277CCA000;
            }

            v18 = v40;
          }
        }
      }

      v21 = [obj countByEnumeratingWithState:&v44 objects:v60 count:16];
    }

    while (v21);
  }
}

@end