@interface PPTripCandidate
- (BOOL)canBeMergedWithTripCandidate:(id)candidate supportsGroundTransportEvents:(BOOL)events;
- (BOOL)shouldPromoteToTripEvent;
- (PPTripCandidate)initWithTripCandidateA:(id)a andTripCandidateB:(id)b;
- (id)allEvents;
- (id)eventsTimeRange;
- (id)partFromEvents:(uint64_t)events tripMode:(void *)mode takingLocationFromEvent:;
- (id)reverseGeocodedLocation:(void *)location;
- (id)tripEventFromCandidate;
@end

@implementation PPTripCandidate

- (id)tripEventFromCandidate
{
  v60 = *MEMORY[0x277D85DE8];
  allEvents = [(PPTripCandidate *)self allEvents];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v6 = allEvents;
  v7 = [v6 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v7)
  {
    v8 = v7;
    LOBYTE(v9) = 0;
    v53 = v6;
    v54 = *v56;
    v50 = v5;
    do
    {
      v10 = 0;
      do
      {
        if (*v56 != v54)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v55 + 1) + 8 * v10);
        pp_suggestedCategory = [v11 pp_suggestedCategory];
        v13 = pp_suggestedCategory;
        if (v9)
        {
          v14 = v9;
          if (v9 == 1 && pp_suggestedCategory == 1)
          {
            v15 = [v6 indexOfObject:v11] - 1;
            if (v15 >= 0)
            {
              v16 = [v6 objectAtIndexedSubscript:v15];
              v17 = v16;
              if (self)
              {
                v18 = v16;
                startDate = [v11 startDate];
                endDate = [v18 endDate];

                [startDate timeIntervalSinceDate:endDate];
                v22 = v21;
              }

              else
              {
                v22 = 0.0;
              }

              if (v22 / 60.0 / 60.0 <= 24.0)
              {
                [v4 addObject:v11];
              }

              else
              {
                v52 = [(PPTripCandidate *)self partFromEvents:v4 tripMode:1 takingLocationFromEvent:v11];
                [v5 addObject:?];
                v23 = objc_opt_new();

                v51 = v23;
                [v23 addObject:v11];
                endDate2 = [v17 endDate];
                startDate2 = [v11 startDate];
                v26 = v11;
                v27 = endDate2;
                v28 = startDate2;
                if (self)
                {
                  structuredLocation = [v26 structuredLocation];
                  geoLocation = [structuredLocation geoLocation];
                  v31 = [PPTripCandidate reverseGeocodedLocation:geoLocation];

                  v32 = objc_alloc(MEMORY[0x277D3A570]);
                  v33 = v32;
                  if (v31)
                  {
                    v34 = [v32 initWithStartDate:v27 endDate:v28 eventIdentifiers:MEMORY[0x277CBEBF8] mode:2 location:v31 fallbackLocationString:0];
                  }

                  else
                  {
                    pp_locationString = [v26 pp_locationString];
                    v34 = [v33 initWithStartDate:v27 endDate:v28 eventIdentifiers:MEMORY[0x277CBEBF8] mode:2 location:0 fallbackLocationString:pp_locationString];
                  }
                }

                else
                {
                  v34 = 0;
                }

                v5 = v50;

                [v50 addObject:v34];
                v4 = v51;
              }

              v6 = v53;
            }

            v9 = 1;
          }

          else
          {
            lastObject = [v4 lastObject];
            v36 = [(PPTripCandidate *)self partFromEvents:v4 tripMode:v14 takingLocationFromEvent:lastObject];

            [v5 addObject:v36];
            v37 = objc_opt_new();

            [v37 addObject:v11];
            if (self && (v13 - 1) <= 9)
            {
              v9 = byte_2324187DA[(v13 - 1)];
            }

            else
            {
              v9 = 0;
            }

            v4 = v37;
            v6 = v53;
          }
        }

        else
        {
          if (self && (pp_suggestedCategory - 1) <= 9)
          {
            v9 = byte_2324187DA[(pp_suggestedCategory - 1)];
          }

          else
          {
            v9 = 0;
          }

          [v4 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v39 = [v6 countByEnumeratingWithState:&v55 objects:v59 count:16];
      v8 = v39;
    }

    while (v39);
  }

  else
  {
    v9 = 0;
  }

  if ([v4 count])
  {
    lastObject2 = [v4 lastObject];
    v41 = [(PPTripCandidate *)self partFromEvents:v4 tripMode:v9 takingLocationFromEvent:lastObject2];

    [v5 addObject:v41];
  }

  v42 = objc_alloc(MEMORY[0x277D3A560]);
  firstObject = [v6 firstObject];
  startDate3 = [firstObject startDate];
  lastObject3 = [v6 lastObject];
  endDate3 = [lastObject3 endDate];
  v47 = [v42 initWithStartDate:startDate3 endDate:endDate3 tripParts:v5];

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

- (id)allEvents
{
  selfCopy = self;
  if (self)
  {
    v2 = objc_opt_new();
    flights = [selfCopy flights];
    [v2 addObjectsFromArray:flights];

    hotels = [selfCopy hotels];
    [v2 addObjectsFromArray:hotels];

    others = [selfCopy others];
    [v2 addObjectsFromArray:others];

    groundTransports = [selfCopy groundTransports];
    [v2 addObjectsFromArray:groundTransports];

    selfCopy = [v2 sortedArrayUsingSelector:sel_compareStartDateWithEvent_];
  }

  return selfCopy;
}

- (id)partFromEvents:(uint64_t)events tripMode:(void *)mode takingLocationFromEvent:
{
  v7 = a2;
  modeCopy = mode;
  v9 = modeCopy;
  if (self)
  {
    structuredLocation = [modeCopy structuredLocation];
    geoLocation = [structuredLocation geoLocation];
    v12 = [PPTripCandidate reverseGeocodedLocation:geoLocation];

    v13 = objc_alloc(MEMORY[0x277D3A570]);
    firstObject = [v7 firstObject];
    startDate = [firstObject startDate];
    lastObject = [v7 lastObject];
    endDate = [lastObject endDate];
    v18 = [v7 valueForKey:@"eventIdentifier"];
    if (v12)
    {
      v19 = [v13 initWithStartDate:startDate endDate:endDate eventIdentifiers:v18 mode:events location:v12 fallbackLocationString:0];
    }

    else
    {
      [v9 pp_locationString];
      v20 = v22 = v9;
      v19 = [v13 initWithStartDate:startDate endDate:endDate eventIdentifiers:v18 mode:events location:0 fallbackLocationString:v20];

      v9 = v22;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)reverseGeocodedLocation:(void *)location
{
  locationCopy = location;
  if (locationCopy)
  {
    v3 = objc_opt_new();
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__9191;
    v17 = __Block_byref_object_dispose__9192;
    v18 = 0;
    v4 = dispatch_semaphore_create(0);
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __43__PPTripCandidate_reverseGeocodedLocation___block_invoke;
    v10 = &unk_2789760B8;
    v12 = &v13;
    v5 = v4;
    v11 = v5;
    [v3 reverseGeocodeLocation:locationCopy completionHandler:&v7];
    if ([MEMORY[0x277D425A0] waitForSemaphore:v5 timeoutSeconds:{1.0, v7, v8, v9, v10}] == 1)
    {
      v2 = 0;
    }

    else
    {
      v2 = v14[5];
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

intptr_t __43__PPTripCandidate_reverseGeocodedLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

- (BOOL)shouldPromoteToTripEvent
{
  flights = [(PPTripCandidate *)self flights];
  if ([flights count] != 1)
  {

    goto LABEL_7;
  }

  hotels = [(PPTripCandidate *)self hotels];
  v5 = [hotels count];

  if (v5)
  {
LABEL_7:
    flights2 = [(PPTripCandidate *)self flights];
    firstObject = [flights2 firstObject];
    pp_airports = [firstObject pp_airports];
    first = [pp_airports first];

    flights3 = [(PPTripCandidate *)self flights];
    lastObject = [flights3 lastObject];
    pp_airports2 = [lastObject pp_airports];
    second = [pp_airports2 second];

    flights4 = [(PPTripCandidate *)self flights];
    if ([flights4 count] >= 2 && first && second && !-[NSObject isEqualToPPFlightAirport:](first, "isEqualToPPFlightAirport:", second))
    {
      hotels2 = [(PPTripCandidate *)self hotels];
      v20 = [hotels2 count];

      if (!v20)
      {
        v17 = pp_events_log_handle();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_14;
        }

        v24 = 0;
        v21 = "[TripCandidate shouldPromoteToTripEvent] discarding candidate: Flight round trip doesn't start and end at the same place.";
        v22 = &v24;
        goto LABEL_22;
      }
    }

    else
    {
    }

    [(PPTripCandidate *)self eventsTimeRange];
    if (v16 / 60.0 / 60.0 / 24.0 <= 120.0)
    {
      v7 = 1;
      goto LABEL_16;
    }

    v17 = pp_events_log_handle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
LABEL_14:

      v7 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v23 = 0;
    v21 = "[TripCandidate shouldPromoteToTripEvent] discarding candidate: Candidate longer than 2 months";
    v22 = &v23;
LABEL_22:
    _os_log_debug_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEBUG, v21, v22, 2u);
    goto LABEL_14;
  }

  first = pp_events_log_handle();
  if (os_log_type_enabled(first, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, first, OS_LOG_TYPE_DEBUG, "[TripCandidate shouldPromoteToTripEvent] discarding candidate: Single flight with no hotel", buf, 2u);
  }

  v7 = 0;
LABEL_17:

  return v7;
}

- (id)eventsTimeRange
{
  selfCopy = self;
  if (self)
  {
    allEvents = [(PPTripCandidate *)self allEvents];
    firstObject = [allEvents firstObject];
    startDate = [firstObject startDate];

    allEvents2 = [(PPTripCandidate *)selfCopy allEvents];
    lastObject = [allEvents2 lastObject];
    endDate = [lastObject endDate];

    [startDate timeIntervalSinceReferenceDate];
    selfCopy = v8;
    [endDate timeIntervalSinceDate:startDate];
  }

  return selfCopy;
}

- (BOOL)canBeMergedWithTripCandidate:(id)candidate supportsGroundTransportEvents:(BOOL)events
{
  eventsCopy = events;
  v59 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  flights = [(PPTripCandidate *)self flights];
  v10 = [flights count];
  if (v10)
  {
    hotels = [candidateCopy hotels];
    v11 = [hotels count];
    v12 = v11 != 0;
    if (v11 || !eventsCopy)
    {
      goto LABEL_11;
    }
  }

  else if (!eventsCopy)
  {
    v12 = 0;
    goto LABEL_12;
  }

  hotels2 = [candidateCopy hotels];
  if (![hotels2 count])
  {

    v12 = 0;
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  groundTransports = [(PPTripCandidate *)self groundTransports];
  v12 = [groundTransports count] != 0;

  if (v10)
  {
LABEL_11:
  }

LABEL_12:

  flights2 = [(PPTripCandidate *)self flights];
  v15 = [flights2 count];
  if (!v15)
  {
    v52 = v12;
    goto LABEL_17;
  }

  hotels = [candidateCopy others];
  if (![hotels count])
  {
    v52 = v12;
LABEL_17:
    hotels3 = [(PPTripCandidate *)self hotels];
    v17 = [hotels3 count];
    if (v17)
    {
      groundTransports = [candidateCopy others];
      v18 = [groundTransports count];
      v19 = v18 != 0;
      if (v18 || !eventsCopy)
      {
        goto LABEL_27;
      }
    }

    else if (!eventsCopy)
    {
      v19 = 0;
      goto LABEL_28;
    }

    others = [candidateCopy others];
    if ([others count])
    {
      [(PPTripCandidate *)self groundTransports];
      v21 = v51 = candidateCopy;
      v19 = [v21 count] != 0;

      candidateCopy = v51;
      if (!v17)
      {
LABEL_28:

        if (v15)
        {

          v12 = v52;
          if (v19)
          {
            goto LABEL_30;
          }
        }

        else
        {

          v12 = v52;
          if (v19)
          {
            goto LABEL_30;
          }
        }

        v26 = 0;
        goto LABEL_42;
      }
    }

    else
    {

      v19 = 0;
      if (!v17)
      {
        goto LABEL_28;
      }
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_30:
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  others2 = [candidateCopy others];
  v23 = [others2 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v54;
    v26 = 1;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v54 != v25)
        {
          objc_enumerationMutation(others2);
        }

        structuredLocation = [*(*(&v53 + 1) + 8 * i) structuredLocation];
        geoLocation = [structuredLocation geoLocation];
        v30 = geoLocation != 0;

        v26 &= v30;
      }

      v24 = [others2 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v24);
  }

  else
  {
    v26 = 1;
  }

LABEL_42:
  if ((v12 | v26))
  {
    v31 = candidateCopy;
    if (self)
    {
      eventsTimeRange = [(PPTripCandidate *)self eventsTimeRange];
      v34 = v33;
      v61.location = [(PPTripCandidate *)v31 eventsTimeRange];
      v61.length = v35;
      v60.location = eventsTimeRange;
      v60.length = v34;
      if (NSIntersectionRange(v60, v61).length)
      {
        startDate = pp_events_log_handle();
        if (os_log_type_enabled(startDate, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_23224A000, startDate, OS_LOG_TYPE_DEBUG, "[TripCandidate canBeMergedWithTripCandidate] Found events that fits into other events", buf, 2u);
        }

        v37 = 1;
      }

      else
      {
        allEvents = [(PPTripCandidate *)self allEvents];
        firstObject = [allEvents firstObject];
        startDate = [firstObject startDate];

        allEvents2 = [(PPTripCandidate *)self allEvents];
        v41 = [allEvents2 _pas_leftFoldWithInitialObject:0 accumulate:&__block_literal_global_9202];

        allEvents3 = [(PPTripCandidate *)v31 allEvents];
        firstObject2 = [allEvents3 firstObject];
        startDate2 = [firstObject2 startDate];

        allEvents4 = [(PPTripCandidate *)v31 allEvents];
        v46 = [allEvents4 _pas_leftFoldWithInitialObject:0 accumulate:&__block_literal_global_9202];

        [v41 timeIntervalSinceDate:startDate2];
        v37 = 1;
        if (fabs(v47) >= 28800.0)
        {
          [startDate timeIntervalSinceDate:v46];
          if (fabs(v48) >= 28800.0)
          {
            v37 = 0;
          }
        }
      }
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  v49 = *MEMORY[0x277D85DE8];
  return v37;
}

id __37__PPTripCandidate_lastDateForEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (!v4 || ([v5 endDate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v4, "compare:", v7), v7, v8 == -1))
  {
    v9 = [v6 endDate];
  }

  else
  {
    v9 = v4;
  }

  v10 = v9;

  return v10;
}

- (PPTripCandidate)initWithTripCandidateA:(id)a andTripCandidateB:(id)b
{
  aCopy = a;
  bCopy = b;
  v31.receiver = self;
  v31.super_class = PPTripCandidate;
  v8 = [(PPTripCandidate *)&v31 init];
  if (v8)
  {
    v9 = objc_opt_new();
    flights = [aCopy flights];

    if (flights)
    {
      flights2 = [aCopy flights];
      [v9 addObjectsFromArray:flights2];
    }

    flights3 = [bCopy flights];

    if (flights3)
    {
      flights4 = [bCopy flights];
      [v9 addObjectsFromArray:flights4];
    }

    objc_storeStrong(&v8->_flights, v9);
    v14 = objc_opt_new();
    hotels = [aCopy hotels];

    if (hotels)
    {
      hotels2 = [aCopy hotels];
      [v14 addObjectsFromArray:hotels2];
    }

    hotels3 = [bCopy hotels];

    if (hotels3)
    {
      hotels4 = [bCopy hotels];
      [v14 addObjectsFromArray:hotels4];
    }

    objc_storeStrong(&v8->_hotels, v14);
    v19 = objc_opt_new();
    others = [aCopy others];

    if (others)
    {
      others2 = [aCopy others];
      [v19 addObjectsFromArray:others2];
    }

    others3 = [bCopy others];

    if (others3)
    {
      others4 = [bCopy others];
      [v19 addObjectsFromArray:others4];
    }

    objc_storeStrong(&v8->_others, v19);
    v24 = objc_opt_new();
    groundTransports = [aCopy groundTransports];

    if (groundTransports)
    {
      groundTransports2 = [aCopy groundTransports];
      [(NSArray *)v24 addObjectsFromArray:groundTransports2];
    }

    groundTransports3 = [bCopy groundTransports];

    if (groundTransports3)
    {
      groundTransports4 = [bCopy groundTransports];
      [(NSArray *)v24 addObjectsFromArray:groundTransports4];
    }

    groundTransports = v8->_groundTransports;
    v8->_groundTransports = v24;
  }

  return v8;
}

@end