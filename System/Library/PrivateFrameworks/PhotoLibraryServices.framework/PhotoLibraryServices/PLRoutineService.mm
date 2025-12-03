@interface PLRoutineService
- (BOOL)hasLocationsOfInterestInformation;
- (BOOL)isRemoteLocation:(id)location inDateInterval:(id)interval;
- (NSSet)allLocationsOfInterest;
- (NSSet)homeLocations;
- (NSSet)workLocations;
- (PLLocationOfInterestCache)visitsCache;
- (PLRoutineService)initWithFetchDateInterval:(id)interval;
- (id)_fetchHomeAndWorkLocationsOfInterestWithRoutineManager:(id)manager;
- (id)_fetchLocationsOfInterestWithinDateInterval:(id)interval routineManager:(id)manager;
- (id)lastLocationOfInterestVisit;
- (id)locationOfInterestAtLocation:(id)location;
- (id)locationOfInterestCloseToLocation:(id)location inDateInterval:(id)interval;
- (id)locationOfInterestVisitsAtLocation:(id)location inDateInterval:(id)interval;
- (id)locationsOfInterestOfType:(int64_t)type;
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
    visitsCache = [(PLRoutineService *)self visitsCache];
    numberOfLocationsOfInterestVisits = [visitsCache numberOfLocationsOfInterestVisits];

    v8 = v5;
    v9 = numberOfLocationsOfInterestVisits;
    if (numberOfLocationsOfInterestVisits * 0.8 <= v5)
    {
      visitsCache2 = [(PLRoutineService *)self visitsCache];
      v11 = [visitsCache2 locationsOfInterestOfType:0];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      defaultManager = v11;
      v13 = [defaultManager countByEnumeratingWithState:&v44 objects:v53 count:16];
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
              objc_enumerationMutation(defaultManager);
            }

            visits = [*(*(&v44 + 1) + 8 * i) visits];
            v15 += [visits count];
          }

          v14 = [defaultManager countByEnumeratingWithState:&v44 objects:v53 count:16];
        }

        while (v14);
      }

      else
      {
        v15 = 0;
      }

      visitsCache3 = [(PLRoutineService *)self visitsCache];
      v20 = [visitsCache3 locationsOfInterestOfType:1];

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

            visits2 = [*(*(&v40 + 1) + 8 * j) visits];
            v15 += [visits2 count];
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

    defaultManager = [getRTRoutineManagerClass() defaultManager];
    v30 = objc_alloc_init(PLRoutineServiceResult);
    v31 = self->_pendingPinningVisitIdentifiers;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __37__PLRoutineService__pinPendingVisits__block_invoke;
    v38[3] = &unk_1E7575FA8;
    v21 = v30;
    v39 = v21;
    [defaultManager extendLifetimeOfVisitsWithIdentifiers:v31 handler:v38];
    if ([(PLRoutineServiceResult *)v21 waitForReplyWithTimeout:2])
    {
      error = [(PLRoutineServiceResult *)v21 error];
      if (error)
      {
        v33 = PLBackendGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = self->_pendingPinningVisitIdentifiers;
          [error localizedDescription];
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
      error = PLBackendGetLog();
      if (os_log_type_enabled(error, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, error, OS_LOG_TYPE_ERROR, "Timeout pinning visits CoreRoutine", buf, 2u);
      }
    }

    v36 = [MEMORY[0x1E695DFA8] set];
    v37 = self->_pendingPinningVisitIdentifiers;
    self->_pendingPinningVisitIdentifiers = v36;

    pendingPinningVisitIdentifiers = v39;
    goto LABEL_35;
  }
}

- (id)_fetchHomeAndWorkLocationsOfInterestWithRoutineManager:(id)manager
{
  managerCopy = manager;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __75__PLRoutineService__fetchHomeAndWorkLocationsOfInterestWithRoutineManager___block_invoke;
  v14 = &unk_1E756DAE0;
  v15 = managerCopy;
  selfCopy = self;
  v5 = managerCopy;
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

- (id)_fetchLocationsOfInterestWithinDateInterval:(id)interval routineManager:(id)manager
{
  v30 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  managerCopy = manager;
  v8 = [(PLRoutineService *)self _fetchHomeAndWorkLocationsOfInterestWithRoutineManager:managerCopy];
  v9 = v8;
  if (self->_routineIsAvailable)
  {
    if (v8)
    {
      array = [v8 mutableCopy];
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    v11 = array;
    if (intervalCopy)
    {
      v12 = objc_alloc_init(PLRoutineServiceResult);
      startDate = [intervalCopy startDate];
      endDate = [intervalCopy endDate];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __79__PLRoutineService__fetchLocationsOfInterestWithinDateInterval_routineManager___block_invoke;
      v24[3] = &unk_1E756DAB8;
      v15 = v12;
      v25 = v15;
      [managerCopy fetchLocationsOfInterestVisitedBetweenStartDate:startDate endDate:endDate withHandler:v24];

      if ([(PLRoutineServiceResult *)v15 waitForReplyWithTimeout:2])
      {
        result = [(PLRoutineServiceResult *)v15 result];
        error = [(PLRoutineServiceResult *)v15 error];
        v18 = PLBackendGetLog();
        v19 = v18;
        if (error || !result)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            userInfo = [error userInfo];
            *buf = 138412546;
            v27 = error;
            v28 = 2112;
            v29 = userInfo;
            _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "CoreRoutine error getting lois, error: %@, userInfo: %@", buf, 0x16u);
          }

          self->_routineIsAvailable = 0;
        }

        else
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v20 = [result count];
            *buf = 134217984;
            v27 = v20;
            _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_INFO, "CoreRoutine found %lu lois", buf, 0xCu);
          }

          [v11 addObjectsFromArray:result];
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
    selfCopy = self;
    v59 = objc_alloc_init(PLLocationOfInterestCache);
    v3 = objc_autoreleasePoolPush();
    defaultManager = [getRTRoutineManagerClass() defaultManager];
    v5 = [(PLRoutineService *)selfCopy _fetchLocationsOfInterestWithinDateInterval:selfCopy->_fetchDateInterval routineManager:defaultManager];
    if (selfCopy->_routineIsAvailable && v5)
    {
      v54 = defaultManager;
      v55 = v3;
      v56 = selfCopy;
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
            type = [v9 type];
            v11 = type + 1;
            context = v8;
            v69 = v6;
            if ((type + 1) >= 5)
            {
              v14 = type;
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
            location = [v9 location];
            v18 = objc_alloc(MEMORY[0x1E6985C40]);
            [location latitude];
            v20 = v19;
            [location longitude];
            v22 = [v18 initWithLatitude:v20 longitude:v21];
            v23 = [PLLocationOfInterestLocation alloc];
            v66 = location;
            [location horizontalUncertainty];
            v65 = v22;
            v24 = [(PLLocationOfInterestLocation *)v23 initWithLocation:v22 uncertainty:?];
            mapItem = [v9 mapItem];
            location2 = [mapItem location];

            v27 = objc_alloc(MEMORY[0x1E6985C40]);
            [location2 latitude];
            v29 = v28;
            [location2 longitude];
            v31 = [v27 initWithLatitude:v29 longitude:v30];
            v32 = [PLLocationOfInterestLocation alloc];
            v63 = location2;
            [location2 horizontalUncertainty];
            v62 = v31;
            v33 = [(PLLocationOfInterestLocation *)v32 initWithLocation:v31 uncertainty:?];
            v34 = [PLLocationOfInterest alloc];
            identifier = [v9 identifier];
            v64 = v24;
            v61 = v33;
            v36 = [(PLLocationOfInterest *)v34 initWithIdentifier:identifier locationOfInterestType:v12 typeRadius:v24 routineLocation:v33 mapItemLocation:v16];

            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v67 = v9;
            visits = [v9 visits];
            v38 = [visits countByEnumeratingWithState:&v74 objects:buf count:16];
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
                    objc_enumerationMutation(visits);
                  }

                  v42 = *(*(&v74 + 1) + 8 * i);
                  v43 = objc_alloc(MEMORY[0x1E696AB80]);
                  entryDate = [v42 entryDate];
                  exitDate = [v42 exitDate];
                  v46 = [v43 initWithStartDate:entryDate endDate:exitDate];

                  [v42 locationOfInterestConfidence];
                  v48 = v47;
                  v49 = [PLLocationOfInterestVisit alloc];
                  identifier2 = [v42 identifier];
                  v51 = [(PLLocationOfInterestVisit *)v49 initWithIdentifier:identifier2 visitInterval:v46 confidence:v48];

                  [(PLLocationOfInterest *)v36 addVisit:v51];
                }

                v39 = [visits countByEnumeratingWithState:&v74 objects:buf count:16];
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
      selfCopy = v56;
      v5 = v53;
      defaultManager = v54;
    }

    objc_autoreleasePoolPop(v3);
    visitsCache = selfCopy->_visitsCache;
    selfCopy->_visitsCache = v59;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  visitsCache = [(PLRoutineService *)selfCopy visitsCache];
  lastLocationOfInterestVisit = [visitsCache lastLocationOfInterestVisit];

  objc_sync_exit(selfCopy);

  return lastLocationOfInterestVisit;
}

- (BOOL)isRemoteLocation:(id)location inDateInterval:(id)interval
{
  v40 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  intervalCopy = interval;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  [(PLRoutineService *)selfCopy visitsCache];
  v33 = v32 = intervalCopy;
  v31 = [v33 locationsOfInterestVisitsInDateInterval:intervalCopy];
  if ([v31 count])
  {
    earliestVisitStartDate = [v33 earliestVisitStartDate];
    startDate = [intervalCopy startDate];
    v11 = [earliestVisitStartDate compare:startDate];

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
            identifier = [v17 identifier];
            [(NSMutableSet *)pendingPinningVisitIdentifiers addObject:identifier];

            locationOfInterest = [v17 locationOfInterest];
            [locationOfInterest distanceFromLocation:locationCopy];
            LOBYTE(identifier) = v21 <= 50.0;

            v14 |= identifier;
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

      anyObject = [v24 anyObject];
      visitInterval = [anyObject visitInterval];
      [visitInterval duration];
      v29 = v28;

      if (v29 < 43200.0)
      {

LABEL_18:
        v30 = 50000.0;
LABEL_19:
        v24 = [v33 closestLocationOfInterestVisitToLocation:locationCopy withinDistance:v32 inDateInterval:v30];
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

- (id)locationOfInterestVisitsAtLocation:(id)location inDateInterval:(id)interval
{
  locationCopy = location;
  intervalCopy = interval;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  visitsCache = [(PLRoutineService *)selfCopy visitsCache];
  v10 = [visitsCache locationsOfInterestVisitsAtLocation:locationCopy inDateInterval:intervalCopy];

  objc_sync_exit(selfCopy);

  return v10;
}

- (id)locationOfInterestAtLocation:(id)location
{
  locationCopy = location;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  visitsCache = [(PLRoutineService *)selfCopy visitsCache];
  v7 = [visitsCache locationOfInterestAtLocation:locationCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)locationOfInterestCloseToLocation:(id)location inDateInterval:(id)interval
{
  locationCopy = location;
  intervalCopy = interval;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  visitsCache = [(PLRoutineService *)selfCopy visitsCache];
  v10 = [visitsCache closestLocationOfInterestVisitToLocation:locationCopy withinDistance:intervalCopy inDateInterval:50.0];

  locationOfInterest = [v10 locationOfInterest];

  objc_sync_exit(selfCopy);

  return locationOfInterest;
}

- (id)locationsOfInterestOfType:(int64_t)type
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  visitsCache = [(PLRoutineService *)selfCopy visitsCache];
  v6 = [visitsCache locationsOfInterestOfType:type];

  objc_sync_exit(selfCopy);

  return v6;
}

- (NSSet)allLocationsOfInterest
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  visitsCache = [(PLRoutineService *)selfCopy visitsCache];
  allLocationsOfInterest = [visitsCache allLocationsOfInterest];

  objc_sync_exit(selfCopy);

  return allLocationsOfInterest;
}

- (NSSet)workLocations
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  visitsCache = [(PLRoutineService *)selfCopy visitsCache];
  workLocations = [visitsCache workLocations];

  objc_sync_exit(selfCopy);

  return workLocations;
}

- (NSSet)homeLocations
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  visitsCache = [(PLRoutineService *)selfCopy visitsCache];
  homeLocations = [visitsCache homeLocations];

  objc_sync_exit(selfCopy);

  return homeLocations;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_visitsCache)
  {
    [(PLRoutineService *)selfCopy _buildLocationsOfInterestCache];
  }

  objc_sync_exit(selfCopy);

  visitsCache = selfCopy->_visitsCache;

  return visitsCache;
}

- (BOOL)hasLocationsOfInterestInformation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  visitsCache = [(PLRoutineService *)selfCopy visitsCache];
  v4 = [visitsCache numberOfLocationsOfInterest] != 0;

  objc_sync_exit(selfCopy);
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

- (PLRoutineService)initWithFetchDateInterval:(id)interval
{
  intervalCopy = interval;
  v9.receiver = self;
  v9.super_class = PLRoutineService;
  v6 = [(PLRoutineService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchDateInterval, interval);
    [(PLRoutineService *)v7 _invalidateLocationsOfInterest];
  }

  return v7;
}

@end