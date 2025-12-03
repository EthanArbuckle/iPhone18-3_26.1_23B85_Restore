@interface PPEventsAggregator
- (BOOL)isEvent:(id)event dupeOfEvent:(id)ofEvent;
- (PPEventsAggregator)initWithEventsPool:(id)pool;
- (id)tripCandidatesFromEventsPool;
- (id)tripCandidatesFromEventsPoolForCategory:(void *)category;
- (void)dedupeEventsInPool;
- (void)dedupeEventsInPoolForCategory:(void *)category;
@end

@implementation PPEventsAggregator

- (void)dedupeEventsInPool
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"dedupeEventsInPool: Method must be overridden" userInfo:0];
  objc_exception_throw(v2);
}

- (BOOL)isEvent:(id)event dupeOfEvent:(id)ofEvent
{
  eventCopy = event;
  ofEventCopy = ofEvent;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"isEvent: Method must be overridden" userInfo:0];
  objc_exception_throw(v7);
}

- (id)tripCandidatesFromEventsPool
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"tripCandidatesFromEventsPool: Method must be overridden" userInfo:0];
  objc_exception_throw(v2);
}

- (PPEventsAggregator)initWithEventsPool:(id)pool
{
  poolCopy = pool;
  v9.receiver = self;
  v9.super_class = PPEventsAggregator;
  v6 = [(PPEventsAggregator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventsPool, pool);
  }

  return v7;
}

- (void)dedupeEventsInPoolForCategory:(void *)category
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  categoryCopy = category;
  obj = [category eventsPool];
  v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = v4;
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          while (2)
          {
            v14 = 0;
            do
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              if ([v9 pp_isDupeOfEvent:*(*(&v18 + 1) + 8 * v14) forCategory:a2])
              {

                goto LABEL_16;
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        [v10 addObject:v9];
LABEL_16:
        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  [categoryCopy setEventsPool:v4];
  v15 = *MEMORY[0x277D85DE8];
}

- (id)tripCandidatesFromEventsPoolForCategory:(void *)category
{
  if (category)
  {
    v2 = a2;
    [(PPEventsAggregator *)category dedupeEventsInPoolForCategory:a2];
    eventsPool = [category eventsPool];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__PPEventsAggregator_tripCandidatesFromEventsPoolForCategory___block_invoke;
    v7[3] = &__block_descriptor_33_e34___PPTripCandidate_16__0__EKEvent_8l;
    v8 = v2;
    v5 = [eventsPool _pas_mappedArrayWithTransform:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __62__PPEventsAggregator_tripCandidatesFromEventsPoolForCategory___block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = *(a1 + 32);
  if (v5 <= 7)
  {
    if (*(a1 + 32) > 2u)
    {
      v14 = v3;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
      [v4 setGroundTransports:v6];
LABEL_9:

      goto LABEL_10;
    }

    if (v5 == 2)
    {
LABEL_8:
      v15[0] = v3;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      [v4 setOthers:v6];
      goto LABEL_9;
    }

    if (*(a1 + 32))
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE660];
      v11 = @"tripCandidatesFromEventsPoolForCategory: Flight category is not supported";
      goto LABEL_18;
    }

LABEL_17:
    v9 = MEMORY[0x277CBEAD8];
    v10 = *MEMORY[0x277CBE660];
    v11 = @"tripCandidatesFromEventsPoolForCategory: Unsupported category";
LABEL_18:
    v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
    objc_exception_throw(v12);
  }

  if (v5 - 8 < 2)
  {
    goto LABEL_8;
  }

  if (v5 == 10)
  {
    v13 = v3;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    [v4 setHotels:v6];
    goto LABEL_9;
  }

  if (v5 - 11 < 2)
  {
    goto LABEL_17;
  }

LABEL_10:

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

@end