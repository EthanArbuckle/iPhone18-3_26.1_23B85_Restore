@interface TAEventBuffer
+ (id)getExpiredElementKeyForClass:(Class)class andEventSubtype:(unint64_t)subtype;
- (TAEventBuffer)initWithSettings:(id)settings;
- (id)getAllTAEventsBetween:(id)between;
- (id)getAllTAEventsMatchingCompoundPredicate:(id)predicate;
- (id)getAllTAEventsOf:(Class)of;
- (id)getAllTAEventsOf:(Class)of andEventSubtype:(unint64_t)subtype;
- (id)getAllTAEventsOf:(Class)of andEventSubtype:(unint64_t)subtype between:(id)between;
- (id)getAllTAEventsOf:(Class)of between:(id)between;
- (id)getEarliestEventDate;
- (id)getLatestElementOf:(Class)of;
- (id)getLatestElementOf:(Class)of andEventSubtype:(unint64_t)subtype;
- (void)_updateLatestElement:(id)element;
- (void)_updateLatestElement:(id)element withKey:(id)key;
- (void)ingestTAEvent:(id)event;
- (void)purgeWithClock:(id)clock;
- (void)updateLatestExpiredElements:(id)elements;
@end

@implementation TAEventBuffer

- (TAEventBuffer)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v15.receiver = self;
  v15.super_class = TAEventBuffer;
  v6 = [(TAEventBuffer *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, settings);
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

- (void)purgeWithClock:(id)clock
{
  clockCopy = clock;
  firstObject = [(TACircularBuffer *)self->_eventBuffer firstObject];
  getDate = [firstObject getDate];
  [clockCopy timeIntervalSinceDate:getDate];
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
    v16 = clockCopy;
    selfCopy = self;
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

+ (id)getExpiredElementKeyForClass:(Class)class andEventSubtype:(unint64_t)subtype
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  subtype = [v5 stringWithFormat:@"%@:%lu", v7, subtype];

  return subtype;
}

- (id)getAllTAEventsOf:(Class)of
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA920];
  v5 = [MEMORY[0x277CCAC30] predicateForTAEventsClass:of];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [v4 andPredicateWithSubpredicates:v6];

  v8 = [(TAEventBuffer *)self getAllTAEventsMatchingCompoundPredicate:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)getAllTAEventsOf:(Class)of andEventSubtype:(unint64_t)subtype
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA920];
  v6 = [MEMORY[0x277CCAC30] predicateForTAEventsClass:of andEventSubtype:subtype];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v5 andPredicateWithSubpredicates:v7];

  v9 = [(TAEventBuffer *)self getAllTAEventsMatchingCompoundPredicate:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)getAllTAEventsOf:(Class)of between:(id)between
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA920];
  v7 = [MEMORY[0x277CCAC30] predicateForTAEventsInDateInterval:between];
  v14[0] = v7;
  v8 = [MEMORY[0x277CCAC30] predicateForTAEventsClass:of];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v10 = [v6 andPredicateWithSubpredicates:v9];

  v11 = [(TAEventBuffer *)self getAllTAEventsMatchingCompoundPredicate:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)getAllTAEventsOf:(Class)of andEventSubtype:(unint64_t)subtype between:(id)between
{
  v16[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCA920];
  v9 = [MEMORY[0x277CCAC30] predicateForTAEventsInDateInterval:between];
  v16[0] = v9;
  v10 = [MEMORY[0x277CCAC30] predicateForTAEventsClass:of andEventSubtype:subtype];
  v16[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v12 = [v8 andPredicateWithSubpredicates:v11];

  v13 = [(TAEventBuffer *)self getAllTAEventsMatchingCompoundPredicate:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)getAllTAEventsBetween:(id)between
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA920];
  v5 = [MEMORY[0x277CCAC30] predicateForTAEventsInDateInterval:between];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [v4 andPredicateWithSubpredicates:v6];

  v8 = [(TAEventBuffer *)self getAllTAEventsMatchingCompoundPredicate:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)getAllTAEventsMatchingCompoundPredicate:(id)predicate
{
  v21 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
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

  [v5 filterUsingPredicate:predicateCopy];
  [v5 sortUsingComparator:&__block_literal_global_4];
  v12 = [(TACircularBuffer *)self->_eventBuffer objectsMatchingPredicate:predicateCopy];
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

- (void)ingestTAEvent:(id)event
{
  v26 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  lastObject = [(TACircularBuffer *)self->_eventBuffer lastObject];
  v6 = lastObject;
  if (!lastObject || ([lastObject getDate], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(eventCopy, "getDate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "compare:", v8), v8, v7, v9 != 1))
  {
    v19 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [eventCopy description];
      v24 = 136642819;
      uTF8String = [v21 UTF8String];
      _os_log_impl(&dword_26F2E2000, v20, OS_LOG_TYPE_DEFAULT, "#TAStore adding:%{sensitive}s", &v24, 0xCu);
    }

    v18 = [(TACircularBuffer *)self->_eventBuffer add:eventCopy];
    goto LABEL_10;
  }

  bufferCopy = [(TACircularBuffer *)self->_eventBuffer bufferCopy];
  bufferCopy2 = [(TACircularBuffer *)self->_eventBuffer bufferCopy];
  v12 = [bufferCopy indexOfObject:eventCopy inSortedRange:0 options:objc_msgSend(bufferCopy2 usingComparator:{"count"), 1024, &__block_literal_global_30}];

  bufferCopy3 = [(TACircularBuffer *)self->_eventBuffer bufferCopy];
  v14 = [bufferCopy3 count];

  v15 = TAStatusLog;
  if (v12 < v14)
  {
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [eventCopy description];
      v24 = 136642819;
      uTF8String = [v17 UTF8String];
      _os_log_impl(&dword_26F2E2000, v16, OS_LOG_TYPE_DEFAULT, "#TAStore inserting OOO event:%{sensitive}s", &v24, 0xCu);
    }

    v18 = [(TACircularBuffer *)self->_eventBuffer insert:eventCopy at:v12];
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
    [(TAEventBuffer *)v15 ingestTAEvent:eventCopy];
  }

LABEL_14:
  [(TAEventBuffer *)self _updateLatestElement:eventCopy];

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

- (void)updateLatestExpiredElements:(id)elements
{
  elementsCopy = elements;
  if (elementsCopy)
  {
    v7 = elementsCopy;
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

    elementsCopy = v7;
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
      getDate2 = 0;
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
          getDate = [v9 getDate];
          v11 = getDate;
          if (getDate2)
          {
            v12 = [getDate2 earlierDate:getDate];

            getDate2 = v12;
          }

          else
          {
            getDate2 = getDate;
          }
        }

        v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }

    else
    {
      getDate2 = 0;
    }
  }

  else if ([(TACircularBuffer *)self->_eventBuffer count])
  {
    firstObject = [(TACircularBuffer *)self->_eventBuffer firstObject];
    getDate2 = [firstObject getDate];
  }

  else
  {
    getDate2 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return getDate2;
}

- (void)_updateLatestElement:(id)element withKey:(id)key
{
  elementCopy = element;
  keyCopy = key;
  v7 = [(NSMutableDictionary *)self->_latestElements objectForKeyedSubscript:keyCopy];

  latestElements = self->_latestElements;
  if (v7)
  {
    v9 = [(NSMutableDictionary *)latestElements objectForKeyedSubscript:keyCopy];
    getDate = [v9 getDate];
    getDate2 = [elementCopy getDate];
    v12 = [getDate compare:getDate2];

    if (v12 == -1)
    {
      [(NSMutableDictionary *)self->_latestElements setObject:elementCopy forKeyedSubscript:keyCopy];
    }
  }

  else
  {
    [(NSMutableDictionary *)latestElements setObject:elementCopy forKeyedSubscript:keyCopy];
  }
}

- (void)_updateLatestElement:(id)element
{
  elementCopy = element;
  if (elementCopy)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    if (objc_opt_respondsToSelector())
    {
      v6 = +[TAEventBuffer getExpiredElementKeyForClass:andEventSubtype:](TAEventBuffer, "getExpiredElementKeyForClass:andEventSubtype:", objc_opt_class(), [elementCopy getEventSubtype]);
      if (v6)
      {
        v7 = v6;
        [(TAEventBuffer *)self _updateLatestElement:elementCopy withKey:v6];
      }
    }

    [(TAEventBuffer *)self _updateLatestElement:elementCopy withKey:v5];
  }
}

- (id)getLatestElementOf:(Class)of
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSMutableDictionary *)self->_latestElements objectForKeyedSubscript:v5];

  return v6;
}

- (id)getLatestElementOf:(Class)of andEventSubtype:(unint64_t)subtype
{
  v5 = [TAEventBuffer getExpiredElementKeyForClass:of andEventSubtype:subtype];
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