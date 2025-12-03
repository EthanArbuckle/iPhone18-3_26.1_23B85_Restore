@interface TVPStateMachine
+ (id)stateMachinesOfType:(Class)type;
+ (void)deregisterStateMachine:(id)machine;
+ (void)initialize;
+ (void)registerStateMachine:(id)machine;
- (TVPStateMachine)initWithName:(id)name initialState:(id)state mode:(int64_t)mode;
- (TVPStateMachine)initWithName:(id)name initialState:(id)state mode:(int64_t)mode stateChangeHandler:(id)handler;
- (id)_eventHandlerForEvent:(id)event;
- (unint64_t)eventCount;
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
- (void)setLoggingComponent:(id)component;
@end

@implementation TVPStateMachine

+ (void)initialize
{
  if (objc_opt_class() == self)
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
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [sStateMachines allValues];
  v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (TVPStateMachine)initWithName:(id)name initialState:(id)state mode:(int64_t)mode
{
  nameCopy = name;
  stateCopy = state;
  objc_initWeak(&location, self);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __50__TVPStateMachine_initWithName_initialState_mode___block_invoke;
  v16 = &unk_279D7BB80;
  objc_copyWeak(&v17, &location);
  v10 = MEMORY[0x26D6B0400](&v13);
  v11 = [(TVPStateMachine *)self initWithName:nameCopy initialState:stateCopy mode:mode stateChangeHandler:v10, v13, v14, v15, v16];

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

- (TVPStateMachine)initWithName:(id)name initialState:(id)state mode:(int64_t)mode stateChangeHandler:(id)handler
{
  nameCopy = name;
  stateCopy = state;
  handlerCopy = handler;
  v31.receiver = self;
  v31.super_class = TVPStateMachine;
  v13 = [(TVPStateMachine *)&v31 init];
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

    [(TVPStateMachine *)v13 setCurrentState:stateCopy];
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

- (void)setLoggingComponent:(id)component
{
  componentCopy = component;
  objc_storeStrong(&self->_loggingComponent, component);
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

- (void)postEvent:(id)event withContext:(id)context userInfo:(id)info
{
  v29 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  contextCopy = context;
  infoCopy = info;
  if (eventCopy && [(TVPStateMachine *)self shouldAcceptEvents])
  {
    ignorableEvents = [(TVPStateMachine *)self ignorableEvents];
    v12 = [ignorableEvents containsObject:eventCopy];

    if (!v12)
    {
      v16 = [MEMORY[0x277CBEB38] dictionaryWithObject:eventCopy forKey:@"TVPStateMachineEventKey"];
      logObject4 = v16;
      if (contextCopy)
      {
        [v16 setObject:contextCopy forKey:@"TVPStateMachineContextKey"];
      }

      if (infoCopy)
      {
        [logObject4 setObject:infoCopy forKey:@"TVPStateMachineUserInfoKey"];
      }

      v17 = self->_events;
      objc_sync_enter(v17);
      [(NSMutableArray *)self->_events addObject:logObject4];
      v18 = [(NSMutableArray *)self->_events count]== 1;
      objc_sync_exit(v17);

      logObject = [(TVPStateMachine *)self logObject];
      v20 = logObject;
      if (v18)
      {

        if (v20)
        {
          logObject2 = [(TVPStateMachine *)self logObject];
          if (os_log_type_enabled(logObject2, OS_LOG_TYPE_DEFAULT))
          {
            name = [(TVPStateMachine *)self name];
            v25 = 138412546;
            v26 = name;
            v27 = 2112;
            v28 = eventCopy;
            _os_log_impl(&dword_26CEDD000, logObject2, OS_LOG_TYPE_DEFAULT, "State machine [%@] received event [%@], initiating event processing", &v25, 0x16u);
          }
        }

        [(TVPStateMachine *)self _processNextEvent];
      }

      else
      {
        if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
        {
          name2 = [(TVPStateMachine *)self name];
          v25 = 138412546;
          v26 = name2;
          v27 = 2112;
          v28 = eventCopy;
          _os_log_impl(&dword_26CEDD000, v20, OS_LOG_TYPE_DEFAULT, "State machine [%@] received event [%@], but existing events are pending.  Adding to queue.", &v25, 0x16u);
        }
      }

      goto LABEL_20;
    }

    logObject3 = [(TVPStateMachine *)self logObject];

    if (logObject3)
    {
      logObject4 = [(TVPStateMachine *)self logObject];
      if (os_log_type_enabled(logObject4, OS_LOG_TYPE_DEFAULT))
      {
        name3 = [(TVPStateMachine *)self name];
        v25 = 138412546;
        v26 = name3;
        v27 = 2112;
        v28 = eventCopy;
        _os_log_impl(&dword_26CEDD000, logObject4, OS_LOG_TYPE_DEFAULT, "State machine named [%@] received ignorable event [%@]", &v25, 0x16u);
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

- (void)registerHandlerForEvent:(id)event onState:(id)state withBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  stateCopy = state;
  blockCopy = block;
  if (![(TVPStateMachine *)self shouldAcceptEvents])
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

  logObject = [(TVPStateMachine *)self logObject];

  if (logObject)
  {
    logObject2 = [(TVPStateMachine *)self logObject];
    if (os_log_type_enabled(logObject2, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      v19 = 138412290;
      v20 = name;
      _os_log_impl(&dword_26CEDD000, logObject2, OS_LOG_TYPE_DEFAULT, "State machine [%@] can not register event handlers when it is accepting events", &v19, 0xCu);
    }
  }

LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)registerHandlerForEvent:(id)event onStates:(id)states withBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  statesCopy = states;
  blockCopy = block;
  if (![(TVPStateMachine *)self shouldAcceptEvents])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = statesCopy;
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

          [(TVPStateMachine *)self registerHandlerForEvent:eventCopy onState:*(*(&v17 + 1) + 8 * v15++) withBlock:blockCopy, v17];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)registerHandlerForEvents:(id)events onStates:(id)states withBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  statesCopy = states;
  blockCopy = block;
  if (![(TVPStateMachine *)self shouldAcceptEvents])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v21 = eventsCopy;
    obj = eventsCopy;
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
          v15 = statesCopy;
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

                [(TVPStateMachine *)self registerHandlerForEvent:v14 onState:*(*(&v24 + 1) + 8 * v19++) withBlock:blockCopy];
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

    eventsCopy = v21;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)registerDefaultHandlerForEvent:(id)event withBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  blockCopy = block;
  if ([(TVPStateMachine *)self shouldAcceptEvents])
  {
    logObject = [(TVPStateMachine *)self logObject];

    if (logObject)
    {
      logObject2 = [(TVPStateMachine *)self logObject];
      if (os_log_type_enabled(logObject2, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        v15 = 138412290;
        v16 = name;
        _os_log_impl(&dword_26CEDD000, logObject2, OS_LOG_TYPE_DEFAULT, "State machine [%@] can not register default handlers when it is accepting events", &v15, 0xCu);
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

  v14 = *MEMORY[0x277D85DE8];
}

- (void)registerStateTransitionFromState:(id)state onEvent:(id)event toState:(id)toState
{
  v19 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  eventCopy = event;
  toStateCopy = toState;
  if (![(TVPStateMachine *)self shouldAcceptEvents])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__TVPStateMachine_registerStateTransitionFromState_onEvent_toState___block_invoke;
    v15[3] = &unk_279D7BBA8;
    v16 = toStateCopy;
    [(TVPStateMachine *)self registerHandlerForEvent:eventCopy onState:stateCopy withBlock:v15];
    logObject2 = v16;
LABEL_6:

    goto LABEL_7;
  }

  logObject = [(TVPStateMachine *)self logObject];

  if (logObject)
  {
    logObject2 = [(TVPStateMachine *)self logObject];
    if (os_log_type_enabled(logObject2, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      *buf = 138412290;
      v18 = name;
      _os_log_impl(&dword_26CEDD000, logObject2, OS_LOG_TYPE_DEFAULT, "State machine [%@] can not register state transitions when it is accepting events", buf, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:

  v14 = *MEMORY[0x277D85DE8];
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
  [(TVPStateMachine *)self setShouldAcceptEvents:0];
  [(TVPStateMachine *)self purgeEventQueue];
  [(NSMutableDictionary *)self->_handlers removeAllObjects];
  [(NSMutableDictionary *)self->_defaultHandlers removeAllObjects];
  objc_sync_exit(obj);
}

- (void)logUnhandledEvents
{
  v71 = *MEMORY[0x277D85DE8];
  allKeys = [(NSMutableDictionary *)self->_handlers allKeys];
  v3 = [allKeys sortedArrayUsingSelector:?];
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
        allKeys2 = [v9 allKeys];
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v11 = [allKeys2 countByEnumeratingWithState:&v54 objects:v69 count:16];
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
                objc_enumerationMutation(allKeys2);
              }

              [v4 addObject:*(*(&v54 + 1) + 8 * j)];
            }

            v12 = [allKeys2 countByEnumeratingWithState:&v54 objects:v69 count:16];
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
  allKeys3 = [(NSMutableDictionary *)self->_defaultHandlers allKeys];
  v16 = [allKeys3 countByEnumeratingWithState:&v50 objects:v68 count:16];
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
          objc_enumerationMutation(allKeys3);
        }

        [v4 addObject:*(*(&v50 + 1) + 8 * k)];
      }

      v17 = [allKeys3 countByEnumeratingWithState:&v50 objects:v68 count:16];
    }

    while (v17);
  }

  allObjects = [v4 allObjects];
  v21 = [allObjects sortedArrayUsingSelector:sel_compare_];

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
                  logObject = [(TVPStateMachine *)self logObject];

                  if (logObject)
                  {
                    logObject2 = [(TVPStateMachine *)self logObject];
                    if (os_log_type_enabled(logObject2, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v63 = v23;
                      v64 = 2112;
                      v65 = v29;
                      _os_log_impl(&dword_26CEDD000, logObject2, OS_LOG_TYPE_INFO, "[%@] is unhandled for [%@]", buf, 0x16u);
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

- (void)_transitionToState:(id)state withEvent:(id)event context:(id)context userInfo:(id)info
{
  v40 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  eventCopy = event;
  contextCopy = context;
  infoCopy = info;
  currentState = [(TVPStateMachine *)self currentState];
  v15 = [currentState copy];

  if ([v15 isEqualToString:stateCopy])
  {
    logObject = [(TVPStateMachine *)self logObject];

    if (logObject)
    {
      logObject2 = [(TVPStateMachine *)self logObject];
      if (os_log_type_enabled(logObject2, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        *buf = 138412802;
        v35 = name;
        v36 = 2112;
        v37 = v15;
        v38 = 2112;
        v39 = eventCopy;
        _os_log_impl(&dword_26CEDD000, logObject2, OS_LOG_TYPE_DEFAULT, "State machine [%@] remaining at state [%@] on event [%@]", buf, 0x20u);
      }
    }
  }

  else
  {
    [(TVPStateMachine *)self setCurrentState:stateCopy];
    logObject3 = [(TVPStateMachine *)self logObject];

    if (logObject3)
    {
      logObject4 = [(TVPStateMachine *)self logObject];
      if (os_log_type_enabled(logObject4, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_name;
        *buf = 138412802;
        v35 = v21;
        v36 = 2112;
        v37 = v15;
        v38 = 2112;
        v39 = stateCopy;
        _os_log_impl(&dword_26CEDD000, logObject4, OS_LOG_TYPE_DEFAULT, "State machine [%@] transitioning from state [%@] to [%@]", buf, 0x20u);
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
        v24 = MEMORY[0x277D85DD0];
        v25 = 3221225472;
        v26 = __74__TVPStateMachine_Private___transitionToState_withEvent_context_userInfo___block_invoke;
        v27 = &unk_279D7BBD0;
        selfCopy = self;
        v29 = v15;
        v30 = stateCopy;
        v31 = eventCopy;
        v32 = contextCopy;
        v33 = infoCopy;
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

- (void)_processEvent:(id)event
{
  v28 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (eventCopy)
  {
    v4 = eventCopy;
    do
    {
      v5 = [v4 objectForKey:@"TVPStateMachineEventKey"];
      v6 = [v4 objectForKey:@"TVPStateMachineUserInfoKey"];
      v7 = [v4 objectForKey:@"TVPStateMachineContextKey"];
      v8 = [(TVPStateMachine *)self _eventHandlerForEvent:v5];
      logObject = [(TVPStateMachine *)self logObject];
      v10 = logObject == 0;

      if (!v10)
      {
        logObject2 = [(TVPStateMachine *)self logObject];
        if (os_log_type_enabled(logObject2, OS_LOG_TYPE_DEFAULT))
        {
          name = self->_name;
          currentState = [(TVPStateMachine *)self currentState];
          *buf = 138412802;
          v23 = name;
          v24 = 2112;
          v25 = v5;
          v26 = 2112;
          v27 = currentState;
          _os_log_impl(&dword_26CEDD000, logObject2, OS_LOG_TYPE_DEFAULT, "State machine [%@] processing event [%@] in state [%@]", buf, 0x20u);
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

- (void)_dispatchEvent:(id)event
{
  eventCopy = event;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__TVPStateMachine_Private___dispatchEvent___block_invoke;
  v7[3] = &unk_279D7BC20;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
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

- (id)_eventHandlerForEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    v5 = self->_handlers;
    objc_sync_enter(v5);
    handlers = self->_handlers;
    currentState = [(TVPStateMachine *)self currentState];
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
    v10 = &__block_literal_global_4;
  }

  v11 = MEMORY[0x26D6B0400](v10);

  return v11;
}

@end