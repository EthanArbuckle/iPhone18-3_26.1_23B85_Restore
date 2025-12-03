@interface RTMapItemProviderBase
- (BOOL)mapItemCloseEnough:(id)enough referenceLocation:(id)location distanceThreshold:(double)threshold error:(id *)error;
- (RTMapItemProviderBase)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator;
- (RTMapItemProviderBase)initWithDistanceCalculator:(id)calculator parameters:(id)parameters;
- (id)filter:(id)filter byDistance:(double)distance fromLocation:(id)location andAppendSource:(unint64_t)source error:(id *)error;
- (id)filterInferredMapItems:(id)items byDistance:(double)distance fromLocation:(id)location andAppendSource:(unint64_t)source error:(id *)error;
@end

@implementation RTMapItemProviderBase

- (RTMapItemProviderBase)initWithDefaultsManager:(id)manager distanceCalculator:(id)calculator
{
  managerCopy = manager;
  calculatorCopy = calculator;
  if (managerCopy)
  {
    v8 = [[RTMapItemProviderBaseParameters alloc] initWithDefaultsManager:managerCopy];
    self = [(RTMapItemProviderBase *)self initWithDistanceCalculator:calculatorCopy parameters:v8];

    selfCopy = self;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", v12, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (RTMapItemProviderBase)initWithDistanceCalculator:(id)calculator parameters:(id)parameters
{
  calculatorCopy = calculator;
  parametersCopy = parameters;
  v9 = parametersCopy;
  if (!calculatorCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: distanceCalculator";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_9;
  }

  if (!parametersCopy)
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
    objc_storeStrong(&v10->_distanceCalculator, calculator);
    objc_storeStrong(p_isa + 2, parameters);
  }

  self = p_isa;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (BOOL)mapItemCloseEnough:(id)enough referenceLocation:(id)location distanceThreshold:(double)threshold error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  enoughCopy = enough;
  locationCopy = location;
  v12 = locationCopy;
  if (error)
  {
    if (enoughCopy)
    {
      if (locationCopy)
      {
        distanceCalculator = [(RTMapItemProviderBase *)self distanceCalculator];
        location = [enoughCopy location];
        v36 = 0;
        [distanceCalculator distanceFromLocation:v12 toLocation:location error:&v36];
        v16 = v15;
        v17 = v36;

        if (v17)
        {
          v18 = v17;
          v19 = 0;
          *error = v17;
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

          v28 = v27 + threshold;
          location2 = [enoughCopy location];
          [location2 horizontalUncertainty];
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
                v38 = enoughCopy;
                v39 = 2048;
                thresholdCopy = threshold;
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
    *error = v19 = 0;
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

- (id)filter:(id)filter byDistance:(double)distance fromLocation:(id)location andAppendSource:(unint64_t)source error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  locationCopy = location;
  if ([filterCopy count])
  {
    errorCopy = error;
    [MEMORY[0x277CBEB18] array];
    v30 = v29 = filterCopy;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = filterCopy;
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
          v20 = [(RTMapItemProviderBase *)self mapItemCloseEnough:v19 referenceLocation:locationCopy distanceThreshold:&v31 error:distance];
          v21 = v31;
          v22 = v21;
          if (v20)
          {
            v23 = [v19 appendSource:source];
            if (v23)
            {
              [v30 addObject:v23];
            }
          }

          else if (v21)
          {
            if (errorCopy)
            {
              v26 = v21;
              *errorCopy = v22;
            }

            v25 = 0;
            filterCopy = v29;
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
    filterCopy = v29;
LABEL_19:
  }

  else
  {
    v25 = filterCopy;
  }

  return v25;
}

- (id)filterInferredMapItems:(id)items byDistance:(double)distance fromLocation:(id)location andAppendSource:(unint64_t)source error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  locationCopy = location;
  if ([itemsCopy count])
  {
    errorCopy = error;
    [MEMORY[0x277CBEB18] array];
    v39 = v38 = itemsCopy;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v13 = itemsCopy;
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
        mapItem = [v18 mapItem];
        v41 = 0;
        v20 = [(RTMapItemProviderBase *)self mapItemCloseEnough:mapItem referenceLocation:locationCopy distanceThreshold:&v41 error:distance];
        v21 = v41;

        if (v20)
        {
          mapItem2 = [v18 mapItem];
          v23 = [mapItem2 appendSource:source];

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

              if (!errorCopy)
              {
                goto LABEL_16;
              }

              itemsCopy = v38;
              v29 = v39;
              if (v28)
              {
                v35 = v28;
                *errorCopy = v28;
              }

              goto LABEL_24;
            }

            v27 = v26;
            [v39 addObject:v26];
          }
        }

        else if (v21)
        {
          if (errorCopy)
          {
            v31 = v21;
            *errorCopy = v21;
          }

          v30 = 0;
          itemsCopy = v38;
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
    itemsCopy = v38;
    v29 = v39;
LABEL_24:
    v30 = v29;
    v13 = v28;
LABEL_25:
  }

  else
  {
    v30 = itemsCopy;
  }

  return v30;
}

@end