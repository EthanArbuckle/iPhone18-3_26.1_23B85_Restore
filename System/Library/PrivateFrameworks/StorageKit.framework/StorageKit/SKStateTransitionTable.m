@interface SKStateTransitionTable
+ (id)tableWithTransitionEntries:(id)a3 selectorTarget:(id)a4;
- (id)entryForState:(id)a3 event:(id)a4;
@end

@implementation SKStateTransitionTable

+ (id)tableWithTransitionEntries:(id)a3 selectorTarget:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v28 = a4;
  v6 = objc_alloc_init(objc_opt_class());
  v7 = objc_opt_new();
  [v6 setEntriesMap:v7];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
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
        v12 = [v6 entriesMap];
        v13 = [v11 state];
        v14 = [v12 objectForKeyedSubscript:v13];

        if (!v14)
        {
          v14 = objc_opt_new();
          v15 = [v6 entriesMap];
          v16 = [v11 state];
          [v15 setObject:v14 forKeyedSubscript:v16];
        }

        v17 = [v11 event];
        [v14 objectForKeyedSubscript:v17];
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

          v18 = [v11 state];
          v19 = [v11 event];
          v20 = [v11 selector];
          v21 = [v11 nextState];
          v22 = [SKStateTransitionEntry entryWithState:v18 event:v19 selector:v20 nextState:v21];
          v23 = [v11 event];
          [v14 setObject:v22 forKeyedSubscript:v23];
        }

        else
        {
          v18 = [v11 state];
          v19 = [v11 event];
          v21 = [v11 action];
          v22 = [v11 nextState];
          v23 = [SKStateTransitionEntry entryWithState:v18 event:v19 action:v21 nextState:v22];
          v24 = [v11 event];
          [v14 setObject:v23 forKeyedSubscript:v24];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  [v6 setSelectorTarget:v28];
  v25 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)entryForState:(id)a3 event:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SKStateTransitionTable *)self entriesMap];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end