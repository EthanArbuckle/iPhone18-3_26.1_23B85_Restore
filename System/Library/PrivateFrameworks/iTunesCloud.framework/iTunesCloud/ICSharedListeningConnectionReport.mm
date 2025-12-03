@interface ICSharedListeningConnectionReport
- (ICSharedListeningConnectionReport)init;
- (NSString)formattedReport;
- (void)_addEvents:(id)events toReportString:(id)string eventLevel:(int64_t)level;
- (void)endEvent:(id)event withError:(id)error;
- (void)startEvent:(id)event withParentEvent:(id)parentEvent;
@end

@implementation ICSharedListeningConnectionReport

- (void)_addEvents:(id)events toReportString:(id)string eventLevel:(int64_t)level
{
  v29 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  stringCopy = string;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = eventsCopy;
  v9 = [eventsCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [&stru_1F2C4A680 stringByPaddingToLength:4 * level withString:@" " startingAtIndex:0];
        [stringCopy appendString:v14];

        name = [v13 name];
        [v13 duration];
        [stringCopy appendFormat:@"%@: %.3fs.", name, v16];

        error = [v13 error];

        if (error)
        {
          error2 = [v13 error];
          [stringCopy appendFormat:@" Error: %@.", error2];
        }

        [stringCopy appendString:@"\n"];
        subEvents = [v13 subEvents];
        v20 = [subEvents count];

        if (v20)
        {
          subEvents2 = [v13 subEvents];
          [(ICSharedListeningConnectionReport *)self _addEvents:subEvents2 toReportString:stringCopy eventLevel:level + 1];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }
}

- (NSString)formattedReport
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendString:@"\n"];
  v4 = [&stru_1F2C4A680 stringByPaddingToLength:30 withString:@"-" startingAtIndex:0];
  [v3 appendString:v4];

  [v3 appendString:@"\nShared Listening Report\n"];
  v5 = [&stru_1F2C4A680 stringByPaddingToLength:30 withString:@"-" startingAtIndex:0];
  [v3 appendString:v5];

  [v3 appendString:@"\n"];
  sharedListeningSessionIdentifier = [(ICSharedListeningConnectionReport *)self sharedListeningSessionIdentifier];
  [v3 appendFormat:@"Shared listening session ID: %@\n", sharedListeningSessionIdentifier];

  groupSessionIdentifier = [(ICSharedListeningConnectionReport *)self groupSessionIdentifier];
  [v3 appendFormat:@"Group session ID: %@\n\n", groupSessionIdentifier];

  topLevelEvents = [(ICSharedListeningConnectionReport *)self topLevelEvents];
  [(ICSharedListeningConnectionReport *)self _addEvents:topLevelEvents toReportString:v3 eventLevel:0];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  topLevelEvents2 = [(ICSharedListeningConnectionReport *)self topLevelEvents];
  v10 = [topLevelEvents2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(topLevelEvents2);
        }

        [*(*(&v18 + 1) + 8 * i) duration];
        v13 = v13 + v15;
      }

      v11 = [topLevelEvents2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  [v3 appendFormat:@"\nTotal time: %.3f seconds.\n", *&v13];
  v16 = [&stru_1F2C4A680 stringByPaddingToLength:30 withString:@"-" startingAtIndex:0];
  [v3 appendString:v16];

  [v3 appendString:@"\n"];

  return v3;
}

- (void)endEvent:(id)event withError:(id)error
{
  v6 = MEMORY[0x1E695DF00];
  errorCopy = error;
  eventCopy = event;
  date = [v6 date];
  allEvents = [(ICSharedListeningConnectionReport *)self allEvents];
  v10 = [allEvents objectForKey:eventCopy];

  [v10 setEndDate:date];
  [v10 setError:errorCopy];
}

- (void)startEvent:(id)event withParentEvent:(id)parentEvent
{
  eventCopy = event;
  parentEventCopy = parentEvent;
  v7 = [[ICSharedListeningConnectionReportEvent alloc] initWithName:eventCopy];
  if (parentEventCopy)
  {
    allEvents = [(ICSharedListeningConnectionReport *)self allEvents];
    v9 = [allEvents objectForKey:parentEventCopy];
    [v9 addSubEvent:v7];
  }

  else
  {
    allEvents = [(ICSharedListeningConnectionReport *)self topLevelEvents];
    [allEvents addObject:v7];
  }

  allEvents2 = [(ICSharedListeningConnectionReport *)self allEvents];
  [allEvents2 setObject:v7 forKey:eventCopy];
}

- (ICSharedListeningConnectionReport)init
{
  v8.receiver = self;
  v8.super_class = ICSharedListeningConnectionReport;
  v2 = [(ICSharedListeningConnectionReport *)&v8 init];
  if (v2)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    allEvents = v2->_allEvents;
    v2->_allEvents = weakToWeakObjectsMapTable;

    v5 = objc_opt_new();
    topLevelEvents = v2->_topLevelEvents;
    v2->_topLevelEvents = v5;
  }

  return v2;
}

@end