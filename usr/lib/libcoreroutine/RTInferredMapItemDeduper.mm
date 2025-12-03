@interface RTInferredMapItemDeduper
- (BOOL)inferredMapItem:(id)item dedupesToInferredMapItem:(id)mapItem error:(id *)error;
- (RTInferredMapItemDeduper)initWithDeduperFunction:(id)function;
- (id)dedupeDoubleArrayOfInferredMapItems:(id)items error:(id *)error;
- (id)dedupeDoubleArrayOfInferredMapItems:(id)items state:(id)state error:(id *)error;
- (id)dedupeInferredMapItems:(id)items error:(id *)error;
- (id)dedupeInferredMapItems:(id)items state:(id)state error:(id *)error;
- (id)ingestInferredMapItem:(id)item state:(id)state error:(id *)error;
- (id)ingestInferredMapItems:(id)items state:(id)state error:(id *)error;
@end

@implementation RTInferredMapItemDeduper

uint64_t __32__RTInferredMapItemDeduper_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 mapItem];
  v6 = [v4 mapItem];

  v7 = [v5 isEqualToMapItem:v6];
  return v7;
}

- (RTInferredMapItemDeduper)initWithDeduperFunction:(id)function
{
  functionCopy = function;
  if (functionCopy)
  {
    v11.receiver = self;
    v11.super_class = RTInferredMapItemDeduper;
    v5 = [(RTInferredMapItemDeduper *)&v11 init];
    if (v5)
    {
      v6 = _Block_copy(functionCopy);
      deduperFunction = v5->_deduperFunction;
      v5->_deduperFunction = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: deduperFunction", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)inferredMapItem:(id)item dedupesToInferredMapItem:(id)mapItem error:(id *)error
{
  itemCopy = item;
  mapItemCopy = mapItem;
  v10 = mapItemCopy;
  if (!itemCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItem1", buf, 2u);
    }

    if (error)
    {
      v13 = @"inferredMapItem1";
LABEL_12:
      _RTErrorInvalidParameterCreate(v13);
      *error = v11 = 0;
      goto LABEL_14;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  if (!mapItemCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItem2", v16, 2u);
    }

    if (error)
    {
      v13 = @"inferredMapItem2";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v11 = (*(self->_deduperFunction + 2))();
LABEL_14:

  return v11;
}

- (id)ingestInferredMapItem:(id)item state:(id)state error:(id *)error
{
  v37[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  stateCopy = state;
  v10 = stateCopy;
  if (!itemCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItem", buf, 2u);
    }

    if (error)
    {
      v17 = @"inferredMapItem";
LABEL_13:
      _RTErrorInvalidParameterCreate(v17);
      *error = v19 = 0;
      goto LABEL_26;
    }

LABEL_14:
    v19 = 0;
    goto LABEL_26;
  }

  if (!stateCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: state", buf, 2u);
    }

    if (error)
    {
      v17 = @"state";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  uniqueInferredMapItems = [stateCopy uniqueInferredMapItems];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __62__RTInferredMapItemDeduper_ingestInferredMapItem_state_error___block_invoke;
  v33[3] = &unk_2788D2D48;
  v33[4] = self;
  v12 = itemCopy;
  v34 = v12;
  v13 = [uniqueInferredMapItems indexOfObjectPassingTest:v33];

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    mapItem = [v12 mapItem];
    identifier = [mapItem identifier];
  }

  else
  {
    mapItem = [v10 uniqueInferredMapItems];
    v20 = [mapItem objectAtIndexedSubscript:v13];
    mapItem2 = [v20 mapItem];
    identifier = [mapItem2 identifier];
  }

  v22 = [objc_alloc(MEMORY[0x277D011C0]) initWithFirstObject:v12 secondObject:identifier];
  if (!v22)
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"intermediateInferredMapitem was nil for inferredMapItem, %@", v12];
    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277D01448];
    v36 = *MEMORY[0x277CCA450];
    v37[0] = v24;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v29 = [v26 errorWithDomain:v27 code:0 userInfo:v28];

    if (error)
    {
      v30 = v29;
      *error = v29;
    }

LABEL_23:
    v19 = 0;
    goto LABEL_25;
  }

  v32 = 0;
  [v10 ingestInferredMapItemWithIntermediateUUID:v22 error:&v32];
  v23 = v32;
  v24 = v23;
  if (!v23)
  {
    v19 = v22;
    goto LABEL_25;
  }

  if (!error)
  {
    goto LABEL_23;
  }

  v25 = v23;
  v19 = 0;
  *error = v24;
LABEL_25:

LABEL_26:

  return v19;
}

uint64_t __62__RTInferredMapItemDeduper_ingestInferredMapItem_state_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) inferredMapItem:*(a1 + 40) dedupesToInferredMapItem:a2 error:0];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

- (id)ingestInferredMapItems:(id)items state:(id)state error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  stateCopy = state;
  v10 = stateCopy;
  if (!itemsCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItems", buf, 2u);
    }

    if (error)
    {
      v22 = @"inferredMapItems";
LABEL_24:
      _RTErrorInvalidParameterCreate(v22);
      *error = v20 = 0;
      goto LABEL_26;
    }

LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  if (!stateCopy)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: state", buf, 2u);
    }

    if (error)
    {
      v22 = @"state";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  errorCopy = error;
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = itemsCopy;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        v28 = 0;
        v18 = [(RTInferredMapItemDeduper *)self ingestInferredMapItem:v17 state:v10 error:&v28];
        v19 = v28;
        if (v19)
        {
          v23 = v19;
          if (errorCopy)
          {
            v24 = v19;
            *errorCopy = v23;
          }

          v20 = 0;
          goto LABEL_19;
        }

        [v11 addObject:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v20 = v11;
LABEL_19:

LABEL_26:

  return v20;
}

- (id)dedupeInferredMapItems:(id)items state:(id)state error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  stateCopy = state;
  v10 = stateCopy;
  if (!itemsCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItems", buf, 2u);
    }

    if (error)
    {
      v17 = @"inferredMapItems";
LABEL_14:
      _RTErrorInvalidParameterCreate(v17);
      *error = v15 = 0;
      goto LABEL_31;
    }

LABEL_15:
    v15 = 0;
    goto LABEL_31;
  }

  if (!stateCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: state", buf, 2u);
    }

    if (error)
    {
      v17 = @"state";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v37 = 0;
  v11 = [(RTInferredMapItemDeduper *)self ingestInferredMapItems:itemsCopy state:stateCopy error:&v37];
  v12 = v37;
  v13 = v12;
  if (v12)
  {
    if (error)
    {
      v14 = v12;
      v15 = 0;
      *error = v13;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v31 = v11;
    v20 = v11;
    v21 = [v20 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v33 + 1) + 8 * i);
          v32 = 0;
          v26 = [v10 inferredMapItemFromInferredMapItemWithIntermediateUUID:v25 error:&v32];
          v27 = v32;
          if (v27)
          {
            v28 = v27;
            if (error)
            {
              v29 = v27;
              *error = v28;
            }

            v15 = 0;
            goto LABEL_29;
          }

          [v19 addObject:v26];
        }

        v22 = [v20 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v15 = v19;
LABEL_29:
    v13 = 0;
    v11 = v31;
  }

LABEL_31:

  return v15;
}

- (id)dedupeInferredMapItems:(id)items error:(id *)error
{
  itemsCopy = items;
  if (itemsCopy)
  {
    if (error)
    {
      v7 = objc_alloc_init(RTInferredMapItemDeduperState);
      v8 = [(RTInferredMapItemDeduper *)self dedupeInferredMapItems:itemsCopy state:v7 error:error];

      goto LABEL_12;
    }

    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", v12, 2u);
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItems", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"inferredMapItems");
      *error = v8 = 0;
      goto LABEL_12;
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (id)dedupeDoubleArrayOfInferredMapItems:(id)items state:(id)state error:(id *)error
{
  v66 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  stateCopy = state;
  v10 = stateCopy;
  if (!itemsCopy)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: doubleArrayOfInferredMapItems", buf, 2u);
    }

    if (error)
    {
      v35 = @"doubleArrayOfInferredMapItems";
LABEL_38:
      _RTErrorInvalidParameterCreate(v35);
      *error = v33 = 0;
      goto LABEL_45;
    }

LABEL_39:
    v33 = 0;
    goto LABEL_45;
  }

  if (!stateCopy)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: state", buf, 2u);
    }

    if (error)
    {
      v35 = @"state";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  errorCopy = error;
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v47 = itemsCopy;
  v12 = itemsCopy;
  v13 = [v12 countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v59;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v59 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v58 + 1) + 8 * i);
        v57 = 0;
        v18 = [(RTInferredMapItemDeduper *)self ingestInferredMapItems:v17 state:v10 error:&v57];
        v19 = v57;
        if (v19)
        {
          v36 = v19;
          if (error)
          {
            v37 = v19;
            *error = v36;
          }

LABEL_43:
          v33 = 0;
          goto LABEL_44;
        }

        [v11 addObject:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v58 objects:v65 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v20 = v11;
  v43 = [v20 countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v43)
  {
    v21 = *v54;
    v45 = v20;
    v42 = *v54;
    do
    {
      v22 = 0;
      do
      {
        if (*v54 != v21)
        {
          objc_enumerationMutation(v20);
        }

        v44 = v22;
        v23 = *(*(&v53 + 1) + 8 * v22);
        v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v23, "count")}];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v25 = v23;
        v26 = [v25 countByEnumeratingWithState:&v49 objects:v63 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v50;
          while (2)
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v50 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v49 + 1) + 8 * j);
              v48 = 0;
              v31 = [v10 inferredMapItemFromInferredMapItemWithIntermediateUUID:v30 error:&v48];
              v32 = v48;
              if (v32)
              {
                v39 = v32;
                if (errorCopy)
                {
                  v40 = v32;
                  *errorCopy = v39;
                }

                goto LABEL_43;
              }

              [v24 addObject:v31];
            }

            v27 = [v25 countByEnumeratingWithState:&v49 objects:v63 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }
        }

        [v12 addObject:v24];
        v22 = v44 + 1;
        v20 = v45;
        v21 = v42;
      }

      while (v44 + 1 != v43);
      v43 = [v45 countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v43);
  }

  v33 = v12;
LABEL_44:
  itemsCopy = v47;

LABEL_45:

  return v33;
}

- (id)dedupeDoubleArrayOfInferredMapItems:(id)items error:(id *)error
{
  itemsCopy = items;
  if (itemsCopy)
  {
    if (error)
    {
      v7 = objc_alloc_init(RTInferredMapItemDeduperState);
      v8 = [(RTInferredMapItemDeduper *)self dedupeDoubleArrayOfInferredMapItems:itemsCopy state:v7 error:error];

      goto LABEL_12;
    }

    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", v12, 2u);
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: doubleArrayOfInferredMapItems", buf, 2u);
    }

    if (error)
    {
      _RTErrorInvalidParameterCreate(@"doubleArrayOfInferredMapItems");
      *error = v8 = 0;
      goto LABEL_12;
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

@end