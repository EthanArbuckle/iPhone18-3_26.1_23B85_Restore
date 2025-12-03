@interface PLLocationOfInterestCache
- (PLLocationOfInterestCache)init;
- (id)closestLocationOfInterestVisitToLocation:(id)location withinDistance:(double)distance inDateInterval:(id)interval;
- (id)locationOfInterestAtLocation:(id)location;
- (id)locationsOfInterestOfType:(int64_t)type;
- (id)locationsOfInterestVisitsAtLocation:(id)location inDateInterval:(id)interval;
- (unint64_t)numberOfLocationsOfInterest;
- (void)addLocationOfInterest:(id)interest;
@end

@implementation PLLocationOfInterestCache

- (unint64_t)numberOfLocationsOfInterest
{
  allLocationsOfInterest = [(PLLocationOfInterestCache *)self allLocationsOfInterest];
  v3 = [allLocationsOfInterest count];

  return v3;
}

- (id)locationsOfInterestVisitsAtLocation:(id)location inDateInterval:(id)interval
{
  v52 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  intervalCopy = interval;
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = intervalCopy;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  startDate = [v8 startDate];
  v11 = [currentCalendar pl_validDateForDate:startDate];

  endDate = [v8 endDate];
  v13 = [currentCalendar pl_validDateForDate:endDate];

  v37 = v11;
  v14 = [currentCalendar pl_startOfDayForDate:v11];
  array = [MEMORY[0x1E695DF70] array];
  if ([v14 compare:v13] == -1)
  {
    v39 = v13;
    do
    {
      v17 = [currentCalendar components:28 fromDate:v14];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld-%ld-%ld", objc_msgSend(v17, "year"), objc_msgSend(v17, "month"), objc_msgSend(v17, "day")];
      [array addObject:v18];
      v16 = [currentCalendar dateByAddingUnit:16 value:1 toDate:v14 options:0];

      v13 = v39;
      v14 = v16;
    }

    while ([v16 compare:v39] == -1);
  }

  else
  {
    v16 = v14;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = array;
  v36 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v36)
  {
    v34 = *v45;
    do
    {
      v19 = 0;
      do
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v38 = v19;
        v20 = [(NSMutableDictionary *)self->_visitsCache objectForKeyedSubscript:*(*(&v44 + 1) + 8 * v19)];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v21 = [v20 countByEnumeratingWithState:&v40 objects:v50 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v41;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v41 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v40 + 1) + 8 * i);
              visitInterval = [v25 visitInterval];
              v27 = [visitInterval intersectsDateInterval:v8];

              if (v27)
              {
                if (locationCopy)
                {
                  locationOfInterest = [v25 locationOfInterest];
                  v29 = locationOfInterest;
                  if (locationOfInterest)
                  {
                    [locationOfInterest centerDistanceFromLocation:locationCopy];
                    if (v30 <= 2.22044605e-16)
                    {
                      [v7 addObject:v25];
                    }
                  }

                  else
                  {
                    v31 = PLBackendGetLog();
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138477827;
                      v49 = v25;
                      _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "LOI nil for visit %{private}@", buf, 0xCu);
                    }
                  }
                }

                else
                {
                  [v7 addObject:v25];
                }
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v40 objects:v50 count:16];
          }

          while (v22);
        }

        v19 = v38 + 1;
      }

      while (v38 + 1 != v36);
      v36 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v36);
  }

  return v7;
}

- (id)locationOfInterestAtLocation:(id)location
{
  v22 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  if (!locationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLLocationOfInterestCache.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"location != nil"}];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allLocationsOfInterest = [(PLLocationOfInterestCache *)self allLocationsOfInterest];
  v7 = [allLocationsOfInterest countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(allLocationsOfInterest);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        [v12 centerDistanceFromLocation:locationCopy];
        if (v13 <= 2.22044605e-16)
        {
          v14 = v12;

          v9 = v14;
        }
      }

      v8 = [allLocationsOfInterest countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)closestLocationOfInterestVisitToLocation:(id)location withinDistance:(double)distance inDateInterval:(id)interval
{
  v31 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  intervalCopy = interval;
  v11 = intervalCopy;
  if (locationCopy)
  {
    if (intervalCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLLocationOfInterestCache.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"location != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLLocationOfInterestCache.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"dateInterval != nil"}];

LABEL_3:
  v12 = [(PLLocationOfInterestCache *)self locationsOfInterestVisitsInDateInterval:v11];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  v14 = 0;
  if (v13)
  {
    v15 = *v27;
    v16 = 1.79769313e308;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        locationOfInterest = [v18 locationOfInterest];
        [locationOfInterest distanceFromLocation:locationCopy];
        if (v20 < v16)
        {
          v21 = v20;
          v22 = v18;

          v16 = v21;
          v14 = v22;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
    if (v14 && v16 - distance <= 2.22044605e-16)
    {
      v14 = v14;
      v13 = v14;
    }
  }

  return v13;
}

- (id)locationsOfInterestOfType:(int64_t)type
{
  if (type == -1)
  {
    workLocations = [MEMORY[0x1E695DFD8] set];
  }

  else if (type == 1)
  {
    workLocations = [(PLLocationOfInterestCache *)self workLocations];
  }

  else if (type)
  {
    workLocations = 0;
  }

  else
  {
    workLocations = [(PLLocationOfInterestCache *)self homeLocations];
  }

  return workLocations;
}

- (void)addLocationOfInterest:(id)interest
{
  v62 = *MEMORY[0x1E69E9840];
  interestCopy = interest;
  if (!interestCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLLocationOfInterestCache.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"locationOfInterest != nil"}];
  }

  visits = [interestCopy visits];
  if (([(NSMutableSet *)self->_allLocationsOfInterest containsObject:interestCopy]& 1) != 0)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v61 = interestCopy;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "[RoutineCache] LOI already existing in cache. %@", buf, 0xCu);
    }

    goto LABEL_39;
  }

  self->_numberOfLocationsOfInterestVisits += [visits count];
  [(NSMutableSet *)self->_allLocationsOfInterest addObject:interestCopy];
  if (![interestCopy type])
  {
    v8 = 24;
    goto LABEL_10;
  }

  if ([interestCopy type] == 1)
  {
    v8 = 32;
LABEL_10:
    [*(&self->super.isa + v8) addObject:interestCopy];
  }

  v37 = visits;
  v38 = interestCopy;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = visits;
  v41 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  v7 = 0;
  if (v41)
  {
    v40 = *v55;
    do
    {
      v9 = 0;
      do
      {
        if (*v55 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v54 + 1) + 8 * v9);
        visitInterval = [v10 visitInterval];
        startDate = [visitInterval startDate];
        v46 = visitInterval;
        endDate = [visitInterval endDate];
        earliestVisitStartDate = self->_earliestVisitStartDate;
        if (!earliestVisitStartDate || [(NSDate *)earliestVisitStartDate compare:startDate]== NSOrderedDescending)
        {
          objc_storeStrong(&self->_earliestVisitStartDate, startDate);
        }

        v47 = v9;
        v45 = startDate;
        if (!self->_lastLocationOfInterestVisit || [v7 compare:endDate]== -1)
        {
          objc_storeStrong(&self->_lastLocationOfInterestVisit, v10);
          v15 = endDate;

          v48 = v15;
        }

        else
        {
          v48 = v7;
        }

        v44 = endDate;
        visitInterval2 = [v10 visitInterval];
        currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
        startDate2 = [visitInterval2 startDate];
        v19 = [currentCalendar pl_validDateForDate:startDate2];

        v43 = visitInterval2;
        endDate2 = [visitInterval2 endDate];
        v21 = [currentCalendar pl_validDateForDate:endDate2];

        v49 = currentCalendar;
        v42 = v19;
        v22 = [currentCalendar pl_startOfDayForDate:v19];
        array = [MEMORY[0x1E695DF70] array];
        if ([v22 compare:v21] == -1)
        {
          v25 = currentCalendar;
          do
          {
            v26 = [v25 components:28 fromDate:v22];
            v27 = v21;
            v25 = v49;
            v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld-%ld-%ld", objc_msgSend(v26, "year"), objc_msgSend(v26, "month"), objc_msgSend(v26, "day")];
            [array addObject:v28];
            v24 = [v49 dateByAddingUnit:16 value:1 toDate:v22 options:0];

            v21 = v27;
            v22 = v24;
          }

          while ([v24 compare:v27] == -1);
        }

        else
        {
          v24 = v22;
          v25 = currentCalendar;
        }

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v29 = array;
        v30 = [v29 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v51;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v51 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v50 + 1) + 8 * i);
              array2 = [(NSMutableDictionary *)self->_visitsCache objectForKeyedSubscript:v34];
              if (!array2)
              {
                array2 = [MEMORY[0x1E695DF70] array];
                [(NSMutableDictionary *)self->_visitsCache setObject:array2 forKeyedSubscript:v34];
              }

              [array2 addObject:v10];
            }

            v31 = [v29 countByEnumeratingWithState:&v50 objects:v58 count:16];
          }

          while (v31);
        }

        v7 = v48;
        v9 = v47 + 1;
      }

      while (v47 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v41);
  }

  visits = v37;
  interestCopy = v38;
LABEL_39:
}

- (PLLocationOfInterestCache)init
{
  v12.receiver = self;
  v12.super_class = PLLocationOfInterestCache;
  v2 = [(PLLocationOfInterestCache *)&v12 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    visitsCache = v2->_visitsCache;
    v2->_visitsCache = dictionary;

    v5 = [MEMORY[0x1E695DFA8] set];
    allLocationsOfInterest = v2->_allLocationsOfInterest;
    v2->_allLocationsOfInterest = v5;

    v7 = [MEMORY[0x1E695DFA8] set];
    homeLocations = v2->_homeLocations;
    v2->_homeLocations = v7;

    v9 = [MEMORY[0x1E695DFA8] set];
    workLocations = v2->_workLocations;
    v2->_workLocations = v9;
  }

  return v2;
}

@end