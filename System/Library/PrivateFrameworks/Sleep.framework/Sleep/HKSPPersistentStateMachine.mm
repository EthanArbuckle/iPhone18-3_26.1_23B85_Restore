@interface HKSPPersistentStateMachine
- (HKSPPersistentStateMachine)initWithAllowedStates:(id)states delegate:(id)delegate infoProvider:(id)provider;
- (HKSPPersistentStateMachine)initWithIdentifier:(id)identifier allowedStates:(id)states persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider;
- (HKSPPersistentStateMachine)initWithIdentifier:(id)identifier allowedStates:(id)states persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider;
- (HKSPPersistentStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider;
- (NSArray)scheduledExpirationStateIdentifiers;
- (NSDate)currentStateExpirationDate;
- (id)persistedState;
- (void)enterState:(id)state;
- (void)stateWithIdentifierDidExpire:(id)expire;
@end

@implementation HKSPPersistentStateMachine

- (HKSPPersistentStateMachine)initWithAllowedStates:(id)states delegate:(id)delegate infoProvider:(id)provider
{
  providerCopy = provider;
  delegateCopy = delegate;
  statesCopy = states;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = HKSPUserDefaultsStatePersistence();
  v14 = [(HKSPPersistentStateMachine *)self initWithIdentifier:v12 allowedStates:statesCopy persistence:v13 delegate:delegateCopy infoProvider:providerCopy];

  return v14;
}

- (HKSPPersistentStateMachine)initWithIdentifier:(id)identifier allowedStates:(id)states persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider
{
  providerCopy = provider;
  delegateCopy = delegate;
  persistenceCopy = persistence;
  statesCopy = states;
  identifierCopy = identifier;
  v17 = HKSPCurrentDateProvider();
  v18 = [(HKSPPersistentStateMachine *)self initWithIdentifier:identifierCopy allowedStates:statesCopy persistence:persistenceCopy delegate:delegateCopy infoProvider:providerCopy currentDateProvider:v17];

  return v18;
}

- (HKSPPersistentStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider
{
  v12 = MEMORY[0x277CBEB98];
  dateProviderCopy = dateProvider;
  providerCopy = provider;
  delegateCopy = delegate;
  persistenceCopy = persistence;
  identifierCopy = identifier;
  v18 = [v12 set];
  v19 = [(HKSPPersistentStateMachine *)self initWithIdentifier:identifierCopy allowedStates:v18 persistence:persistenceCopy delegate:delegateCopy infoProvider:providerCopy currentDateProvider:dateProviderCopy];

  return v19;
}

- (HKSPPersistentStateMachine)initWithIdentifier:(id)identifier allowedStates:(id)states persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider
{
  identifierCopy = identifier;
  statesCopy = states;
  persistenceCopy = persistence;
  dateProviderCopy = dateProvider;
  v25.receiver = self;
  v25.super_class = HKSPPersistentStateMachine;
  v18 = [(HKSPStateMachine *)&v25 initWithDelegate:delegate infoProvider:provider];
  if (v18)
  {
    v19 = [identifierCopy copy];
    identifier = v18->_identifier;
    v18->_identifier = v19;

    objc_storeStrong(&v18->_allowedStates, states);
    objc_storeStrong(&v18->_persistence, persistence);
    v21 = [dateProviderCopy copy];
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
      stateMachineName = [(HKSPStateMachine *)self stateMachineName];
      *buf = 138543618;
      v15 = stateMachineName;
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
  allStates = [(HKSPStateMachine *)self allStates];
  v3 = [allStates na_filter:&__block_literal_global_0];
  v4 = [v3 na_map:&__block_literal_global_295];

  return v4;
}

- (NSDate)currentStateExpirationDate
{
  currentState = [(HKSPStateMachine *)self currentState];
  lifetimeInterval = [currentState lifetimeInterval];
  endDate = [lifetimeInterval endDate];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v7 = [endDate isEqualToDate:distantFuture];

  if (v7)
  {
    endDate2 = 0;
  }

  else
  {
    currentState2 = [(HKSPStateMachine *)self currentState];
    lifetimeInterval2 = [currentState2 lifetimeInterval];
    endDate2 = [lifetimeInterval2 endDate];
  }

  return endDate2;
}

- (void)enterState:(id)state
{
  v25 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  currentState = [(HKSPStateMachine *)self currentState];
  v18.receiver = self;
  v18.super_class = HKSPPersistentStateMachine;
  [(HKSPStateMachine *)&v18 enterState:stateCopy];
  if ((NAEqualObjects() & 1) == 0)
  {
    if ((HKSPIsUnitTesting() & 1) == 0)
    {
      v6 = HKSPLogForCategory([(HKSPStateMachine *)self loggingCategory]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        stateMachineName = [(HKSPStateMachine *)self stateMachineName];
        stateName = [stateCopy stateName];
        *buf = 138543618;
        v20 = stateMachineName;
        v21 = 2114;
        v22 = stateName;
        _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Persisting state %{public}@", buf, 0x16u);
      }
    }

    persistence = self->_persistence;
    identifier = self->_identifier;
    v17 = 0;
    v11 = [(HKSPStatePersistence *)persistence savePersistentState:stateCopy identifier:identifier error:&v17];
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

      stateMachineName2 = [(HKSPStateMachine *)self stateMachineName];
      stateName2 = [stateCopy stateName];
      *buf = 138543618;
      v20 = stateMachineName2;
      v21 = 2114;
      v22 = stateName2;
      _os_log_impl(&dword_269A84000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully persisted state %{public}@", buf, 0x16u);
    }

    else
    {
      v13 = HKSPLogForCategory([(HKSPStateMachine *)self loggingCategory]);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      stateMachineName2 = [(HKSPStateMachine *)self stateMachineName];
      stateName2 = [stateCopy stateName];
      *buf = 138543874;
      v20 = stateMachineName2;
      v21 = 2114;
      v22 = stateName2;
      v23 = 2114;
      v24 = v12;
      _os_log_error_impl(&dword_269A84000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to persist state %{public}@ with error %{public}@", buf, 0x20u);
    }

    goto LABEL_12;
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)stateWithIdentifierDidExpire:(id)expire
{
  expireCopy = expire;
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState stateWithIdentifierDidExpire:expireCopy];
}

@end