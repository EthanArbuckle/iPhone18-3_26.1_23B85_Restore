@interface PPTripCandidate
- (BOOL)canBeMergedWithTripCandidate:(id)a3 supportsGroundTransportEvents:(BOOL)a4;
- (BOOL)shouldPromoteToTripEvent;
- (PPTripCandidate)initWithTripCandidateA:(id)a3 andTripCandidateB:(id)a4;
- (id)allEvents;
- (id)eventsTimeRange;
- (id)partFromEvents:(uint64_t)a3 tripMode:(void *)a4 takingLocationFromEvent:;
- (id)reverseGeocodedLocation:(void *)a1;
- (id)tripEventFromCandidate;
@end

@implementation PPTripCandidate

- (id)tripEventFromCandidate
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = [(PPTripCandidate *)self allEvents];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v6 = v3;
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
        v12 = [v11 pp_suggestedCategory];
        v13 = v12;
        if (v9)
        {
          v14 = v9;
          if (v9 == 1 && v12 == 1)
          {
            v15 = [v6 indexOfObject:v11] - 1;
            if (v15 >= 0)
            {
              v16 = [v6 objectAtIndexedSubscript:v15];
              v17 = v16;
              if (self)
              {
                v18 = v16;
                v19 = [v11 startDate];
                v20 = [v18 endDate];

                [v19 timeIntervalSinceDate:v20];
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
                v24 = [v17 endDate];
                v25 = [v11 startDate];
                v26 = v11;
                v27 = v24;
                v28 = v25;
                if (self)
                {
                  v29 = [v26 structuredLocation];
                  v30 = [v29 geoLocation];
                  v31 = [PPTripCandidate reverseGeocodedLocation:v30];

                  v32 = objc_alloc(MEMORY[0x277D3A570]);
                  v33 = v32;
                  if (v31)
                  {
                    v34 = [v32 initWithStartDate:v27 endDate:v28 eventIdentifiers:MEMORY[0x277CBEBF8] mode:2 location:v31 fallbackLocationString:0];
                  }

                  else
                  {
                    v38 = [v26 pp_locationString];
                    v34 = [v33 initWithStartDate:v27 endDate:v28 eventIdentifiers:MEMORY[0x277CBEBF8] mode:2 location:0 fallbackLocationString:v38];
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
            v35 = [v4 lastObject];
            v36 = [(PPTripCandidate *)self partFromEvents:v4 tripMode:v14 takingLocationFromEvent:v35];

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
          if (self && (v12 - 1) <= 9)
          {
            v9 = byte_2324187DA[(v12 - 1)];
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
    v40 = [v4 lastObject];
    v41 = [(PPTripCandidate *)self partFromEvents:v4 tripMode:v9 takingLocationFromEvent:v40];

    [v5 addObject:v41];
  }

  v42 = objc_alloc(MEMORY[0x277D3A560]);
  v43 = [v6 firstObject];
  v44 = [v43 startDate];
  v45 = [v6 lastObject];
  v46 = [v45 endDate];
  v47 = [v42 initWithStartDate:v44 endDate:v46 tripParts:v5];

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

- (id)allEvents
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = [v1 flights];
    [v2 addObjectsFromArray:v3];

    v4 = [v1 hotels];
    [v2 addObjectsFromArray:v4];

    v5 = [v1 others];
    [v2 addObjectsFromArray:v5];

    v6 = [v1 groundTransports];
    [v2 addObjectsFromArray:v6];

    v1 = [v2 sortedArrayUsingSelector:sel_compareStartDateWithEvent_];
  }

  return v1;
}

- (id)partFromEvents:(uint64_t)a3 tripMode:(void *)a4 takingLocationFromEvent:
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a1)
  {
    v10 = [v8 structuredLocation];
    v11 = [v10 geoLocation];
    v12 = [PPTripCandidate reverseGeocodedLocation:v11];

    v13 = objc_alloc(MEMORY[0x277D3A570]);
    v14 = [v7 firstObject];
    v15 = [v14 startDate];
    v16 = [v7 lastObject];
    v17 = [v16 endDate];
    v18 = [v7 valueForKey:@"eventIdentifier"];
    if (v12)
    {
      v19 = [v13 initWithStartDate:v15 endDate:v17 eventIdentifiers:v18 mode:a3 location:v12 fallbackLocationString:0];
    }

    else
    {
      [v9 pp_locationString];
      v20 = v22 = v9;
      v19 = [v13 initWithStartDate:v15 endDate:v17 eventIdentifiers:v18 mode:a3 location:0 fallbackLocationString:v20];

      v9 = v22;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)reverseGeocodedLocation:(void *)a1
{
  v1 = a1;
  if (v1)
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
    [v3 reverseGeocodeLocation:v1 completionHandler:&v7];
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
  v3 = [(PPTripCandidate *)self flights];
  if ([v3 count] != 1)
  {

    goto LABEL_7;
  }

  v4 = [(PPTripCandidate *)self hotels];
  v5 = [v4 count];

  if (v5)
  {
LABEL_7:
    v8 = [(PPTripCandidate *)self flights];
    v9 = [v8 firstObject];
    v10 = [v9 pp_airports];
    v6 = [v10 first];

    v11 = [(PPTripCandidate *)self flights];
    v12 = [v11 lastObject];
    v13 = [v12 pp_airports];
    v14 = [v13 second];

    v15 = [(PPTripCandidate *)self flights];
    if ([v15 count] >= 2 && v6 && v14 && !-[NSObject isEqualToPPFlightAirport:](v6, "isEqualToPPFlightAirport:", v14))
    {
      v19 = [(PPTripCandidate *)self hotels];
      v20 = [v19 count];

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

  v6 = pp_events_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "[TripCandidate shouldPromoteToTripEvent] discarding candidate: Single flight with no hotel", buf, 2u);
  }

  v7 = 0;
LABEL_17:

  return v7;
}

- (id)eventsTimeRange
{
  v1 = a1;
  if (a1)
  {
    v2 = [(PPTripCandidate *)a1 allEvents];
    v3 = [v2 firstObject];
    v4 = [v3 startDate];

    v5 = [(PPTripCandidate *)v1 allEvents];
    v6 = [v5 lastObject];
    v7 = [v6 endDate];

    [v4 timeIntervalSinceReferenceDate];
    v1 = v8;
    [v7 timeIntervalSinceDate:v4];
  }

  return v1;
}

- (BOOL)canBeMergedWithTripCandidate:(id)a3 supportsGroundTransportEvents:(BOOL)a4
{
  v6 = a4;
  v59 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(PPTripCandidate *)self flights];
  v10 = [v9 count];
  if (v10)
  {
    v4 = [v8 hotels];
    v11 = [v4 count];
    v12 = v11 != 0;
    if (v11 || !v6)
    {
      goto LABEL_11;
    }
  }

  else if (!v6)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v13 = [v8 hotels];
  if (![v13 count])
  {

    v12 = 0;
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v5 = [(PPTripCandidate *)self groundTransports];
  v12 = [v5 count] != 0;

  if (v10)
  {
LABEL_11:
  }

LABEL_12:

  v14 = [(PPTripCandidate *)self flights];
  v15 = [v14 count];
  if (!v15)
  {
    v52 = v12;
    goto LABEL_17;
  }

  v4 = [v8 others];
  if (![v4 count])
  {
    v52 = v12;
LABEL_17:
    v16 = [(PPTripCandidate *)self hotels];
    v17 = [v16 count];
    if (v17)
    {
      v5 = [v8 others];
      v18 = [v5 count];
      v19 = v18 != 0;
      if (v18 || !v6)
      {
        goto LABEL_27;
      }
    }

    else if (!v6)
    {
      v19 = 0;
      goto LABEL_28;
    }

    v20 = [v8 others];
    if ([v20 count])
    {
      [(PPTripCandidate *)self groundTransports];
      v21 = v51 = v8;
      v19 = [v21 count] != 0;

      v8 = v51;
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
  v22 = [v8 others];
  v23 = [v22 countByEnumeratingWithState:&v53 objects:v58 count:16];
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
          objc_enumerationMutation(v22);
        }

        v28 = [*(*(&v53 + 1) + 8 * i) structuredLocation];
        v29 = [v28 geoLocation];
        v30 = v29 != 0;

        v26 &= v30;
      }

      v24 = [v22 countByEnumeratingWithState:&v53 objects:v58 count:16];
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
    v31 = v8;
    if (self)
    {
      v32 = [(PPTripCandidate *)self eventsTimeRange];
      v34 = v33;
      v61.location = [(PPTripCandidate *)v31 eventsTimeRange];
      v61.length = v35;
      v60.location = v32;
      v60.length = v34;
      if (NSIntersectionRange(v60, v61).length)
      {
        v36 = pp_events_log_handle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_23224A000, v36, OS_LOG_TYPE_DEBUG, "[TripCandidate canBeMergedWithTripCandidate] Found events that fits into other events", buf, 2u);
        }

        v37 = 1;
      }

      else
      {
        v38 = [(PPTripCandidate *)self allEvents];
        v39 = [v38 firstObject];
        v36 = [v39 startDate];

        v40 = [(PPTripCandidate *)self allEvents];
        v41 = [v40 _pas_leftFoldWithInitialObject:0 accumulate:&__block_literal_global_9202];

        v42 = [(PPTripCandidate *)v31 allEvents];
        v43 = [v42 firstObject];
        v44 = [v43 startDate];

        v45 = [(PPTripCandidate *)v31 allEvents];
        v46 = [v45 _pas_leftFoldWithInitialObject:0 accumulate:&__block_literal_global_9202];

        [v41 timeIntervalSinceDate:v44];
        v37 = 1;
        if (fabs(v47) >= 28800.0)
        {
          [v36 timeIntervalSinceDate:v46];
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

- (PPTripCandidate)initWithTripCandidateA:(id)a3 andTripCandidateB:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = PPTripCandidate;
  v8 = [(PPTripCandidate *)&v31 init];
  if (v8)
  {
    v9 = objc_opt_new();
    v10 = [v6 flights];

    if (v10)
    {
      v11 = [v6 flights];
      [v9 addObjectsFromArray:v11];
    }

    v12 = [v7 flights];

    if (v12)
    {
      v13 = [v7 flights];
      [v9 addObjectsFromArray:v13];
    }

    objc_storeStrong(&v8->_flights, v9);
    v14 = objc_opt_new();
    v15 = [v6 hotels];

    if (v15)
    {
      v16 = [v6 hotels];
      [v14 addObjectsFromArray:v16];
    }

    v17 = [v7 hotels];

    if (v17)
    {
      v18 = [v7 hotels];
      [v14 addObjectsFromArray:v18];
    }

    objc_storeStrong(&v8->_hotels, v14);
    v19 = objc_opt_new();
    v20 = [v6 others];

    if (v20)
    {
      v21 = [v6 others];
      [v19 addObjectsFromArray:v21];
    }

    v22 = [v7 others];

    if (v22)
    {
      v23 = [v7 others];
      [v19 addObjectsFromArray:v23];
    }

    objc_storeStrong(&v8->_others, v19);
    v24 = objc_opt_new();
    v25 = [v6 groundTransports];

    if (v25)
    {
      v26 = [v6 groundTransports];
      [(NSArray *)v24 addObjectsFromArray:v26];
    }

    v27 = [v7 groundTransports];

    if (v27)
    {
      v28 = [v7 groundTransports];
      [(NSArray *)v24 addObjectsFromArray:v28];
    }

    groundTransports = v8->_groundTransports;
    v8->_groundTransports = v24;
  }

  return v8;
}

@end