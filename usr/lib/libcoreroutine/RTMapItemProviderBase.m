@interface RTMapItemProviderBase
- (BOOL)mapItemCloseEnough:(id)a3 referenceLocation:(id)a4 distanceThreshold:(double)a5 error:(id *)a6;
- (RTMapItemProviderBase)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4;
- (RTMapItemProviderBase)initWithDistanceCalculator:(id)a3 parameters:(id)a4;
- (id)filter:(id)a3 byDistance:(double)a4 fromLocation:(id)a5 andAppendSource:(unint64_t)a6 error:(id *)a7;
- (id)filterInferredMapItems:(id)a3 byDistance:(double)a4 fromLocation:(id)a5 andAppendSource:(unint64_t)a6 error:(id *)a7;
@end

@implementation RTMapItemProviderBase

- (RTMapItemProviderBase)initWithDefaultsManager:(id)a3 distanceCalculator:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [[RTMapItemProviderBaseParameters alloc] initWithDefaultsManager:v6];
    self = [(RTMapItemProviderBase *)self initWithDistanceCalculator:v7 parameters:v8];

    v9 = self;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v12, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (RTMapItemProviderBase)initWithDistanceCalculator:(id)a3 parameters:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v12 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: distanceCalculator";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_9;
  }

  if (!v8)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: parameters";
    goto LABEL_12;
  }

  v16.receiver = self;
  v16.super_class = RTMapItemProviderBase;
  v10 = [(RTMapItemProviderBase *)&v16 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_distanceCalculator, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  self = p_isa;
  v12 = self;
LABEL_10:

  return v12;
}

- (BOOL)mapItemCloseEnough:(id)a3 referenceLocation:(id)a4 distanceThreshold:(double)a5 error:(id *)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (a6)
  {
    if (v10)
    {
      if (v11)
      {
        v13 = [(RTMapItemProviderBase *)self distanceCalculator];
        v14 = [v10 location];
        v36 = 0;
        [v13 distanceFromLocation:v12 toLocation:v14 error:&v36];
        v16 = v15;
        v17 = v36;

        if (v17)
        {
          v18 = v17;
          v19 = 0;
          *a6 = v17;
        }

        else
        {
          [v12 horizontalUncertainty];
          v25 = v24;
          [(RTMapItemProviderBaseParameters *)self->_baseParameters locationUncertaintyMax];
          if (v25 >= v26)
          {
            v25 = v26;
          }

          [(RTMapItemProviderBaseParameters *)self->_baseParameters locationUncertaintyMin];
          if (v25 >= v27)
          {
            v27 = v25;
          }

          v28 = v27 + a5;
          v29 = [v10 location];
          [v29 horizontalUncertainty];
          v31 = v30;

          [(RTMapItemProviderBaseParameters *)self->_baseParameters mapItemUncertaintyMin];
          if (v31 < v32)
          {
            v31 = v32;
          }

          [(RTMapItemProviderBaseParameters *)self->_baseParameters mapItemUncertaintyMax];
          if (v31 < v33)
          {
            v33 = v31;
          }

          if (v16 > v28 + v33)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v34 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                *buf = 138740739;
                v38 = v10;
                v39 = 2048;
                v40 = a5;
                v41 = 2048;
                v42 = v16;
                v43 = 2117;
                v44 = v12;
                _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "mapItem didn't survive distance filter, %{sensitive}@, distance threshold, %lf, actual distance, %lf, location, %{sensitive}@", buf, 0x2Au);
              }
            }

            v19 = 0;
          }

          else
          {
            v19 = 1;
          }
        }

        goto LABEL_32;
      }

      v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: referenceLocation", buf, 2u);
      }

      v22 = @"referenceLocation";
    }

    else
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapItem", buf, 2u);
      }

      v22 = @"mapItem";
    }

    _RTErrorInvalidParameterCreate(v22);
    *a6 = v19 = 0;
    goto LABEL_32;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
  }

  v19 = 0;
LABEL_32:

  return v19;
}

- (id)filter:(id)a3 byDistance:(double)a4 fromLocation:(id)a5 andAppendSource:(unint64_t)a6 error:(id *)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  if ([v12 count])
  {
    v28 = a7;
    [MEMORY[0x277CBEB18] array];
    v30 = v29 = v12;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v32 + 1) + 8 * i);
          v31 = 0;
          v20 = [(RTMapItemProviderBase *)self mapItemCloseEnough:v19 referenceLocation:v13 distanceThreshold:&v31 error:a4];
          v21 = v31;
          v22 = v21;
          if (v20)
          {
            v23 = [v19 appendSource:a6];
            if (v23)
            {
              [v30 addObject:v23];
            }
          }

          else if (v21)
          {
            if (v28)
            {
              v26 = v21;
              *v28 = v22;
            }

            v25 = 0;
            v12 = v29;
            v24 = v30;
            goto LABEL_19;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v24 = v30;
    v25 = v30;
    v12 = v29;
LABEL_19:
  }

  else
  {
    v25 = v12;
  }

  return v25;
}

- (id)filterInferredMapItems:(id)a3 byDistance:(double)a4 fromLocation:(id)a5 andAppendSource:(unint64_t)a6 error:(id *)a7
{
  v49 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  if ([v11 count])
  {
    v37 = a7;
    [MEMORY[0x277CBEB18] array];
    v39 = v38 = v11;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v43;
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v42 + 1) + 8 * v17);
        v19 = [v18 mapItem];
        v41 = 0;
        v20 = [(RTMapItemProviderBase *)self mapItemCloseEnough:v19 referenceLocation:v12 distanceThreshold:&v41 error:a4];
        v21 = v41;

        if (v20)
        {
          v22 = [v18 mapItem];
          v23 = [v22 appendSource:a6];

          if (v23)
          {
            v24 = objc_alloc(MEMORY[0x277D01128]);
            [v18 confidence];
            v26 = [v24 initWithMapItem:v23 confidence:objc_msgSend(v18 source:{"source"), v25}];
            if (!v26)
            {
              v32 = MEMORY[0x277CCA9B8];
              v33 = *MEMORY[0x277D01448];
              v46 = *MEMORY[0x277CCA450];
              v47 = @"filteredInferredMapItem was nil";
              v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
              v28 = [v32 errorWithDomain:v33 code:0 userInfo:v34];

              if (!v37)
              {
                goto LABEL_16;
              }

              v11 = v38;
              v29 = v39;
              if (v28)
              {
                v35 = v28;
                *v37 = v28;
              }

              goto LABEL_24;
            }

            v27 = v26;
            [v39 addObject:v26];
          }
        }

        else if (v21)
        {
          if (v37)
          {
            v31 = v21;
            *v37 = v21;
          }

          v30 = 0;
          v11 = v38;
          v29 = v39;
          goto LABEL_25;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v42 objects:v48 count:16];
          if (v15)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v28 = 0;
LABEL_16:
    v11 = v38;
    v29 = v39;
LABEL_24:
    v30 = v29;
    v13 = v28;
LABEL_25:
  }

  else
  {
    v30 = v11;
  }

  return v30;
}

@end