@interface SUICProgressStateMachine
- (NSPointerArray)_stateMachineObservers;
- (SUICProgressStateMachine)init;
- (void)_ignoreEvent:(unint64_t)event;
- (void)_transitionToState:(unint64_t)state forEvent:(unint64_t)event;
- (void)addObserver:(id)observer;
- (void)addObservers:(id)observers;
- (void)dealloc;
- (void)handleEvent:(unint64_t)event;
- (void)setObservers:(id)observers;
@end

@implementation SUICProgressStateMachine

- (SUICProgressStateMachine)init
{
  v30[5] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = SUICProgressStateMachine;
  v2 = [(SUICProgressStateMachine *)&v27 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6999538]);
    underlyingStateMachine = v2->_underlyingStateMachine;
    v2->_underlyingStateMachine = v3;

    v5 = [objc_alloc(MEMORY[0x1E6999528]) initWithName:@"Abstract" parent:0];
    [v5 setEventHandler:&__block_literal_global_1];
    objc_storeStrong(&v2->_abstractState, v5);
    objc_initWeak(&location, v2);
    v6 = [objc_alloc(MEMORY[0x1E6999528]) initWithName:@"None" parent:v5];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __32__SUICProgressStateMachine_init__block_invoke_2;
    v24[3] = &unk_1E81E7EC8;
    objc_copyWeak(&v25, &location);
    [v6 setEventHandler:v24];
    v7 = [objc_alloc(MEMORY[0x1E6999528]) initWithName:@"Arbitrary" parent:v5];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __32__SUICProgressStateMachine_init__block_invoke_3;
    v22[3] = &unk_1E81E7EC8;
    objc_copyWeak(&v23, &location);
    [v7 setEventHandler:v22];
    v8 = [objc_alloc(MEMORY[0x1E6999528]) initWithName:@"Percentage" parent:v5];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __32__SUICProgressStateMachine_init__block_invoke_4;
    v20[3] = &unk_1E81E7EC8;
    objc_copyWeak(&v21, &location);
    [v8 setEventHandler:v20];
    v9 = [objc_alloc(MEMORY[0x1E6999528]) initWithName:@"Done" parent:v5];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __32__SUICProgressStateMachine_init__block_invoke_5;
    v18 = &unk_1E81E7EC8;
    objc_copyWeak(&v19, &location);
    [v9 setEventHandler:&v15];
    v10 = v2->_underlyingStateMachine;
    v30[0] = v5;
    v30[1] = v6;
    v30[2] = v7;
    v30[3] = v8;
    v30[4] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:{5, v15, v16, v17, v18}];
    [(CUStateMachine *)v10 setStates:v11];

    v28[0] = @"None";
    v28[1] = @"Arbitrary";
    v29[0] = v6;
    v29[1] = v7;
    v28[2] = @"Percentage";
    v28[3] = @"Done";
    v29[2] = v8;
    v29[3] = v9;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];
    stateForStateName = v2->_stateForStateName;
    v2->_stateForStateName = v12;

    [(CUStateMachine *)v2->_underlyingStateMachine setInitialState:v6];
    [(CUStateMachine *)v2->_underlyingStateMachine start];
    objc_destroyWeak(&v19);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v2;
}

uint64_t __32__SUICProgressStateMachine_init__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 name];

  v6 = v5;
  if (([v6 isEqualToString:@"Start"] & 1) == 0)
  {
    if ([v6 isEqualToString:@"Report"])
    {

      v7 = 2;
      v8 = WeakRetained;
      v9 = 2;
      v10 = 1;
LABEL_5:
      [v8 _transitionToState:v9 forEvent:v10];
      goto LABEL_12;
    }

    if ([v6 isEqualToString:@"Reset"])
    {
      v11 = 4;
    }

    else
    {
      if (([v6 isEqualToString:@"Fail"] & 1) == 0)
      {
        v13 = [v6 isEqualToString:@"Finish"];

        if (v13)
        {
          v7 = 2;
          v8 = WeakRetained;
          v9 = 3;
          v10 = 2;
          goto LABEL_5;
        }

LABEL_11:
        v7 = 1;
        goto LABEL_12;
      }

      v11 = 3;
    }

    [WeakRetained _ignoreEvent:v11];
    goto LABEL_11;
  }

  [WeakRetained _transitionToState:1 forEvent:0];
  v7 = 2;
LABEL_12:

  return v7;
}

uint64_t __32__SUICProgressStateMachine_init__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 name];

  v6 = v5;
  if (([v6 isEqualToString:@"Start"] & 1) == 0)
  {
    if ([v6 isEqualToString:@"Report"])
    {

      v7 = 2;
      v8 = WeakRetained;
      v9 = 2;
      v10 = 1;
      goto LABEL_6;
    }

    if ([v6 isEqualToString:@"Reset"])
    {
      v11 = 4;
    }

    else
    {
      if (([v6 isEqualToString:@"Fail"] & 1) == 0)
      {
        v13 = [v6 isEqualToString:@"Finish"];

        if ((v13 & 1) == 0)
        {
          goto LABEL_3;
        }

        v7 = 2;
        v8 = WeakRetained;
        v9 = 3;
        v10 = 2;
LABEL_6:
        [v8 _transitionToState:v9 forEvent:v10];
        goto LABEL_12;
      }

      v11 = 3;
    }

    [WeakRetained _transitionToState:0 forEvent:v11];
    v7 = 2;
    goto LABEL_12;
  }

  [WeakRetained _ignoreEvent:0];
LABEL_3:
  v7 = 1;
LABEL_12:

  return v7;
}

uint64_t __32__SUICProgressStateMachine_init__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 name];

  v6 = v5;
  if (([v6 isEqualToString:@"Start"] & 1) == 0)
  {
    if ([v6 isEqualToString:@"Report"])
    {

      v7 = 2;
      v8 = WeakRetained;
      v9 = 2;
      v10 = 1;
      goto LABEL_6;
    }

    if ([v6 isEqualToString:@"Reset"])
    {
      v11 = 4;
    }

    else
    {
      if (([v6 isEqualToString:@"Fail"] & 1) == 0)
      {
        v13 = [v6 isEqualToString:@"Finish"];

        if ((v13 & 1) == 0)
        {
          goto LABEL_3;
        }

        v7 = 2;
        v8 = WeakRetained;
        v9 = 3;
        v10 = 2;
LABEL_6:
        [v8 _transitionToState:v9 forEvent:v10];
        goto LABEL_12;
      }

      v11 = 3;
    }

    [WeakRetained _transitionToState:0 forEvent:v11];
    v7 = 2;
    goto LABEL_12;
  }

  [WeakRetained _ignoreEvent:0];
LABEL_3:
  v7 = 1;
LABEL_12:

  return v7;
}

uint64_t __32__SUICProgressStateMachine_init__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 name];

  v6 = v5;
  if ([v6 isEqualToString:@"Start"])
  {
    v7 = 0;
  }

  else if ([v6 isEqualToString:@"Report"])
  {
    v7 = 1;
  }

  else
  {
    if ([v6 isEqualToString:@"Reset"])
    {

      [WeakRetained _transitionToState:0 forEvent:4];
      v8 = 2;
      goto LABEL_7;
    }

    if ([v6 isEqualToString:@"Fail"])
    {
      v7 = 3;
    }

    else
    {
      if (([v6 isEqualToString:@"Finish"] & 1) == 0)
      {

        goto LABEL_6;
      }

      v7 = 2;
    }
  }

  [WeakRetained _ignoreEvent:v7];
LABEL_6:
  v8 = 1;
LABEL_7:

  return v8;
}

- (void)dealloc
{
  [(CUStateMachine *)self->_underlyingStateMachine invalidate];
  v3.receiver = self;
  v3.super_class = SUICProgressStateMachine;
  [(SUICProgressStateMachine *)&v3 dealloc];
}

- (void)handleEvent:(unint64_t)event
{
  underlyingStateMachine = self->_underlyingStateMachine;
  v5 = objc_alloc(MEMORY[0x1E6999530]);
  if (event + 1 > 5)
  {
    v6 = @"Start";
  }

  else
  {
    v6 = off_1E81E7F10[event + 1];
  }

  v7 = [v5 initWithName:v6 userInfo:0];
  [(CUStateMachine *)underlyingStateMachine dispatchEvent:v7];
}

- (void)setObservers:(id)observers
{
  stateMachineObservers = self->_stateMachineObservers;
  self->_stateMachineObservers = 0;
  observersCopy = observers;

  [(SUICProgressStateMachine *)self addObservers:observersCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  _stateMachineObservers = [(SUICProgressStateMachine *)self _stateMachineObservers];
  [_stateMachineObservers addPointer:observerCopy];
}

- (void)addObservers:(id)observers
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__SUICProgressStateMachine_addObservers___block_invoke;
  v3[3] = &unk_1E81E7EF0;
  v3[4] = self;
  [observers enumerateObjectsUsingBlock:v3];
}

- (NSPointerArray)_stateMachineObservers
{
  stateMachineObservers = self->_stateMachineObservers;
  if (!stateMachineObservers)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    v5 = self->_stateMachineObservers;
    self->_stateMachineObservers = weakObjectsPointerArray;

    stateMachineObservers = self->_stateMachineObservers;
  }

  [(NSPointerArray *)stateMachineObservers addPointer:0];
  [(NSPointerArray *)self->_stateMachineObservers compact];
  v6 = self->_stateMachineObservers;

  return v6;
}

- (void)_transitionToState:(unint64_t)state forEvent:(unint64_t)event
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _stateMachineObservers = [(SUICProgressStateMachine *)self _stateMachineObservers];
  allObjects = [_stateMachineObservers allObjects];

  v9 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v16 + 1) + 8 * i) progressStateMachine:self didTransitionToState:state fromState:-[SUICProgressStateMachine state](self forEvent:{"state"), event}];
      }

      v10 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  underlyingStateMachine = self->_underlyingStateMachine;
  if (state + 1 > 4)
  {
    v14 = @"None";
  }

  else
  {
    v14 = off_1E81E7F40[state + 1];
  }

  v15 = [(NSDictionary *)self->_stateForStateName objectForKey:v14];
  [(CUStateMachine *)underlyingStateMachine transitionToState:v15];

  self->_currentState = state;
}

- (void)_ignoreEvent:(unint64_t)event
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _stateMachineObservers = [(SUICProgressStateMachine *)self _stateMachineObservers];
  allObjects = [_stateMachineObservers allObjects];

  v7 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v11 + 1) + 8 * v10++) progressStateMachine:self ignoredEvent:event];
      }

      while (v8 != v10);
      v8 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end