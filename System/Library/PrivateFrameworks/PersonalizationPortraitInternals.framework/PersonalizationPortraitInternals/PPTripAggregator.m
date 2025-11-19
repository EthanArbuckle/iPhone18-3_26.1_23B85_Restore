@interface PPTripAggregator
+ (id)mergeTripCandidates:(id)a3;
+ (id)tripCandidatesWithEvents:(id)a3;
+ (id)tripEventsFromCandidates:(id)a3;
+ (id)tripEventsWithEvents:(id)a3 from:(id)a4 to:(id)a5;
@end

@implementation PPTripAggregator

+ (id)mergeTripCandidates:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() mergeTripCandidates:v3 supportsGroundTransportEvents:0];

  return v4;
}

+ (id)tripEventsFromCandidates:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
          v11 = [v10 tripEventFromCandidate];
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)tripCandidatesWithEvents:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() tripCandidatesWithEvents:v3 supportsGroundTransportEvents:0];

  return v4;
}

+ (id)tripEventsWithEvents:(id)a3 from:(id)a4 to:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v25 = [a1 tripCandidatesWithEvents:a3];
  v10 = [a1 tripEventsFromCandidates:?];
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
        v18 = [v17 startDate];
        [v18 timeIntervalSinceDate:v9];
        if (v19 <= 0.0)
        {
          v20 = [v17 endDate];
          [v8 timeIntervalSinceDate:v20];
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