@interface HKSPPersistentStateMachineState
+ (BOOL)_hasExpirationDate:(id)date;
+ (BOOL)_isExpired:(id)expired currentDate:(id)date;
+ (id)infiniteInterval;
- (BOOL)_isExpired;
- (BOOL)_updateExpirationDate;
- (BOOL)_willEnter;
- (HKSPPersistentStateMachineState)initWithCoder:(id)coder;
- (HKSPPersistentStateMachineState)initWithStateMachine:(id)machine;
- (HKSPPersistentStateMachineState)stateWithIdentifierDidExpire:(id)expire;
- (id)_updatedLifetimeIntervalWithStartDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)equalsBuilderWithObject:(id)object;
- (id)succinctDescriptionBuilder;
- (void)_didEnter;
- (void)_didExit;
- (void)_expireOrRescheduleExpirationIfNecessary;
- (void)_resetLifetimeInterval;
- (void)_updateState;
- (void)_willExit;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSPPersistentStateMachineState

+ (id)infiniteInterval
{
  v2 = objc_alloc(MEMORY[0x277CCA970]);
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v5 = [v2 initWithStartDate:distantPast endDate:distantFuture];

  return v5;
}

- (HKSPPersistentStateMachineState)initWithStateMachine:(id)machine
{
  v8.receiver = self;
  v8.super_class = HKSPPersistentStateMachineState;
  v3 = [(HKSPStateMachineState *)&v8 initWithStateMachine:machine];
  if (v3)
  {
    infiniteInterval = [objc_opt_class() infiniteInterval];
    lifetimeInterval = v3->_lifetimeInterval;
    v3->_lifetimeInterval = infiniteInterval;

    v6 = v3;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  lifetimeInterval = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
  startDate = [lifetimeInterval startDate];
  [coderCopy encodeObject:startDate forKey:@"EntryDate"];

  lifetimeInterval2 = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
  endDate = [lifetimeInterval2 endDate];
  [coderCopy encodeObject:endDate forKey:@"ExpirationDate"];
}

- (HKSPPersistentStateMachineState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HKSPPersistentStateMachineState;
  v5 = [(HKSPStateMachineState *)&v15 initWithStateMachine:0];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EntryDate"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ExpirationDate"];
    v8 = objc_alloc(MEMORY[0x277CCA970]);
    distantPast = v6;
    if (!v6)
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    distantFuture = v7;
    if (!v7)
    {
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    }

    v11 = [v8 initWithStartDate:distantPast endDate:distantFuture];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = HKSPPersistentStateMachineState;
  v4 = [(HKSPStateMachineState *)&v9 copyWithZone:zone];
  lifetimeInterval = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
  v6 = [lifetimeInterval copy];
  v7 = v4[2];
  v4[2] = v6;

  return v4;
}

- (id)equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = HKSPPersistentStateMachineState;
  v5 = [(HKSPStateMachineState *)&v12 equalsBuilderWithObject:objectCopy];
  lifetimeInterval = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HKSPPersistentStateMachineState_equalsBuilderWithObject___block_invoke;
  v10[3] = &unk_279C74B68;
  v11 = objectCopy;
  v7 = objectCopy;
  v8 = [v5 appendObject:lifetimeInterval counterpart:v10];

  return v5;
}

- (id)succinctDescriptionBuilder
{
  v21.receiver = self;
  v21.super_class = HKSPPersistentStateMachineState;
  succinctDescriptionBuilder = [(HKSPStateMachineState *)&v21 succinctDescriptionBuilder];
  lifetimeInterval = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
  startDate = [lifetimeInterval startDate];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v7 = [startDate isEqualToDate:distantPast];

  if ((v7 & 1) == 0)
  {
    lifetimeInterval2 = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
    startDate2 = [lifetimeInterval2 startDate];
    hkspDescription = [startDate2 hkspDescription];
    v11 = [succinctDescriptionBuilder appendObject:hkspDescription withName:@"entryDate"];
  }

  lifetimeInterval3 = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
  endDate = [lifetimeInterval3 endDate];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v15 = [endDate isEqualToDate:distantFuture];

  if ((v15 & 1) == 0)
  {
    lifetimeInterval4 = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
    endDate2 = [lifetimeInterval4 endDate];
    hkspDescription2 = [endDate2 hkspDescription];
    v19 = [succinctDescriptionBuilder appendObject:hkspDescription2 withName:@"expirationDate"];
  }

  return succinctDescriptionBuilder;
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
    _updateExpirationDate = [(HKSPPersistentStateMachineState *)self _updateExpirationDate];
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

    else if (_updateExpirationDate && [(HKSPPersistentStateMachineState *)self schedulesExpiration])
    {
      v6 = HKSPLogForCategory(7uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = objc_opt_class();
        v7 = v11;
        _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] rescheduling expiration", &v10, 0xCu);
      }

      stateMachine = [(HKSPStateMachineState *)self stateMachine];
      [stateMachine scheduleStateExpiration];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_hasExpirationDate:(id)date
{
  endDate = [date endDate];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v5 = [endDate hksp_isBeforeDate:distantFuture];

  return v5;
}

- (BOOL)_isExpired
{
  v3 = objc_opt_class();
  lifetimeInterval = self->_lifetimeInterval;
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentDateProvider = [stateMachine currentDateProvider];
  v7 = currentDateProvider[2]();
  LOBYTE(v3) = [v3 _isExpired:lifetimeInterval currentDate:v7];

  return v3;
}

+ (BOOL)_isExpired:(id)expired currentDate:(id)date
{
  v25 = *MEMORY[0x277D85DE8];
  expiredCopy = expired;
  dateCopy = date;
  if (![self _hasExpirationDate:expiredCopy])
  {
    goto LABEL_10;
  }

  startDate = [expiredCopy startDate];
  v9 = [dateCopy hksp_isBeforeDate:startDate];

  if (v9)
  {
    v10 = HKSPLogForCategory(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = v11;
      startDate2 = [expiredCopy startDate];
      v21 = 138543618;
      v22 = v11;
      v23 = 2114;
      v24 = startDate2;
      v14 = "[%{public}@] it's before the entry date (%{public}@)";
LABEL_8:
      _os_log_impl(&dword_269A84000, v10, OS_LOG_TYPE_DEFAULT, v14, &v21, 0x16u);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  endDate = [expiredCopy endDate];
  v16 = [dateCopy hksp_isAfterOrSameAsDate:endDate];

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
    startDate2 = [expiredCopy endDate];
    v21 = 138543618;
    v22 = v17;
    v23 = 2114;
    v24 = startDate2;
    v14 = "[%{public}@] it's after expiration date (%{public}@)";
    goto LABEL_8;
  }

LABEL_9:

  v18 = 1;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (HKSPPersistentStateMachineState)stateWithIdentifierDidExpire:(id)expire
{
  v17 = *MEMORY[0x277D85DE8];
  expireCopy = expire;
  stateIdentifier = [(HKSPStateMachineState *)self stateIdentifier];
  v6 = [stateIdentifier isEqualToString:expireCopy];

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
      v16 = expireCopy;
      v10 = v14;
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] ignoring expired identifier %{public}@", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_willEnter
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentDateProvider = [stateMachine currentDateProvider];
  v5 = currentDateProvider[2]();

  v6 = v5;
  currentContext = [stateMachine currentContext];
  previousState = [currentContext previousState];

  if (!previousState)
  {
    lifetimeInterval = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
    startDate = [lifetimeInterval startDate];

    goto LABEL_6;
  }

  lifetimeInterval2 = [previousState lifetimeInterval];
  startDate = [lifetimeInterval2 startDate];

  if (!self)
  {
    goto LABEL_8;
  }

  v11 = v6;
  if ([previousState isMemberOfClass:objc_opt_class()])
  {
LABEL_6:
    if ([startDate hksp_isBeforeDate:v6])
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      v14 = [startDate isEqualToDate:distantPast];

      if ((v14 & 1) == 0)
      {
        startDate = startDate;

        v11 = startDate;
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
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];
  nextState = [currentContext nextState];

  if (!self || !nextState || ([nextState isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    [(HKSPPersistentStateMachineState *)self _resetLifetimeInterval];
  }
}

- (void)_didEnter
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];
  previousState = [currentContext previousState];

  if ([(HKSPPersistentStateMachineState *)self schedulesExpiration]&& (NAEqualObjects() & 1) == 0)
  {
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 scheduleStateExpiration];
  }

  v7.receiver = self;
  v7.super_class = HKSPPersistentStateMachineState;
  [(HKSPStateMachineState *)&v7 _didEnter];
}

- (void)_didExit
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];
  nextState = [currentContext nextState];

  if (-[HKSPPersistentStateMachineState schedulesExpiration](self, "schedulesExpiration") && (NAEqualObjects() & 1) == 0 && ([nextState schedulesExpiration] & 1) == 0)
  {
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 unscheduleStateExpiration];
  }

  v7.receiver = self;
  v7.super_class = HKSPPersistentStateMachineState;
  [(HKSPStateMachineState *)&v7 _didExit];
}

- (BOOL)_updateExpirationDate
{
  endDate = [(NSDateInterval *)self->_lifetimeInterval endDate];
  startDate = [(NSDateInterval *)self->_lifetimeInterval startDate];
  v5 = [(HKSPPersistentStateMachineState *)self _updatedLifetimeIntervalWithStartDate:startDate];
  lifetimeInterval = self->_lifetimeInterval;
  self->_lifetimeInterval = v5;

  endDate2 = [(NSDateInterval *)self->_lifetimeInterval endDate];
  if (endDate == endDate2)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    endDate3 = [(NSDateInterval *)self->_lifetimeInterval endDate];
    if (endDate3)
    {
      endDate4 = [(NSDateInterval *)self->_lifetimeInterval endDate];
      v10 = [endDate isEqual:endDate4] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  return v10;
}

- (id)_updatedLifetimeIntervalWithStartDate:(id)date
{
  v31 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  startDate = [(NSDateInterval *)self->_lifetimeInterval startDate];
  v6 = NAEqualObjects();

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [(HKSPPersistentStateMachineState *)self expirationDuration];
  if (v8 <= 0.0)
  {
    expirationDate = [(HKSPPersistentStateMachineState *)self expirationDate];
    if (expirationDate)
    {
      v9 = expirationDate;

      distantFuture = v9;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    [dateCopy dateByAddingTimeInterval:?];
    distantFuture = v9 = distantFuture;
  }

  endDate = [(NSDateInterval *)self->_lifetimeInterval endDate];
  v12 = NAEqualObjects();

  if (v6 & v12)
  {
    v13 = self->_lifetimeInterval;
LABEL_13:
    v22 = v13;
    goto LABEL_14;
  }

  if (![distantFuture hksp_isBeforeDate:dateCopy])
  {
    v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:distantFuture];
    goto LABEL_13;
  }

  v14 = HKSPLogForCategory(7uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = v15;
    hkspDescription = [distantFuture hkspDescription];
    hkspDescription2 = [dateCopy hkspDescription];
    v25 = 138543874;
    v26 = v15;
    v27 = 2114;
    v28 = hkspDescription;
    v29 = 2114;
    v30 = hkspDescription2;
    _os_log_impl(&dword_269A84000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] expiration: %{public}@ is before entry: %{public}@, treated as expired now", &v25, 0x20u);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentDateProvider = [stateMachine currentDateProvider];
  v21 = currentDateProvider[2]();

  v22 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v21 endDate:v21];
LABEL_14:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)_resetLifetimeInterval
{
  infiniteInterval = [objc_opt_class() infiniteInterval];
  lifetimeInterval = self->_lifetimeInterval;
  self->_lifetimeInterval = infiniteInterval;

  MEMORY[0x2821F96F8]();
}

@end