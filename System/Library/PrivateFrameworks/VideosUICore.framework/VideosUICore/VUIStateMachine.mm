@interface VUIStateMachine
+ (id)stateMachinesOfType:(Class)type;
+ (void)deregisterStateMachine:(id)machine;
+ (void)initialize;
+ (void)registerStateMachine:(id)machine;
- (VUIStateMachine)initWithName:(id)name initialState:(id)state mode:(int64_t)mode;
- (VUIStateMachine)initWithName:(id)name initialState:(id)state mode:(int64_t)mode stateChangeHandler:(id)handler;
- (id)_eventHandlerForEvent:(id)event;
- (void)_dispatchEvent:(id)event;
- (void)_executePostTransitionBlocks;
- (void)_processEvent:(id)event;
- (void)_processNextEvent;
- (void)_transitionToState:(id)state withEvent:(id)event context:(id)context userInfo:(id)info;
- (void)deregisterHandlers;
- (void)executeBlockAfterCurrentStateTransition:(id)transition;
- (void)logUnhandledEvents;
- (void)postEvent:(id)event withContext:(id)context userInfo:(id)info;
- (void)purgeEventQueue;
- (void)registerDefaultHandlerForEvent:(id)event withBlock:(id)block;
- (void)registerHandlerForEvent:(id)event onState:(id)state withBlock:(id)block;
- (void)registerHandlerForEvent:(id)event onStates:(id)states withBlock:(id)block;
- (void)registerHandlerForEvents:(id)events onStates:(id)states withBlock:(id)block;
- (void)registerStateTransitionFromState:(id)state onEvent:(id)event toState:(id)toState;
@end

@implementation VUIStateMachine

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sStateMachines = objc_opt_new();

    MEMORY[0x2821F96F8]();
  }
}

- (void)logUnhandledEvents
{
  v70 = *MEMORY[0x277D85DE8];
  allKeys = [(NSMutableDictionary *)self->_handlers allKeys];
  v3 = [allKeys sortedArrayUsingSelector:?];
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
        allKeys2 = [v9 allKeys];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v11 = [allKeys2 countByEnumeratingWithState:&v53 objects:v68 count:16];
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
                objc_enumerationMutation(allKeys2);
              }

              [v4 addObject:*(*(&v53 + 1) + 8 * j)];
            }

            v12 = [allKeys2 countByEnumeratingWithState:&v53 objects:v68 count:16];
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
  allKeys3 = [(NSMutableDictionary *)self->_defaultHandlers allKeys];
  v16 = [allKeys3 countByEnumeratingWithState:&v49 objects:v67 count:16];
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
          objc_enumerationMutation(allKeys3);
        }

        [v4 addObject:*(*(&v49 + 1) + 8 * k)];
      }

      v17 = [allKeys3 countByEnumeratingWithState:&v49 objects:v67 count:16];
    }

    while (v17);
  }

  allObjects = [v4 allObjects];
  v21 = [allObjects sortedArrayUsingSelector:sel_compare_];

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
                  logObject = [(VUIStateMachine *)self logObject];

                  if (logObject)
                  {
                    logObject2 = [(VUIStateMachine *)self logObject];
                    if (os_log_type_enabled(logObject2, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v62 = v23;
                      v63 = 2112;
                      v64 = v29;
                      _os_log_impl(&dword_270E6E000, logObject2, OS_LOG_TYPE_INFO, "[%@] is unhandled for [%@]", buf, 0x16u);
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

+ (void)registerStateMachine:(id)machine
{
  machineCopy = machine;
  if (machineCopy)
  {
    v7 = machineCopy;
    v4 = machineCopy;
    objc_sync_enter(v4);
    [v4 setShouldAcceptEvents:1];
    v5 = sStateMachines;
    name = [v4 name];
    [v5 setObject:v4 forKey:name];

    objc_sync_exit(v4);
    machineCopy = v7;
  }
}

+ (void)deregisterStateMachine:(id)machine
{
  if (machine)
  {
    machineCopy = machine;
    [machineCopy setShouldAcceptEvents:0];
    [machineCopy purgeEventQueue];
    [machineCopy deregisterHandlers];
    v4 = sStateMachines;
    name = [machineCopy name];

    [v4 removeObjectForKey:name];
  }
}

+ (id)stateMachinesOfType:(Class)type
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [sStateMachines allValues];
  v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  return v10;
}

- (VUIStateMachine)initWithName:(id)name initialState:(id)state mode:(int64_t)mode
{
  nameCopy = name;
  stateCopy = state;
  objc_initWeak(&location, self);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __50__VUIStateMachine_initWithName_initialState_mode___block_invoke;
  v16 = &unk_279E21828;
  objc_copyWeak(&v17, &location);
  v10 = MEMORY[0x2743B7C30](&v13);
  v11 = [(VUIStateMachine *)self initWithName:nameCopy initialState:stateCopy mode:mode stateChangeHandler:v10, v13, v14, v15, v16];

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

- (VUIStateMachine)initWithName:(id)name initialState:(id)state mode:(int64_t)mode stateChangeHandler:(id)handler
{
  nameCopy = name;
  stateCopy = state;
  handlerCopy = handler;
  v31.receiver = self;
  v31.super_class = VUIStateMachine;
  v13 = [(VUIStateMachine *)&v31 init];
  if (!v13)
  {
LABEL_10:
    v27 = v13;
    goto LABEL_11;
  }

  if ([nameCopy length] && objc_msgSend(stateCopy, "length"))
  {
    v14 = [nameCopy copy];
    name = v13->_name;
    v13->_name = v14;

    [(VUIStateMachine *)v13 setCurrentState:stateCopy];
    v13->_mode = mode;
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

    if (handlerCopy)
    {
      v24 = [handlerCopy copy];
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
    if (mode == 1)
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

- (void)postEvent:(id)event withContext:(id)context userInfo:(id)info
{
  v26 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  contextCopy = context;
  infoCopy = info;
  if (eventCopy && [(VUIStateMachine *)self shouldAcceptEvents])
  {
    ignorableEvents = [(VUIStateMachine *)self ignorableEvents];
    v12 = [ignorableEvents containsObject:eventCopy];

    if (!v12)
    {
      v16 = [MEMORY[0x277CBEB38] dictionaryWithObject:eventCopy forKey:@"VUIStateMachineEventKey"];
      logObject4 = v16;
      if (contextCopy)
      {
        [v16 setObject:contextCopy forKey:@"VUIStateMachineContextKey"];
      }

      if (infoCopy)
      {
        [logObject4 setObject:infoCopy forKey:@"VUIStateMachineUserInfoKey"];
      }

      v17 = self->_events;
      objc_sync_enter(v17);
      [(NSMutableArray *)self->_events addObject:logObject4];
      v18 = [(NSMutableArray *)self->_events count];
      objc_sync_exit(v17);

      if (v18 == 1)
      {
        logObject = [(VUIStateMachine *)self logObject];

        if (logObject)
        {
          logObject2 = [(VUIStateMachine *)self logObject];
          if (os_log_type_enabled(logObject2, OS_LOG_TYPE_DEFAULT))
          {
            name = [(VUIStateMachine *)self name];
            v22 = 138412546;
            v23 = name;
            v24 = 2112;
            v25 = eventCopy;
            _os_log_impl(&dword_270E6E000, logObject2, OS_LOG_TYPE_DEFAULT, "State machine [%@] received event [%@], initiating event processing", &v22, 0x16u);
          }
        }

        [(VUIStateMachine *)self _processNextEvent];
      }

      goto LABEL_17;
    }

    logObject3 = [(VUIStateMachine *)self logObject];

    if (logObject3)
    {
      logObject4 = [(VUIStateMachine *)self logObject];
      if (os_log_type_enabled(logObject4, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [(VUIStateMachine *)self name];
        v22 = 138412546;
        v23 = name2;
        v24 = 2112;
        v25 = eventCopy;
        _os_log_impl(&dword_270E6E000, logObject4, OS_LOG_TYPE_DEFAULT, "State machine named [%@] received ignorable event [%@]", &v22, 0x16u);
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

- (void)registerHandlerForEvent:(id)event onState:(id)state withBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  stateCopy = state;
  blockCopy = block;
  if (![(VUIStateMachine *)self shouldAcceptEvents])
  {
    if (!stateCopy)
    {
      goto LABEL_16;
    }

    v14 = self->_handlers;
    objc_sync_enter(v14);
    v15 = [(NSMutableDictionary *)self->_handlers objectForKey:stateCopy];
    v16 = v15;
    if (!v15 && eventCopy && blockCopy)
    {
      v16 = objc_opt_new();
      [(NSMutableDictionary *)self->_handlers setObject:v16 forKey:stateCopy];
      goto LABEL_14;
    }

    if (eventCopy)
    {
      if (blockCopy)
      {
LABEL_14:
        v17 = [blockCopy copy];
        [v16 setObject:v17 forKey:eventCopy];

        goto LABEL_15;
      }

      [v15 removeObjectForKey:eventCopy];
    }

LABEL_15:

    objc_sync_exit(v14);
    goto LABEL_16;
  }

  logObject = [(VUIStateMachine *)self logObject];

  if (logObject)
  {
    logObject2 = [(VUIStateMachine *)self logObject];
    if (os_log_type_enabled(logObject2, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      v18 = 138412290;
      v19 = name;
      _os_log_impl(&dword_270E6E000, logObject2, OS_LOG_TYPE_DEFAULT, "State machine [%@] can not register event handlers when it is accepting events", &v18, 0xCu);
    }
  }

LABEL_16:
}

- (void)registerHandlerForEvent:(id)event onStates:(id)states withBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  statesCopy = states;
  blockCopy = block;
  if (![(VUIStateMachine *)self shouldAcceptEvents])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = statesCopy;
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

          [(VUIStateMachine *)self registerHandlerForEvent:eventCopy onState:*(*(&v16 + 1) + 8 * v15++) withBlock:blockCopy, v16];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (void)registerHandlerForEvents:(id)events onStates:(id)states withBlock:(id)block
{
  v33 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  statesCopy = states;
  blockCopy = block;
  if (![(VUIStateMachine *)self shouldAcceptEvents])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = eventsCopy;
    obj = eventsCopy;
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
          v15 = statesCopy;
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

                [(VUIStateMachine *)self registerHandlerForEvent:v14 onState:*(*(&v23 + 1) + 8 * v19++) withBlock:blockCopy];
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

    eventsCopy = v20;
  }
}

- (void)registerDefaultHandlerForEvent:(id)event withBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  blockCopy = block;
  if ([(VUIStateMachine *)self shouldAcceptEvents])
  {
    logObject = [(VUIStateMachine *)self logObject];

    if (logObject)
    {
      logObject2 = [(VUIStateMachine *)self logObject];
      if (os_log_type_enabled(logObject2, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        v14 = 138412290;
        v15 = name;
        _os_log_impl(&dword_270E6E000, logObject2, OS_LOG_TYPE_DEFAULT, "State machine [%@] can not register default handlers when it is accepting events", &v14, 0xCu);
      }
    }
  }

  else
  {
    v11 = self->_handlers;
    objc_sync_enter(v11);
    if (eventCopy && blockCopy)
    {
      defaultHandlers = self->_defaultHandlers;
      v13 = [blockCopy copy];
      [(NSMutableDictionary *)defaultHandlers setObject:v13 forKey:eventCopy];
    }

    objc_sync_exit(v11);
  }
}

- (void)registerStateTransitionFromState:(id)state onEvent:(id)event toState:(id)toState
{
  v18 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  eventCopy = event;
  toStateCopy = toState;
  if (![(VUIStateMachine *)self shouldAcceptEvents])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__VUIStateMachine_registerStateTransitionFromState_onEvent_toState___block_invoke;
    v14[3] = &unk_279E21850;
    v15 = toStateCopy;
    [(VUIStateMachine *)self registerHandlerForEvent:eventCopy onState:stateCopy withBlock:v14];
    logObject2 = v15;
LABEL_6:

    goto LABEL_7;
  }

  logObject = [(VUIStateMachine *)self logObject];

  if (logObject)
  {
    logObject2 = [(VUIStateMachine *)self logObject];
    if (os_log_type_enabled(logObject2, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      *buf = 138412290;
      v17 = name;
      _os_log_impl(&dword_270E6E000, logObject2, OS_LOG_TYPE_DEFAULT, "State machine [%@] can not register state transitions when it is accepting events", buf, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
}

- (void)executeBlockAfterCurrentStateTransition:(id)transition
{
  transitionCopy = transition;
  if (transitionCopy)
  {
    v10 = transitionCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    handlingEvent = selfCopy->_handlingEvent;
    objc_sync_exit(selfCopy);

    if (handlingEvent)
    {
      v7 = selfCopy->_blocksToExecuteAfterStateTransition;
      objc_sync_enter(v7);
      blocksToExecuteAfterStateTransition = selfCopy->_blocksToExecuteAfterStateTransition;
      v9 = [v10 copy];
      [(NSMutableArray *)blocksToExecuteAfterStateTransition addObject:v9];

      objc_sync_exit(v7);
    }

    else
    {
      v10[2]();
    }

    transitionCopy = v10;
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

- (void)_transitionToState:(id)state withEvent:(id)event context:(id)context userInfo:(id)info
{
  v39 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  eventCopy = event;
  contextCopy = context;
  infoCopy = info;
  currentState = [(VUIStateMachine *)self currentState];
  v15 = [currentState copy];

  if ([v15 isEqualToString:stateCopy])
  {
    logObject = [(VUIStateMachine *)self logObject];

    if (logObject)
    {
      logObject2 = [(VUIStateMachine *)self logObject];
      if (os_log_type_enabled(logObject2, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        *buf = 138412802;
        v34 = name;
        v35 = 2112;
        v36 = v15;
        v37 = 2112;
        v38 = eventCopy;
        _os_log_impl(&dword_270E6E000, logObject2, OS_LOG_TYPE_DEFAULT, "State machine [%@] remaining at state [%@] on event [%@]", buf, 0x20u);
      }
    }
  }

  else
  {
    [(VUIStateMachine *)self setCurrentState:stateCopy];
    logObject3 = [(VUIStateMachine *)self logObject];

    if (logObject3)
    {
      logObject4 = [(VUIStateMachine *)self logObject];
      if (os_log_type_enabled(logObject4, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_name;
        *buf = 138412802;
        v34 = v21;
        v35 = 2112;
        v36 = v15;
        v37 = 2112;
        v38 = stateCopy;
        _os_log_impl(&dword_270E6E000, logObject4, OS_LOG_TYPE_DEFAULT, "State machine [%@] transitioning from state [%@] to [%@]", buf, 0x20u);
      }
    }

    stateChangeHandler = self->_stateChangeHandler;
    if (stateChangeHandler)
    {
      if (self->_callsStateChangeHandlerSynchronously)
      {
        stateChangeHandler[2](stateChangeHandler, self, v15, stateCopy, eventCopy, contextCopy, infoCopy);
      }

      else
      {
        v23 = MEMORY[0x277D85DD0];
        v24 = 3221225472;
        v25 = __74__VUIStateMachine_Private___transitionToState_withEvent_context_userInfo___block_invoke;
        v26 = &unk_279E21878;
        selfCopy = self;
        v28 = v15;
        v29 = stateCopy;
        v30 = eventCopy;
        v31 = contextCopy;
        v32 = infoCopy;
        dispatch_async(MEMORY[0x277D85CD0], &v23);
      }
    }
  }

  [(VUIStateMachine *)self _executePostTransitionBlocks:v23];
}

- (void)_processEvent:(id)event
{
  v27 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (eventCopy)
  {
    v4 = eventCopy;
    do
    {
      v5 = [v4 objectForKey:@"VUIStateMachineEventKey"];
      v6 = [v4 objectForKey:@"VUIStateMachineUserInfoKey"];
      v7 = [v4 objectForKey:@"VUIStateMachineContextKey"];
      v8 = [(VUIStateMachine *)self _eventHandlerForEvent:v5];
      logObject = [(VUIStateMachine *)self logObject];
      v10 = logObject == 0;

      if (!v10)
      {
        logObject2 = [(VUIStateMachine *)self logObject];
        if (os_log_type_enabled(logObject2, OS_LOG_TYPE_DEFAULT))
        {
          name = self->_name;
          currentState = [(VUIStateMachine *)self currentState];
          *buf = 138412802;
          v22 = name;
          v23 = 2112;
          v24 = v5;
          v25 = 2112;
          v26 = currentState;
          _os_log_impl(&dword_270E6E000, logObject2, OS_LOG_TYPE_DEFAULT, "State machine [%@] processing event [%@] in state [%@]", buf, 0x20u);
        }
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      self->_handlingEvent = 1;
      objc_sync_exit(selfCopy);

      v15 = (v8)[2](v8, selfCopy, v5, v7, v6);
      v16 = selfCopy;
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

- (void)_dispatchEvent:(id)event
{
  eventCopy = event;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__VUIStateMachine_Private___dispatchEvent___block_invoke;
  v7[3] = &unk_279E218C8;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
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

- (id)_eventHandlerForEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    v5 = self->_handlers;
    objc_sync_enter(v5);
    handlers = self->_handlers;
    currentState = [(VUIStateMachine *)self currentState];
    v8 = [(NSMutableDictionary *)handlers objectForKey:currentState];

    v9 = [v8 objectForKey:eventCopy];
    if (!v9)
    {
      v9 = [(NSMutableDictionary *)self->_defaultHandlers objectForKey:eventCopy];
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