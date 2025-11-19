@interface VUIStateMachine
+ (id)stateMachinesOfType:(Class)a3;
+ (void)deregisterStateMachine:(id)a3;
+ (void)initialize;
+ (void)registerStateMachine:(id)a3;
- (VUIStateMachine)initWithName:(id)a3 initialState:(id)a4 mode:(int64_t)a5;
- (VUIStateMachine)initWithName:(id)a3 initialState:(id)a4 mode:(int64_t)a5 stateChangeHandler:(id)a6;
- (id)_eventHandlerForEvent:(id)a3;
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
@end

@implementation VUIStateMachine

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    sStateMachines = objc_opt_new();

    MEMORY[0x2821F96F8]();
  }
}

- (void)logUnhandledEvents
{
  v70 = *MEMORY[0x277D85DE8];
  v35 = [(NSMutableDictionary *)self->_handlers allKeys];
  v3 = [v35 sortedArrayUsingSelector:?];
  v4 = [MEMORY[0x277CBEB58] set];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v58;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v58 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)self->_handlers objectForKey:*(*(&v57 + 1) + 8 * i)];
        v10 = [v9 allKeys];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v53 objects:v68 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v54;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v54 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [v4 addObject:*(*(&v53 + 1) + 8 * j)];
            }

            v12 = [v10 countByEnumeratingWithState:&v53 objects:v68 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v57 objects:v69 count:16];
    }

    while (v6);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v15 = [(NSMutableDictionary *)self->_defaultHandlers allKeys];
  v16 = [v15 countByEnumeratingWithState:&v49 objects:v67 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v50;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v50 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v4 addObject:*(*(&v49 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v49 objects:v67 count:16];
    }

    while (v17);
  }

  v20 = [v4 allObjects];
  v21 = [v20 sortedArrayUsingSelector:sel_compare_];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v36 = v21;
  v38 = [v36 countByEnumeratingWithState:&v45 objects:v66 count:16];
  if (v38)
  {
    v37 = *v46;
    do
    {
      v22 = 0;
      do
      {
        if (*v46 != v37)
        {
          objc_enumerationMutation(v36);
        }

        v40 = v22;
        v23 = *(*(&v45 + 1) + 8 * v22);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v24 = obj;
        v25 = [v24 countByEnumeratingWithState:&v41 objects:v65 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v42;
          do
          {
            for (m = 0; m != v26; ++m)
            {
              if (*v42 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v41 + 1) + 8 * m);
              v30 = [(NSMutableDictionary *)self->_handlers objectForKey:v29];
              v31 = [v30 objectForKey:v23];

              if (!v31)
              {
                v32 = [(NSMutableDictionary *)self->_defaultHandlers objectForKey:v23];

                if (!v32)
                {
                  v33 = [(VUIStateMachine *)self logObject];

                  if (v33)
                  {
                    v34 = [(VUIStateMachine *)self logObject];
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v62 = v23;
                      v63 = 2112;
                      v64 = v29;
                      _os_log_impl(&dword_270E6E000, v34, OS_LOG_TYPE_INFO, "[%@] is unhandled for [%@]", buf, 0x16u);
                    }
                  }
                }
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v41 objects:v65 count:16];
          }

          while (v26);
        }

        v22 = v40 + 1;
      }

      while (v40 + 1 != v38);
      v38 = [v36 countByEnumeratingWithState:&v45 objects:v66 count:16];
    }

    while (v38);
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
      [(VUIStateMachine *)self _dispatchEvent:v5];
    }

    else
    {
      [(VUIStateMachine *)self _processEvent:v5];
    }

    v4 = v5;
  }
}

- (void)_executePostTransitionBlocks
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = self->_blocksToExecuteAfterStateTransition;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_blocksToExecuteAfterStateTransition copy];
  [(NSMutableArray *)self->_blocksToExecuteAfterStateTransition removeAllObjects];
  objc_sync_exit(v3);

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
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
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [sStateMachines allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  return v10;
}

- (VUIStateMachine)initWithName:(id)a3 initialState:(id)a4 mode:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __50__VUIStateMachine_initWithName_initialState_mode___block_invoke;
  v16 = &unk_279E21828;
  objc_copyWeak(&v17, &location);
  v10 = MEMORY[0x2743B7C30](&v13);
  v11 = [(VUIStateMachine *)self initWithName:v8 initialState:v9 mode:a5 stateChangeHandler:v10, v13, v14, v15, v16];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v11;
}

void __50__VUIStateMachine_initWithName_initialState_mode___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v17 = a6;
  v11 = a7;
  v12 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{a3, @"VUIStateMachineOldStateKey", a4, @"VUIStateMachineNewStateKey", 0}];
  if (v17)
  {
    [v12 setObject:v17 forKey:@"VUIStateMachineContextKey"];
  }

  if (v11)
  {
    [v12 setObject:v11 forKey:@"VUIStateMachineUserInfoKey"];
  }

  v13 = MEMORY[0x277CCAB88];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v15 = [v13 notificationWithName:@"VUIStateMachineStateChangedNotification" object:WeakRetained userInfo:v12];

  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 postNotification:v15];
}

- (VUIStateMachine)initWithName:(id)a3 initialState:(id)a4 mode:(int64_t)a5 stateChangeHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v31.receiver = self;
  v31.super_class = VUIStateMachine;
  v13 = [(VUIStateMachine *)&v31 init];
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

    [(VUIStateMachine *)v13 setCurrentState:v11];
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
      v25 = MEMORY[0x2743B7C30]();
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

- (void)postEvent:(id)a3 withContext:(id)a4 userInfo:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && [(VUIStateMachine *)self shouldAcceptEvents])
  {
    v11 = [(VUIStateMachine *)self ignorableEvents];
    v12 = [v11 containsObject:v8];

    if (!v12)
    {
      v16 = [MEMORY[0x277CBEB38] dictionaryWithObject:v8 forKey:@"VUIStateMachineEventKey"];
      v14 = v16;
      if (v9)
      {
        [v16 setObject:v9 forKey:@"VUIStateMachineContextKey"];
      }

      if (v10)
      {
        [v14 setObject:v10 forKey:@"VUIStateMachineUserInfoKey"];
      }

      v17 = self->_events;
      objc_sync_enter(v17);
      [(NSMutableArray *)self->_events addObject:v14];
      v18 = [(NSMutableArray *)self->_events count];
      objc_sync_exit(v17);

      if (v18 == 1)
      {
        v19 = [(VUIStateMachine *)self logObject];

        if (v19)
        {
          v20 = [(VUIStateMachine *)self logObject];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [(VUIStateMachine *)self name];
            v22 = 138412546;
            v23 = v21;
            v24 = 2112;
            v25 = v8;
            _os_log_impl(&dword_270E6E000, v20, OS_LOG_TYPE_DEFAULT, "State machine [%@] received event [%@], initiating event processing", &v22, 0x16u);
          }
        }

        [(VUIStateMachine *)self _processNextEvent];
      }

      goto LABEL_17;
    }

    v13 = [(VUIStateMachine *)self logObject];

    if (v13)
    {
      v14 = [(VUIStateMachine *)self logObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(VUIStateMachine *)self name];
        v22 = 138412546;
        v23 = v15;
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_270E6E000, v14, OS_LOG_TYPE_DEFAULT, "State machine named [%@] received ignorable event [%@]", &v22, 0x16u);
      }

LABEL_17:
    }
  }
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
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(VUIStateMachine *)self shouldAcceptEvents])
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

  v11 = [(VUIStateMachine *)self logObject];

  if (v11)
  {
    v12 = [(VUIStateMachine *)self logObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      v18 = 138412290;
      v19 = name;
      _os_log_impl(&dword_270E6E000, v12, OS_LOG_TYPE_DEFAULT, "State machine [%@] can not register event handlers when it is accepting events", &v18, 0xCu);
    }
  }

LABEL_16:
}

- (void)registerHandlerForEvent:(id)a3 onStates:(id)a4 withBlock:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(VUIStateMachine *)self shouldAcceptEvents])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(VUIStateMachine *)self registerHandlerForEvent:v8 onState:*(*(&v16 + 1) + 8 * v15++) withBlock:v10, v16];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (void)registerHandlerForEvents:(id)a3 onStates:(id)a4 withBlock:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v22 = a4;
  v9 = a5;
  if (![(VUIStateMachine *)self shouldAcceptEvents])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = v8;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        v13 = 0;
        do
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v27 + 1) + 8 * v13);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v15 = v22;
          v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v24;
            do
            {
              v19 = 0;
              do
              {
                if (*v24 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                [(VUIStateMachine *)self registerHandlerForEvent:v14 onState:*(*(&v23 + 1) + 8 * v19++) withBlock:v9];
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v17);
          }

          ++v13;
        }

        while (v13 != v11);
        v11 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    v8 = v20;
  }
}

- (void)registerDefaultHandlerForEvent:(id)a3 withBlock:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(VUIStateMachine *)self shouldAcceptEvents])
  {
    v8 = [(VUIStateMachine *)self logObject];

    if (v8)
    {
      v9 = [(VUIStateMachine *)self logObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        v14 = 138412290;
        v15 = name;
        _os_log_impl(&dword_270E6E000, v9, OS_LOG_TYPE_DEFAULT, "State machine [%@] can not register default handlers when it is accepting events", &v14, 0xCu);
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
}

- (void)registerStateTransitionFromState:(id)a3 onEvent:(id)a4 toState:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(VUIStateMachine *)self shouldAcceptEvents])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__VUIStateMachine_registerStateTransitionFromState_onEvent_toState___block_invoke;
    v14[3] = &unk_279E21850;
    v15 = v10;
    [(VUIStateMachine *)self registerHandlerForEvent:v9 onState:v8 withBlock:v14];
    v12 = v15;
LABEL_6:

    goto LABEL_7;
  }

  v11 = [(VUIStateMachine *)self logObject];

  if (v11)
  {
    v12 = [(VUIStateMachine *)self logObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      *buf = 138412290;
      v17 = name;
      _os_log_impl(&dword_270E6E000, v12, OS_LOG_TYPE_DEFAULT, "State machine [%@] can not register state transitions when it is accepting events", buf, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
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
  [(VUIStateMachine *)self setShouldAcceptEvents:0];
  [(VUIStateMachine *)self purgeEventQueue];
  [(NSMutableDictionary *)self->_handlers removeAllObjects];
  [(NSMutableDictionary *)self->_defaultHandlers removeAllObjects];
  objc_sync_exit(obj);
}

- (void)_transitionToState:(id)a3 withEvent:(id)a4 context:(id)a5 userInfo:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(VUIStateMachine *)self currentState];
  v15 = [v14 copy];

  if ([v15 isEqualToString:v10])
  {
    v16 = [(VUIStateMachine *)self logObject];

    if (v16)
    {
      v17 = [(VUIStateMachine *)self logObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        *buf = 138412802;
        v34 = name;
        v35 = 2112;
        v36 = v15;
        v37 = 2112;
        v38 = v11;
        _os_log_impl(&dword_270E6E000, v17, OS_LOG_TYPE_DEFAULT, "State machine [%@] remaining at state [%@] on event [%@]", buf, 0x20u);
      }
    }
  }

  else
  {
    [(VUIStateMachine *)self setCurrentState:v10];
    v19 = [(VUIStateMachine *)self logObject];

    if (v19)
    {
      v20 = [(VUIStateMachine *)self logObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_name;
        *buf = 138412802;
        v34 = v21;
        v35 = 2112;
        v36 = v15;
        v37 = 2112;
        v38 = v10;
        _os_log_impl(&dword_270E6E000, v20, OS_LOG_TYPE_DEFAULT, "State machine [%@] transitioning from state [%@] to [%@]", buf, 0x20u);
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
        v23 = MEMORY[0x277D85DD0];
        v24 = 3221225472;
        v25 = __74__VUIStateMachine_Private___transitionToState_withEvent_context_userInfo___block_invoke;
        v26 = &unk_279E21878;
        v27 = self;
        v28 = v15;
        v29 = v10;
        v30 = v11;
        v31 = v12;
        v32 = v13;
        dispatch_async(MEMORY[0x277D85CD0], &v23);
      }
    }
  }

  [(VUIStateMachine *)self _executePostTransitionBlocks:v23];
}

- (void)_processEvent:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = a3;
  if (v20)
  {
    v4 = v20;
    do
    {
      v5 = [v4 objectForKey:@"VUIStateMachineEventKey"];
      v6 = [v4 objectForKey:@"VUIStateMachineUserInfoKey"];
      v7 = [v4 objectForKey:@"VUIStateMachineContextKey"];
      v8 = [(VUIStateMachine *)self _eventHandlerForEvent:v5];
      v9 = [(VUIStateMachine *)self logObject];
      v10 = v9 == 0;

      if (!v10)
      {
        v11 = [(VUIStateMachine *)self logObject];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          name = self->_name;
          v13 = [(VUIStateMachine *)self currentState];
          *buf = 138412802;
          v22 = name;
          v23 = 2112;
          v24 = v5;
          v25 = 2112;
          v26 = v13;
          _os_log_impl(&dword_270E6E000, v11, OS_LOG_TYPE_DEFAULT, "State machine [%@] processing event [%@] in state [%@]", buf, 0x20u);
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

      [(VUIStateMachine *)v16 _transitionToState:v15 withEvent:v5 context:v7 userInfo:v6];
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
}

- (void)_dispatchEvent:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__VUIStateMachine_Private___dispatchEvent___block_invoke;
  v7[3] = &unk_279E218C8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __43__VUIStateMachine_Private___dispatchEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"VUIStateMachineEventKey"];
  v3 = [*(a1 + 32) objectForKey:@"VUIStateMachineUserInfoKey"];
  v4 = [*(a1 + 32) objectForKey:@"VUIStateMachineContextKey"];
  v5 = [*(a1 + 40) _eventHandlerForEvent:v2];
  v6 = (v5)[2](v5, *(a1 + 40), v2, v4, v3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__VUIStateMachine_Private___dispatchEvent___block_invoke_2;
  block[3] = &unk_279E218A0;
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
    v7 = [(VUIStateMachine *)self currentState];
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
    v10 = &__block_literal_global_12;
  }

  v11 = MEMORY[0x2743B7C30](v10);

  return v11;
}

@end