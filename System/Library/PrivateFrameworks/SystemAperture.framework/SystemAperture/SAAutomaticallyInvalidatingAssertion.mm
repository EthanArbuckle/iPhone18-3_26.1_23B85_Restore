@interface SAAutomaticallyInvalidatingAssertion
- (BOOL)_setAutomaticallyInvalidatable:(BOOL)invalidatable lockingWithKey:(id)key reason:(id)reason;
- (SAAutomaticallyInvalidatingAssertion)initWithInvalidationInterval:(double)interval;
- (id)_descriptionConstituents;
- (void)_invalidateInvalidationTimerIfNecessary;
- (void)_scheduleInvalidationTimerIfNecessary;
- (void)resetAutomaticInvalidationTimer;
@end

@implementation SAAutomaticallyInvalidatingAssertion

void __77__SAAutomaticallyInvalidatingAssertion__scheduleInvalidationTimerIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 7);
    if (v5 == v6)
    {
      *(WeakRetained + 7) = 0;
    }

    [v4 invalidateWithReason:@"automatic invalidation interval elapsed"];
  }
}

- (id)_descriptionConstituents
{
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_invalidationInterval];
  [(NSTimer *)self->_invalidationTimer isValid];
  v5 = NSStringFromBOOL();
  key = self->_key;
  v7 = NSStringFromBOOL();
  v8 = [v3 initWithObjectsAndKeys:{v4, @"invalidation interval", v5, @"timer scheduled", v7, @"locked", 0}];

  if ([(NSString *)self->_lockReason length])
  {
    [v8 setValue:self->_lockReason forKey:@"lock reason"];
  }

  v12.receiver = self;
  v12.super_class = SAAutomaticallyInvalidatingAssertion;
  _descriptionConstituents = [(SAAssertion *)&v12 _descriptionConstituents];
  v10 = [_descriptionConstituents arrayByAddingObject:v8];

  return v10;
}

- (SAAutomaticallyInvalidatingAssertion)initWithInvalidationInterval:(double)interval
{
  v5.receiver = self;
  v5.super_class = SAAutomaticallyInvalidatingAssertion;
  result = [(SAAssertion *)&v5 init];
  if (result)
  {
    result->_invalidationInterval = interval;
  }

  return result;
}

- (void)resetAutomaticInvalidationTimer
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(SAAssertion *)selfCopy isValid]&& [(NSTimer *)selfCopy->_invalidationTimer isValid])
  {
    v3 = SALogSystem;
    if (os_log_type_enabled(SALogSystem, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = selfCopy;
      _os_log_impl(&dword_26C47D000, v3, OS_LOG_TYPE_DEFAULT, "Automatic invalidation timer reset: %{public}@", &v5, 0xCu);
    }

    [(SAAutomaticallyInvalidatingAssertion *)selfCopy _invalidateInvalidationTimerIfNecessary];
    [(SAAutomaticallyInvalidatingAssertion *)selfCopy _scheduleInvalidationTimerIfNecessary];
  }

  objc_sync_exit(selfCopy);

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setAutomaticallyInvalidatable:(BOOL)invalidatable lockingWithKey:(id)key reason:(id)reason
{
  invalidatableCopy = invalidatable;
  v24 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(SAAssertion *)selfCopy isValid])
  {
    goto LABEL_11;
  }

  automaticallyInvalidatable = selfCopy->_automaticallyInvalidatable;
  key = selfCopy->_key;
  if (automaticallyInvalidatable == invalidatableCopy)
  {
    v13 = 0;
    if (!keyCopy || key)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  if (key)
  {
    if ([(NSString *)key isEqualToString:keyCopy])
    {
      automaticallyInvalidatable = selfCopy->_automaticallyInvalidatable;
      goto LABEL_9;
    }

LABEL_11:
    v13 = 0;
    goto LABEL_21;
  }

LABEL_9:
  v13 = automaticallyInvalidatable != invalidatableCopy;
  selfCopy->_automaticallyInvalidatable = invalidatableCopy;
  if (invalidatableCopy)
  {
    v14 = 0;
  }

  else
  {
    v14 = [keyCopy copy];
  }

  v15 = selfCopy->_key;
  selfCopy->_key = v14;

  v16 = SALogSystem;
  if (os_log_type_enabled(SALogSystem, OS_LOG_TYPE_DEFAULT))
  {
    if (selfCopy->_automaticallyInvalidatable)
    {
      v17 = @"enabled";
    }

    else
    {
      v17 = @"disabled";
    }

    v20 = 138412546;
    v21 = v17;
    v22 = 2114;
    v23 = selfCopy;
    _os_log_impl(&dword_26C47D000, v16, OS_LOG_TYPE_DEFAULT, "Automatic invalidation %@: %{public}@", &v20, 0x16u);
  }

  if (selfCopy->_automaticallyInvalidatable)
  {
    [(SAAutomaticallyInvalidatingAssertion *)selfCopy _scheduleInvalidationTimerIfNecessary];
  }

  else
  {
    [(SAAutomaticallyInvalidatingAssertion *)selfCopy _invalidateInvalidationTimerIfNecessary];
  }

LABEL_21:
  objc_sync_exit(selfCopy);

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_scheduleInvalidationTimerIfNecessary
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(SAAssertion *)selfCopy isValid]&& ![(NSTimer *)selfCopy->_invalidationTimer isValid])
  {
    v3 = SALogSystem;
    if (os_log_type_enabled(SALogSystem, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = selfCopy;
      _os_log_impl(&dword_26C47D000, v3, OS_LOG_TYPE_DEFAULT, "Scheduling automatic invalidation timer: %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, selfCopy);
    v4 = MEMORY[0x277CBEBB8];
    invalidationInterval = selfCopy->_invalidationInterval;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__SAAutomaticallyInvalidatingAssertion__scheduleInvalidationTimerIfNecessary__block_invoke;
    v9[3] = &unk_279D32180;
    objc_copyWeak(&v10, buf);
    v6 = [v4 scheduledTimerWithTimeInterval:0 repeats:v9 block:invalidationInterval];
    invalidationTimer = selfCopy->_invalidationTimer;
    selfCopy->_invalidationTimer = v6;

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  objc_sync_exit(selfCopy);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateInvalidationTimerIfNecessary
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSTimer *)selfCopy->_invalidationTimer isValid])
  {
    v3 = SALogSystem;
    if (os_log_type_enabled(SALogSystem, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = selfCopy;
      _os_log_impl(&dword_26C47D000, v3, OS_LOG_TYPE_DEFAULT, "Automatic invalidation timer invalidated: %{public}@", &v6, 0xCu);
    }

    [(NSTimer *)selfCopy->_invalidationTimer invalidate];
    invalidationTimer = selfCopy->_invalidationTimer;
    selfCopy->_invalidationTimer = 0;
  }

  objc_sync_exit(selfCopy);

  v5 = *MEMORY[0x277D85DE8];
}

@end