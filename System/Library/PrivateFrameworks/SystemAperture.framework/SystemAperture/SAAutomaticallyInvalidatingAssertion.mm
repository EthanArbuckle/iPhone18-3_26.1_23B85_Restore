@interface SAAutomaticallyInvalidatingAssertion
- (BOOL)_setAutomaticallyInvalidatable:(BOOL)a3 lockingWithKey:(id)a4 reason:(id)a5;
- (SAAutomaticallyInvalidatingAssertion)initWithInvalidationInterval:(double)a3;
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
  v9 = [(SAAssertion *)&v12 _descriptionConstituents];
  v10 = [v9 arrayByAddingObject:v8];

  return v10;
}

- (SAAutomaticallyInvalidatingAssertion)initWithInvalidationInterval:(double)a3
{
  v5.receiver = self;
  v5.super_class = SAAutomaticallyInvalidatingAssertion;
  result = [(SAAssertion *)&v5 init];
  if (result)
  {
    result->_invalidationInterval = a3;
  }

  return result;
}

- (void)resetAutomaticInvalidationTimer
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if ([(SAAssertion *)v2 isValid]&& [(NSTimer *)v2->_invalidationTimer isValid])
  {
    v3 = SALogSystem;
    if (os_log_type_enabled(SALogSystem, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&dword_26C47D000, v3, OS_LOG_TYPE_DEFAULT, "Automatic invalidation timer reset: %{public}@", &v5, 0xCu);
    }

    [(SAAutomaticallyInvalidatingAssertion *)v2 _invalidateInvalidationTimerIfNecessary];
    [(SAAutomaticallyInvalidatingAssertion *)v2 _scheduleInvalidationTimerIfNecessary];
  }

  objc_sync_exit(v2);

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setAutomaticallyInvalidatable:(BOOL)a3 lockingWithKey:(id)a4 reason:(id)a5
{
  v6 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  if (![(SAAssertion *)v10 isValid])
  {
    goto LABEL_11;
  }

  automaticallyInvalidatable = v10->_automaticallyInvalidatable;
  key = v10->_key;
  if (automaticallyInvalidatable == v6)
  {
    v13 = 0;
    if (!v8 || key)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  if (key)
  {
    if ([(NSString *)key isEqualToString:v8])
    {
      automaticallyInvalidatable = v10->_automaticallyInvalidatable;
      goto LABEL_9;
    }

LABEL_11:
    v13 = 0;
    goto LABEL_21;
  }

LABEL_9:
  v13 = automaticallyInvalidatable != v6;
  v10->_automaticallyInvalidatable = v6;
  if (v6)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v8 copy];
  }

  v15 = v10->_key;
  v10->_key = v14;

  v16 = SALogSystem;
  if (os_log_type_enabled(SALogSystem, OS_LOG_TYPE_DEFAULT))
  {
    if (v10->_automaticallyInvalidatable)
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
    v23 = v10;
    _os_log_impl(&dword_26C47D000, v16, OS_LOG_TYPE_DEFAULT, "Automatic invalidation %@: %{public}@", &v20, 0x16u);
  }

  if (v10->_automaticallyInvalidatable)
  {
    [(SAAutomaticallyInvalidatingAssertion *)v10 _scheduleInvalidationTimerIfNecessary];
  }

  else
  {
    [(SAAutomaticallyInvalidatingAssertion *)v10 _invalidateInvalidationTimerIfNecessary];
  }

LABEL_21:
  objc_sync_exit(v10);

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_scheduleInvalidationTimerIfNecessary
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if ([(SAAssertion *)v2 isValid]&& ![(NSTimer *)v2->_invalidationTimer isValid])
  {
    v3 = SALogSystem;
    if (os_log_type_enabled(SALogSystem, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v2;
      _os_log_impl(&dword_26C47D000, v3, OS_LOG_TYPE_DEFAULT, "Scheduling automatic invalidation timer: %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, v2);
    v4 = MEMORY[0x277CBEBB8];
    invalidationInterval = v2->_invalidationInterval;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__SAAutomaticallyInvalidatingAssertion__scheduleInvalidationTimerIfNecessary__block_invoke;
    v9[3] = &unk_279D32180;
    objc_copyWeak(&v10, buf);
    v6 = [v4 scheduledTimerWithTimeInterval:0 repeats:v9 block:invalidationInterval];
    invalidationTimer = v2->_invalidationTimer;
    v2->_invalidationTimer = v6;

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  objc_sync_exit(v2);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateInvalidationTimerIfNecessary
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if ([(NSTimer *)v2->_invalidationTimer isValid])
  {
    v3 = SALogSystem;
    if (os_log_type_enabled(SALogSystem, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v2;
      _os_log_impl(&dword_26C47D000, v3, OS_LOG_TYPE_DEFAULT, "Automatic invalidation timer invalidated: %{public}@", &v6, 0xCu);
    }

    [(NSTimer *)v2->_invalidationTimer invalidate];
    invalidationTimer = v2->_invalidationTimer;
    v2->_invalidationTimer = 0;
  }

  objc_sync_exit(v2);

  v5 = *MEMORY[0x277D85DE8];
}

@end