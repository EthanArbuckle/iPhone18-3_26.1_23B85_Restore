@interface PPFlightEventsAggregator
- (id)_multiDestinationsFlights;
- (id)_returningFlightForFlight:(id)a3 inPool:(id)a4;
- (id)_simpleRoundTripFlights;
- (id)tripCandidatesFromEventsPool;
@end

@implementation PPFlightEventsAggregator

- (id)_returningFlightForFlight:(id)a3 inPool:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 pp_airports];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v6;
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
        if (v13 != v5)
        {
          v14 = [*(*(&v30 + 1) + 8 * v12) startDate];
          v15 = [v5 startDate];

          if (v14 >= v15)
          {
            v16 = [v13 pp_airports];
            v17 = [v16 first];
            v18 = [v7 second];
            if ([v17 isEqualToPPFlightAirport:v18])
            {
              v19 = [v16 second];
              [v7 first];
              v20 = v11;
              v21 = v5;
              v23 = v22 = v7;
              v29 = [v19 isEqualToPPFlightAirport:v23];

              v7 = v22;
              v5 = v21;
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
    v2 = [(PPEventsAggregator *)self eventsPool];
    v3 = [v2 sortedArrayUsingSelector:sel_compareStartDateWithEvent_];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_new();
  v5 = [v3 firstObject];
  v6 = [v5 pp_airports];
  v7 = [v6 first];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        v13 = v10;
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if (![v4 count] || v7 && objc_msgSend(v13, "isEqualToPPFlightAirport:", v7) || (objc_msgSend(v4, "lastObject"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "lastObject"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "pp_isConnectionFromFlight:", v14), v16, v15, !v17))
        {
          v19 = [MEMORY[0x277CBEB18] arrayWithObject:v14];
          [v4 addObject:v19];

          v18 = [v14 pp_airports];
          v20 = [v18 first];

          v7 = v20;
        }

        else
        {
          v18 = [v4 lastObject];
          [v18 addObject:v14];
        }

        v21 = [v14 pp_airports];
        v10 = [v21 second];
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
  v5 = [(PPEventsAggregator *)self eventsPool];
  v6 = [v5 sortedArrayUsingSelector:sel_compareStartDateWithEvent_];

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
          v12 = [(PPEventsAggregator *)self eventsPool];
          v13 = [(PPFlightEventsAggregator *)self _returningFlightForFlight:v11 inPool:v12];

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
  v5 = [(PPFlightEventsAggregator *)self _multiDestinationsFlights];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

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