@interface BRCThrottleBase
- (BRCThrottleBase)initWithName:(id)name andParameters:(id)parameters;
- (id)_initWithName:(id)name;
- (int64_t)nsecsToNextRetry:(int64_t)retry retryCount:(unsigned int *)count now:(int64_t)now;
- (int64_t)retryBackoff:(unsigned int)backoff;
@end

@implementation BRCThrottleBase

- (id)_initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = BRCThrottleBase;
  v6 = [(BRCThrottleBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

- (BRCThrottleBase)initWithName:(id)name andParameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = [(BRCThrottleBase *)self _initWithName:name];
  if (v7)
  {
    v8 = [parametersCopy objectForKeyedSubscript:@"start-after"];
    v7->_initialRetryCount = [v8 intValue];

    v9 = [parametersCopy objectForKeyedSubscript:@"give-up-after"];
    v7->_finalRetryCount = [v9 intValue];

    v10 = [parametersCopy objectForKeyedSubscript:@"wait-at-least"];
    [v10 doubleValue];
    v7->_minimumNsecsBetweenRetries = brc_interval_to_nsec();
    p_minimumNsecsBetweenRetries = &v7->_minimumNsecsBetweenRetries;

    v12 = [parametersCopy objectForKeyedSubscript:@"wait-at-most"];
    [v12 doubleValue];
    v7->_maximumNsecsBetweenRetries = brc_interval_to_nsec();
    p_maximumNsecsBetweenRetries = &v7->_maximumNsecsBetweenRetries;

    v14 = [parametersCopy objectForKeyedSubscript:@"forget-after"];
    [v14 doubleValue];
    v7->_nsecsBeforeForgettingCounter = brc_interval_to_nsec();

    v15 = [parametersCopy objectForKeyedSubscript:@"max-elemnt-count"];
    v7->_maximumElementCount = [v15 unsignedIntValue];

    if (!v7->_maximumElementCount)
    {
      v7->_maximumElementCount = 0x7FFFFFFF;
    }

    if (v7->_initialRetryCount > v7->_finalRetryCount)
    {
      [BRCThrottleBase initWithName:andParameters:];
    }

    v16 = *p_minimumNsecsBetweenRetries;
    if (*p_minimumNsecsBetweenRetries > *p_maximumNsecsBetweenRetries)
    {
      [BRCThrottleBase initWithName:&v19 andParameters:?];
      v16 = v19;
    }

    if (v16 <= 0)
    {
      [BRCThrottleBase initWithName:andParameters:];
    }

    v17 = *p_maximumNsecsBetweenRetries;
    if (*p_maximumNsecsBetweenRetries <= 0)
    {
      [BRCThrottleBase initWithName:&v19 andParameters:?];
      v17 = v19;
    }

    if (v7->_nsecsBeforeForgettingCounter < v17)
    {
      [BRCThrottleBase initWithName:andParameters:];
    }
  }

  return v7;
}

- (int64_t)retryBackoff:(unsigned int)backoff
{
  result = 0;
  minimumNsecsBetweenRetries = self->_minimumNsecsBetweenRetries;
  if (minimumNsecsBetweenRetries)
  {
    v6 = backoff - self->_initialRetryCount;
    if ((v6 & 0x80000000) == 0)
    {
      result = self->_maximumNsecsBetweenRetries;
      if (v6 < __clz(minimumNsecsBetweenRetries) && result >= (minimumNsecsBetweenRetries << v6))
      {
        return minimumNsecsBetweenRetries << v6;
      }
    }
  }

  return result;
}

- (int64_t)nsecsToNextRetry:(int64_t)retry retryCount:(unsigned int *)count now:(int64_t)now
{
  maximumNsecsBetweenRetries = self->_maximumNsecsBetweenRetries;
  v10 = *count;
  v11 = [(BRCThrottleBase *)self retryBackoff:*count];
  v12 = now - retry;
  if (now >= retry)
  {
    if (v10)
    {
      v16 = v12 < self->_nsecsBeforeForgettingCounter;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (v10 <= self->_initialRetryCount || v11 <= v12)
      {
        if (v10 >= self->_finalRetryCount)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }

        v21 = 0;
        *count = v10 + 1;
      }

      else
      {
        v21 = v11 - v12;
      }

      if (v21 >= maximumNsecsBetweenRetries)
      {
        v21 = maximumNsecsBetweenRetries;
      }

      if (v21 >= 10000000)
      {
        return v21;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [BRCThrottleBase nsecsToNextRetry:v18 retryCount:v19 now:?];
      }

      result = 0;
      *count = 1;
    }
  }

  else
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BRCThrottleBase nsecsToNextRetry:v13 retryCount:v14 now:?];
    }

    return retry - now;
  }

  return result;
}

- (void)initWithName:andParameters:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: _initialRetryCount <= _finalRetryCount%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithName:(void *)a1 andParameters:(void *)a2 .cold.2(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2_3(&dword_223E7A000, v6, v7, "[CRIT] Assertion failed: _minimumNsecsBetweenRetries <= _maximumNsecsBetweenRetries%@", v8, v9, v10, v11, 2u);
  }

  *a2 = *a1;
  v12 = *MEMORY[0x277D85DE8];
}

- (void)initWithName:andParameters:.cold.3()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: _minimumNsecsBetweenRetries > 0%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithName:(void *)a1 andParameters:(void *)a2 .cold.4(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2_3(&dword_223E7A000, v6, v7, "[CRIT] Assertion failed: _maximumNsecsBetweenRetries > 0%@", v8, v9, v10, v11, 2u);
  }

  *a2 = *a1;
  v12 = *MEMORY[0x277D85DE8];
}

- (void)initWithName:andParameters:.cold.5()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: _nsecsBeforeForgettingCounter >= _maximumNsecsBetweenRetries%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)nsecsToNextRetry:(uint64_t)a1 retryCount:(NSObject *)a2 now:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Forgetting retry counter%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)nsecsToNextRetry:(uint64_t)a1 retryCount:(NSObject *)a2 now:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] We haven't finished the previous throttle%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end