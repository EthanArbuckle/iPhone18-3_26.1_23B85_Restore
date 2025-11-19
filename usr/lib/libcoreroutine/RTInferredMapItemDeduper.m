@interface RTInferredMapItemDeduper
- (BOOL)inferredMapItem:(id)a3 dedupesToInferredMapItem:(id)a4 error:(id *)a5;
- (RTInferredMapItemDeduper)initWithDeduperFunction:(id)a3;
- (id)dedupeDoubleArrayOfInferredMapItems:(id)a3 error:(id *)a4;
- (id)dedupeDoubleArrayOfInferredMapItems:(id)a3 state:(id)a4 error:(id *)a5;
- (id)dedupeInferredMapItems:(id)a3 error:(id *)a4;
- (id)dedupeInferredMapItems:(id)a3 state:(id)a4 error:(id *)a5;
- (id)ingestInferredMapItem:(id)a3 state:(id)a4 error:(id *)a5;
- (id)ingestInferredMapItems:(id)a3 state:(id)a4 error:(id *)a5;
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

- (RTInferredMapItemDeduper)initWithDeduperFunction:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11.receiver = self;
    v11.super_class = RTInferredMapItemDeduper;
    v5 = [(RTInferredMapItemDeduper *)&v11 init];
    if (v5)
    {
      v6 = _Block_copy(v4);
      deduperFunction = v5->_deduperFunction;
      v5->_deduperFunction = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: deduperFunction", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)inferredMapItem:(id)a3 dedupesToInferredMapItem:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItem1", buf, 2u);
    }

    if (a5)
    {
      v13 = @"inferredMapItem1";
LABEL_12:
      _RTErrorInvalidParameterCreate(v13);
      *a5 = v11 = 0;
      goto LABEL_14;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  if (!v9)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItem2", v16, 2u);
    }

    if (a5)
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

- (id)ingestInferredMapItem:(id)a3 state:(id)a4 error:(id *)a5
{
  v37[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItem", buf, 2u);
    }

    if (a5)
    {
      v17 = @"inferredMapItem";
LABEL_13:
      _RTErrorInvalidParameterCreate(v17);
      *a5 = v19 = 0;
      goto LABEL_26;
    }

LABEL_14:
    v19 = 0;
    goto LABEL_26;
  }

  if (!v9)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: state", buf, 2u);
    }

    if (a5)
    {
      v17 = @"state";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v11 = [v9 uniqueInferredMapItems];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __62__RTInferredMapItemDeduper_ingestInferredMapItem_state_error___block_invoke;
  v33[3] = &unk_2788D2D48;
  v33[4] = self;
  v12 = v8;
  v34 = v12;
  v13 = [v11 indexOfObjectPassingTest:v33];

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [v12 mapItem];
    v15 = [v14 identifier];
  }

  else
  {
    v14 = [v10 uniqueInferredMapItems];
    v20 = [v14 objectAtIndexedSubscript:v13];
    v21 = [v20 mapItem];
    v15 = [v21 identifier];
  }

  v22 = [objc_alloc(MEMORY[0x277D011C0]) initWithFirstObject:v12 secondObject:v15];
  if (!v22)
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"intermediateInferredMapitem was nil for inferredMapItem, %@", v12];
    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277D01448];
    v36 = *MEMORY[0x277CCA450];
    v37[0] = v24;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v29 = [v26 errorWithDomain:v27 code:0 userInfo:v28];

    if (a5)
    {
      v30 = v29;
      *a5 = v29;
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

  if (!a5)
  {
    goto LABEL_23;
  }

  v25 = v23;
  v19 = 0;
  *a5 = v24;
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

- (id)ingestInferredMapItems:(id)a3 state:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItems", buf, 2u);
    }

    if (a5)
    {
      v22 = @"inferredMapItems";
LABEL_24:
      _RTErrorInvalidParameterCreate(v22);
      *a5 = v20 = 0;
      goto LABEL_26;
    }

LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  if (!v9)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: state", buf, 2u);
    }

    if (a5)
    {
      v22 = @"state";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v27 = a5;
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v8;
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
          if (v27)
          {
            v24 = v19;
            *v27 = v23;
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

- (id)dedupeInferredMapItems:(id)a3 state:(id)a4 error:(id *)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inferredMapItems", buf, 2u);
    }

    if (a5)
    {
      v17 = @"inferredMapItems";
LABEL_14:
      _RTErrorInvalidParameterCreate(v17);
      *a5 = v15 = 0;
      goto LABEL_31;
    }

LABEL_15:
    v15 = 0;
    goto LABEL_31;
  }

  if (!v9)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: state", buf, 2u);
    }

    if (a5)
    {
      v17 = @"state";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v37 = 0;
  v11 = [(RTInferredMapItemDeduper *)self ingestInferredMapItems:v8 state:v9 error:&v37];
  v12 = v37;
  v13 = v12;
  if (v12)
  {
    if (a5)
    {
      v14 = v12;
      v15 = 0;
      *a5 = v13;
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
            if (a5)
            {
              v29 = v27;
              *a5 = v28;
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

- (id)dedupeInferredMapItems:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    if (a4)
    {
      v7 = objc_alloc_init(RTInferredMapItemDeduperState);
      v8 = [(RTInferredMapItemDeduper *)self dedupeInferredMapItems:v6 state:v7 error:a4];

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

    if (a4)
    {
      _RTErrorInvalidParameterCreate(@"inferredMapItems");
      *a4 = v8 = 0;
      goto LABEL_12;
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (id)dedupeDoubleArrayOfInferredMapItems:(id)a3 state:(id)a4 error:(id *)a5
{
  v66 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: doubleArrayOfInferredMapItems", buf, 2u);
    }

    if (a5)
    {
      v35 = @"doubleArrayOfInferredMapItems";
LABEL_38:
      _RTErrorInvalidParameterCreate(v35);
      *a5 = v33 = 0;
      goto LABEL_45;
    }

LABEL_39:
    v33 = 0;
    goto LABEL_45;
  }

  if (!v9)
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: state", buf, 2u);
    }

    if (a5)
    {
      v35 = @"state";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v46 = a5;
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v47 = v8;
  v12 = v8;
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
          if (a5)
          {
            v37 = v19;
            *a5 = v36;
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
                if (v46)
                {
                  v40 = v32;
                  *v46 = v39;
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
  v8 = v47;

LABEL_45:

  return v33;
}

- (id)dedupeDoubleArrayOfInferredMapItems:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    if (a4)
    {
      v7 = objc_alloc_init(RTInferredMapItemDeduperState);
      v8 = [(RTInferredMapItemDeduper *)self dedupeDoubleArrayOfInferredMapItems:v6 state:v7 error:a4];

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

    if (a4)
    {
      _RTErrorInvalidParameterCreate(@"doubleArrayOfInferredMapItems");
      *a4 = v8 = 0;
      goto LABEL_12;
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

@end