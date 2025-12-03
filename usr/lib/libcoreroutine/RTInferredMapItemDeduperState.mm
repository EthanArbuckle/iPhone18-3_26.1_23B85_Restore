@interface RTInferredMapItemDeduperState
- (BOOL)enumerateDedupedUUIDToMapItemMapUsingBlock:(id)block error:(id *)error;
- (BOOL)finalizeState:(id *)state;
- (BOOL)ingestInferredMapItemWithIntermediateUUID:(id)d error:(id *)error;
- (RTInferredMapItemDeduperState)init;
- (id)allDedupedUUIDsWithError:(id *)error;
- (id)allUniqueMapItemsWithError:(id *)error;
- (id)combinedInferredMapItemFromInferredMapItems:(id)items error:(id *)error;
- (id)inferredMapItemFromInferredMapItemWithIntermediateUUID:(id)d error:(id *)error;
- (id)mapItemForDedupedUUID:(id)d error:(id *)error;
- (id)mapItemForIntermediateUUID:(id)d error:(id *)error;
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
    array = [MEMORY[0x277CBEB18] array];
    uniqueInferredMapItems = v3->_uniqueInferredMapItems;
    v3->_uniqueInferredMapItems = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    intermediateUUIDToInferredMapItemsMap = v3->_intermediateUUIDToInferredMapItemsMap;
    v3->_intermediateUUIDToInferredMapItemsMap = dictionary;

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
  array = [MEMORY[0x277CBEB18] array];
  uniqueInferredMapItems = obj->_uniqueInferredMapItems;
  obj->_uniqueInferredMapItems = array;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  intermediateUUIDToInferredMapItemsMap = obj->_intermediateUUIDToInferredMapItemsMap;
  obj->_intermediateUUIDToInferredMapItemsMap = dictionary;

  intermediateUUIDToInferredMapItemMap = obj->_intermediateUUIDToInferredMapItemMap;
  obj->_intermediateUUIDToInferredMapItemMap = 0;

  dedupedUUIDToMapItemMap = obj->_dedupedUUIDToMapItemMap;
  obj->_dedupedUUIDToMapItemMap = 0;

  objc_sync_exit(obj);
}

- (BOOL)ingestInferredMapItemWithIntermediateUUID:(id)d error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    canIngest = selfCopy->_canIngest;
    if (canIngest)
    {
      intermediateUUIDToInferredMapItemsMap = selfCopy->_intermediateUUIDToInferredMapItemsMap;
      secondObject = [dCopy secondObject];
      v11 = [(NSMutableDictionary *)intermediateUUIDToInferredMapItemsMap objectForKeyedSubscript:secondObject];

      if (v11)
      {
        v12 = selfCopy->_intermediateUUIDToInferredMapItemsMap;
        secondObject2 = [dCopy secondObject];
        v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:secondObject2];
        firstObject = [dCopy firstObject];
        [v14 addObject:firstObject];
      }

      else
      {
        uniqueInferredMapItems = selfCopy->_uniqueInferredMapItems;
        firstObject2 = [dCopy firstObject];
        [(NSMutableArray *)uniqueInferredMapItems addObject:firstObject2];

        v23 = MEMORY[0x277CBEB18];
        secondObject2 = [dCopy firstObject];
        v14 = [v23 arrayWithObject:secondObject2];
        v24 = selfCopy->_intermediateUUIDToInferredMapItemsMap;
        firstObject = [dCopy secondObject];
        [(NSMutableDictionary *)v24 setObject:v14 forKeyedSubscript:firstObject];
      }
    }

    else
    {
      v17 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      v28[0] = @"cannot ingest more inferredMapItems since the state is finalized";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v19 = [v17 errorWithDomain:*MEMORY[0x277D01448] code:5 userInfo:v18];

      if (error)
      {
        v20 = v19;
        *error = v19;
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItemWithIntermediateUUID", v26, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"inferredMapItemWithIntermediateUUID");
      *error = canIngest = 0;
    }

    else
    {
      canIngest = 0;
    }
  }

  return canIngest;
}

- (id)combinedInferredMapItemFromInferredMapItems:(id)items error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v6 = itemsCopy;
  if (!itemsCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItems", buf, 2u);
    }

    if (error)
    {
      v25 = @"inferredMapItems";
LABEL_30:
      _RTErrorInvalidParameterCreate(v25);
      *error = v10 = 0;
      goto LABEL_34;
    }

LABEL_31:
    v10 = 0;
    goto LABEL_34;
  }

  if (![itemsCopy count])
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItems.count > 0", buf, 2u);
    }

    if (error)
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

      mapItem = [v10 mapItem];
      if (([mapItem validMUID] & 1) == 0)
      {

LABEL_14:
        mapItem2 = [v10 mapItem];
        if ([mapItem2 validMUID])
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
          mapItem3 = [v13 mapItem];
          validMUID = [mapItem3 validMUID];

          if (!validMUID)
          {
            goto LABEL_17;
          }
        }

        v23 = v13;

        v10 = v23;
        continue;
      }

      mapItem4 = [v13 mapItem];
      validMUID2 = [mapItem4 validMUID];

      if (validMUID2)
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

- (BOOL)finalizeState:(id *)state
{
  v37 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_canIngest)
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](selfCopy->_intermediateUUIDToInferredMapItemsMap, "count")}];
    stateCopy = state;
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](selfCopy->_intermediateUUIDToInferredMapItemsMap, "count")}];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = selfCopy->_intermediateUUIDToInferredMapItemsMap;
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
        v12 = [(NSMutableDictionary *)selfCopy->_intermediateUUIDToInferredMapItemsMap objectForKeyedSubscript:v11];
        v29 = 0;
        v13 = [(RTInferredMapItemDeduperState *)selfCopy combinedInferredMapItemFromInferredMapItems:v12 error:&v29];
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

          if (stateCopy)
          {
            v25 = v24;
            *stateCopy = v24;
          }

          v13 = 0;
LABEL_18:

          v20 = 0;
          p_super = &obj->super;
          goto LABEL_19;
        }

        [v5 setObject:v13 forKeyedSubscript:v11];
        mapItem = [v13 mapItem];
        mapItem2 = [v13 mapItem];
        identifier = [mapItem2 identifier];
        [v6 setObject:mapItem forKeyedSubscript:identifier];

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

      if (stateCopy)
      {
        v21 = v14;
        *stateCopy = v14;
      }

      goto LABEL_18;
    }

LABEL_11:

    selfCopy->_canIngest = 0;
    objc_storeStrong(&selfCopy->_intermediateUUIDToInferredMapItemMap, v5);
    v18 = v6;
    p_super = selfCopy->_dedupedUUIDToMapItemMap;
    selfCopy->_dedupedUUIDToMapItemMap = v18;
    v20 = 1;
LABEL_19:
  }

  else
  {
    v20 = 1;
  }

  objc_sync_exit(selfCopy);

  return v20;
}

- (id)mapItemForIntermediateUUID:(id)d error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    intermediateUUIDToInferredMapItemMap = selfCopy->_intermediateUUIDToInferredMapItemMap;
    if (!intermediateUUIDToInferredMapItemMap)
    {
      v22 = 0;
      v9 = [(RTInferredMapItemDeduperState *)selfCopy finalizeState:&v22];
      v10 = v22;
      v11 = v10;
      if (!v9)
      {
        if (error)
        {
          v20 = v10;
          mapItem = 0;
          *error = v11;
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      intermediateUUIDToInferredMapItemMap = selfCopy->_intermediateUUIDToInferredMapItemMap;
    }

    v12 = [(NSDictionary *)intermediateUUIDToInferredMapItemMap objectForKeyedSubscript:dCopy];
    v11 = v12;
    if (v12)
    {
      mapItem = [v12 mapItem];
LABEL_18:

      objc_sync_exit(selfCopy);
      goto LABEL_19;
    }

    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"intermediateUUID, %@, not in table", dCopy];
    v16 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = dCopy;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v18 = [v16 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v17];

    if (error)
    {
      v19 = v18;
      *error = v18;
    }

    v11 = 0;
LABEL_14:
    mapItem = 0;
    goto LABEL_18;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: intermediateUUID", buf, 2u);
  }

  if (error)
  {
    _RTErrorInvalidParameterCreate(@"intermediateUUID");
    *error = mapItem = 0;
  }

  else
  {
    mapItem = 0;
  }

LABEL_19:

  return mapItem;
}

- (id)inferredMapItemFromInferredMapItemWithIntermediateUUID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = dCopy;
  if (dCopy)
  {
    secondObject = [dCopy secondObject];
    v20 = 0;
    v9 = [(RTInferredMapItemDeduperState *)self mapItemForIntermediateUUID:secondObject error:&v20];
    v10 = v20;

    if (v10)
    {
      if (error)
      {
        v11 = v10;
        v12 = 0;
        *error = v10;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x277D01128]);
      firstObject = [v7 firstObject];
      [firstObject confidence];
      v17 = v16;
      firstObject2 = [v7 firstObject];
      v12 = [v14 initWithMapItem:v9 confidence:objc_msgSend(firstObject2 source:{"source"), v17}];
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

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"inferredMapItemWithIntermediateUUID");
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)mapItemForDedupedUUID:(id)d error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dedupedUUID", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"dedupedUUID");
      *error = v13 = 0;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (!error)
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  dedupedUUIDToMapItemMap = selfCopy->_dedupedUUIDToMapItemMap;
  if (dedupedUUIDToMapItemMap)
  {
    goto LABEL_6;
  }

  v22 = 0;
  v9 = [(RTInferredMapItemDeduperState *)selfCopy finalizeState:&v22];
  v10 = v22;
  if (v9)
  {

    dedupedUUIDToMapItemMap = selfCopy->_dedupedUUIDToMapItemMap;
LABEL_6:
    v11 = [(NSDictionary *)dedupedUUIDToMapItemMap objectForKeyedSubscript:dCopy];
    if (v11)
    {
      v12 = v11;
      v13 = v12;
    }

    else
    {
      dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"dedupedUUID, %@, not in table", dCopy];
      v17 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA450];
      v25[0] = dCopy;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v19 = [v17 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v18];

      v20 = v19;
      *error = v19;

      v12 = 0;
      v13 = 0;
    }

    goto LABEL_18;
  }

  v12 = v10;
  v13 = 0;
  *error = v12;
LABEL_18:

  objc_sync_exit(selfCopy);
LABEL_19:

  return v13;
}

- (id)allDedupedUUIDsWithError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dedupedUUIDToMapItemMap = selfCopy->_dedupedUUIDToMapItemMap;
  if (dedupedUUIDToMapItemMap)
  {
    goto LABEL_4;
  }

  v13 = 0;
  v6 = [(RTInferredMapItemDeduperState *)selfCopy finalizeState:&v13];
  v7 = v13;
  allKeys = v7;
  if (v6)
  {

    dedupedUUIDToMapItemMap = selfCopy->_dedupedUUIDToMapItemMap;
LABEL_4:
    v9 = MEMORY[0x277CBEB98];
    allKeys = [(NSDictionary *)dedupedUUIDToMapItemMap allKeys];
    v10 = [v9 setWithArray:allKeys];
    goto LABEL_5;
  }

  if (error)
  {
    v12 = v7;
    v10 = 0;
    *error = allKeys;
  }

  else
  {
    v10 = 0;
  }

LABEL_5:

  objc_sync_exit(selfCopy);

  return v10;
}

- (BOOL)enumerateDedupedUUIDToMapItemMapUsingBlock:(id)block error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: block", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"block");
      *error = v17 = 0;
      goto LABEL_24;
    }

LABEL_23:
    v17 = 0;
    goto LABEL_24;
  }

  if (!error)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_23;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  dedupedUUIDToMapItemMap = selfCopy->_dedupedUUIDToMapItemMap;
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
        v16 = [(NSDictionary *)selfCopy->_dedupedUUIDToMapItemMap objectForKeyedSubscript:v15, v22];
        blockCopy[2](blockCopy, v15, v16, buf);

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
  v9 = [(RTInferredMapItemDeduperState *)selfCopy finalizeState:&v26];
  v10 = v26;
  if (v9)
  {

    dedupedUUIDToMapItemMap = selfCopy->_dedupedUUIDToMapItemMap;
    goto LABEL_6;
  }

  v21 = v10;
  *error = v21;

  v17 = 0;
LABEL_15:
  objc_sync_exit(selfCopy);

LABEL_24:
  return v17;
}

- (id)allUniqueMapItemsWithError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dedupedUUIDToMapItemMap = selfCopy->_dedupedUUIDToMapItemMap;
  if (dedupedUUIDToMapItemMap)
  {
    goto LABEL_4;
  }

  v10 = 0;
  v6 = [(RTInferredMapItemDeduperState *)selfCopy finalizeState:&v10];
  v7 = v10;
  if (v6)
  {

    dedupedUUIDToMapItemMap = selfCopy->_dedupedUUIDToMapItemMap;
LABEL_4:
    allValues = [(NSDictionary *)dedupedUUIDToMapItemMap allValues];
    goto LABEL_5;
  }

  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  allValues = 0;
LABEL_5:
  objc_sync_exit(selfCopy);

  return allValues;
}

@end