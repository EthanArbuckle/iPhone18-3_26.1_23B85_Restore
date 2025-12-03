@interface PPTripAggregator
+ (id)mergeTripCandidates:(id)candidates;
+ (id)tripCandidatesWithEvents:(id)events;
+ (id)tripEventsFromCandidates:(id)candidates;
+ (id)tripEventsWithEvents:(id)events from:(id)from to:(id)to;
@end

@implementation PPTripAggregator

+ (id)mergeTripCandidates:(id)candidates
{
  candidatesCopy = candidates;
  v4 = [objc_opt_class() mergeTripCandidates:candidatesCopy supportsGroundTransportEvents:0];

  return v4;
}

+ (id)tripEventsFromCandidates:(id)candidates
{
  v19 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = candidatesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 shouldPromoteToTripEvent])
        {
          tripEventFromCandidate = [v10 tripEventFromCandidate];
          [v4 addObject:tripEventFromCandidate];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)tripCandidatesWithEvents:(id)events
{
  eventsCopy = events;
  v4 = [objc_opt_class() tripCandidatesWithEvents:eventsCopy supportsGroundTransportEvents:0];

  return v4;
}

+ (id)tripEventsWithEvents:(id)events from:(id)from to:(id)to
{
  v31 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  v25 = [self tripCandidatesWithEvents:events];
  v10 = [self tripEventsFromCandidates:?];
  v11 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        startDate = [v17 startDate];
        [startDate timeIntervalSinceDate:toCopy];
        if (v19 <= 0.0)
        {
          endDate = [v17 endDate];
          [fromCopy timeIntervalSinceDate:endDate];
          v22 = v21;

          if (v22 <= 0.0)
          {
            [v11 addObject:v17];
          }
        }

        else
        {
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v11;
}

@end