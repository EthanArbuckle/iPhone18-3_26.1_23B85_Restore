@interface RBPowerAssertion
+ (__CFString)_nameForPreventIdleSleepIdentifiers:(uint64_t)a1;
- (RBPowerAssertion)init;
- (id)_calculateNewName;
- (id)description;
- (uint64_t)invalidateWithHandler:(uint64_t)a1;
- (void)dealloc;
- (void)updateWithAcquisitionHandler:(void *)a3 invalidationHander:;
@end

@implementation RBPowerAssertion

- (id)_calculateNewName
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[4];
    if (!v2)
    {
      v2 = @"unknown";
    }

    v3 = v2;
    v4 = [v1 _preventIdleSleepIdentifiers];
    v5 = [RBPowerAssertion _nameForPreventIdleSleepIdentifiers:v4];
    v1 = [(__CFString *)v3 stringByAppendingString:v5];
  }

  return v1;
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBPowerAssertionManager.m" lineNumber:207 description:@"invalidate not called"];
}

+ (__CFString)_nameForPreventIdleSleepIdentifiers:(uint64_t)a1
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  if ([v2 count])
  {
    if ([v2 count] == 1)
    {
      v3 = [v2 anyObject];
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

      v3 = [MEMORY[0x277CCAB68] string];
      if (v12)
      {
        v14 = 0;
        do
        {
          v15 = [v4 objectAtIndexedSubscript:v14];
          [(__CFString *)v3 appendFormat:@";%@", v15];

          ++v14;
        }

        while (v13 != v14);
      }
    }
  }

  else
  {
    v3 = &stru_287507640;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
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

- (void)updateWithAcquisitionHandler:(void *)a3 invalidationHander:
{
  v40[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 _targetPid];
    os_unfair_lock_lock((a1 + 44));
    if (v7 < 1 || (*(a1 + 40) & 1) != 0)
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        if (v6)
        {
          v6[2](v6);
          v8 = *(a1 + 8);
        }

        v9 = IOPMAssertionRelease(v8);
        if (v9)
        {
          v10 = v9;
          v11 = rbs_power_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = *(a1 + 8);
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
            v13 = *(a1 + 8);
            *buf = 67240192;
            v34 = v13;
            _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_DEFAULT, "Released power assertion with ID %{public}d", buf, 8u);
          }
        }

        *(a1 + 8) = 0;
        v14 = *(a1 + 24);
        *(a1 + 24) = 0;

        v15 = *(a1 + 16);
        *(a1 + 16) = 0;
      }
    }

    else
    {
      if (*(a1 + 8))
      {
        v17 = [(RBPowerAssertion *)a1 _calculateNewName];
        if (([*(a1 + 24) isEqualToString:v17] & 1) == 0)
        {
          v24 = rbs_ttl_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a1 + 8);
            v26 = *(a1 + 32);
            *buf = 67240706;
            v34 = v25;
            v35 = 2114;
            v36 = v26;
            v37 = 2114;
            v38 = v17;
            _os_log_impl(&dword_262485000, v24, OS_LOG_TYPE_DEFAULT, "Attempting to rename power assertion %{public}d for target %{public}@ to %{public}@", buf, 0x1Cu);
          }

          v27 = IOPMAssertionSetProperty(*(a1 + 8), @"AssertName", v17);
          if (v27)
          {
            v28 = v27;
            v29 = rbs_power_log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v32 = *(a1 + 8);
              OUTLINED_FUNCTION_0_3();
              LODWORD(v36) = v28;
              _os_log_error_impl(&dword_262485000, v29, OS_LOG_TYPE_ERROR, "Error renaming power assertion with ID %{public}d: 0x%{public}x", buf, 0xEu);
            }
          }

          objc_storeStrong((a1 + 24), v17);
        }
      }

      else
      {
        v17 = [(RBPowerAssertion *)a1 _calculateNewName];
        v18 = [MEMORY[0x277CBEB38] dictionary];
        v39[0] = @"AssertName";
        v39[1] = @"AssertionOnBehalfOfPID";
        v40[0] = v17;
        v19 = [MEMORY[0x277CCABB0] numberWithInt:v7];
        v40[1] = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
        [v18 addEntriesFromDictionary:v20];

        v21 = IOPMAssertionDeclareSystemActivityWithProperties();
        if (v21)
        {
          v22 = v21;
          v23 = rbs_power_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 67240448;
            v34 = v7;
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
            LODWORD(v36) = v7;
            _os_log_impl(&dword_262485000, v30, OS_LOG_TYPE_DEFAULT, "Acquired process power assertion with ID %{public}d for pid %{public}d", buf, 0xEu);
          }

          v31 = [MEMORY[0x277CBEAA8] date];
          v23 = *(a1 + 16);
          *(a1 + 16) = v31;
        }
      }
    }

    os_unfair_lock_unlock((a1 + 44));
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (uint64_t)invalidateWithHandler:(uint64_t)a1
{
  v3 = a2;
  if (a1 && (*(a1 + 40) & 1) == 0)
  {
    *(a1 + 40) = 1;
    [(RBPowerAssertion *)a1 updateWithAcquisitionHandler:v3 invalidationHander:?];
  }

  return MEMORY[0x2821F9730]();
}

@end