@interface SKStateTransitionTable
+ (id)tableWithTransitionEntries:(id)entries selectorTarget:(id)target;
- (id)entryForState:(id)state event:(id)event;
@end

@implementation SKStateTransitionTable

+ (id)tableWithTransitionEntries:(id)entries selectorTarget:(id)target
{
  v35 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  targetCopy = target;
  v6 = objc_alloc_init(objc_opt_class());
  v7 = objc_opt_new();
  [v6 setEntriesMap:v7];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = entriesCopy;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v29 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        entriesMap = [v6 entriesMap];
        state = [v11 state];
        v14 = [entriesMap objectForKeyedSubscript:state];

        if (!v14)
        {
          v14 = objc_opt_new();
          entriesMap2 = [v6 entriesMap];
          state2 = [v11 state];
          [entriesMap2 setObject:v14 forKeyedSubscript:state2];
        }

        event = [v11 event];
        [v14 objectForKeyedSubscript:event];
        if (objc_claimAutoreleasedReturnValue())
        {
          +[SKStateTransitionTable tableWithTransitionEntries:selectorTarget:];
        }

        if ([v11 selector])
        {
          [v11 selector];
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            +[SKStateTransitionTable tableWithTransitionEntries:selectorTarget:];
          }

          state3 = [v11 state];
          event2 = [v11 event];
          selector = [v11 selector];
          nextState = [v11 nextState];
          nextState2 = [SKStateTransitionEntry entryWithState:state3 event:event2 selector:selector nextState:nextState];
          event3 = [v11 event];
          [v14 setObject:nextState2 forKeyedSubscript:event3];
        }

        else
        {
          state3 = [v11 state];
          event2 = [v11 event];
          nextState = [v11 action];
          nextState2 = [v11 nextState];
          event3 = [SKStateTransitionEntry entryWithState:state3 event:event2 action:nextState nextState:nextState2];
          event4 = [v11 event];
          [v14 setObject:event3 forKeyedSubscript:event4];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  [v6 setSelectorTarget:targetCopy];
  v25 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)entryForState:(id)state event:(id)event
{
  eventCopy = event;
  stateCopy = state;
  entriesMap = [(SKStateTransitionTable *)self entriesMap];
  v9 = [entriesMap objectForKeyedSubscript:stateCopy];

  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:eventCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end