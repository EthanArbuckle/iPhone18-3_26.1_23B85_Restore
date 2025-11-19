@interface HKSPPersistentStateMachine
- (HKSPPersistentStateMachine)initWithAllowedStates:(id)a3 delegate:(id)a4 infoProvider:(id)a5;
- (HKSPPersistentStateMachine)initWithIdentifier:(id)a3 allowedStates:(id)a4 persistence:(id)a5 delegate:(id)a6 infoProvider:(id)a7;
- (HKSPPersistentStateMachine)initWithIdentifier:(id)a3 allowedStates:(id)a4 persistence:(id)a5 delegate:(id)a6 infoProvider:(id)a7 currentDateProvider:(id)a8;
- (HKSPPersistentStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7;
- (NSArray)scheduledExpirationStateIdentifiers;
- (NSDate)currentStateExpirationDate;
- (id)persistedState;
- (void)enterState:(id)a3;
- (void)stateWithIdentifierDidExpire:(id)a3;
@end

@implementation HKSPPersistentStateMachine

- (HKSPPersistentStateMachine)initWithAllowedStates:(id)a3 delegate:(id)a4 infoProvider:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = HKSPUserDefaultsStatePersistence();
  v14 = [(HKSPPersistentStateMachine *)self initWithIdentifier:v12 allowedStates:v10 persistence:v13 delegate:v9 infoProvider:v8];

  return v14;
}

- (HKSPPersistentStateMachine)initWithIdentifier:(id)a3 allowedStates:(id)a4 persistence:(id)a5 delegate:(id)a6 infoProvider:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = HKSPCurrentDateProvider();
  v18 = [(HKSPPersistentStateMachine *)self initWithIdentifier:v16 allowedStates:v15 persistence:v14 delegate:v13 infoProvider:v12 currentDateProvider:v17];

  return v18;
}

- (HKSPPersistentStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7
{
  v12 = MEMORY[0x277CBEB98];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v12 set];
  v19 = [(HKSPPersistentStateMachine *)self initWithIdentifier:v17 allowedStates:v18 persistence:v16 delegate:v15 infoProvider:v14 currentDateProvider:v13];

  return v19;
}

- (HKSPPersistentStateMachine)initWithIdentifier:(id)a3 allowedStates:(id)a4 persistence:(id)a5 delegate:(id)a6 infoProvider:(id)a7 currentDateProvider:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = HKSPPersistentStateMachine;
  v18 = [(HKSPStateMachine *)&v25 initWithDelegate:a6 infoProvider:a7];
  if (v18)
  {
    v19 = [v14 copy];
    identifier = v18->_identifier;
    v18->_identifier = v19;

    objc_storeStrong(&v18->_allowedStates, a4);
    objc_storeStrong(&v18->_persistence, a5);
    v21 = [v17 copy];
    currentDateProvider = v18->_currentDateProvider;
    v18->_currentDateProvider = v21;

    v23 = v18;
  }

  return v18;
}

- (id)persistedState
{
  v18 = *MEMORY[0x277D85DE8];
  persistence = self->_persistence;
  identifier = self->_identifier;
  allowedStates = self->_allowedStates;
  v13 = 0;
  v6 = [(HKSPStatePersistence *)persistence loadPersistentStateForIdentifier:identifier allowedStates:allowedStates error:&v13];
  v7 = v13;
  [v6 setStateMachine:self];
  if (v7)
  {
    v8 = HKSPLogForCategory([(HKSPStateMachine *)self loggingCategory]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = [(HKSPStateMachine *)self stateMachineName];
      *buf = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v7;
      _os_log_error_impl(&dword_269A84000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to load state with error %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (NSArray)scheduledExpirationStateIdentifiers
{
  v2 = [(HKSPStateMachine *)self allStates];
  v3 = [v2 na_filter:&__block_literal_global_0];
  v4 = [v3 na_map:&__block_literal_global_295];

  return v4;
}

- (NSDate)currentStateExpirationDate
{
  v3 = [(HKSPStateMachine *)self currentState];
  v4 = [v3 lifetimeInterval];
  v5 = [v4 endDate];
  v6 = [MEMORY[0x277CBEAA8] distantFuture];
  v7 = [v5 isEqualToDate:v6];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(HKSPStateMachine *)self currentState];
    v10 = [v9 lifetimeInterval];
    v8 = [v10 endDate];
  }

  return v8;
}

- (void)enterState:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HKSPStateMachine *)self currentState];
  v18.receiver = self;
  v18.super_class = HKSPPersistentStateMachine;
  [(HKSPStateMachine *)&v18 enterState:v4];
  if ((NAEqualObjects() & 1) == 0)
  {
    if ((HKSPIsUnitTesting() & 1) == 0)
    {
      v6 = HKSPLogForCategory([(HKSPStateMachine *)self loggingCategory]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(HKSPStateMachine *)self stateMachineName];
        v8 = [v4 stateName];
        *buf = 138543618;
        v20 = v7;
        v21 = 2114;
        v22 = v8;
        _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Persisting state %{public}@", buf, 0x16u);
      }
    }

    persistence = self->_persistence;
    identifier = self->_identifier;
    v17 = 0;
    v11 = [(HKSPStatePersistence *)persistence savePersistentState:v4 identifier:identifier error:&v17];
    v12 = v17;
    if (v11)
    {
      if (HKSPIsUnitTesting())
      {
LABEL_13:

        goto LABEL_14;
      }

      v13 = HKSPLogForCategory([(HKSPStateMachine *)self loggingCategory]);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:

        goto LABEL_13;
      }

      v14 = [(HKSPStateMachine *)self stateMachineName];
      v15 = [v4 stateName];
      *buf = 138543618;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&dword_269A84000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully persisted state %{public}@", buf, 0x16u);
    }

    else
    {
      v13 = HKSPLogForCategory([(HKSPStateMachine *)self loggingCategory]);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v14 = [(HKSPStateMachine *)self stateMachineName];
      v15 = [v4 stateName];
      *buf = 138543874;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v12;
      _os_log_error_impl(&dword_269A84000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to persist state %{public}@ with error %{public}@", buf, 0x20u);
    }

    goto LABEL_12;
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)stateWithIdentifierDidExpire:(id)a3
{
  v4 = a3;
  v5 = [(HKSPStateMachine *)self currentState];
  [v5 stateWithIdentifierDidExpire:v4];
}

@end