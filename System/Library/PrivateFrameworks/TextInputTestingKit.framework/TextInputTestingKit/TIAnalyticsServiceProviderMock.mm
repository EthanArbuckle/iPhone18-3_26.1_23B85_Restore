@interface TIAnalyticsServiceProviderMock
- (TIAnalyticsServiceProviderMock)init;
- (double)sumFloatField:(id)field forEvent:(id)event;
- (double)sumFloatField:(id)field forEvent:(id)event filteredWithPredicate:(id)predicate;
- (double)sumFloatField:(id)field forEvents:(id)events;
- (id)eventsWithName:(id)name;
- (int64_t)countEvent:(id)event;
- (int64_t)countEvent:(id)event filteredWithPredicate:(id)predicate;
- (int64_t)sumIntegerField:(id)field forEvent:(id)event;
- (int64_t)sumIntegerField:(id)field forEvent:(id)event filteredWithPredicate:(id)predicate;
- (int64_t)sumIntegerField:(id)field forEvents:(id)events;
- (void)clear;
- (void)dispatchEventWithName:(id)name payload:(id)payload;
@end

@implementation TIAnalyticsServiceProviderMock

- (void)clear
{
  allEvents = [(TIAnalyticsServiceProviderMock *)self allEvents];
  [allEvents removeAllObjects];
}

- (double)sumFloatField:(id)field forEvents:(id)events
{
  v20 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  eventsCopy = events;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [eventsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) objectForKey:fieldCopy];
        [v12 floatValue];
        v10 = v10 + v13;
      }

      v8 = [eventsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)sumFloatField:(id)field forEvent:(id)event filteredWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  fieldCopy = field;
  v10 = [(TIAnalyticsServiceProviderMock *)self eventsWithName:event];
  v11 = [v10 filteredArrayUsingPredicate:predicateCopy];

  [(TIAnalyticsServiceProviderMock *)self sumFloatField:fieldCopy forEvents:v11];
  v13 = v12;

  return v13;
}

- (double)sumFloatField:(id)field forEvent:(id)event
{
  fieldCopy = field;
  v7 = [(TIAnalyticsServiceProviderMock *)self eventsWithName:event];
  [(TIAnalyticsServiceProviderMock *)self sumFloatField:fieldCopy forEvents:v7];
  v9 = v8;

  return v9;
}

- (int64_t)sumIntegerField:(id)field forEvents:(id)events
{
  v19 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  eventsCopy = events;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [eventsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) objectForKey:fieldCopy];
        v9 += [v12 integerValue];
      }

      v8 = [eventsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)sumIntegerField:(id)field forEvent:(id)event filteredWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  fieldCopy = field;
  v10 = [(TIAnalyticsServiceProviderMock *)self eventsWithName:event];
  v11 = [v10 filteredArrayUsingPredicate:predicateCopy];

  v12 = [(TIAnalyticsServiceProviderMock *)self sumIntegerField:fieldCopy forEvents:v11];
  return v12;
}

- (int64_t)sumIntegerField:(id)field forEvent:(id)event
{
  fieldCopy = field;
  v7 = [(TIAnalyticsServiceProviderMock *)self eventsWithName:event];
  v8 = [(TIAnalyticsServiceProviderMock *)self sumIntegerField:fieldCopy forEvents:v7];

  return v8;
}

- (int64_t)countEvent:(id)event filteredWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v7 = [(TIAnalyticsServiceProviderMock *)self eventsWithName:event];
  v8 = [v7 filteredArrayUsingPredicate:predicateCopy];

  v9 = [v8 count];
  return v9;
}

- (int64_t)countEvent:(id)event
{
  v3 = [(TIAnalyticsServiceProviderMock *)self eventsWithName:event];
  v4 = [v3 count];

  return v4;
}

- (id)eventsWithName:(id)name
{
  nameCopy = name;
  allEvents = [(TIAnalyticsServiceProviderMock *)self allEvents];
  v6 = [allEvents objectForKey:nameCopy];

  if (!v6)
  {
    v6 = objc_opt_new();
    allEvents2 = [(TIAnalyticsServiceProviderMock *)self allEvents];
    [allEvents2 setObject:v6 forKey:nameCopy];
  }

  return v6;
}

- (void)dispatchEventWithName:(id)name payload:(id)payload
{
  payloadCopy = payload;
  v7 = [(TIAnalyticsServiceProviderMock *)self eventsWithName:name];
  [v7 addObject:payloadCopy];
}

- (TIAnalyticsServiceProviderMock)init
{
  v6.receiver = self;
  v6.super_class = TIAnalyticsServiceProviderMock;
  v2 = [(TIAnalyticsServiceProviderMock *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    allEvents = v2->_allEvents;
    v2->_allEvents = v3;
  }

  return v2;
}

@end