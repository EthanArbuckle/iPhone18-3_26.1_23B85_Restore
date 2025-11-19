@interface HKSPPersistentStateMachineState
+ (BOOL)_hasExpirationDate:(id)a3;
+ (BOOL)_isExpired:(id)a3 currentDate:(id)a4;
+ (id)infiniteInterval;
- (BOOL)_isExpired;
- (BOOL)_updateExpirationDate;
- (BOOL)_willEnter;
- (HKSPPersistentStateMachineState)initWithCoder:(id)a3;
- (HKSPPersistentStateMachineState)initWithStateMachine:(id)a3;
- (HKSPPersistentStateMachineState)stateWithIdentifierDidExpire:(id)a3;
- (id)_updatedLifetimeIntervalWithStartDate:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)equalsBuilderWithObject:(id)a3;
- (id)succinctDescriptionBuilder;
- (void)_didEnter;
- (void)_didExit;
- (void)_expireOrRescheduleExpirationIfNecessary;
- (void)_resetLifetimeInterval;
- (void)_updateState;
- (void)_willExit;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSPPersistentStateMachineState

+ (id)infiniteInterval
{
  v2 = objc_alloc(MEMORY[0x277CCA970]);
  v3 = [MEMORY[0x277CBEAA8] distantPast];
  v4 = [MEMORY[0x277CBEAA8] distantFuture];
  v5 = [v2 initWithStartDate:v3 endDate:v4];

  return v5;
}

- (HKSPPersistentStateMachineState)initWithStateMachine:(id)a3
{
  v8.receiver = self;
  v8.super_class = HKSPPersistentStateMachineState;
  v3 = [(HKSPStateMachineState *)&v8 initWithStateMachine:a3];
  if (v3)
  {
    v4 = [objc_opt_class() infiniteInterval];
    lifetimeInterval = v3->_lifetimeInterval;
    v3->_lifetimeInterval = v4;

    v6 = v3;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
  v6 = [v5 startDate];
  [v4 encodeObject:v6 forKey:@"EntryDate"];

  v8 = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
  v7 = [v8 endDate];
  [v4 encodeObject:v7 forKey:@"ExpirationDate"];
}

- (HKSPPersistentStateMachineState)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HKSPPersistentStateMachineState;
  v5 = [(HKSPStateMachineState *)&v15 initWithStateMachine:0];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EntryDate"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ExpirationDate"];
    v8 = objc_alloc(MEMORY[0x277CCA970]);
    v9 = v6;
    if (!v6)
    {
      v9 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v10 = v7;
    if (!v7)
    {
      v10 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    v11 = [v8 initWithStartDate:v9 endDate:v10];
    lifetimeInterval = v5->_lifetimeInterval;
    v5->_lifetimeInterval = v11;

    if (v7)
    {
      if (v6)
      {
LABEL_8:
        v13 = v5;

        goto LABEL_9;
      }
    }

    else
    {

      if (v6)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = HKSPPersistentStateMachineState;
  v4 = [(HKSPStateMachineState *)&v9 copyWithZone:a3];
  v5 = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
  v6 = [v5 copy];
  v7 = v4[2];
  v4[2] = v6;

  return v4;
}

- (id)equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKSPPersistentStateMachineState;
  v5 = [(HKSPStateMachineState *)&v12 equalsBuilderWithObject:v4];
  v6 = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HKSPPersistentStateMachineState_equalsBuilderWithObject___block_invoke;
  v10[3] = &unk_279C74B68;
  v11 = v4;
  v7 = v4;
  v8 = [v5 appendObject:v6 counterpart:v10];

  return v5;
}

- (id)succinctDescriptionBuilder
{
  v21.receiver = self;
  v21.super_class = HKSPPersistentStateMachineState;
  v3 = [(HKSPStateMachineState *)&v21 succinctDescriptionBuilder];
  v4 = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
  v5 = [v4 startDate];
  v6 = [MEMORY[0x277CBEAA8] distantPast];
  v7 = [v5 isEqualToDate:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
    v9 = [v8 startDate];
    v10 = [v9 hkspDescription];
    v11 = [v3 appendObject:v10 withName:@"entryDate"];
  }

  v12 = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
  v13 = [v12 endDate];
  v14 = [MEMORY[0x277CBEAA8] distantFuture];
  v15 = [v13 isEqualToDate:v14];

  if ((v15 & 1) == 0)
  {
    v16 = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
    v17 = [v16 endDate];
    v18 = [v17 hkspDescription];
    v19 = [v3 appendObject:v18 withName:@"expirationDate"];
  }

  return v3;
}

- (void)_updateState
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(HKSPPersistentStateMachineState *)self _isExpired])
  {
    v3 = HKSPLogForCategory(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = objc_opt_class();
      v4 = v8;
      _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] already expired", buf, 0xCu);
    }

    [(HKSPPersistentStateMachineState *)self stateDidExpire];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = HKSPPersistentStateMachineState;
    [(HKSPStateMachineState *)&v6 _updateState];
    [(HKSPPersistentStateMachineState *)self _expireOrRescheduleExpirationIfNecessary];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_expireOrRescheduleExpirationIfNecessary
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(HKSPStateMachineState *)self isCurrentState])
  {
    v3 = [(HKSPPersistentStateMachineState *)self _updateExpirationDate];
    if ([(HKSPPersistentStateMachineState *)self _isExpired])
    {
      v4 = HKSPLogForCategory(7uLL);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = objc_opt_class();
        v5 = v11;
        _os_log_impl(&dword_269A84000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] now expired", &v10, 0xCu);
      }

      [(HKSPPersistentStateMachineState *)self stateDidExpire];
    }

    else if (v3 && [(HKSPPersistentStateMachineState *)self schedulesExpiration])
    {
      v6 = HKSPLogForCategory(7uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = objc_opt_class();
        v7 = v11;
        _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] rescheduling expiration", &v10, 0xCu);
      }

      v8 = [(HKSPStateMachineState *)self stateMachine];
      [v8 scheduleStateExpiration];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_hasExpirationDate:(id)a3
{
  v3 = [a3 endDate];
  v4 = [MEMORY[0x277CBEAA8] distantFuture];
  v5 = [v3 hksp_isBeforeDate:v4];

  return v5;
}

- (BOOL)_isExpired
{
  v3 = objc_opt_class();
  lifetimeInterval = self->_lifetimeInterval;
  v5 = [(HKSPStateMachineState *)self stateMachine];
  v6 = [v5 currentDateProvider];
  v7 = v6[2]();
  LOBYTE(v3) = [v3 _isExpired:lifetimeInterval currentDate:v7];

  return v3;
}

+ (BOOL)_isExpired:(id)a3 currentDate:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![a1 _hasExpirationDate:v6])
  {
    goto LABEL_10;
  }

  v8 = [v6 startDate];
  v9 = [v7 hksp_isBeforeDate:v8];

  if (v9)
  {
    v10 = HKSPLogForCategory(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = [v6 startDate];
      v21 = 138543618;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v14 = "[%{public}@] it's before the entry date (%{public}@)";
LABEL_8:
      _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, v14, &v21, 0x16u);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v15 = [v6 endDate];
  v16 = [v7 hksp_isAfterOrSameAsDate:v15];

  if (!v16)
  {
LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  v10 = HKSPLogForCategory(7uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v12 = v17;
    v13 = [v6 endDate];
    v21 = 138543618;
    v22 = v17;
    v23 = 2114;
    v24 = v13;
    v14 = "[%{public}@] it's after expiration date (%{public}@)";
    goto LABEL_8;
  }

LABEL_9:

  v18 = 1;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (HKSPPersistentStateMachineState)stateWithIdentifierDidExpire:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HKSPStateMachineState *)self stateIdentifier];
  v6 = [v5 isEqualToString:v4];

  v7 = HKSPLogForCategory(7uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v13 = 138543362;
      v14 = objc_opt_class();
      v9 = v14;
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] expiring", &v13, 0xCu);
    }

    [(HKSPPersistentStateMachineState *)self stateDidExpire];
  }

  else
  {
    if (v8)
    {
      v13 = 138543618;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = v4;
      v10 = v14;
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] ignoring expired identifier %{public}@", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_willEnter
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 currentDateProvider];
  v5 = v4[2]();

  v6 = v5;
  v7 = [v3 currentContext];
  v8 = [v7 previousState];

  if (!v8)
  {
    v12 = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
    v10 = [v12 startDate];

    goto LABEL_6;
  }

  v9 = [v8 lifetimeInterval];
  v10 = [v9 startDate];

  if (!self)
  {
    goto LABEL_8;
  }

  v11 = v6;
  if ([v8 isMemberOfClass:objc_opt_class()])
  {
LABEL_6:
    if ([v10 hksp_isBeforeDate:v6])
    {
      v13 = [MEMORY[0x277CBEAA8] distantPast];
      v14 = [v10 isEqualToDate:v13];

      if ((v14 & 1) == 0)
      {
        v10 = v10;

        v11 = v10;
        goto LABEL_9;
      }
    }

LABEL_8:
    v11 = v6;
  }

LABEL_9:
  v15 = [(HKSPPersistentStateMachineState *)self _updatedLifetimeIntervalWithStartDate:v11];
  if ([objc_opt_class() _isExpired:v15 currentDate:v6])
  {
    [(HKSPPersistentStateMachineState *)self stateDidExpire];
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v18.receiver = self;
  v18.super_class = HKSPPersistentStateMachineState;
  if (![(HKSPStateMachineState *)&v18 _willEnter])
  {
    goto LABEL_13;
  }

  objc_storeStrong(&self->_lifetimeInterval, v15);
  v16 = 1;
LABEL_14:

  return v16;
}

- (void)_willExit
{
  v6.receiver = self;
  v6.super_class = HKSPPersistentStateMachineState;
  [(HKSPStateMachineState *)&v6 _willExit];
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 currentContext];
  v5 = [v4 nextState];

  if (!self || !v5 || ([v5 isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    [(HKSPPersistentStateMachineState *)self _resetLifetimeInterval];
  }
}

- (void)_didEnter
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 currentContext];
  v5 = [v4 previousState];

  if ([(HKSPPersistentStateMachineState *)self schedulesExpiration]&& (NAEqualObjects() & 1) == 0)
  {
    v6 = [(HKSPStateMachineState *)self stateMachine];
    [v6 scheduleStateExpiration];
  }

  v7.receiver = self;
  v7.super_class = HKSPPersistentStateMachineState;
  [(HKSPStateMachineState *)&v7 _didEnter];
}

- (void)_didExit
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 currentContext];
  v5 = [v4 nextState];

  if (-[HKSPPersistentStateMachineState schedulesExpiration](self, "schedulesExpiration") && (NAEqualObjects() & 1) == 0 && ([v5 schedulesExpiration] & 1) == 0)
  {
    v6 = [(HKSPStateMachineState *)self stateMachine];
    [v6 unscheduleStateExpiration];
  }

  v7.receiver = self;
  v7.super_class = HKSPPersistentStateMachineState;
  [(HKSPStateMachineState *)&v7 _didExit];
}

- (BOOL)_updateExpirationDate
{
  v3 = [(NSDateInterval *)self->_lifetimeInterval endDate];
  v4 = [(NSDateInterval *)self->_lifetimeInterval startDate];
  v5 = [(HKSPPersistentStateMachineState *)self _updatedLifetimeIntervalWithStartDate:v4];
  lifetimeInterval = self->_lifetimeInterval;
  self->_lifetimeInterval = v5;

  v7 = [(NSDateInterval *)self->_lifetimeInterval endDate];
  if (v3 == v7)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v8 = [(NSDateInterval *)self->_lifetimeInterval endDate];
    if (v8)
    {
      v9 = [(NSDateInterval *)self->_lifetimeInterval endDate];
      v10 = [v3 isEqual:v9] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  return v10;
}

- (id)_updatedLifetimeIntervalWithStartDate:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSDateInterval *)self->_lifetimeInterval startDate];
  v6 = NAEqualObjects();

  v7 = [MEMORY[0x277CBEAA8] distantFuture];
  [(HKSPPersistentStateMachineState *)self expirationDuration];
  if (v8 <= 0.0)
  {
    v10 = [(HKSPPersistentStateMachineState *)self expirationDate];
    if (v10)
    {
      v9 = v10;

      v7 = v9;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    [v4 dateByAddingTimeInterval:?];
    v7 = v9 = v7;
  }

  v11 = [(NSDateInterval *)self->_lifetimeInterval endDate];
  v12 = NAEqualObjects();

  if (v6 & v12)
  {
    v13 = self->_lifetimeInterval;
LABEL_13:
    v22 = v13;
    goto LABEL_14;
  }

  if (![v7 hksp_isBeforeDate:v4])
  {
    v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v4 endDate:v7];
    goto LABEL_13;
  }

  v14 = HKSPLogForCategory(7uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = v15;
    v17 = [v7 hkspDescription];
    v18 = [v4 hkspDescription];
    v25 = 138543874;
    v26 = v15;
    v27 = 2114;
    v28 = v17;
    v29 = 2114;
    v30 = v18;
    _os_log_impl(&dword_269A84000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] expiration: %{public}@ is before entry: %{public}@, treated as expired now", &v25, 0x20u);
  }

  v19 = [(HKSPStateMachineState *)self stateMachine];
  v20 = [v19 currentDateProvider];
  v21 = v20[2]();

  v22 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v21 endDate:v21];
LABEL_14:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)_resetLifetimeInterval
{
  v3 = [objc_opt_class() infiniteInterval];
  lifetimeInterval = self->_lifetimeInterval;
  self->_lifetimeInterval = v3;

  MEMORY[0x2821F96F8]();
}

@end