@interface RTVisitPipelineModuleBurstNoiseFilter
+ (unint64_t)getIndexInArray:(id)array followedByCount:(unint64_t)count;
- (RTVisitPipelineModuleBurstNoiseFilter)initWithHyperParameter:(id)parameter;
- (RTVisitPipelineModuleBurstNoiseFilter)initWithMaximumFlankDistance:(double)distance minimumNoiseToLeftFlankDistance:(double)flankDistance maximumWindowSize:(unint64_t)size maxHorizontalAccuracy:(double)accuracy;
- (RTVisitPipelineModuleBurstNoiseFilter)initWithMaximumFlankDistance:(double)distance minimumNoiseToLeftFlankDistance:(double)flankDistance maximumWindowSize:(unint64_t)size maxHorizontalAccuracy:(double)accuracy distanceCalculator:(id)calculator;
- (id)getFilteredLocations;
- (id)process:(id)process;
- (unint64_t)getFirstIndexToProcess;
- (unint64_t)getFirstUnprocessableIndex;
- (void)addLocations:(id)locations;
- (void)discardObsoleteLocations;
- (void)filterNoise;
- (void)identifyNoiseInWindowRange:(_NSRange)range;
- (void)removeNoiseLocations;
@end

@implementation RTVisitPipelineModuleBurstNoiseFilter

- (void)filterNoise
{
  for (i = self->_maximumWindowSize; i; --i)
  {
    for (j = self->_lastProcessedIndex + 1; i + j < [(NSMutableArray *)self->_potentialNoiseLocations count]; ++j)
    {
      [(RTVisitPipelineModuleBurstNoiseFilter *)self identifyNoiseInWindowRange:j, i];
    }

    [(RTVisitPipelineModuleBurstNoiseFilter *)self removeNoiseLocations];
  }
}

- (void)removeNoiseLocations
{
  potentialNoiseLocations = self->_potentialNoiseLocations;
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_85];
  [(NSMutableArray *)potentialNoiseLocations filterUsingPredicate:v3];
}

- (id)getFilteredLocations
{
  v3 = objc_opt_new();
  for (i = [(RTVisitPipelineModuleBurstNoiseFilter *)self getFirstIndexToProcess]; i < [(RTVisitPipelineModuleBurstNoiseFilter *)self getFirstUnprocessableIndex]; ++i)
  {
    v5 = [(NSMutableArray *)self->_potentialNoiseLocations objectAtIndexedSubscript:i];
    location = [v5 location];
    [v3 addObject:location];
  }

  lastProcessedIndex = self->_lastProcessedIndex;
  if (lastProcessedIndex < [(RTVisitPipelineModuleBurstNoiseFilter *)self getFirstUnprocessableIndex]- 1)
  {
    self->_lastProcessedIndex = [(RTVisitPipelineModuleBurstNoiseFilter *)self getFirstUnprocessableIndex]- 1;
    self->_firstTimeProcessingModule = 0;
  }

  if ([v3 count])
  {
    v8 = [RTVisitCluster alloc];
    v9 = [[RTVisitLocationPoints alloc] initWithLocations:v3];
    v10 = [(RTVisitCluster *)v8 initWithPoints:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)getFirstIndexToProcess
{
  if (self->_firstTimeProcessingModule)
  {
    return 0;
  }

  else
  {
    return self->_lastProcessedIndex + 1;
  }
}

- (unint64_t)getFirstUnprocessableIndex
{
  result = [objc_opt_class() getIndexInArray:self->_potentialNoiseLocations followedByCount:self->_maximumWindowSize - 1];
  lastProcessedIndex = self->_lastProcessedIndex;
  if (result <= lastProcessedIndex)
  {
    return lastProcessedIndex + 1;
  }

  return result;
}

- (void)discardObsoleteLocations
{
  v2 = self->_lastProcessedIndex + 1;
  maximumWindowSize = self->_maximumWindowSize;
  v4 = v2 - maximumWindowSize;
  if (v2 > maximumWindowSize)
  {
    [(NSMutableArray *)self->_potentialNoiseLocations removeObjectsInRange:0, v2 - maximumWindowSize];
    self->_lastProcessedIndex -= v4;
  }
}

- (void)addLocations:(id)locations
{
  v18 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [locationsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(locationsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 horizontalUncertainty];
        if (v10 <= self->_maxHorizontalAccuracy)
        {
          potentialNoiseLocations = self->_potentialNoiseLocations;
          v12 = [[RTPotentialNoiseLocation alloc] initWithLocation:v9];
          [(NSMutableArray *)potentialNoiseLocations addObject:v12];
        }
      }

      v6 = [locationsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (RTVisitPipelineModuleBurstNoiseFilter)initWithMaximumFlankDistance:(double)distance minimumNoiseToLeftFlankDistance:(double)flankDistance maximumWindowSize:(unint64_t)size maxHorizontalAccuracy:(double)accuracy
{
  v11 = objc_opt_new();
  v12 = [(RTVisitPipelineModuleBurstNoiseFilter *)self initWithMaximumFlankDistance:size minimumNoiseToLeftFlankDistance:v11 maximumWindowSize:distance maxHorizontalAccuracy:flankDistance distanceCalculator:accuracy];

  return v12;
}

- (RTVisitPipelineModuleBurstNoiseFilter)initWithMaximumFlankDistance:(double)distance minimumNoiseToLeftFlankDistance:(double)flankDistance maximumWindowSize:(unint64_t)size maxHorizontalAccuracy:(double)accuracy distanceCalculator:(id)calculator
{
  calculatorCopy = calculator;
  v19.receiver = self;
  v19.super_class = RTVisitPipelineModuleBurstNoiseFilter;
  v14 = [(RTVisitPipelineModuleBurstNoiseFilter *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_firstTimeProcessingModule = 1;
    v16 = objc_opt_new();
    potentialNoiseLocations = v15->_potentialNoiseLocations;
    v15->_potentialNoiseLocations = v16;

    v15->_lastProcessedIndex = 0;
    v15->_maximumFlankDistance = distance;
    v15->_minimumNoiseToLeftFlankDistance = flankDistance;
    v15->_maximumWindowSize = size;
    v15->_maxHorizontalAccuracy = accuracy;
    objc_storeStrong(&v15->_distanceCalculator, calculator);
  }

  return v15;
}

- (RTVisitPipelineModuleBurstNoiseFilter)initWithHyperParameter:(id)parameter
{
  parameterCopy = parameter;
  [parameterCopy maxNonFlankDistance];
  v6 = v5;
  [parameterCopy minNoiseToLeftFlankDistance];
  v8 = v7;
  maxBurstNoiseLength = [parameterCopy maxBurstNoiseLength];
  [parameterCopy maxHorizontalAccuracy];
  v11 = v10;

  return [(RTVisitPipelineModuleBurstNoiseFilter *)self initWithMaximumFlankDistance:maxBurstNoiseLength minimumNoiseToLeftFlankDistance:v6 maximumWindowSize:v8 maxHorizontalAccuracy:v11];
}

- (void)identifyNoiseInWindowRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v48 = *MEMORY[0x277D85DE8];
  if (!range.location)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "[RTVisitPipelineModuleBurstNoiseFilter identifyNoiseInWindowRange:]";
      v46 = 1024;
      v47 = 89;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: windowRange.location > 0 (in %s:%d)", buf, 0x12u);
    }
  }

  v7 = location + length;
  if (v7 >= [(NSMutableArray *)self->_potentialNoiseLocations count])
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "[RTVisitPipelineModuleBurstNoiseFilter identifyNoiseInWindowRange:]";
      v46 = 1024;
      v47 = 90;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: windowRange.location + windowRange.length < _potentialNoiseLocations.count (in %s:%d)", buf, 0x12u);
    }
  }

  v9 = location - 1;
  v10 = [(NSMutableArray *)self->_potentialNoiseLocations objectAtIndexedSubscript:location - 1];
  if (([v10 isNoise] & 1) == 0)
  {
    v11 = [(NSMutableArray *)self->_potentialNoiseLocations objectAtIndexedSubscript:v7];
    isNoise = [v11 isNoise];

    if (isNoise)
    {
      return;
    }

    v13 = [(NSMutableArray *)self->_potentialNoiseLocations objectAtIndexedSubscript:location - 1];
    location = [v13 location];

    v15 = [(NSMutableArray *)self->_potentialNoiseLocations objectAtIndexedSubscript:v7];
    location2 = [v15 location];

    distanceCalculator = self->_distanceCalculator;
    v43 = 0;
    v40 = location2;
    v41 = location;
    [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:location toLocation:location2 error:&v43];
    v19 = v18;
    v20 = v43;
    if (v20 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v45 = v20;
        _os_log_debug_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEBUG, "Distance Calculator error, %@", buf, 0xCu);
      }
    }

    if (v19 >= self->_maximumFlankDistance)
    {
      goto LABEL_31;
    }

    lastProcessedIndex = self->_lastProcessedIndex;
    if (location <= lastProcessedIndex + 1)
    {
      location = lastProcessedIndex + 1;
    }

    if (location >= v7)
    {
LABEL_31:
      v26 = v20;
    }

    else
    {
      *&v21 = 138412290;
      v39 = v21;
      do
      {
        v24 = [(NSMutableArray *)self->_potentialNoiseLocations objectAtIndexedSubscript:location, v39];
        isNoise2 = [v24 isNoise];

        if (isNoise2)
        {
          v26 = v20;
        }

        else
        {
          v27 = self->_distanceCalculator;
          v28 = v9;
          v29 = [(NSMutableArray *)self->_potentialNoiseLocations objectAtIndexedSubscript:v9];
          location3 = [v29 location];
          v31 = [(NSMutableArray *)self->_potentialNoiseLocations objectAtIndexedSubscript:location];
          location4 = [v31 location];
          v42 = v20;
          [(RTDistanceCalculator *)v27 distanceFromLocation:location3 toLocation:location4 error:&v42];
          v34 = v33;
          v26 = v42;

          if (v34 > self->_minimumNoiseToLeftFlankDistance)
          {
            v35 = [(NSMutableArray *)self->_potentialNoiseLocations objectAtIndexedSubscript:location];
            [v35 setNoise:1];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v36 = _rt_log_facility_get_os_log(RTLogFacilityLocation);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                v37 = [(NSMutableArray *)self->_potentialNoiseLocations objectAtIndexedSubscript:location];
                location5 = [v37 location];
                *buf = v39;
                v45 = location5;
                _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "Noisy Location: %@", buf, 0xCu);
              }
            }
          }

          v9 = v28;
        }

        ++location;
        v20 = v26;
      }

      while (v7 != location);
    }

    v10 = v41;
  }
}

+ (unint64_t)getIndexInArray:(id)array followedByCount:(unint64_t)count
{
  arrayCopy = array;
  if ([arrayCopy count] - 1 >= count)
  {
    v6 = [arrayCopy count] + ~count;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)process:(id)process
{
  v39 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = process;
  v4 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = MEMORY[0x277D86220];
    v28 = *v30;
    *&v5 = 138412547;
    v26 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v11 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            *buf = v26;
            v35 = v22;
            v36 = 2117;
            v37 = v10;
            _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@ working on cluster, %{sensitive}@", buf, 0x16u);
          }
        }

        points = [(RTVisitCluster *)v10 points];
        locations = [points locations];
        [(RTVisitPipelineModuleBurstNoiseFilter *)self addLocations:locations];

        [(RTVisitPipelineModuleBurstNoiseFilter *)self filterNoise];
        v14 = [RTVisitCluster alloc];
        getFilteredLocations = [(RTVisitPipelineModuleBurstNoiseFilter *)self getFilteredLocations];
        points2 = [getFilteredLocations points];
        visit = [(RTVisitCluster *)v10 visit];
        v18 = [(RTVisitCluster *)v14 initWithPoints:points2 visit:visit];

        [(RTVisitPipelineModuleBurstNoiseFilter *)self discardObsoleteLocations];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v19 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            *buf = v26;
            v35 = v24;
            v36 = 2117;
            v37 = v18;
            _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, "%@ adding to output clusters, %{sensitive}@", buf, 0x16u);
          }
        }

        if (v18)
        {
          v33 = v18;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];

          v7 = v20;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end