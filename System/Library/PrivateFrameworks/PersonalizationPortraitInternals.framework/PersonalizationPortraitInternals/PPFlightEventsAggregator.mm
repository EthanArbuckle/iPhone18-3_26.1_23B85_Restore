@interface PPFlightEventsAggregator
- (id)_multiDestinationsFlights;
- (id)_returningFlightForFlight:(id)flight inPool:(id)pool;
- (id)_simpleRoundTripFlights;
- (id)tripCandidatesFromEventsPool;
@end

@implementation PPFlightEventsAggregator

- (id)_returningFlightForFlight:(id)flight inPool:(id)pool
{
  v35 = *MEMORY[0x277D85DE8];
  flightCopy = flight;
  poolCopy = pool;
  pp_airports = [flightCopy pp_airports];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = poolCopy;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    v27 = v8;
    do
    {
      v12 = 0;
      v28 = v10;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * v12);
        if (v13 != flightCopy)
        {
          startDate = [*(*(&v30 + 1) + 8 * v12) startDate];
          startDate2 = [flightCopy startDate];

          if (startDate >= startDate2)
          {
            pp_airports2 = [v13 pp_airports];
            first = [pp_airports2 first];
            second = [pp_airports second];
            if ([first isEqualToPPFlightAirport:second])
            {
              second2 = [pp_airports2 second];
              [pp_airports first];
              v20 = v11;
              v21 = flightCopy;
              v23 = v22 = pp_airports;
              v29 = [second2 isEqualToPPFlightAirport:v23];

              pp_airports = v22;
              flightCopy = v21;
              v11 = v20;
              v10 = v28;

              v8 = v27;
              if (v29)
              {
                v24 = v13;

                goto LABEL_16;
              }
            }

            else
            {
            }
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  v24 = 0;
LABEL_16:

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_multiDestinationsFlights
{
  v30 = *MEMORY[0x277D85DE8];
  if (self)
  {
    eventsPool = [(PPEventsAggregator *)self eventsPool];
    v3 = [eventsPool sortedArrayUsingSelector:sel_compareStartDateWithEvent_];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_new();
  firstObject = [v3 firstObject];
  pp_airports = [firstObject pp_airports];
  first = [pp_airports first];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    second = 0;
    v11 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        v13 = second;
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if (![v4 count] || first && objc_msgSend(v13, "isEqualToPPFlightAirport:", first) || (objc_msgSend(v4, "lastObject"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "lastObject"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "pp_isConnectionFromFlight:", v14), v16, v15, !v17))
        {
          v19 = [MEMORY[0x277CBEB18] arrayWithObject:v14];
          [v4 addObject:v19];

          pp_airports2 = [v14 pp_airports];
          first2 = [pp_airports2 first];

          first = first2;
        }

        else
        {
          pp_airports2 = [v4 lastObject];
          [pp_airports2 addObject:v14];
        }

        pp_airports3 = [v14 pp_airports];
        second = [pp_airports3 second];
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_simpleRoundTripFlights
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  eventsPool = [(PPEventsAggregator *)self eventsPool];
  v6 = [eventsPool sortedArrayUsingSelector:sel_compareStartDateWithEvent_];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if (([v4 containsObject:v11] & 1) == 0)
        {
          eventsPool2 = [(PPEventsAggregator *)self eventsPool];
          v13 = [(PPFlightEventsAggregator *)self _returningFlightForFlight:v11 inPool:eventsPool2];

          if (v13)
          {
            [v4 addObject:v13];
            v14 = [MEMORY[0x277CBEA60] arrayWithObjects:{v11, v13, 0}];
            [v3 addObject:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)tripCandidatesFromEventsPool
{
  v21 = *MEMORY[0x277D85DE8];
  if (self)
  {
    [(PPEventsAggregator *)self dedupeEventsInPoolForCategory:?];
  }

  v3 = objc_opt_new();
  v4 = objc_opt_new();
  _multiDestinationsFlights = [(PPFlightEventsAggregator *)self _multiDestinationsFlights];
  v6 = [v4 arrayByAddingObjectsFromArray:_multiDestinationsFlights];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = objc_opt_new();
        [v13 setFlights:{v12, v16}];
        [v3 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

@end