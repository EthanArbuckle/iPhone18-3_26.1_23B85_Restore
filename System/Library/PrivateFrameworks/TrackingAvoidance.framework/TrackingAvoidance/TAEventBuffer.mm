@interface TAEventBuffer
+ (id)getExpiredElementKeyForClass:(Class)a3 andEventSubtype:(unint64_t)a4;
- (TAEventBuffer)initWithSettings:(id)a3;
- (id)getAllTAEventsBetween:(id)a3;
- (id)getAllTAEventsMatchingCompoundPredicate:(id)a3;
- (id)getAllTAEventsOf:(Class)a3;
- (id)getAllTAEventsOf:(Class)a3 andEventSubtype:(unint64_t)a4;
- (id)getAllTAEventsOf:(Class)a3 andEventSubtype:(unint64_t)a4 between:(id)a5;
- (id)getAllTAEventsOf:(Class)a3 between:(id)a4;
- (id)getEarliestEventDate;
- (id)getLatestElementOf:(Class)a3;
- (id)getLatestElementOf:(Class)a3 andEventSubtype:(unint64_t)a4;
- (void)_updateLatestElement:(id)a3;
- (void)_updateLatestElement:(id)a3 withKey:(id)a4;
- (void)ingestTAEvent:(id)a3;
- (void)purgeWithClock:(id)a3;
- (void)updateLatestExpiredElements:(id)a3;
@end

@implementation TAEventBuffer

- (TAEventBuffer)initWithSettings:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = TAEventBuffer;
  v6 = [(TAEventBuffer *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
    v8 = [[TACircularBuffer alloc] initWithCapacity:[(TAEventBufferSettings *)v7->_settings bufferCapacity]];
    eventBuffer = v7->_eventBuffer;
    v7->_eventBuffer = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    latestExpiredElements = v7->_latestExpiredElements;
    v7->_latestExpiredElements = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    latestElements = v7->_latestElements;
    v7->_latestElements = v12;
  }

  return v7;
}

- (void)purgeWithClock:(id)a3
{
  v4 = a3;
  v5 = [(TACircularBuffer *)self->_eventBuffer firstObject];
  v6 = [v5 getDate];
  [v4 timeIntervalSinceDate:v6];
  v8 = v7;
  [(TAEventBufferSettings *)self->_settings bufferTimeIntervalOfRetention];
  v10 = v9;

  if (v8 >= v10)
  {
    v11 = MEMORY[0x277CCAC30];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __32__TAEventBuffer_purgeWithClock___block_invoke;
    v15[3] = &unk_279DD1E98;
    v16 = v4;
    v17 = self;
    v12 = [v11 predicateWithBlock:v15];
    v13 = [(TACircularBuffer *)self->_eventBuffer removeUntilFirstPredicateFail:v12];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __32__TAEventBuffer_purgeWithClock___block_invoke_2;
    v14[3] = &unk_279DD1F50;
    v14[4] = self;
    [v13 enumerateObjectsUsingBlock:v14];
  }
}

BOOL __32__TAEventBuffer_purgeWithClock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 getDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;
  [*(*(a1 + 40) + 8) bufferTimeIntervalOfRetention];
  v8 = v6 > v7;

  return v8;
}

+ (id)getExpiredElementKeyForClass:(Class)a3 andEventSubtype:(unint64_t)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@:%lu", v7, a4];

  return v8;
}

- (id)getAllTAEventsOf:(Class)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA920];
  v5 = [MEMORY[0x277CCAC30] predicateForTAEventsClass:a3];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [v4 andPredicateWithSubpredicates:v6];

  v8 = [(TAEventBuffer *)self getAllTAEventsMatchingCompoundPredicate:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)getAllTAEventsOf:(Class)a3 andEventSubtype:(unint64_t)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA920];
  v6 = [MEMORY[0x277CCAC30] predicateForTAEventsClass:a3 andEventSubtype:a4];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v5 andPredicateWithSubpredicates:v7];

  v9 = [(TAEventBuffer *)self getAllTAEventsMatchingCompoundPredicate:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)getAllTAEventsOf:(Class)a3 between:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA920];
  v7 = [MEMORY[0x277CCAC30] predicateForTAEventsInDateInterval:a4];
  v14[0] = v7;
  v8 = [MEMORY[0x277CCAC30] predicateForTAEventsClass:a3];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v10 = [v6 andPredicateWithSubpredicates:v9];

  v11 = [(TAEventBuffer *)self getAllTAEventsMatchingCompoundPredicate:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)getAllTAEventsOf:(Class)a3 andEventSubtype:(unint64_t)a4 between:(id)a5
{
  v16[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCA920];
  v9 = [MEMORY[0x277CCAC30] predicateForTAEventsInDateInterval:a5];
  v16[0] = v9;
  v10 = [MEMORY[0x277CCAC30] predicateForTAEventsClass:a3 andEventSubtype:a4];
  v16[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v12 = [v8 andPredicateWithSubpredicates:v11];

  v13 = [(TAEventBuffer *)self getAllTAEventsMatchingCompoundPredicate:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)getAllTAEventsBetween:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA920];
  v5 = [MEMORY[0x277CCAC30] predicateForTAEventsInDateInterval:a3];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [v4 andPredicateWithSubpredicates:v6];

  v8 = [(TAEventBuffer *)self getAllTAEventsMatchingCompoundPredicate:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)getAllTAEventsMatchingCompoundPredicate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_latestExpiredElements;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_latestExpiredElements objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i), v16];
        [v5 addObject:v11];
      }

      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [v5 filterUsingPredicate:v4];
  [v5 sortUsingComparator:&__block_literal_global_4];
  v12 = [(TACircularBuffer *)self->_eventBuffer objectsMatchingPredicate:v4];
  v13 = [v5 arrayByAddingObjectsFromArray:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __57__TAEventBuffer_getAllTAEventsMatchingCompoundPredicate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 getDate];
  v6 = [v4 getDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)ingestTAEvent:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TACircularBuffer *)self->_eventBuffer lastObject];
  v6 = v5;
  if (!v5 || ([v5 getDate], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "getDate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "compare:", v8), v8, v7, v9 != 1))
  {
    v19 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v4 description];
      v24 = 136642819;
      v25 = [v21 UTF8String];
      _os_log_impl(&dword_26F2E2000, v20, OS_LOG_TYPE_DEFAULT, "#TAStore adding:%{sensitive}s", &v24, 0xCu);
    }

    v18 = [(TACircularBuffer *)self->_eventBuffer add:v4];
    goto LABEL_10;
  }

  v10 = [(TACircularBuffer *)self->_eventBuffer bufferCopy];
  v11 = [(TACircularBuffer *)self->_eventBuffer bufferCopy];
  v12 = [v10 indexOfObject:v4 inSortedRange:0 options:objc_msgSend(v11 usingComparator:{"count"), 1024, &__block_literal_global_30}];

  v13 = [(TACircularBuffer *)self->_eventBuffer bufferCopy];
  v14 = [v13 count];

  v15 = TAStatusLog;
  if (v12 < v14)
  {
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v4 description];
      v24 = 136642819;
      v25 = [v17 UTF8String];
      _os_log_impl(&dword_26F2E2000, v16, OS_LOG_TYPE_DEFAULT, "#TAStore inserting OOO event:%{sensitive}s", &v24, 0xCu);
    }

    v18 = [(TACircularBuffer *)self->_eventBuffer insert:v4 at:v12];
LABEL_10:
    v22 = v18;
    if (v18)
    {
      [(TAEventBuffer *)self updateLatestExpiredElements:v18];
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
  {
    [(TAEventBuffer *)v15 ingestTAEvent:v4];
  }

LABEL_14:
  [(TAEventBuffer *)self _updateLatestElement:v4];

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __31__TAEventBuffer_ingestTAEvent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 getDate];
  v6 = [v4 getDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)updateLatestExpiredElements:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    if (objc_opt_respondsToSelector())
    {
      +[TAEventBuffer getExpiredElementKeyForClass:andEventSubtype:](TAEventBuffer, "getExpiredElementKeyForClass:andEventSubtype:", objc_opt_class(), [v7 getEventSubtype]);
    }

    else
    {
      v5 = objc_opt_class();
      NSStringFromClass(v5);
    }
    v6 = ;
    if (v6)
    {
      [(NSMutableDictionary *)self->_latestExpiredElements setValue:v7 forKey:v6];
    }

    v4 = v7;
  }
}

- (id)getEarliestEventDate
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_latestExpiredElements count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = self->_latestExpiredElements;
    v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [(NSMutableDictionary *)self->_latestExpiredElements objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i), v16];
          v10 = [v9 getDate];
          v11 = v10;
          if (v6)
          {
            v12 = [v6 earlierDate:v10];

            v6 = v12;
          }

          else
          {
            v6 = v10;
          }
        }

        v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else if ([(TACircularBuffer *)self->_eventBuffer count])
  {
    v13 = [(TACircularBuffer *)self->_eventBuffer firstObject];
    v6 = [v13 getDate];
  }

  else
  {
    v6 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_updateLatestElement:(id)a3 withKey:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_latestElements objectForKeyedSubscript:v6];

  latestElements = self->_latestElements;
  if (v7)
  {
    v9 = [(NSMutableDictionary *)latestElements objectForKeyedSubscript:v6];
    v10 = [v9 getDate];
    v11 = [v13 getDate];
    v12 = [v10 compare:v11];

    if (v12 == -1)
    {
      [(NSMutableDictionary *)self->_latestElements setObject:v13 forKeyedSubscript:v6];
    }
  }

  else
  {
    [(NSMutableDictionary *)latestElements setObject:v13 forKeyedSubscript:v6];
  }
}

- (void)_updateLatestElement:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    if (objc_opt_respondsToSelector())
    {
      v6 = +[TAEventBuffer getExpiredElementKeyForClass:andEventSubtype:](TAEventBuffer, "getExpiredElementKeyForClass:andEventSubtype:", objc_opt_class(), [v8 getEventSubtype]);
      if (v6)
      {
        v7 = v6;
        [(TAEventBuffer *)self _updateLatestElement:v8 withKey:v6];
      }
    }

    [(TAEventBuffer *)self _updateLatestElement:v8 withKey:v5];
  }
}

- (id)getLatestElementOf:(Class)a3
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSMutableDictionary *)self->_latestElements objectForKeyedSubscript:v5];

  return v6;
}

- (id)getLatestElementOf:(Class)a3 andEventSubtype:(unint64_t)a4
{
  v5 = [TAEventBuffer getExpiredElementKeyForClass:a3 andEventSubtype:a4];
  v6 = [(NSMutableDictionary *)self->_latestElements objectForKeyedSubscript:v5];

  return v6;
}

- (void)ingestTAEvent:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 description];
  v6 = 136642819;
  v7 = [v4 UTF8String];
  _os_log_fault_impl(&dword_26F2E2000, v3, OS_LOG_TYPE_FAULT, "#TAStore unreachable state; in-order TAEvent should be added already: %{sensitive}s", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end