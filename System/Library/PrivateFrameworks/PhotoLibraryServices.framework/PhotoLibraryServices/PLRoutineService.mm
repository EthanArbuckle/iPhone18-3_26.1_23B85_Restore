@interface PLRoutineService
- (BOOL)hasLocationsOfInterestInformation;
- (BOOL)isRemoteLocation:(id)a3 inDateInterval:(id)a4;
- (NSSet)allLocationsOfInterest;
- (NSSet)homeLocations;
- (NSSet)workLocations;
- (PLLocationOfInterestCache)visitsCache;
- (PLRoutineService)initWithFetchDateInterval:(id)a3;
- (id)_fetchHomeAndWorkLocationsOfInterestWithRoutineManager:(id)a3;
- (id)_fetchLocationsOfInterestWithinDateInterval:(id)a3 routineManager:(id)a4;
- (id)lastLocationOfInterestVisit;
- (id)locationOfInterestAtLocation:(id)a3;
- (id)locationOfInterestCloseToLocation:(id)a3 inDateInterval:(id)a4;
- (id)locationOfInterestVisitsAtLocation:(id)a3 inDateInterval:(id)a4;
- (id)locationsOfInterestOfType:(int64_t)a3;
- (void)_buildLocationsOfInterestCache;
- (void)_invalidateLocationsOfInterest;
- (void)_pinPendingVisits;
- (void)fetchLocationsOfInterestIfNeeded;
- (void)invalidateLocationsOfInterest;
- (void)postProcessLocationsOfInterest;
@end

@implementation PLRoutineService

- (void)_pinPendingVisits
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableSet *)self->_pendingPinningVisitIdentifiers count];
  if (self->_routineIsAvailable && v3 != 0)
  {
    v5 = v3;
    v6 = [(PLRoutineService *)self visitsCache];
    v7 = [v6 numberOfLocationsOfInterestVisits];

    v8 = v5;
    v9 = v7;
    if (v7 * 0.8 <= v5)
    {
      v10 = [(PLRoutineService *)self visitsCache];
      v11 = [v10 locationsOfInterestOfType:0];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = *v45;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v45 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = [*(*(&v44 + 1) + 8 * i) visits];
            v15 += [v18 count];
          }

          v14 = [v12 countByEnumeratingWithState:&v44 objects:v53 count:16];
        }

        while (v14);
      }

      else
      {
        v15 = 0;
      }

      v19 = [(PLRoutineService *)self visitsCache];
      v20 = [v19 locationsOfInterestOfType:1];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v21 = v20;
      v22 = [(PLRoutineServiceResult *)v21 countByEnumeratingWithState:&v40 objects:v52 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v41;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v41 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [*(*(&v40 + 1) + 8 * j) visits];
            v15 += [v26 count];
          }

          v23 = [(PLRoutineServiceResult *)v21 countByEnumeratingWithState:&v40 objects:v52 count:16];
        }

        while (v23);
      }

      if (v9 * 0.9 > v15)
      {
        v27 = PLBackendGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v49 = v8 / v9;
          v50 = 2048;
          v51 = v15 / v9;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "Safeguard Pinning. Not pinning any visits. total %f, homeWork %f", buf, 0x16u);
        }

        v28 = [MEMORY[0x1E695DFA8] set];
        pendingPinningVisitIdentifiers = self->_pendingPinningVisitIdentifiers;
        self->_pendingPinningVisitIdentifiers = v28;
LABEL_35:

        return;
      }
    }

    v12 = [getRTRoutineManagerClass() defaultManager];
    v30 = objc_alloc_init(PLRoutineServiceResult);
    v31 = self->_pendingPinningVisitIdentifiers;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __37__PLRoutineService__pinPendingVisits__block_invoke;
    v38[3] = &unk_1E7575FA8;
    v21 = v30;
    v39 = v21;
    [v12 extendLifetimeOfVisitsWithIdentifiers:v31 handler:v38];
    if ([(PLRoutineServiceResult *)v21 waitForReplyWithTimeout:2])
    {
      v32 = [(PLRoutineServiceResult *)v21 error];
      if (v32)
      {
        v33 = PLBackendGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = self->_pendingPinningVisitIdentifiers;
          [v32 localizedDescription];
          v35 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412546;
          v49 = *&v34;
          v50 = 2112;
          v51 = v35;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Could not pin visit with UUIDs %@. %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v32 = PLBackendGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Timeout pinning visits CoreRoutine", buf, 2u);
      }
    }

    v36 = [MEMORY[0x1E695DFA8] set];
    v37 = self->_pendingPinningVisitIdentifiers;
    self->_pendingPinningVisitIdentifiers = v36;

    pendingPinningVisitIdentifiers = v39;
    goto LABEL_35;
  }
}

- (id)_fetchHomeAndWorkLocationsOfInterestWithRoutineManager:(id)a3
{
  v4 = a3;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __75__PLRoutineService__fetchHomeAndWorkLocationsOfInterestWithRoutineManager___block_invoke;
  v14 = &unk_1E756DAE0;
  v15 = v4;
  v16 = self;
  v5 = v4;
  v6 = _Block_copy(&v11);
  v7 = v6[2](v6, 0);
  if (self->_routineIsAvailable)
  {
    v8 = v6[2](v6, 1);
    if (self->_routineIsAvailable)
    {
      v9 = [v7 mutableCopy];
      [v9 addObjectsFromArray:v8];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

id __75__PLRoutineService__fetchHomeAndWorkLocationsOfInterestWithRoutineManager___block_invoke(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(PLRoutineServiceResult);
  v5 = *(a1 + 32);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__PLRoutineService__fetchHomeAndWorkLocationsOfInterestWithRoutineManager___block_invoke_2;
  v19[3] = &unk_1E756DAB8;
  v6 = v4;
  v20 = v6;
  [v5 fetchLocationsOfInterestOfType:a2 withHandler:v19];
  if ([(PLRoutineServiceResult *)v6 waitForReplyWithTimeout:2])
  {
    v7 = [(PLRoutineServiceResult *)v6 error];
    if (v7)
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v7 userInfo];
        *buf = 138412546;
        v22 = v7;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "CoreRoutine error getting lois, error: %@, userInfo: %@", buf, 0x16u);
      }

      v10 = 0;
      *(*(a1 + 40) + 8) = 0;
LABEL_19:

      goto LABEL_20;
    }

    if ((a2 + 1) >= 5)
    {
      v14 = PLBackendGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v22 = a2;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Undefined LocationOfInterestType %ld. File a radar against Photos Media Mining.", buf, 0xCu);
      }

      v12 = 0;
    }

    else
    {
      v12 = qword_19C60BE20[a2 + 1] + 1;
      if (v12 > 2)
      {
        v13 = 0;
LABEL_16:
        v15 = v13;
        v10 = [(PLRoutineServiceResult *)v6 result];
        v16 = PLBackendGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v10 count];
          *buf = 134218242;
          v22 = v17;
          v23 = 2112;
          v24 = v15;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_INFO, "CoreRoutine found %lu lois for type %@", buf, 0x16u);
        }

        goto LABEL_19;
      }
    }

    v13 = off_1E75785D8[v12];
    goto LABEL_16;
  }

  v11 = PLBackendGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Timeout getting loi information from CoreRoutine", buf, 2u);
  }

  v10 = 0;
  *(*(a1 + 40) + 8) = 0;
LABEL_20:

  return v10;
}

- (id)_fetchLocationsOfInterestWithinDateInterval:(id)a3 routineManager:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PLRoutineService *)self _fetchHomeAndWorkLocationsOfInterestWithRoutineManager:v7];
  v9 = v8;
  if (self->_routineIsAvailable)
  {
    if (v8)
    {
      v10 = [v8 mutableCopy];
    }

    else
    {
      v10 = [MEMORY[0x1E695DF70] array];
    }

    v11 = v10;
    if (v6)
    {
      v12 = objc_alloc_init(PLRoutineServiceResult);
      v13 = [v6 startDate];
      v14 = [v6 endDate];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __79__PLRoutineService__fetchLocationsOfInterestWithinDateInterval_routineManager___block_invoke;
      v24[3] = &unk_1E756DAB8;
      v15 = v12;
      v25 = v15;
      [v7 fetchLocationsOfInterestVisitedBetweenStartDate:v13 endDate:v14 withHandler:v24];

      if ([(PLRoutineServiceResult *)v15 waitForReplyWithTimeout:2])
      {
        v16 = [(PLRoutineServiceResult *)v15 result];
        v17 = [(PLRoutineServiceResult *)v15 error];
        v18 = PLBackendGetLog();
        v19 = v18;
        if (v17 || !v16)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v22 = [v17 userInfo];
            *buf = 138412546;
            v27 = v17;
            v28 = 2112;
            v29 = v22;
            _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "CoreRoutine error getting lois, error: %@, userInfo: %@", buf, 0x16u);
          }

          self->_routineIsAvailable = 0;
        }

        else
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v20 = [v16 count];
            *buf = 134217984;
            v27 = v20;
            _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_INFO, "CoreRoutine found %lu lois", buf, 0xCu);
          }

          [v11 addObjectsFromArray:v16];
        }
      }

      else
      {
        v21 = PLBackendGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Timeout getting loi information from CoreRoutine", buf, 2u);
        }

        self->_routineIsAvailable = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_buildLocationsOfInterestCache
{
  v81 = *MEMORY[0x1E69E9840];
  if (self->_routineIsAvailable)
  {
    v2 = self;
    v59 = objc_alloc_init(PLLocationOfInterestCache);
    v3 = objc_autoreleasePoolPush();
    v4 = [getRTRoutineManagerClass() defaultManager];
    v5 = [(PLRoutineService *)v2 _fetchLocationsOfInterestWithinDateInterval:v2->_fetchDateInterval routineManager:v4];
    if (v2->_routineIsAvailable && v5)
    {
      v54 = v4;
      v55 = v3;
      v56 = v2;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v53 = v5;
      obj = v5;
      v60 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
      if (v60)
      {
        v58 = *v71;
        do
        {
          v6 = 0;
          do
          {
            if (*v71 != v58)
            {
              objc_enumerationMutation(obj);
            }

            v7 = *(*(&v70 + 1) + 8 * v6);
            v8 = objc_autoreleasePoolPush();
            v9 = v7;
            v10 = [v9 type];
            v11 = v10 + 1;
            context = v8;
            v69 = v6;
            if ((v10 + 1) >= 5)
            {
              v14 = v10;
              v15 = PLBackendGetLog();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                v80 = v14;
                _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Undefined LocationOfInterestType %ld. File a radar against Photos Media Mining.", buf, 0xCu);
              }

              v12 = -1;
              v13 = &PLRoutineServiceTypeRadiusOther;
            }

            else
            {
              v12 = qword_19C60BE20[v11];
              v13 = (&off_1E756DB18)[v11];
            }

            v16 = *v13;
            v17 = [v9 location];
            v18 = objc_alloc(MEMORY[0x1E6985C40]);
            [v17 latitude];
            v20 = v19;
            [v17 longitude];
            v22 = [v18 initWithLatitude:v20 longitude:v21];
            v23 = [PLLocationOfInterestLocation alloc];
            v66 = v17;
            [v17 horizontalUncertainty];
            v65 = v22;
            v24 = [(PLLocationOfInterestLocation *)v23 initWithLocation:v22 uncertainty:?];
            v25 = [v9 mapItem];
            v26 = [v25 location];

            v27 = objc_alloc(MEMORY[0x1E6985C40]);
            [v26 latitude];
            v29 = v28;
            [v26 longitude];
            v31 = [v27 initWithLatitude:v29 longitude:v30];
            v32 = [PLLocationOfInterestLocation alloc];
            v63 = v26;
            [v26 horizontalUncertainty];
            v62 = v31;
            v33 = [(PLLocationOfInterestLocation *)v32 initWithLocation:v31 uncertainty:?];
            v34 = [PLLocationOfInterest alloc];
            v35 = [v9 identifier];
            v64 = v24;
            v61 = v33;
            v36 = [(PLLocationOfInterest *)v34 initWithIdentifier:v35 locationOfInterestType:v12 typeRadius:v24 routineLocation:v33 mapItemLocation:v16];

            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v67 = v9;
            v37 = [v9 visits];
            v38 = [v37 countByEnumeratingWithState:&v74 objects:buf count:16];
            if (v38)
            {
              v39 = v38;
              v40 = *v75;
              do
              {
                for (i = 0; i != v39; ++i)
                {
                  if (*v75 != v40)
                  {
                    objc_enumerationMutation(v37);
                  }

                  v42 = *(*(&v74 + 1) + 8 * i);
                  v43 = objc_alloc(MEMORY[0x1E696AB80]);
                  v44 = [v42 entryDate];
                  v45 = [v42 exitDate];
                  v46 = [v43 initWithStartDate:v44 endDate:v45];

                  [v42 locationOfInterestConfidence];
                  v48 = v47;
                  v49 = [PLLocationOfInterestVisit alloc];
                  v50 = [v42 identifier];
                  v51 = [(PLLocationOfInterestVisit *)v49 initWithIdentifier:v50 visitInterval:v46 confidence:v48];

                  [(PLLocationOfInterest *)v36 addVisit:v51];
                }

                v39 = [v37 countByEnumeratingWithState:&v74 objects:buf count:16];
              }

              while (v39);
            }

            [(PLLocationOfInterestCache *)v59 addLocationOfInterest:v36];
            objc_autoreleasePoolPop(context);
            v6 = v69 + 1;
          }

          while (v69 + 1 != v60);
          v60 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
        }

        while (v60);
      }

      v3 = v55;
      v2 = v56;
      v5 = v53;
      v4 = v54;
    }

    objc_autoreleasePoolPop(v3);
    visitsCache = v2->_visitsCache;
    v2->_visitsCache = v59;
  }
}

- (void)_invalidateLocationsOfInterest
{
  self->_routineIsAvailable = 1;
  visitsCache = self->_visitsCache;
  self->_visitsCache = 0;

  v4 = [MEMORY[0x1E695DFA8] set];
  pendingPinningVisitIdentifiers = self->_pendingPinningVisitIdentifiers;
  self->_pendingPinningVisitIdentifiers = v4;
}

- (id)lastLocationOfInterestVisit
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PLRoutineService *)v2 visitsCache];
  v4 = [v3 lastLocationOfInterestVisit];

  objc_sync_exit(v2);

  return v4;
}

- (BOOL)isRemoteLocation:(id)a3 inDateInterval:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  obj = v8;
  [(PLRoutineService *)v8 visitsCache];
  v33 = v32 = v7;
  v31 = [v33 locationsOfInterestVisitsInDateInterval:v7];
  if ([v31 count])
  {
    v9 = [v33 earliestVisitStartDate];
    v10 = [v7 startDate];
    v11 = [v9 compare:v10];

    if (v11 != 1)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v12 = v31;
      v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v13)
      {
        v14 = 0;
        v15 = *v36;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v36 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v35 + 1) + 8 * i);
            pendingPinningVisitIdentifiers = obj->_pendingPinningVisitIdentifiers;
            v19 = [v17 identifier];
            [(NSMutableSet *)pendingPinningVisitIdentifiers addObject:v19];

            v20 = [v17 locationOfInterest];
            [v20 distanceFromLocation:v6];
            LOBYTE(v19) = v21 <= 50.0;

            v14 |= v19;
          }

          v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v13);

        if (v14)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      v24 = v12;
      v25 = [v24 count];
      if (!v25)
      {
        v22 = 0;
        goto LABEL_21;
      }

      if (v25 > 2)
      {
        goto LABEL_18;
      }

      v26 = [v24 anyObject];
      v27 = [v26 visitInterval];
      [v27 duration];
      v29 = v28;

      if (v29 < 43200.0)
      {

LABEL_18:
        v30 = 50000.0;
LABEL_19:
        v24 = [v33 closestLocationOfInterestVisitToLocation:v6 withinDistance:v32 inDateInterval:v30];
        v22 = v24 == 0;
LABEL_21:

        goto LABEL_12;
      }

      if (v29 < 172800.0)
      {
        v30 = 200000.0;
        goto LABEL_19;
      }
    }
  }

LABEL_11:
  v22 = 0;
LABEL_12:

  objc_sync_exit(obj);
  return v22;
}

- (id)locationOfInterestVisitsAtLocation:(id)a3 inDateInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(PLRoutineService *)v8 visitsCache];
  v10 = [v9 locationsOfInterestVisitsAtLocation:v6 inDateInterval:v7];

  objc_sync_exit(v8);

  return v10;
}

- (id)locationOfInterestAtLocation:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(PLRoutineService *)v5 visitsCache];
  v7 = [v6 locationOfInterestAtLocation:v4];

  objc_sync_exit(v5);

  return v7;
}

- (id)locationOfInterestCloseToLocation:(id)a3 inDateInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(PLRoutineService *)v8 visitsCache];
  v10 = [v9 closestLocationOfInterestVisitToLocation:v6 withinDistance:v7 inDateInterval:50.0];

  v11 = [v10 locationOfInterest];

  objc_sync_exit(v8);

  return v11;
}

- (id)locationsOfInterestOfType:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(PLRoutineService *)v4 visitsCache];
  v6 = [v5 locationsOfInterestOfType:a3];

  objc_sync_exit(v4);

  return v6;
}

- (NSSet)allLocationsOfInterest
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PLRoutineService *)v2 visitsCache];
  v4 = [v3 allLocationsOfInterest];

  objc_sync_exit(v2);

  return v4;
}

- (NSSet)workLocations
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PLRoutineService *)v2 visitsCache];
  v4 = [v3 workLocations];

  objc_sync_exit(v2);

  return v4;
}

- (NSSet)homeLocations
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PLRoutineService *)v2 visitsCache];
  v4 = [v3 homeLocations];

  objc_sync_exit(v2);

  return v4;
}

- (void)fetchLocationsOfInterestIfNeeded
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_visitsCache)
  {
    [(PLRoutineService *)obj _invalidateLocationsOfInterest];
    [(PLRoutineService *)obj _buildLocationsOfInterestCache];
  }

  objc_sync_exit(obj);
}

- (PLLocationOfInterestCache)visitsCache
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_visitsCache)
  {
    [(PLRoutineService *)v2 _buildLocationsOfInterestCache];
  }

  objc_sync_exit(v2);

  visitsCache = v2->_visitsCache;

  return visitsCache;
}

- (BOOL)hasLocationsOfInterestInformation
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PLRoutineService *)v2 visitsCache];
  v4 = [v3 numberOfLocationsOfInterest] != 0;

  objc_sync_exit(v2);
  return v4;
}

- (void)postProcessLocationsOfInterest
{
  obj = self;
  objc_sync_enter(obj);
  [(PLRoutineService *)obj _pinPendingVisits];
  objc_sync_exit(obj);
}

- (void)invalidateLocationsOfInterest
{
  obj = self;
  objc_sync_enter(obj);
  [(PLRoutineService *)obj _invalidateLocationsOfInterest];
  objc_sync_exit(obj);
}

- (PLRoutineService)initWithFetchDateInterval:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLRoutineService;
  v6 = [(PLRoutineService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchDateInterval, a3);
    [(PLRoutineService *)v7 _invalidateLocationsOfInterest];
  }

  return v7;
}

@end