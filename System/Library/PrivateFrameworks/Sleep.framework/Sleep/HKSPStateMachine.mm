@interface HKSPStateMachine
+ (id)_contextKey;
- (HKSPStateMachine)initWithDelegate:(id)a3 infoProvider:(id)a4;
- (HKSPStateMachineContext)currentContext;
- (HKSPStateMachineDelegate)delegate;
- (HKSPStateMachineInfoProvider)infoProvider;
- (NSString)currentStateIdentifier;
- (NSString)description;
- (id)stateMachineName;
- (void)enterState:(id)a3;
- (void)notifyDelegateWithBlock:(id)a3;
- (void)perform:(id)a3 withContext:(id)a4;
- (void)setInitialState:(id)a3;
- (void)updateState;
@end

@implementation HKSPStateMachine

+ (id)_contextKey
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSStringFromClass(a1);
  v4 = [v2 stringWithFormat:@"%@Context", v3];

  return v4;
}

- (HKSPStateMachine)initWithDelegate:(id)a3 infoProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HKSPStateMachine;
  v8 = [(HKSPStateMachine *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeWeak(&v9->_infoProvider, v7);
    v10 = v9;
  }

  return v9;
}

- (void)setInitialState:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_currentState)
  {
    __assert_rtn("[HKSPStateMachine setInitialState:]", "HKSPStateMachine.m", 41, "_currentState == nil");
  }

  v5 = v4;
  v6 = HKSPLogForCategory([(HKSPStateMachine *)self loggingCategory]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HKSPStateMachine *)self stateMachineName];
    v8 = [(HKSPStateMachineState *)v5 stateName];
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] starting in state %{public}@", &v11, 0x16u);
  }

  currentState = self->_currentState;
  self->_currentState = v5;

  v10 = *MEMORY[0x277D85DE8];
}

- (NSString)currentStateIdentifier
{
  v2 = [(HKSPStateMachine *)self currentState];
  v3 = [v2 stateIdentifier];

  return v3;
}

- (void)perform:(id)a3 withContext:(id)a4
{
  v16 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CCACC8] currentThread];
  v7 = [v6 threadDictionary];

  if (v5)
  {
    v8 = [objc_opt_class() _contextKey];
    v9 = [v7 objectForKeyedSubscript:v8];
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

    [v12 addObject:v5];
    v13 = [objc_opt_class() _contextKey];
    [v7 setObject:v12 forKeyedSubscript:v13];

    v16[2]();
    v14 = [objc_opt_class() _contextKey];
    v15 = [v7 objectForKeyedSubscript:v14];
    [v15 removeLastObject];
  }

  else
  {
    v16[2]();
  }
}

- (HKSPStateMachineContext)currentContext
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [objc_opt_class() _contextKey];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [v5 lastObject];

  return v6;
}

- (void)enterState:(id)a3
{
  v4 = a3;
  currentState = self->_currentState;
  if (currentState == v4)
  {
    v6 = [(HKSPStateMachineState *)self->_currentState copy];
  }

  else
  {
    v6 = currentState;
  }

  v7 = v6;
  v8 = [(HKSPStateMachine *)self currentContext];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(HKSPStateMachineContext);
  }

  v11 = v10;
  v12 = currentState != v4;

  v13 = [(HKSPStateMachineContext *)v11 contextWithNextState:v4 previousState:v7 isInitializing:!self->_initialized];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __31__HKSPStateMachine_enterState___block_invoke;
  v16[3] = &unk_279C73BE8;
  v20 = v12;
  v17 = v7;
  v18 = self;
  v19 = v4;
  v14 = v4;
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
  v4 = [(HKSPStateMachine *)self currentState];

  if (!v4)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [(HKSPStateMachine *)self stateMachineName];
    [v12 handleFailureInMethod:a2 object:self file:@"HKSPStateMachine.m" lineNumber:119 description:{@"%@ currentState is nil", v13}];
  }

  v5 = [(HKSPStateMachine *)self currentState];
  [v5 _updateState];

  if (!self->_initialized)
  {
    v6 = HKSPLogForCategory([(HKSPStateMachine *)self loggingCategory]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(HKSPStateMachine *)self stateMachineName];
      v8 = [(HKSPStateMachine *)self currentState];
      v9 = [v8 stateName];
      *buf = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] State not yet initialized, re-entering state %{public}@", buf, 0x16u);
    }

    v10 = [(HKSPStateMachine *)self currentState];
    [(HKSPStateMachine *)self enterState:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegateWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(HKSPStateMachine *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(HKSPStateMachine *)self delegate];
    v8 = [v7 callbackScheduler];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__HKSPStateMachine_notifyDelegateWithBlock___block_invoke;
    v14[3] = &unk_279C73B30;
    v9 = &v15;
    v14[4] = self;
    v15 = v4;
    v10 = v4;
    [v8 performBlock:v14];
  }

  else
  {
    v7 = [MEMORY[0x277D2C938] immediateScheduler];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__HKSPStateMachine_notifyDelegateWithBlock___block_invoke_2;
    v12[3] = &unk_279C73B30;
    v9 = &v13;
    v12[4] = self;
    v13 = v4;
    v11 = v4;
    [v7 performBlock:v12];
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
  v5 = [(HKSPStateMachine *)self currentState];
  [v4 appendFormat:@"; currentState: %@>", v5];

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