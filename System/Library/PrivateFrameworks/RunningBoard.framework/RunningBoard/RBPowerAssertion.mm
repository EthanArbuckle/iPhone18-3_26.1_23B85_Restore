@interface RBPowerAssertion
+ (__CFString)_nameForPreventIdleSleepIdentifiers:(uint64_t)identifiers;
- (RBPowerAssertion)init;
- (id)_calculateNewName;
- (id)description;
- (uint64_t)invalidateWithHandler:(uint64_t)handler;
- (void)dealloc;
- (void)updateWithAcquisitionHandler:(void *)handler invalidationHander:;
@end

@implementation RBPowerAssertion

- (id)_calculateNewName
{
  selfCopy = self;
  if (self)
  {
    v2 = self[4];
    if (!v2)
    {
      v2 = @"unknown";
    }

    v3 = v2;
    _preventIdleSleepIdentifiers = [selfCopy _preventIdleSleepIdentifiers];
    v5 = [RBPowerAssertion _nameForPreventIdleSleepIdentifiers:_preventIdleSleepIdentifiers];
    selfCopy = [(__CFString *)v3 stringByAppendingString:v5];
  }

  return selfCopy;
}

- (RBPowerAssertion)init
{
  v3.receiver = self;
  v3.super_class = RBPowerAssertion;
  result = [(RBPowerAssertion *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"RBPowerAssertionManager.m" lineNumber:207 description:@"invalidate not called"];
}

+ (__CFString)_nameForPreventIdleSleepIdentifiers:(uint64_t)identifiers
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  if ([v2 count])
  {
    if ([v2 count] == 1)
    {
      anyObject = [v2 anyObject];
    }

    else
    {
      v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v5 = v2;
      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v19;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v19 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v18 + 1) + 8 * i) description];
            [v4 addObject:v10];
          }

          v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v7);
      }

      [v4 sortUsingComparator:&__block_literal_global_1];
      v11 = [v4 count];
      v12 = v11;
      if (v11 >= 0x14)
      {
        v13 = 20;
      }

      else
      {
        v13 = v11;
      }

      anyObject = [MEMORY[0x277CCAB68] string];
      if (v12)
      {
        v14 = 0;
        do
        {
          v15 = [v4 objectAtIndexedSubscript:v14];
          [(__CFString *)anyObject appendFormat:@";%@", v15];

          ++v14;
        }

        while (v13 != v14);
      }
    }
  }

  else
  {
    anyObject = &stru_287507640;
  }

  v16 = *MEMORY[0x277D85DE8];

  return anyObject;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| id:%u name:%@ acquisitionDate:%@>", v4, self->_identifier, self->_name, self->_acquisitionDate];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)updateWithAcquisitionHandler:(void *)handler invalidationHander:
{
  v40[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  handlerCopy = handler;
  if (self)
  {
    _targetPid = [self _targetPid];
    os_unfair_lock_lock((self + 44));
    if (_targetPid < 1 || (*(self + 40) & 1) != 0)
    {
      v8 = *(self + 8);
      if (v8)
      {
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy);
          v8 = *(self + 8);
        }

        v9 = IOPMAssertionRelease(v8);
        if (v9)
        {
          v10 = v9;
          v11 = rbs_power_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = *(self + 8);
            OUTLINED_FUNCTION_0_3();
            LODWORD(v36) = v10;
            _os_log_error_impl(&dword_262485000, v11, OS_LOG_TYPE_ERROR, "Error releasing power assertion with ID %{public}d: 0x%{public}x", buf, 0xEu);
          }
        }

        else
        {
          v11 = rbs_ttl_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(self + 8);
            *buf = 67240192;
            v34 = v13;
            _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_DEFAULT, "Released power assertion with ID %{public}d", buf, 8u);
          }
        }

        *(self + 8) = 0;
        v14 = *(self + 24);
        *(self + 24) = 0;

        v15 = *(self + 16);
        *(self + 16) = 0;
      }
    }

    else
    {
      if (*(self + 8))
      {
        _calculateNewName = [(RBPowerAssertion *)self _calculateNewName];
        if (([*(self + 24) isEqualToString:_calculateNewName] & 1) == 0)
        {
          v24 = rbs_ttl_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(self + 8);
            v26 = *(self + 32);
            *buf = 67240706;
            v34 = v25;
            v35 = 2114;
            v36 = v26;
            v37 = 2114;
            v38 = _calculateNewName;
            _os_log_impl(&dword_262485000, v24, OS_LOG_TYPE_DEFAULT, "Attempting to rename power assertion %{public}d for target %{public}@ to %{public}@", buf, 0x1Cu);
          }

          v27 = IOPMAssertionSetProperty(*(self + 8), @"AssertName", _calculateNewName);
          if (v27)
          {
            v28 = v27;
            v29 = rbs_power_log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v32 = *(self + 8);
              OUTLINED_FUNCTION_0_3();
              LODWORD(v36) = v28;
              _os_log_error_impl(&dword_262485000, v29, OS_LOG_TYPE_ERROR, "Error renaming power assertion with ID %{public}d: 0x%{public}x", buf, 0xEu);
            }
          }

          objc_storeStrong((self + 24), _calculateNewName);
        }
      }

      else
      {
        _calculateNewName = [(RBPowerAssertion *)self _calculateNewName];
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v39[0] = @"AssertName";
        v39[1] = @"AssertionOnBehalfOfPID";
        v40[0] = _calculateNewName;
        v19 = [MEMORY[0x277CCABB0] numberWithInt:_targetPid];
        v40[1] = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
        [dictionary addEntriesFromDictionary:v20];

        v21 = IOPMAssertionDeclareSystemActivityWithProperties();
        if (v21)
        {
          v22 = v21;
          v23 = rbs_power_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 67240448;
            v34 = _targetPid;
            v35 = 1026;
            LODWORD(v36) = v22;
            _os_log_error_impl(&dword_262485000, v23, OS_LOG_TYPE_ERROR, "Error acquiring process power assertion for pid %{public}d: 0x%{public}x", buf, 0xEu);
          }
        }

        else
        {
          v30 = rbs_power_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_0_3();
            LODWORD(v36) = _targetPid;
            _os_log_impl(&dword_262485000, v30, OS_LOG_TYPE_DEFAULT, "Acquired process power assertion with ID %{public}d for pid %{public}d", buf, 0xEu);
          }

          date = [MEMORY[0x277CBEAA8] date];
          v23 = *(self + 16);
          *(self + 16) = date;
        }
      }
    }

    os_unfair_lock_unlock((self + 44));
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (uint64_t)invalidateWithHandler:(uint64_t)handler
{
  v3 = a2;
  if (handler && (*(handler + 40) & 1) == 0)
  {
    *(handler + 40) = 1;
    [(RBPowerAssertion *)handler updateWithAcquisitionHandler:v3 invalidationHander:?];
  }

  return MEMORY[0x2821F9730]();
}

@end