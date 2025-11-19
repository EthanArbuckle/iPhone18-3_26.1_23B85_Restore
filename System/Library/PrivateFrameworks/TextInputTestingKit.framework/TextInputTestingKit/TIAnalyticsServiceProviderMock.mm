@interface TIAnalyticsServiceProviderMock
- (TIAnalyticsServiceProviderMock)init;
- (double)sumFloatField:(id)a3 forEvent:(id)a4;
- (double)sumFloatField:(id)a3 forEvent:(id)a4 filteredWithPredicate:(id)a5;
- (double)sumFloatField:(id)a3 forEvents:(id)a4;
- (id)eventsWithName:(id)a3;
- (int64_t)countEvent:(id)a3;
- (int64_t)countEvent:(id)a3 filteredWithPredicate:(id)a4;
- (int64_t)sumIntegerField:(id)a3 forEvent:(id)a4;
- (int64_t)sumIntegerField:(id)a3 forEvent:(id)a4 filteredWithPredicate:(id)a5;
- (int64_t)sumIntegerField:(id)a3 forEvents:(id)a4;
- (void)clear;
- (void)dispatchEventWithName:(id)a3 payload:(id)a4;
@end

@implementation TIAnalyticsServiceProviderMock

- (void)clear
{
  v2 = [(TIAnalyticsServiceProviderMock *)self allEvents];
  [v2 removeAllObjects];
}

- (double)sumFloatField:(id)a3 forEvents:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) objectForKey:v5];
        [v12 floatValue];
        v10 = v10 + v13;
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)sumFloatField:(id)a3 forEvent:(id)a4 filteredWithPredicate:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(TIAnalyticsServiceProviderMock *)self eventsWithName:a4];
  v11 = [v10 filteredArrayUsingPredicate:v8];

  [(TIAnalyticsServiceProviderMock *)self sumFloatField:v9 forEvents:v11];
  v13 = v12;

  return v13;
}

- (double)sumFloatField:(id)a3 forEvent:(id)a4
{
  v6 = a3;
  v7 = [(TIAnalyticsServiceProviderMock *)self eventsWithName:a4];
  [(TIAnalyticsServiceProviderMock *)self sumFloatField:v6 forEvents:v7];
  v9 = v8;

  return v9;
}

- (int64_t)sumIntegerField:(id)a3 forEvents:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) objectForKey:v5];
        v9 += [v12 integerValue];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)sumIntegerField:(id)a3 forEvent:(id)a4 filteredWithPredicate:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(TIAnalyticsServiceProviderMock *)self eventsWithName:a4];
  v11 = [v10 filteredArrayUsingPredicate:v8];

  v12 = [(TIAnalyticsServiceProviderMock *)self sumIntegerField:v9 forEvents:v11];
  return v12;
}

- (int64_t)sumIntegerField:(id)a3 forEvent:(id)a4
{
  v6 = a3;
  v7 = [(TIAnalyticsServiceProviderMock *)self eventsWithName:a4];
  v8 = [(TIAnalyticsServiceProviderMock *)self sumIntegerField:v6 forEvents:v7];

  return v8;
}

- (int64_t)countEvent:(id)a3 filteredWithPredicate:(id)a4
{
  v6 = a4;
  v7 = [(TIAnalyticsServiceProviderMock *)self eventsWithName:a3];
  v8 = [v7 filteredArrayUsingPredicate:v6];

  v9 = [v8 count];
  return v9;
}

- (int64_t)countEvent:(id)a3
{
  v3 = [(TIAnalyticsServiceProviderMock *)self eventsWithName:a3];
  v4 = [v3 count];

  return v4;
}

- (id)eventsWithName:(id)a3
{
  v4 = a3;
  v5 = [(TIAnalyticsServiceProviderMock *)self allEvents];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = objc_opt_new();
    v7 = [(TIAnalyticsServiceProviderMock *)self allEvents];
    [v7 setObject:v6 forKey:v4];
  }

  return v6;
}

- (void)dispatchEventWithName:(id)a3 payload:(id)a4
{
  v6 = a4;
  v7 = [(TIAnalyticsServiceProviderMock *)self eventsWithName:a3];
  [v7 addObject:v6];
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