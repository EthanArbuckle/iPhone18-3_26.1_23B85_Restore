@interface ICSharedListeningConnectionReport
- (ICSharedListeningConnectionReport)init;
- (NSString)formattedReport;
- (void)_addEvents:(id)a3 toReportString:(id)a4 eventLevel:(int64_t)a5;
- (void)endEvent:(id)a3 withError:(id)a4;
- (void)startEvent:(id)a3 withParentEvent:(id)a4;
@end

@implementation ICSharedListeningConnectionReport

- (void)_addEvents:(id)a3 toReportString:(id)a4 eventLevel:(int64_t)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v7;
  v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
        v14 = [&stru_1F2C4A680 stringByPaddingToLength:4 * a5 withString:@" " startingAtIndex:0];
        [v8 appendString:v14];

        v15 = [v13 name];
        [v13 duration];
        [v8 appendFormat:@"%@: %.3fs.", v15, v16];

        v17 = [v13 error];

        if (v17)
        {
          v18 = [v13 error];
          [v8 appendFormat:@" Error: %@.", v18];
        }

        [v8 appendString:@"\n"];
        v19 = [v13 subEvents];
        v20 = [v19 count];

        if (v20)
        {
          v21 = [v13 subEvents];
          [(ICSharedListeningConnectionReport *)self _addEvents:v21 toReportString:v8 eventLevel:a5 + 1];
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
  v6 = [(ICSharedListeningConnectionReport *)self sharedListeningSessionIdentifier];
  [v3 appendFormat:@"Shared listening session ID: %@\n", v6];

  v7 = [(ICSharedListeningConnectionReport *)self groupSessionIdentifier];
  [v3 appendFormat:@"Group session ID: %@\n\n", v7];

  v8 = [(ICSharedListeningConnectionReport *)self topLevelEvents];
  [(ICSharedListeningConnectionReport *)self _addEvents:v8 toReportString:v3 eventLevel:0];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(ICSharedListeningConnectionReport *)self topLevelEvents];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v9);
        }

        [*(*(&v18 + 1) + 8 * i) duration];
        v13 = v13 + v15;
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)endEvent:(id)a3 withError:(id)a4
{
  v6 = MEMORY[0x1E695DF00];
  v7 = a4;
  v8 = a3;
  v11 = [v6 date];
  v9 = [(ICSharedListeningConnectionReport *)self allEvents];
  v10 = [v9 objectForKey:v8];

  [v10 setEndDate:v11];
  [v10 setError:v7];
}

- (void)startEvent:(id)a3 withParentEvent:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [[ICSharedListeningConnectionReportEvent alloc] initWithName:v11];
  if (v6)
  {
    v8 = [(ICSharedListeningConnectionReport *)self allEvents];
    v9 = [v8 objectForKey:v6];
    [v9 addSubEvent:v7];
  }

  else
  {
    v8 = [(ICSharedListeningConnectionReport *)self topLevelEvents];
    [v8 addObject:v7];
  }

  v10 = [(ICSharedListeningConnectionReport *)self allEvents];
  [v10 setObject:v7 forKey:v11];
}

- (ICSharedListeningConnectionReport)init
{
  v8.receiver = self;
  v8.super_class = ICSharedListeningConnectionReport;
  v2 = [(ICSharedListeningConnectionReport *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    allEvents = v2->_allEvents;
    v2->_allEvents = v3;

    v5 = objc_opt_new();
    topLevelEvents = v2->_topLevelEvents;
    v2->_topLevelEvents = v5;
  }

  return v2;
}

@end