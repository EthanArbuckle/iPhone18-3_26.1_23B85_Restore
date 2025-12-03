@interface HKSPStateMachine
+ (id)_contextKey;
- (HKSPStateMachine)initWithDelegate:(id)delegate infoProvider:(id)provider;
- (HKSPStateMachineContext)currentContext;
- (HKSPStateMachineDelegate)delegate;
- (HKSPStateMachineInfoProvider)infoProvider;
- (NSString)currentStateIdentifier;
- (NSString)description;
- (id)stateMachineName;
- (void)enterState:(id)state;
- (void)notifyDelegateWithBlock:(id)block;
- (void)perform:(id)perform withContext:(id)context;
- (void)setInitialState:(id)state;
- (void)updateState;
@end

@implementation HKSPStateMachine

+ (id)_contextKey
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSStringFromClass(self);
  v4 = [v2 stringWithFormat:@"%@Context", v3];

  return v4;
}

- (HKSPStateMachine)initWithDelegate:(id)delegate infoProvider:(id)provider
{
  delegateCopy = delegate;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = HKSPStateMachine;
  v8 = [(HKSPStateMachine *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeWeak(&v9->_infoProvider, providerCopy);
    v10 = v9;
  }

  return v9;
}

- (void)setInitialState:(id)state
{
  v15 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (self->_currentState)
  {
    __assert_rtn("[HKSPStateMachine setInitialState:]", "HKSPStateMachine.m", 41, "_currentState == nil");
  }

  v5 = stateCopy;
  v6 = HKSPLogForCategory([(HKSPStateMachine *)self loggingCategory]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    stateMachineName = [(HKSPStateMachine *)self stateMachineName];
    stateName = [(HKSPStateMachineState *)v5 stateName];
    v11 = 138543618;
    v12 = stateMachineName;
    v13 = 2114;
    v14 = stateName;
    _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] starting in state %{public}@", &v11, 0x16u);
  }

  currentState = self->_currentState;
  self->_currentState = v5;

  v10 = *MEMORY[0x277D85DE8];
}

- (NSString)currentStateIdentifier
{
  currentState = [(HKSPStateMachine *)self currentState];
  stateIdentifier = [currentState stateIdentifier];

  return stateIdentifier;
}

- (void)perform:(id)perform withContext:(id)context
{
  performCopy = perform;
  contextCopy = context;
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  if (contextCopy)
  {
    _contextKey = [objc_opt_class() _contextKey];
    v9 = [threadDictionary objectForKeyedSubscript:_contextKey];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v12 = v11;

    [v12 addObject:contextCopy];
    _contextKey2 = [objc_opt_class() _contextKey];
    [threadDictionary setObject:v12 forKeyedSubscript:_contextKey2];

    performCopy[2]();
    _contextKey3 = [objc_opt_class() _contextKey];
    v15 = [threadDictionary objectForKeyedSubscript:_contextKey3];
    [v15 removeLastObject];
  }

  else
  {
    performCopy[2]();
  }
}

- (HKSPStateMachineContext)currentContext
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  _contextKey = [objc_opt_class() _contextKey];
  v5 = [threadDictionary objectForKeyedSubscript:_contextKey];

  lastObject = [v5 lastObject];

  return lastObject;
}

- (void)enterState:(id)state
{
  stateCopy = state;
  currentState = self->_currentState;
  if (currentState == stateCopy)
  {
    v6 = [(HKSPStateMachineState *)self->_currentState copy];
  }

  else
  {
    v6 = currentState;
  }

  v7 = v6;
  currentContext = [(HKSPStateMachine *)self currentContext];
  v9 = currentContext;
  if (currentContext)
  {
    v10 = currentContext;
  }

  else
  {
    v10 = objc_alloc_init(HKSPStateMachineContext);
  }

  v11 = v10;
  v12 = currentState != stateCopy;

  v13 = [(HKSPStateMachineContext *)v11 contextWithNextState:stateCopy previousState:v7 isInitializing:!self->_initialized];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __31__HKSPStateMachine_enterState___block_invoke;
  v16[3] = &unk_279C73BE8;
  v20 = v12;
  v17 = v7;
  selfCopy = self;
  v19 = stateCopy;
  v14 = stateCopy;
  v15 = v7;
  [(HKSPStateMachine *)self perform:v16 withContext:v13];
  self->_initialized = 1;
}

uint64_t __31__HKSPStateMachine_enterState___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) _willExit];
    if (*(a1 + 56))
    {
      if (HKSPIsUnitTesting())
      {
        goto LABEL_11;
      }

      v2 = HKSPLogForCategory([*(a1 + 40) loggingCategory]);
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      v3 = [*(a1 + 40) stateMachineName];
      v4 = [*(a1 + 48) stateName];
      v5 = [*(a1 + 32) stateName];
      *v17 = 138543874;
      *&v17[4] = v3;
      *&v17[12] = 2114;
      *&v17[14] = v4;
      *&v17[22] = 2114;
      v18 = v5;
      _os_log_impl(&dword_269A84000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will enter state %{public}@ with previous state %{public}@", v17, 0x20u);

      goto LABEL_9;
    }
  }

  if (HKSPIsUnitTesting())
  {
    goto LABEL_11;
  }

  v2 = HKSPLogForCategory([*(a1 + 40) loggingCategory]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 40) stateMachineName];
    v4 = [*(*(a1 + 40) + 16) stateName];
    *v17 = 138543618;
    *&v17[4] = v3;
    *&v17[12] = 2114;
    *&v17[14] = v4;
    _os_log_impl(&dword_269A84000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will update current state %{public}@", v17, 0x16u);
LABEL_9:
  }

LABEL_10:

LABEL_11:
  v6 = *(a1 + 48);
  if (v6)
  {
    result = [v6 _willEnter];
    if (!result)
    {
      goto LABEL_26;
    }

    v8 = *(a1 + 48);
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong((*(a1 + 40) + 16), v8);
  v9 = *(a1 + 56);
  v10 = HKSPIsUnitTesting();
  if (v9 == 1)
  {
    if (v10)
    {
      goto LABEL_24;
    }

    v11 = HKSPLogForCategory([*(a1 + 40) loggingCategory]);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v12 = [*(a1 + 40) stateMachineName];
    v13 = [*(*(a1 + 40) + 16) stateName];
    v14 = [*(a1 + 32) stateName];
    *v17 = 138543874;
    *&v17[4] = v12;
    *&v17[12] = 2114;
    *&v17[14] = v13;
    *&v17[22] = 2114;
    v18 = v14;
    v15 = "[%{public}@] Did enter state %{public}@ with previous state %{public}@";
    goto LABEL_22;
  }

  if (v10)
  {
    goto LABEL_24;
  }

  v11 = HKSPLogForCategory([*(a1 + 40) loggingCategory]);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) stateMachineName];
    v13 = [*(*(a1 + 40) + 16) stateName];
    v14 = [*(a1 + 32) stateName];
    *v17 = 138543874;
    *&v17[4] = v12;
    *&v17[12] = 2114;
    *&v17[14] = v13;
    *&v17[22] = 2114;
    v18 = v14;
    v15 = "[%{public}@] Did update current state %{public}@ with previous state %{public}@";
LABEL_22:
    _os_log_impl(&dword_269A84000, v11, OS_LOG_TYPE_DEFAULT, v15, v17, 0x20u);
  }

LABEL_23:

LABEL_24:
  result = [*(*(a1 + 40) + 16) _didEnter];
  if (*(a1 + 56) == 1)
  {
    result = [*(a1 + 32) _didExit];
  }

LABEL_26:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateState
{
  v18 = *MEMORY[0x277D85DE8];
  currentState = [(HKSPStateMachine *)self currentState];

  if (!currentState)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    stateMachineName = [(HKSPStateMachine *)self stateMachineName];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPStateMachine.m" lineNumber:119 description:{@"%@ currentState is nil", stateMachineName}];
  }

  currentState2 = [(HKSPStateMachine *)self currentState];
  [currentState2 _updateState];

  if (!self->_initialized)
  {
    v6 = HKSPLogForCategory([(HKSPStateMachine *)self loggingCategory]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      stateMachineName2 = [(HKSPStateMachine *)self stateMachineName];
      currentState3 = [(HKSPStateMachine *)self currentState];
      stateName = [currentState3 stateName];
      *buf = 138543618;
      v15 = stateMachineName2;
      v16 = 2114;
      v17 = stateName;
      _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] State not yet initialized, re-entering state %{public}@", buf, 0x16u);
    }

    currentState4 = [(HKSPStateMachine *)self currentState];
    [(HKSPStateMachine *)self enterState:currentState4];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegateWithBlock:(id)block
{
  blockCopy = block;
  delegate = [(HKSPStateMachine *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(HKSPStateMachine *)self delegate];
    callbackScheduler = [delegate2 callbackScheduler];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__HKSPStateMachine_notifyDelegateWithBlock___block_invoke;
    v14[3] = &unk_279C73B30;
    v9 = &v15;
    v14[4] = self;
    v15 = blockCopy;
    v10 = blockCopy;
    [callbackScheduler performBlock:v14];
  }

  else
  {
    delegate2 = [MEMORY[0x277D2C938] immediateScheduler];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__HKSPStateMachine_notifyDelegateWithBlock___block_invoke_2;
    v12[3] = &unk_279C73B30;
    v9 = &v13;
    v12[4] = self;
    v13 = blockCopy;
    v11 = blockCopy;
    [delegate2 performBlock:v12];
  }
}

void __44__HKSPStateMachine_notifyDelegateWithBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) delegate];
  (*(v1 + 16))(v1, v2);
}

void __44__HKSPStateMachine_notifyDelegateWithBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) delegate];
  (*(v1 + 16))(v1, v2);
}

- (id)stateMachineName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = HKSPStateMachine;
  v3 = [(HKSPStateMachine *)&v7 description];
  v4 = [v3 mutableCopy];

  [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
  currentState = [(HKSPStateMachine *)self currentState];
  [v4 appendFormat:@"; currentState: %@>", currentState];

  return v4;
}

- (HKSPStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HKSPStateMachineInfoProvider)infoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_infoProvider);

  return WeakRetained;
}

@end