@interface PLLocationOfInterestCache
- (PLLocationOfInterestCache)init;
- (id)closestLocationOfInterestVisitToLocation:(id)a3 withinDistance:(double)a4 inDateInterval:(id)a5;
- (id)locationOfInterestAtLocation:(id)a3;
- (id)locationsOfInterestOfType:(int64_t)a3;
- (id)locationsOfInterestVisitsAtLocation:(id)a3 inDateInterval:(id)a4;
- (unint64_t)numberOfLocationsOfInterest;
- (void)addLocationOfInterest:(id)a3;
@end

@implementation PLLocationOfInterestCache

- (unint64_t)numberOfLocationsOfInterest
{
  v2 = [(PLLocationOfInterestCache *)self allLocationsOfInterest];
  v3 = [v2 count];

  return v3;
}

- (id)locationsOfInterestVisitsAtLocation:(id)a3 inDateInterval:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = v6;
  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [v8 startDate];
  v11 = [v9 pl_validDateForDate:v10];

  v12 = [v8 endDate];
  v13 = [v9 pl_validDateForDate:v12];

  v37 = v11;
  v14 = [v9 pl_startOfDayForDate:v11];
  v15 = [MEMORY[0x1E695DF70] array];
  if ([v14 compare:v13] == -1)
  {
    v39 = v13;
    do
    {
      v17 = [v9 components:28 fromDate:v14];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld-%ld-%ld", objc_msgSend(v17, "year"), objc_msgSend(v17, "month"), objc_msgSend(v17, "day")];
      [v15 addObject:v18];
      v16 = [v9 dateByAddingUnit:16 value:1 toDate:v14 options:0];

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
  obj = v15;
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
              v26 = [v25 visitInterval];
              v27 = [v26 intersectsDateInterval:v8];

              if (v27)
              {
                if (v5)
                {
                  v28 = [v25 locationOfInterest];
                  v29 = v28;
                  if (v28)
                  {
                    [v28 centerDistanceFromLocation:v5];
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

- (id)locationOfInterestAtLocation:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PLLocationOfInterestCache.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"location != nil"}];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(PLLocationOfInterestCache *)self allLocationsOfInterest];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        [v12 centerDistanceFromLocation:v5];
        if (v13 <= 2.22044605e-16)
        {
          v14 = v12;

          v9 = v14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)closestLocationOfInterestVisitToLocation:(id)a3 withinDistance:(double)a4 inDateInterval:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PLLocationOfInterestCache.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"location != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"PLLocationOfInterestCache.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"dateInterval != nil"}];

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
        v19 = [v18 locationOfInterest];
        [v19 distanceFromLocation:v9];
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
    if (v14 && v16 - a4 <= 2.22044605e-16)
    {
      v14 = v14;
      v13 = v14;
    }
  }

  return v13;
}

- (id)locationsOfInterestOfType:(int64_t)a3
{
  if (a3 == -1)
  {
    v3 = [MEMORY[0x1E695DFD8] set];
  }

  else if (a3 == 1)
  {
    v3 = [(PLLocationOfInterestCache *)self workLocations];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(PLLocationOfInterestCache *)self homeLocations];
  }

  return v3;
}

- (void)addLocationOfInterest:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"PLLocationOfInterestCache.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"locationOfInterest != nil"}];
  }

  v6 = [v5 visits];
  if (([(NSMutableSet *)self->_allLocationsOfInterest containsObject:v5]& 1) != 0)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v61 = v5;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "[RoutineCache] LOI already existing in cache. %@", buf, 0xCu);
    }

    goto LABEL_39;
  }

  self->_numberOfLocationsOfInterestVisits += [v6 count];
  [(NSMutableSet *)self->_allLocationsOfInterest addObject:v5];
  if (![v5 type])
  {
    v8 = 24;
    goto LABEL_10;
  }

  if ([v5 type] == 1)
  {
    v8 = 32;
LABEL_10:
    [*(&self->super.isa + v8) addObject:v5];
  }

  v37 = v6;
  v38 = v5;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v6;
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
        v11 = [v10 visitInterval];
        v12 = [v11 startDate];
        v46 = v11;
        v13 = [v11 endDate];
        earliestVisitStartDate = self->_earliestVisitStartDate;
        if (!earliestVisitStartDate || [(NSDate *)earliestVisitStartDate compare:v12]== NSOrderedDescending)
        {
          objc_storeStrong(&self->_earliestVisitStartDate, v12);
        }

        v47 = v9;
        v45 = v12;
        if (!self->_lastLocationOfInterestVisit || [v7 compare:v13]== -1)
        {
          objc_storeStrong(&self->_lastLocationOfInterestVisit, v10);
          v15 = v13;

          v48 = v15;
        }

        else
        {
          v48 = v7;
        }

        v44 = v13;
        v16 = [v10 visitInterval];
        v17 = [MEMORY[0x1E695DEE8] currentCalendar];
        v18 = [v16 startDate];
        v19 = [v17 pl_validDateForDate:v18];

        v43 = v16;
        v20 = [v16 endDate];
        v21 = [v17 pl_validDateForDate:v20];

        v49 = v17;
        v42 = v19;
        v22 = [v17 pl_startOfDayForDate:v19];
        v23 = [MEMORY[0x1E695DF70] array];
        if ([v22 compare:v21] == -1)
        {
          v25 = v17;
          do
          {
            v26 = [v25 components:28 fromDate:v22];
            v27 = v21;
            v25 = v49;
            v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld-%ld-%ld", objc_msgSend(v26, "year"), objc_msgSend(v26, "month"), objc_msgSend(v26, "day")];
            [v23 addObject:v28];
            v24 = [v49 dateByAddingUnit:16 value:1 toDate:v22 options:0];

            v21 = v27;
            v22 = v24;
          }

          while ([v24 compare:v27] == -1);
        }

        else
        {
          v24 = v22;
          v25 = v17;
        }

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v29 = v23;
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
              v35 = [(NSMutableDictionary *)self->_visitsCache objectForKeyedSubscript:v34];
              if (!v35)
              {
                v35 = [MEMORY[0x1E695DF70] array];
                [(NSMutableDictionary *)self->_visitsCache setObject:v35 forKeyedSubscript:v34];
              }

              [v35 addObject:v10];
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

  v6 = v37;
  v5 = v38;
LABEL_39:
}

- (PLLocationOfInterestCache)init
{
  v12.receiver = self;
  v12.super_class = PLLocationOfInterestCache;
  v2 = [(PLLocationOfInterestCache *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    visitsCache = v2->_visitsCache;
    v2->_visitsCache = v3;

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