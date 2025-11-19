@interface TVPStateMachine
+ (id)stateMachinesOfType:(Class)a3;
+ (void)deregisterStateMachine:(id)a3;
+ (void)initialize;
+ (void)registerStateMachine:(id)a3;
- (TVPStateMachine)initWithName:(id)a3 initialState:(id)a4 mode:(int64_t)a5;
- (TVPStateMachine)initWithName:(id)a3 initialState:(id)a4 mode:(int64_t)a5 stateChangeHandler:(id)a6;
- (id)_eventHandlerForEvent:(id)a3;
- (unint64_t)eventCount;
- (void)_dispatchEvent:(id)a3;
- (void)_executePostTransitionBlocks;
- (void)_processEvent:(id)a3;
- (void)_processNextEvent;
- (void)_transitionToState:(id)a3 withEvent:(id)a4 context:(id)a5 userInfo:(id)a6;
- (void)deregisterHandlers;
- (void)executeBlockAfterCurrentStateTransition:(id)a3;
- (void)logUnhandledEvents;
- (void)postEvent:(id)a3 withContext:(id)a4 userInfo:(id)a5;
- (void)purgeEventQueue;
- (void)registerDefaultHandlerForEvent:(id)a3 withBlock:(id)a4;
- (void)registerHandlerForEvent:(id)a3 onState:(id)a4 withBlock:(id)a5;
- (void)registerHandlerForEvent:(id)a3 onStates:(id)a4 withBlock:(id)a5;
- (void)registerHandlerForEvents:(id)a3 onStates:(id)a4 withBlock:(id)a5;
- (void)registerStateTransitionFromState:(id)a3 onEvent:(id)a4 toState:(id)a5;
- (void)setLoggingComponent:(id)a3;
@end

@implementation TVPStateMachine

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    sStateMachines = objc_opt_new();

    MEMORY[0x2821F96F8]();
  }
}

- (void)_processNextEvent
{
  v3 = self->_events;
  objc_sync_enter(v3);
  if ([(NSMutableArray *)self->_events count])
  {
    v5 = [(NSMutableArray *)self->_events objectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v3);

  v4 = v5;
  if (v5)
  {
    if (self->_mode)
    {
      [(TVPStateMachine *)self _dispatchEvent:v5];
    }

    else
    {
      [(TVPStateMachine *)self _processEvent:v5];
    }

    v4 = v5;
  }
}

- (void)_executePostTransitionBlocks
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = self->_blocksToExecuteAfterStateTransition;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_blocksToExecuteAfterStateTransition copy];
  [(NSMutableArray *)self->_blocksToExecuteAfterStateTransition removeAllObjects];
  objc_sync_exit(v3);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)registerStateMachine:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v7 = v3;
    v4 = v3;
    objc_sync_enter(v4);
    [v4 setShouldAcceptEvents:1];
    v5 = sStateMachines;
    v6 = [v4 name];
    [v5 setObject:v4 forKey:v6];

    objc_sync_exit(v4);
    v3 = v7;
  }
}

+ (void)deregisterStateMachine:(id)a3
{
  if (a3)
  {
    v3 = a3;
    [v3 setShouldAcceptEvents:0];
    [v3 purgeEventQueue];
    [v3 deregisterHandlers];
    v4 = sStateMachines;
    v5 = [v3 name];

    [v4 removeObjectForKey:v5];
  }
}

+ (id)stateMachinesOfType:(Class)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [sStateMachines allValues];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (TVPStateMachine)initWithName:(id)a3 initialState:(id)a4 mode:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __50__TVPStateMachine_initWithName_initialState_mode___block_invoke;
  v16 = &unk_279D7BB80;
  objc_copyWeak(&v17, &location);
  v10 = MEMORY[0x26D6B0400](&v13);
  v11 = [(TVPStateMachine *)self initWithName:v8 initialState:v9 mode:a5 stateChangeHandler:v10, v13, v14, v15, v16];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v11;
}

void __50__TVPStateMachine_initWithName_initialState_mode___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v17 = a6;
  v11 = a7;
  v12 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{a3, @"TVPStateMachineOldStateKey", a4, @"TVPStateMachineNewStateKey", 0}];
  if (v17)
  {
    [v12 setObject:v17 forKey:@"TVPStateMachineContextKey"];
  }

  if (v11)
  {
    [v12 setObject:v11 forKey:@"TVPStateMachineUserInfoKey"];
  }

  v13 = MEMORY[0x277CCAB88];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v15 = [v13 notificationWithName:@"TVPStateMachineStateChangedNotification" object:WeakRetained userInfo:v12];

  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 postNotification:v15];
}

- (TVPStateMachine)initWithName:(id)a3 initialState:(id)a4 mode:(int64_t)a5 stateChangeHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v31.receiver = self;
  v31.super_class = TVPStateMachine;
  v13 = [(TVPStateMachine *)&v31 init];
  if (!v13)
  {
LABEL_10:
    v27 = v13;
    goto LABEL_11;
  }

  if ([v10 length] && objc_msgSend(v11, "length"))
  {
    v14 = [v10 copy];
    name = v13->_name;
    v13->_name = v14;

    [(TVPStateMachine *)v13 setCurrentState:v11];
    v13->_mode = a5;
    v16 = objc_opt_new();
    events = v13->_events;
    v13->_events = v16;

    v18 = objc_opt_new();
    handlers = v13->_handlers;
    v13->_handlers = v18;

    v20 = objc_opt_new();
    defaultHandlers = v13->_defaultHandlers;
    v13->_defaultHandlers = v20;

    v22 = objc_opt_new();
    blocksToExecuteAfterStateTransition = v13->_blocksToExecuteAfterStateTransition;
    v13->_blocksToExecuteAfterStateTransition = v22;

    if (v12)
    {
      v24 = [v12 copy];
      v25 = MEMORY[0x26D6B0400]();
      stateChangeHandler = v13->_stateChangeHandler;
      v13->_stateChangeHandler = v25;
    }

    else
    {
      v24 = v13->_stateChangeHandler;
      v13->_stateChangeHandler = 0;
    }

    objc_storeStrong(&v13->_logObject, MEMORY[0x277D86220]);
    if (a5 == 1)
    {
      v28 = dispatch_get_global_queue(21, 0);
      dispatchQueue = v13->_dispatchQueue;
      v13->_dispatchQueue = v28;
    }

    goto LABEL_10;
  }

  v27 = 0;
LABEL_11:

  return v27;
}

- (void)setLoggingComponent:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_loggingComponent, a3);
  if ([(NSString *)self->_loggingComponent length])
  {
    v5 = os_log_create("com.apple.AppleTV.playback", [(NSString *)self->_loggingComponent UTF8String]);
  }

  else
  {
    v5 = 0;
  }

  [(TVPStateMachine *)self setLogObject:v5];
}

- (unint64_t)eventCount
{
  v3 = self->_events;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_events count];
  objc_sync_exit(v3);

  return v4;
}

- (void)postEvent:(id)a3 withContext:(id)a4 userInfo:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && [(TVPStateMachine *)self shouldAcceptEvents])
  {
    v11 = [(TVPStateMachine *)self ignorableEvents];
    v12 = [v11 containsObject:v8];

    if (!v12)
    {
      v16 = [MEMORY[0x277CBEB38] dictionaryWithObject:v8 forKey:@"TVPStateMachineEventKey"];
      v14 = v16;
      if (v9)
      {
        [v16 setObject:v9 forKey:@"TVPStateMachineContextKey"];
      }

      if (v10)
      {
        [v14 setObject:v10 forKey:@"TVPStateMachineUserInfoKey"];
      }

      v17 = self->_events;
      objc_sync_enter(v17);
      [(NSMutableArray *)self->_events addObject:v14];
      v18 = [(NSMutableArray *)self->_events count]== 1;
      objc_sync_exit(v17);

      v19 = [(TVPStateMachine *)self logObject];
      v20 = v19;
      if (v18)
      {

        if (v20)
        {
          v21 = [(TVPStateMachine *)self logObject];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [(TVPStateMachine *)self name];
            v25 = 138412546;
            v26 = v22;
            v27 = 2112;
            v28 = v8;
            _os_log_impl(&dword_26CEDD000, v21, OS_LOG_TYPE_DEFAULT, "State machine [%@] received event [%@], initiating event processing", &v25, 0x16u);
          }
        }

        [(TVPStateMachine *)self _processNextEvent];
      }

      else
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [(TVPStateMachine *)self name];
          v25 = 138412546;
          v26 = v23;
          v27 = 2112;
          v28 = v8;
          _os_log_impl(&dword_26CEDD000, v20, OS_LOG_TYPE_DEFAULT, "State machine [%@] received event [%@], but existing events are pending.  Adding to queue.", &v25, 0x16u);
        }
      }

      goto LABEL_20;
    }

    v13 = [(TVPStateMachine *)self logObject];

    if (v13)
    {
      v14 = [(TVPStateMachine *)self logObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(TVPStateMachine *)self name];
        v25 = 138412546;
        v26 = v15;
        v27 = 2112;
        v28 = v8;
        _os_log_impl(&dword_26CEDD000, v14, OS_LOG_TYPE_DEFAULT, "State machine named [%@] received ignorable event [%@]", &v25, 0x16u);
      }

LABEL_20:
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)purgeEventQueue
{
  obj = self->_events;
  objc_sync_enter(obj);
  [(NSMutableArray *)self->_events removeAllObjects];
  objc_sync_exit(obj);
}

- (void)registerHandlerForEvent:(id)a3 onState:(id)a4 withBlock:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(TVPStateMachine *)self shouldAcceptEvents])
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    v14 = self->_handlers;
    objc_sync_enter(v14);
    v15 = [(NSMutableDictionary *)self->_handlers objectForKey:v9];
    v16 = v15;
    if (!v15 && v8 && v10)
    {
      v16 = objc_opt_new();
      [(NSMutableDictionary *)self->_handlers setObject:v16 forKey:v9];
      goto LABEL_14;
    }

    if (v8)
    {
      if (v10)
      {
LABEL_14:
        v17 = [v10 copy];
        [v16 setObject:v17 forKey:v8];

        goto LABEL_15;
      }

      [v15 removeObjectForKey:v8];
    }

LABEL_15:

    objc_sync_exit(v14);
    goto LABEL_16;
  }

  v11 = [(TVPStateMachine *)self logObject];

  if (v11)
  {
    v12 = [(TVPStateMachine *)self logObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      v19 = 138412290;
      v20 = name;
      _os_log_impl(&dword_26CEDD000, v12, OS_LOG_TYPE_DEFAULT, "State machine [%@] can not register event handlers when it is accepting events", &v19, 0xCu);
    }
  }

LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)registerHandlerForEvent:(id)a3 onStates:(id)a4 withBlock:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(TVPStateMachine *)self shouldAcceptEvents])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(TVPStateMachine *)self registerHandlerForEvent:v8 onState:*(*(&v17 + 1) + 8 * v15++) withBlock:v10, v17];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)registerHandlerForEvents:(id)a3 onStates:(id)a4 withBlock:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v23 = a4;
  v9 = a5;
  if (![(TVPStateMachine *)self shouldAcceptEvents])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v21 = v8;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        v13 = 0;
        do
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v28 + 1) + 8 * v13);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v15 = v23;
          v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v25;
            do
            {
              v19 = 0;
              do
              {
                if (*v25 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                [(TVPStateMachine *)self registerHandlerForEvent:v14 onState:*(*(&v24 + 1) + 8 * v19++) withBlock:v9];
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v17);
          }

          ++v13;
        }

        while (v13 != v11);
        v11 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v11);
    }

    v8 = v21;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)registerDefaultHandlerForEvent:(id)a3 withBlock:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(TVPStateMachine *)self shouldAcceptEvents])
  {
    v8 = [(TVPStateMachine *)self logObject];

    if (v8)
    {
      v9 = [(TVPStateMachine *)self logObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        v15 = 138412290;
        v16 = name;
        _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "State machine [%@] can not register default handlers when it is accepting events", &v15, 0xCu);
      }
    }
  }

  else
  {
    v11 = self->_handlers;
    objc_sync_enter(v11);
    if (v6 && v7)
    {
      defaultHandlers = self->_defaultHandlers;
      v13 = [v7 copy];
      [(NSMutableDictionary *)defaultHandlers setObject:v13 forKey:v6];
    }

    objc_sync_exit(v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)registerStateTransitionFromState:(id)a3 onEvent:(id)a4 toState:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(TVPStateMachine *)self shouldAcceptEvents])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__TVPStateMachine_registerStateTransitionFromState_onEvent_toState___block_invoke;
    v15[3] = &unk_279D7BBA8;
    v16 = v10;
    [(TVPStateMachine *)self registerHandlerForEvent:v9 onState:v8 withBlock:v15];
    v12 = v16;
LABEL_6:

    goto LABEL_7;
  }

  v11 = [(TVPStateMachine *)self logObject];

  if (v11)
  {
    v12 = [(TVPStateMachine *)self logObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      *buf = 138412290;
      v18 = name;
      _os_log_impl(&dword_26CEDD000, v12, OS_LOG_TYPE_DEFAULT, "State machine [%@] can not register state transitions when it is accepting events", buf, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)executeBlockAfterCurrentStateTransition:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = self;
    objc_sync_enter(v5);
    handlingEvent = v5->_handlingEvent;
    objc_sync_exit(v5);

    if (handlingEvent)
    {
      v7 = v5->_blocksToExecuteAfterStateTransition;
      objc_sync_enter(v7);
      blocksToExecuteAfterStateTransition = v5->_blocksToExecuteAfterStateTransition;
      v9 = [v10 copy];
      [(NSMutableArray *)blocksToExecuteAfterStateTransition addObject:v9];

      objc_sync_exit(v7);
    }

    else
    {
      v10[2]();
    }

    v4 = v10;
  }
}

- (void)deregisterHandlers
{
  obj = self->_handlers;
  objc_sync_enter(obj);
  [(TVPStateMachine *)self setShouldAcceptEvents:0];
  [(TVPStateMachine *)self purgeEventQueue];
  [(NSMutableDictionary *)self->_handlers removeAllObjects];
  [(NSMutableDictionary *)self->_defaultHandlers removeAllObjects];
  objc_sync_exit(obj);
}

- (void)logUnhandledEvents
{
  v71 = *MEMORY[0x277D85DE8];
  v36 = [(NSMutableDictionary *)self->_handlers allKeys];
  v3 = [v36 sortedArrayUsingSelector:?];
  v4 = [MEMORY[0x277CBEB58] set];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v59;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v59 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)self->_handlers objectForKey:*(*(&v58 + 1) + 8 * i)];
        v10 = [v9 allKeys];
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v54 objects:v69 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v55;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v55 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [v4 addObject:*(*(&v54 + 1) + 8 * j)];
            }

            v12 = [v10 countByEnumeratingWithState:&v54 objects:v69 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v6);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = [(NSMutableDictionary *)self->_defaultHandlers allKeys];
  v16 = [v15 countByEnumeratingWithState:&v50 objects:v68 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v51;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v4 addObject:*(*(&v50 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v50 objects:v68 count:16];
    }

    while (v17);
  }

  v20 = [v4 allObjects];
  v21 = [v20 sortedArrayUsingSelector:sel_compare_];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v37 = v21;
  v39 = [v37 countByEnumeratingWithState:&v46 objects:v67 count:16];
  if (v39)
  {
    v38 = *v47;
    do
    {
      v22 = 0;
      do
      {
        if (*v47 != v38)
        {
          objc_enumerationMutation(v37);
        }

        v41 = v22;
        v23 = *(*(&v46 + 1) + 8 * v22);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v24 = obj;
        v25 = [v24 countByEnumeratingWithState:&v42 objects:v66 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v43;
          do
          {
            for (m = 0; m != v26; ++m)
            {
              if (*v43 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v42 + 1) + 8 * m);
              v30 = [(NSMutableDictionary *)self->_handlers objectForKey:v29];
              v31 = [v30 objectForKey:v23];

              if (!v31)
              {
                v32 = [(NSMutableDictionary *)self->_defaultHandlers objectForKey:v23];

                if (!v32)
                {
                  v33 = [(TVPStateMachine *)self logObject];

                  if (v33)
                  {
                    v34 = [(TVPStateMachine *)self logObject];
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v63 = v23;
                      v64 = 2112;
                      v65 = v29;
                      _os_log_impl(&dword_26CEDD000, v34, OS_LOG_TYPE_INFO, "[%@] is unhandled for [%@]", buf, 0x16u);
                    }
                  }
                }
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v42 objects:v66 count:16];
          }

          while (v26);
        }

        v22 = v41 + 1;
      }

      while (v41 + 1 != v39);
      v39 = [v37 countByEnumeratingWithState:&v46 objects:v67 count:16];
    }

    while (v39);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToState:(id)a3 withEvent:(id)a4 context:(id)a5 userInfo:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(TVPStateMachine *)self currentState];
  v15 = [v14 copy];

  if ([v15 isEqualToString:v10])
  {
    v16 = [(TVPStateMachine *)self logObject];

    if (v16)
    {
      v17 = [(TVPStateMachine *)self logObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        *buf = 138412802;
        v35 = name;
        v36 = 2112;
        v37 = v15;
        v38 = 2112;
        v39 = v11;
        _os_log_impl(&dword_26CEDD000, v17, OS_LOG_TYPE_DEFAULT, "State machine [%@] remaining at state [%@] on event [%@]", buf, 0x20u);
      }
    }
  }

  else
  {
    [(TVPStateMachine *)self setCurrentState:v10];
    v19 = [(TVPStateMachine *)self logObject];

    if (v19)
    {
      v20 = [(TVPStateMachine *)self logObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_name;
        *buf = 138412802;
        v35 = v21;
        v36 = 2112;
        v37 = v15;
        v38 = 2112;
        v39 = v10;
        _os_log_impl(&dword_26CEDD000, v20, OS_LOG_TYPE_DEFAULT, "State machine [%@] transitioning from state [%@] to [%@]", buf, 0x20u);
      }
    }

    stateChangeHandler = self->_stateChangeHandler;
    if (stateChangeHandler)
    {
      if (self->_callsStateChangeHandlerSynchronously)
      {
        stateChangeHandler[2](stateChangeHandler, self, v15, v10, v11, v12, v13);
      }

      else
      {
        v24 = MEMORY[0x277D85DD0];
        v25 = 3221225472;
        v26 = __74__TVPStateMachine_Private___transitionToState_withEvent_context_userInfo___block_invoke;
        v27 = &unk_279D7BBD0;
        v28 = self;
        v29 = v15;
        v30 = v10;
        v31 = v11;
        v32 = v12;
        v33 = v13;
        dispatch_async(MEMORY[0x277D85CD0], &v24);
      }
    }
  }

  [(TVPStateMachine *)self _executePostTransitionBlocks:v24];

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __74__TVPStateMachine_Private___transitionToState_withEvent_context_userInfo___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[8];
  v5 = a1[9];
  return (*(*(a1[4] + 8) + 16))(*(a1[4] + 8));
}

- (void)_processEvent:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = a3;
  if (v21)
  {
    v4 = v21;
    do
    {
      v5 = [v4 objectForKey:@"TVPStateMachineEventKey"];
      v6 = [v4 objectForKey:@"TVPStateMachineUserInfoKey"];
      v7 = [v4 objectForKey:@"TVPStateMachineContextKey"];
      v8 = [(TVPStateMachine *)self _eventHandlerForEvent:v5];
      v9 = [(TVPStateMachine *)self logObject];
      v10 = v9 == 0;

      if (!v10)
      {
        v11 = [(TVPStateMachine *)self logObject];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          name = self->_name;
          v13 = [(TVPStateMachine *)self currentState];
          *buf = 138412802;
          v23 = name;
          v24 = 2112;
          v25 = v5;
          v26 = 2112;
          v27 = v13;
          _os_log_impl(&dword_26CEDD000, v11, OS_LOG_TYPE_DEFAULT, "State machine [%@] processing event [%@] in state [%@]", buf, 0x20u);
        }
      }

      v14 = self;
      objc_sync_enter(v14);
      self->_handlingEvent = 1;
      objc_sync_exit(v14);

      v15 = (v8)[2](v8, v14, v5, v7, v6);
      v16 = v14;
      objc_sync_enter(v16);
      self->_handlingEvent = 0;
      objc_sync_exit(v16);

      [(TVPStateMachine *)v16 _transitionToState:v15 withEvent:v5 context:v7 userInfo:v6];
      v17 = self->_events;
      objc_sync_enter(v17);
      v18 = [(NSMutableArray *)self->_events count];
      if (v18)
      {
        if (v18 != 1)
        {
          [(NSMutableArray *)self->_events removeObjectAtIndex:0];
          v19 = [(NSMutableArray *)self->_events objectAtIndex:0];
          goto LABEL_12;
        }

        [(NSMutableArray *)self->_events removeObjectAtIndex:0];
      }

      v19 = 0;
LABEL_12:

      objc_sync_exit(v17);
      v4 = v19;
    }

    while (v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_dispatchEvent:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__TVPStateMachine_Private___dispatchEvent___block_invoke;
  v7[3] = &unk_279D7BC20;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __43__TVPStateMachine_Private___dispatchEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"TVPStateMachineEventKey"];
  v3 = [*(a1 + 32) objectForKey:@"TVPStateMachineUserInfoKey"];
  v4 = [*(a1 + 32) objectForKey:@"TVPStateMachineContextKey"];
  v5 = [*(a1 + 40) _eventHandlerForEvent:v2];
  v6 = (v5)[2](v5, *(a1 + 40), v2, v4, v3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__TVPStateMachine_Private___dispatchEvent___block_invoke_2;
  block[3] = &unk_279D7BBF8;
  block[4] = *(a1 + 40);
  v7 = v6;
  v14 = v7;
  v8 = v2;
  v15 = v8;
  v9 = v4;
  v16 = v9;
  v10 = v3;
  v17 = v10;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v11 = *(*(a1 + 40) + 16);
  objc_sync_enter(v11);
  [*(*(a1 + 40) + 16) removeObjectAtIndex:0];
  v12 = [*(*(a1 + 40) + 16) count];
  objc_sync_exit(v11);

  if (v12)
  {
    [*(a1 + 40) _processNextEvent];
  }
}

- (id)_eventHandlerForEvent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_handlers;
    objc_sync_enter(v5);
    handlers = self->_handlers;
    v7 = [(TVPStateMachine *)self currentState];
    v8 = [(NSMutableDictionary *)handlers objectForKey:v7];

    v9 = [v8 objectForKey:v4];
    if (!v9)
    {
      v9 = [(NSMutableDictionary *)self->_defaultHandlers objectForKey:v4];
    }

    objc_sync_exit(v5);
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &__block_literal_global_4;
  }

  v11 = MEMORY[0x26D6B0400](v10);

  return v11;
}

@end