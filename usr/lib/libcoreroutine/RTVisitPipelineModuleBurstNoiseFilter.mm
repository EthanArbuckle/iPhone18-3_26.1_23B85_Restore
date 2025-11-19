@interface RTVisitPipelineModuleBurstNoiseFilter
+ (unint64_t)getIndexInArray:(id)a3 followedByCount:(unint64_t)a4;
- (RTVisitPipelineModuleBurstNoiseFilter)initWithHyperParameter:(id)a3;
- (RTVisitPipelineModuleBurstNoiseFilter)initWithMaximumFlankDistance:(double)a3 minimumNoiseToLeftFlankDistance:(double)a4 maximumWindowSize:(unint64_t)a5 maxHorizontalAccuracy:(double)a6;
- (RTVisitPipelineModuleBurstNoiseFilter)initWithMaximumFlankDistance:(double)a3 minimumNoiseToLeftFlankDistance:(double)a4 maximumWindowSize:(unint64_t)a5 maxHorizontalAccuracy:(double)a6 distanceCalculator:(id)a7;
- (id)getFilteredLocations;
- (id)process:(id)a3;
- (unint64_t)getFirstIndexToProcess;
- (unint64_t)getFirstUnprocessableIndex;
- (void)addLocations:(id)a3;
- (void)discardObsoleteLocations;
- (void)filterNoise;
- (void)identifyNoiseInWindowRange:(_NSRange)a3;
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
    v6 = [v5 location];
    [v3 addObject:v6];
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

- (void)addLocations:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
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

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (RTVisitPipelineModuleBurstNoiseFilter)initWithMaximumFlankDistance:(double)a3 minimumNoiseToLeftFlankDistance:(double)a4 maximumWindowSize:(unint64_t)a5 maxHorizontalAccuracy:(double)a6
{
  v11 = objc_opt_new();
  v12 = [(RTVisitPipelineModuleBurstNoiseFilter *)self initWithMaximumFlankDistance:a5 minimumNoiseToLeftFlankDistance:v11 maximumWindowSize:a3 maxHorizontalAccuracy:a4 distanceCalculator:a6];

  return v12;
}

- (RTVisitPipelineModuleBurstNoiseFilter)initWithMaximumFlankDistance:(double)a3 minimumNoiseToLeftFlankDistance:(double)a4 maximumWindowSize:(unint64_t)a5 maxHorizontalAccuracy:(double)a6 distanceCalculator:(id)a7
{
  v13 = a7;
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
    v15->_maximumFlankDistance = a3;
    v15->_minimumNoiseToLeftFlankDistance = a4;
    v15->_maximumWindowSize = a5;
    v15->_maxHorizontalAccuracy = a6;
    objc_storeStrong(&v15->_distanceCalculator, a7);
  }

  return v15;
}

- (RTVisitPipelineModuleBurstNoiseFilter)initWithHyperParameter:(id)a3
{
  v4 = a3;
  [v4 maxNonFlankDistance];
  v6 = v5;
  [v4 minNoiseToLeftFlankDistance];
  v8 = v7;
  v9 = [v4 maxBurstNoiseLength];
  [v4 maxHorizontalAccuracy];
  v11 = v10;

  return [(RTVisitPipelineModuleBurstNoiseFilter *)self initWithMaximumFlankDistance:v9 minimumNoiseToLeftFlankDistance:v6 maximumWindowSize:v8 maxHorizontalAccuracy:v11];
}

- (void)identifyNoiseInWindowRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v48 = *MEMORY[0x277D85DE8];
  if (!a3.location)
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
    v12 = [v11 isNoise];

    if (v12)
    {
      return;
    }

    v13 = [(NSMutableArray *)self->_potentialNoiseLocations objectAtIndexedSubscript:location - 1];
    v14 = [v13 location];

    v15 = [(NSMutableArray *)self->_potentialNoiseLocations objectAtIndexedSubscript:v7];
    v16 = [v15 location];

    distanceCalculator = self->_distanceCalculator;
    v43 = 0;
    v40 = v16;
    v41 = v14;
    [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:v14 toLocation:v16 error:&v43];
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
        v25 = [v24 isNoise];

        if (v25)
        {
          v26 = v20;
        }

        else
        {
          v27 = self->_distanceCalculator;
          v28 = v9;
          v29 = [(NSMutableArray *)self->_potentialNoiseLocations objectAtIndexedSubscript:v9];
          v30 = [v29 location];
          v31 = [(NSMutableArray *)self->_potentialNoiseLocations objectAtIndexedSubscript:location];
          v32 = [v31 location];
          v42 = v20;
          [(RTDistanceCalculator *)v27 distanceFromLocation:v30 toLocation:v32 error:&v42];
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
                v38 = [v37 location];
                *buf = v39;
                v45 = v38;
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

+ (unint64_t)getIndexInArray:(id)a3 followedByCount:(unint64_t)a4
{
  v5 = a3;
  if ([v5 count] - 1 >= a4)
  {
    v6 = [v5 count] + ~a4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)process:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a3;
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

        v12 = [(RTVisitCluster *)v10 points];
        v13 = [v12 locations];
        [(RTVisitPipelineModuleBurstNoiseFilter *)self addLocations:v13];

        [(RTVisitPipelineModuleBurstNoiseFilter *)self filterNoise];
        v14 = [RTVisitCluster alloc];
        v15 = [(RTVisitPipelineModuleBurstNoiseFilter *)self getFilteredLocations];
        v16 = [v15 points];
        v17 = [(RTVisitCluster *)v10 visit];
        v18 = [(RTVisitCluster *)v14 initWithPoints:v16 visit:v17];

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