@interface RTInferredMapItemDeduperState
- (BOOL)enumerateDedupedUUIDToMapItemMapUsingBlock:(id)a3 error:(id *)a4;
- (BOOL)finalizeState:(id *)a3;
- (BOOL)ingestInferredMapItemWithIntermediateUUID:(id)a3 error:(id *)a4;
- (RTInferredMapItemDeduperState)init;
- (id)allDedupedUUIDsWithError:(id *)a3;
- (id)allUniqueMapItemsWithError:(id *)a3;
- (id)combinedInferredMapItemFromInferredMapItems:(id)a3 error:(id *)a4;
- (id)inferredMapItemFromInferredMapItemWithIntermediateUUID:(id)a3 error:(id *)a4;
- (id)mapItemForDedupedUUID:(id)a3 error:(id *)a4;
- (id)mapItemForIntermediateUUID:(id)a3 error:(id *)a4;
- (void)resetState;
@end

@implementation RTInferredMapItemDeduperState

- (RTInferredMapItemDeduperState)init
{
  v11.receiver = self;
  v11.super_class = RTInferredMapItemDeduperState;
  v2 = [(RTInferredMapItemDeduperState *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_canIngest = 1;
    v4 = [MEMORY[0x277CBEB18] array];
    uniqueInferredMapItems = v3->_uniqueInferredMapItems;
    v3->_uniqueInferredMapItems = v4;

    v6 = [MEMORY[0x277CBEB38] dictionary];
    intermediateUUIDToInferredMapItemsMap = v3->_intermediateUUIDToInferredMapItemsMap;
    v3->_intermediateUUIDToInferredMapItemsMap = v6;

    intermediateUUIDToInferredMapItemMap = v3->_intermediateUUIDToInferredMapItemMap;
    v3->_intermediateUUIDToInferredMapItemMap = 0;

    dedupedUUIDToMapItemMap = v3->_dedupedUUIDToMapItemMap;
    v3->_dedupedUUIDToMapItemMap = 0;
  }

  return v3;
}

- (void)resetState
{
  obj = self;
  objc_sync_enter(obj);
  obj->_canIngest = 1;
  v2 = [MEMORY[0x277CBEB18] array];
  uniqueInferredMapItems = obj->_uniqueInferredMapItems;
  obj->_uniqueInferredMapItems = v2;

  v4 = [MEMORY[0x277CBEB38] dictionary];
  intermediateUUIDToInferredMapItemsMap = obj->_intermediateUUIDToInferredMapItemsMap;
  obj->_intermediateUUIDToInferredMapItemsMap = v4;

  intermediateUUIDToInferredMapItemMap = obj->_intermediateUUIDToInferredMapItemMap;
  obj->_intermediateUUIDToInferredMapItemMap = 0;

  dedupedUUIDToMapItemMap = obj->_dedupedUUIDToMapItemMap;
  obj->_dedupedUUIDToMapItemMap = 0;

  objc_sync_exit(obj);
}

- (BOOL)ingestInferredMapItemWithIntermediateUUID:(id)a3 error:(id *)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    canIngest = v7->_canIngest;
    if (canIngest)
    {
      intermediateUUIDToInferredMapItemsMap = v7->_intermediateUUIDToInferredMapItemsMap;
      v10 = [v6 secondObject];
      v11 = [(NSMutableDictionary *)intermediateUUIDToInferredMapItemsMap objectForKeyedSubscript:v10];

      if (v11)
      {
        v12 = v7->_intermediateUUIDToInferredMapItemsMap;
        v13 = [v6 secondObject];
        v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:v13];
        v15 = [v6 firstObject];
        [v14 addObject:v15];
      }

      else
      {
        uniqueInferredMapItems = v7->_uniqueInferredMapItems;
        v22 = [v6 firstObject];
        [(NSMutableArray *)uniqueInferredMapItems addObject:v22];

        v23 = MEMORY[0x277CBEB18];
        v13 = [v6 firstObject];
        v14 = [v23 arrayWithObject:v13];
        v24 = v7->_intermediateUUIDToInferredMapItemsMap;
        v15 = [v6 secondObject];
        [(NSMutableDictionary *)v24 setObject:v14 forKeyedSubscript:v15];
      }
    }

    else
    {
      v17 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      v28[0] = @"cannot ingest more inferredMapItems since the state is finalized";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v19 = [v17 errorWithDomain:*MEMORY[0x277D01448] code:5 userInfo:v18];

      if (a4)
      {
        v20 = v19;
        *a4 = v19;
      }
    }

    objc_sync_exit(v7);
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItemWithIntermediateUUID", v26, 2u);
    }

    if (a4)
    {
      _RTErrorInvalidParameterCreate(@"inferredMapItemWithIntermediateUUID");
      *a4 = canIngest = 0;
    }

    else
    {
      canIngest = 0;
    }
  }

  return canIngest;
}

- (id)combinedInferredMapItemFromInferredMapItems:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItems", buf, 2u);
    }

    if (a4)
    {
      v25 = @"inferredMapItems";
LABEL_30:
      _RTErrorInvalidParameterCreate(v25);
      *a4 = v10 = 0;
      goto LABEL_34;
    }

LABEL_31:
    v10 = 0;
    goto LABEL_34;
  }

  if (![v5 count])
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItems.count > 0", buf, 2u);
    }

    if (a4)
    {
      v25 = @"inferredMapItems.count > 0";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_33;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v29;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v29 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v28 + 1) + 8 * i);
      if (!v10)
      {
        v10 = v13;
        continue;
      }

      v14 = [v10 mapItem];
      if (([v14 validMUID] & 1) == 0)
      {

LABEL_14:
        v17 = [v10 mapItem];
        if ([v17 validMUID])
        {

LABEL_17:
          [v13 confidence];
          v21 = v20;
          [v10 confidence];
          if (v21 <= v22)
          {
            continue;
          }
        }

        else
        {
          v18 = [v13 mapItem];
          v19 = [v18 validMUID];

          if (!v19)
          {
            goto LABEL_17;
          }
        }

        v23 = v13;

        v10 = v23;
        continue;
      }

      v15 = [v13 mapItem];
      v16 = [v15 validMUID];

      if (v16)
      {
        goto LABEL_14;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
  }

  while (v9);
LABEL_33:

LABEL_34:

  return v10;
}

- (BOOL)finalizeState:(id *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_canIngest)
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](v4->_intermediateUUIDToInferredMapItemsMap, "count")}];
    v27 = a3;
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](v4->_intermediateUUIDToInferredMapItemsMap, "count")}];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = v4->_intermediateUUIDToInferredMapItemsMap;
    v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v8)
    {
      v9 = *v31;
      obj = v7;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        v12 = [(NSMutableDictionary *)v4->_intermediateUUIDToInferredMapItemsMap objectForKeyedSubscript:v11];
        v29 = 0;
        v13 = [(RTInferredMapItemDeduperState *)v4 combinedInferredMapItemFromInferredMapItems:v12 error:&v29];
        v14 = v29;

        if (v14)
        {
          break;
        }

        if (!v13)
        {
          v22 = MEMORY[0x277CCA9B8];
          v34 = *MEMORY[0x277CCA450];
          v35 = @"combinedInferredMapItem was nil";
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
          v24 = [v22 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v23];

          if (v27)
          {
            v25 = v24;
            *v27 = v24;
          }

          v13 = 0;
LABEL_18:

          v20 = 0;
          p_super = &obj->super;
          goto LABEL_19;
        }

        [v5 setObject:v13 forKeyedSubscript:v11];
        v15 = [v13 mapItem];
        v16 = [v13 mapItem];
        v17 = [v16 identifier];
        [v6 setObject:v15 forKeyedSubscript:v17];

        if (v8 == ++v10)
        {
          v7 = obj;
          v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v30 objects:v36 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }

      if (v27)
      {
        v21 = v14;
        *v27 = v14;
      }

      goto LABEL_18;
    }

LABEL_11:

    v4->_canIngest = 0;
    objc_storeStrong(&v4->_intermediateUUIDToInferredMapItemMap, v5);
    v18 = v6;
    p_super = v4->_dedupedUUIDToMapItemMap;
    v4->_dedupedUUIDToMapItemMap = v18;
    v20 = 1;
LABEL_19:
  }

  else
  {
    v20 = 1;
  }

  objc_sync_exit(v4);

  return v20;
}

- (id)mapItemForIntermediateUUID:(id)a3 error:(id *)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    intermediateUUIDToInferredMapItemMap = v7->_intermediateUUIDToInferredMapItemMap;
    if (!intermediateUUIDToInferredMapItemMap)
    {
      v22 = 0;
      v9 = [(RTInferredMapItemDeduperState *)v7 finalizeState:&v22];
      v10 = v22;
      v11 = v10;
      if (!v9)
      {
        if (a4)
        {
          v20 = v10;
          v13 = 0;
          *a4 = v11;
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      intermediateUUIDToInferredMapItemMap = v7->_intermediateUUIDToInferredMapItemMap;
    }

    v12 = [(NSDictionary *)intermediateUUIDToInferredMapItemMap objectForKeyedSubscript:v6];
    v11 = v12;
    if (v12)
    {
      v13 = [v12 mapItem];
LABEL_18:

      objc_sync_exit(v7);
      goto LABEL_19;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"intermediateUUID, %@, not in table", v6];
    v16 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = v15;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v18 = [v16 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v17];

    if (a4)
    {
      v19 = v18;
      *a4 = v18;
    }

    v11 = 0;
LABEL_14:
    v13 = 0;
    goto LABEL_18;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: intermediateUUID", buf, 2u);
  }

  if (a4)
  {
    _RTErrorInvalidParameterCreate(@"intermediateUUID");
    *a4 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_19:

  return v13;
}

- (id)inferredMapItemFromInferredMapItemWithIntermediateUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 secondObject];
    v20 = 0;
    v9 = [(RTInferredMapItemDeduperState *)self mapItemForIntermediateUUID:v8 error:&v20];
    v10 = v20;

    if (v10)
    {
      if (a4)
      {
        v11 = v10;
        v12 = 0;
        *a4 = v10;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x277D01128]);
      v15 = [v7 firstObject];
      [v15 confidence];
      v17 = v16;
      v18 = [v7 firstObject];
      v12 = [v14 initWithMapItem:v9 confidence:objc_msgSend(v18 source:{"source"), v17}];
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItemWithIntermediateUUID", buf, 2u);
    }

    if (a4)
    {
      _RTErrorInvalidParameterCreate(@"inferredMapItemWithIntermediateUUID");
      *a4 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)mapItemForDedupedUUID:(id)a3 error:(id *)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dedupedUUID", buf, 2u);
    }

    if (a4)
    {
      _RTErrorInvalidParameterCreate(@"dedupedUUID");
      *a4 = v13 = 0;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (!a4)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

LABEL_15:
    v13 = 0;
    goto LABEL_19;
  }

  v7 = self;
  objc_sync_enter(v7);
  dedupedUUIDToMapItemMap = v7->_dedupedUUIDToMapItemMap;
  if (dedupedUUIDToMapItemMap)
  {
    goto LABEL_6;
  }

  v22 = 0;
  v9 = [(RTInferredMapItemDeduperState *)v7 finalizeState:&v22];
  v10 = v22;
  if (v9)
  {

    dedupedUUIDToMapItemMap = v7->_dedupedUUIDToMapItemMap;
LABEL_6:
    v11 = [(NSDictionary *)dedupedUUIDToMapItemMap objectForKeyedSubscript:v6];
    if (v11)
    {
      v12 = v11;
      v13 = v12;
    }

    else
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"dedupedUUID, %@, not in table", v6];
      v17 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA450];
      v25[0] = v16;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v19 = [v17 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v18];

      v20 = v19;
      *a4 = v19;

      v12 = 0;
      v13 = 0;
    }

    goto LABEL_18;
  }

  v12 = v10;
  v13 = 0;
  *a4 = v12;
LABEL_18:

  objc_sync_exit(v7);
LABEL_19:

  return v13;
}

- (id)allDedupedUUIDsWithError:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  dedupedUUIDToMapItemMap = v4->_dedupedUUIDToMapItemMap;
  if (dedupedUUIDToMapItemMap)
  {
    goto LABEL_4;
  }

  v13 = 0;
  v6 = [(RTInferredMapItemDeduperState *)v4 finalizeState:&v13];
  v7 = v13;
  v8 = v7;
  if (v6)
  {

    dedupedUUIDToMapItemMap = v4->_dedupedUUIDToMapItemMap;
LABEL_4:
    v9 = MEMORY[0x277CBEB98];
    v8 = [(NSDictionary *)dedupedUUIDToMapItemMap allKeys];
    v10 = [v9 setWithArray:v8];
    goto LABEL_5;
  }

  if (a3)
  {
    v12 = v7;
    v10 = 0;
    *a3 = v8;
  }

  else
  {
    v10 = 0;
  }

LABEL_5:

  objc_sync_exit(v4);

  return v10;
}

- (BOOL)enumerateDedupedUUIDToMapItemMapUsingBlock:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: block", buf, 2u);
    }

    if (a4)
    {
      _RTErrorInvalidParameterCreate(@"block");
      *a4 = v17 = 0;
      goto LABEL_24;
    }

LABEL_23:
    v17 = 0;
    goto LABEL_24;
  }

  if (!a4)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_23;
  }

  v7 = self;
  objc_sync_enter(v7);
  dedupedUUIDToMapItemMap = v7->_dedupedUUIDToMapItemMap;
  if (dedupedUUIDToMapItemMap)
  {
LABEL_6:
    buf[0] = 0;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = dedupedUUIDToMapItemMap;
    v12 = [(NSDictionary *)v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v12)
    {
      v13 = *v23;
LABEL_8:
      v14 = 0;
      while (1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        v16 = [(NSDictionary *)v7->_dedupedUUIDToMapItemMap objectForKeyedSubscript:v15, v22];
        v6[2](v6, v15, v16, buf);

        if (buf[0])
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [(NSDictionary *)v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
          if (v12)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    v17 = 1;
    goto LABEL_15;
  }

  v26 = 0;
  v9 = [(RTInferredMapItemDeduperState *)v7 finalizeState:&v26];
  v10 = v26;
  if (v9)
  {

    dedupedUUIDToMapItemMap = v7->_dedupedUUIDToMapItemMap;
    goto LABEL_6;
  }

  v21 = v10;
  *a4 = v21;

  v17 = 0;
LABEL_15:
  objc_sync_exit(v7);

LABEL_24:
  return v17;
}

- (id)allUniqueMapItemsWithError:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  dedupedUUIDToMapItemMap = v4->_dedupedUUIDToMapItemMap;
  if (dedupedUUIDToMapItemMap)
  {
    goto LABEL_4;
  }

  v10 = 0;
  v6 = [(RTInferredMapItemDeduperState *)v4 finalizeState:&v10];
  v7 = v10;
  if (v6)
  {

    dedupedUUIDToMapItemMap = v4->_dedupedUUIDToMapItemMap;
LABEL_4:
    v8 = [(NSDictionary *)dedupedUUIDToMapItemMap allValues];
    goto LABEL_5;
  }

  if (a3)
  {
    v7 = v7;
    *a3 = v7;
  }

  v8 = 0;
LABEL_5:
  objc_sync_exit(v4);

  return v8;
}

@end