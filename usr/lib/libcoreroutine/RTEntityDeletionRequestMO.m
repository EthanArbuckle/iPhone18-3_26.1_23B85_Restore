@interface RTEntityDeletionRequestMO
+ (id)managedObjectWithCloudManagedObjects:(id)a3 context:(id)a4;
- (id)identifiersByTypeInSubgraphOfEntity:(id)a3 shouldTombstone:(BOOL)a4;
- (void)buildDeleteRequestFromCloudManagedObject:(id)a3 context:(id)a4;
- (void)buildDeleteRequestFromCloudManagedObjects:(id)a3 context:(id)a4;
- (void)mergeEntriesFromDictionary:(id)a3 intoDictionary:(id)a4;
@end

@implementation RTEntityDeletionRequestMO

+ (id)managedObjectWithCloudManagedObjects:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__149;
    v19 = __Block_byref_object_dispose__149;
    v20 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__RTEntityDeletionRequestMO_managedObjectWithCloudManagedObjects_context___block_invoke;
    v11[3] = &unk_2788C8DC8;
    v14 = buf;
    v12 = v6;
    v13 = v5;
    [v12 performBlockAndWait:v11];
    v8 = *(v16 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

uint64_t __74__RTEntityDeletionRequestMO_managedObjectWithCloudManagedObjects_context___block_invoke(void *a1)
{
  v2 = [[RTEntityDeletionRequestMO alloc] initWithContext:a1[4]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [MEMORY[0x277CBEAC0] dictionary];
  [*(*(a1[6] + 8) + 40) setRecordIDs:v5];

  v6 = a1[5];
  v7 = *(*(a1[6] + 8) + 40);
  v8 = a1[4];

  return [v7 buildDeleteRequestFromCloudManagedObjects:v6 context:v8];
}

- (void)buildDeleteRequestFromCloudManagedObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    *buf = 0;
    v10 = "Invalid parameter not satisfying: cloudManagedObject";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
    goto LABEL_7;
  }

  if (!v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v10 = "Invalid parameter not satisfying: context";
    goto LABEL_10;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__RTEntityDeletionRequestMO_buildDeleteRequestFromCloudManagedObject_context___block_invoke;
  v11[3] = &unk_2788C76F8;
  v11[4] = self;
  v12 = v6;
  v13 = v8;
  [v13 performBlockAndWait:v11];

LABEL_8:
}

void __78__RTEntityDeletionRequestMO_buildDeleteRequestFromCloudManagedObject_context___block_invoke(id *a1)
{
  v2 = [a1[4] identifier];

  if (!v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    [a1[4] setIdentifier:v3];
  }

  v4 = [a1[4] creationDate];

  if (!v4)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    [a1[4] setCreationDate:v5];
  }

  v6 = [a1[4] expirationDate];

  if (!v6)
  {
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:4838400.0];
    [a1[4] setExpirationDate:v7];
  }

  v8 = [a1[4] recordIDs];

  if (!v8)
  {
    v9 = [MEMORY[0x277CBEAC0] dictionary];
    [a1[4] setRecordIDs:v9];
  }

  v10 = [a1[5] device];
  v11 = [v10 identifier];
  v12 = [a1[6] currentDevice];
  v13 = [v12 identifier];
  v14 = [v11 isEqual:v13];

  v15 = [a1[4] identifiersByTypeInSubgraphOfEntity:a1[5] shouldTombstone:v14 ^ 1u];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __78__RTEntityDeletionRequestMO_buildDeleteRequestFromCloudManagedObject_context___block_invoke_2;
  v22 = &unk_2788CDCD8;
  v23 = a1[4];
  v24 = v15;
  v16 = v15;
  [v16 enumerateKeysAndObjectsUsingBlock:&v19];
  v17 = [a1[5] device];
  v18 = [v17 identifier];
  [a1[4] setTargetDeviceIdentifier:v18];
}

void __78__RTEntityDeletionRequestMO_buildDeleteRequestFromCloudManagedObject_context___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) recordIDs];
  v4 = [v3 objectForKey:v13];

  if (!v4)
  {
    v4 = objc_opt_new();
  }

  v5 = [*(a1 + 40) objectForKey:v13];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] set];
  }

  v8 = v7;

  v9 = [v4 setByAddingObjectsFromSet:v8];

  v10 = [*(a1 + 32) recordIDs];
  v11 = [v10 mutableCopy];

  [v11 setObject:v9 forKey:v13];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v11];
  [*(a1 + 32) setRecordIDs:v12];
}

- (void)buildDeleteRequestFromCloudManagedObjects:(id)a3 context:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [(RTEntityDeletionRequestMO *)self buildDeleteRequestFromCloudManagedObject:*(*(&v12 + 1) + 8 * v11++) context:v7];
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)identifiersByTypeInSubgraphOfEntity:(id)a3 shouldTombstone:(BOOL)a4
{
  v4 = a4;
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v7 = MEMORY[0x277CBEC10];
LABEL_30:

    return v7;
  }

  v7 = objc_opt_new();
  if (v4)
  {
    [v6 setFlags:{objc_msgSend(v6, "flags") | 1}];
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = MEMORY[0x277CBEB58];
  v11 = [v6 identifier];
  v12 = [v10 setWithObjects:{v11, 0}];

  [v7 setValue:v12 forKey:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v6 inbound];
    v14 = [(RTEntityDeletionRequestMO *)self identifiersByTypeInSubgraphOfEntity:v13 shouldTombstone:v4];

    v15 = [v6 outbound];
    v16 = [(RTEntityDeletionRequestMO *)self identifiersByTypeInSubgraphOfEntity:v15 shouldTombstone:v4];

    [(RTEntityDeletionRequestMO *)self mergeEntriesFromDictionary:v14 intoDictionary:v7];
    [(RTEntityDeletionRequestMO *)self mergeEntriesFromDictionary:v16 intoDictionary:v7];

LABEL_29:
    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v9;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = [v6 visits];
    v18 = [v17 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v36;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [(RTEntityDeletionRequestMO *)self identifiersByTypeInSubgraphOfEntity:*(*(&v35 + 1) + 8 * i) shouldTombstone:v4];
          [(RTEntityDeletionRequestMO *)self mergeEntriesFromDictionary:v22 intoDictionary:v7];
        }

        v19 = [v17 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v19);
    }

    v23 = [v6 mapItem];
    v24 = [(RTEntityDeletionRequestMO *)self identifiersByTypeInSubgraphOfEntity:v23 shouldTombstone:v4];

    [(RTEntityDeletionRequestMO *)self mergeEntriesFromDictionary:v24 intoDictionary:v7];
    v9 = v34;
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [v6 address];
    v26 = [(RTEntityDeletionRequestMO *)self identifiersByTypeInSubgraphOfEntity:v25 shouldTombstone:v4];

    [(RTEntityDeletionRequestMO *)self mergeEntriesFromDictionary:v26 intoDictionary:v7];
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v27 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *buf = 138412290;
        v40 = v30;
        _os_log_debug_impl(&dword_2304B3000, v27, OS_LOG_TYPE_DEBUG, "Known entity of type %@, not updated", buf, 0xCu);
      }
    }

    goto LABEL_29;
  }

  v31 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    *buf = 138412290;
    v40 = v33;
    _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "Unhandled entity type, %@", buf, 0xCu);
  }

  __break(1u);
  return result;
}

- (void)mergeEntriesFromDictionary:(id)a3 intoDictionary:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__RTEntityDeletionRequestMO_mergeEntriesFromDictionary_intoDictionary___block_invoke;
  v7[3] = &unk_2788CDC88;
  v8 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __71__RTEntityDeletionRequestMO_mergeEntriesFromDictionary_intoDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:v9];
  if (v7)
  {
    v8 = [v6 allObjects];

    [v7 addObjectsFromArray:v8];
    v6 = v8;
  }

  else
  {
    [*(a1 + 32) setObject:v6 forKey:v9];
  }
}

@end