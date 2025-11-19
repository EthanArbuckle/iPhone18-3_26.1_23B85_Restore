@interface SKARateLimiter
+ (id)logger;
- (BOOL)isUnderRequestLimit;
- (SKARateLimiter)initWithDomain:(id)a3 lastRequestTimePrefsKey:(id)a4 requestsCountPrefsKey:(id)a5 maxRequestsBagKey:(id)a6 defaultMaxRequests:(int64_t)a7 resetTimeBagKey:(id)a8 defaultResetTime:(int64_t)a9;
- (int64_t)_maxRequests;
- (int64_t)_requestResetTimeSeconds;
- (void)isUnderRequestLimit;
- (void)recordRequest;
@end

@implementation SKARateLimiter

- (SKARateLimiter)initWithDomain:(id)a3 lastRequestTimePrefsKey:(id)a4 requestsCountPrefsKey:(id)a5 maxRequestsBagKey:(id)a6 defaultMaxRequests:(int64_t)a7 resetTimeBagKey:(id)a8 defaultResetTime:(int64_t)a9
{
  v16 = a3;
  v17 = a4;
  v23 = a5;
  v22 = a6;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = SKARateLimiter;
  v19 = [(SKARateLimiter *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_prefsDomain, a3);
    objc_storeStrong(&v20->_lastRequestTimePrefsKey, a4);
    objc_storeStrong(&v20->_requestsCountPrefsKey, a5);
    objc_storeStrong(&v20->_maxRequestsBagKey, a6);
    objc_storeStrong(&v20->_resetTimeBagKey, a8);
    v20->_defaultMaxRequests = a7;
    v20->_defaultResetTime = a9;
  }

  return v20;
}

+ (id)logger
{
  if (logger_onceToken_2 != -1)
  {
    +[SKARateLimiter logger];
  }

  v3 = logger__logger_2;

  return v3;
}

uint64_t __24__SKARateLimiter_logger__block_invoke()
{
  logger__logger_2 = os_log_create("com.apple.StatusKit", "SKARateLimiter");

  return MEMORY[0x2821F96F8]();
}

- (int64_t)_requestResetTimeSeconds
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_resetTimeBagKey)
  {
    v3 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
    v4 = [v3 objectForKey:self->_resetTimeBagKey];

    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      defaultResetTime = [v4 intValue];
      v6 = +[SKARateLimiter logger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        resetTimeBagKey = self->_resetTimeBagKey;
        v10 = 138412546;
        v11 = resetTimeBagKey;
        v12 = 2048;
        v13 = defaultResetTime;
        _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Server bag for key %@ indicates our reset time for requesting should be %lu", &v10, 0x16u);
      }
    }

    else
    {
      defaultResetTime = self->_defaultResetTime;
    }
  }

  else
  {
    defaultResetTime = self->_defaultResetTime;
  }

  v8 = *MEMORY[0x277D85DE8];
  return defaultResetTime;
}

- (int64_t)_maxRequests
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_maxRequestsBagKey)
  {
    v3 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
    v4 = [v3 objectForKey:self->_maxRequestsBagKey];

    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      defaultMaxRequests = [v4 intValue];
      v6 = +[SKARateLimiter logger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        maxRequestsBagKey = self->_maxRequestsBagKey;
        v10 = 138412546;
        v11 = maxRequestsBagKey;
        v12 = 2048;
        v13 = defaultMaxRequests;
        _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Server bag for key %@ indicates our max request count should be %lu", &v10, 0x16u);
      }
    }

    else
    {
      defaultMaxRequests = self->_defaultMaxRequests;
    }
  }

  else
  {
    defaultMaxRequests = self->_defaultMaxRequests;
  }

  v8 = *MEMORY[0x277D85DE8];
  return defaultMaxRequests;
}

- (BOOL)isUnderRequestLimit
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = CFPreferencesCopyAppValue(self->_lastRequestTimePrefsKey, self->_prefsDomain);
  v4 = CFPreferencesCopyAppValue(self->_requestsCountPrefsKey, self->_prefsDomain);
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  }

  v5 = &unk_2833EB9D8;
  if (v4)
  {
    v5 = v4;
  }

  v6 = v5;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = +[SKARateLimiter logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SKARateLimiter isUnderRequestLimit];
    }

    CFPreferencesSetAppValue(self->_requestsCountPrefsKey, &unk_2833EB9D8, self->_prefsDomain);
    CFPreferencesSetAppValue(self->_lastRequestTimePrefsKey, [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0], self->_prefsDomain);

    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];

    v6 = &unk_2833EB9D8;
    v3 = v8;
  }

  v9 = [(SKARateLimiter *)self _requestResetTimeSeconds];
  v10 = [(SKARateLimiter *)self _maxRequests];
  v11 = +[SKARateLimiter logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = +[SKAEnvironment dateNow];
    v18 = 138413058;
    v19 = v12;
    v20 = 2112;
    v21 = v3;
    v22 = 2048;
    v23 = [v6 integerValue];
    v24 = 2048;
    v25 = v9;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "checking if we should request - currentTime: %@, lastAttempt: %@, countSinceLastAttempt: %ld, requestResetTime: %f", &v18, 0x2Au);
  }

  if ([v6 integerValue] >= v10)
  {
    v14 = +[SKAEnvironment dateNow];
    [v14 timeIntervalSinceDate:v3];
    v13 = fabs(v15) > v9;
  }

  else
  {
    v13 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)recordRequest
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = CFPreferencesCopyAppValue(self->_requestsCountPrefsKey, self->_prefsDomain);
  v4 = CFPreferencesCopyAppValue(self->_lastRequestTimePrefsKey, self->_prefsDomain);
  v5 = &unk_2833EB9D8;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  if (!v4)
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = +[SKARateLimiter logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SKARateLimiter isUnderRequestLimit];
    }

    CFPreferencesSetAppValue(self->_requestsCountPrefsKey, &unk_2833EB9D8, self->_prefsDomain);
    CFPreferencesSetAppValue(self->_lastRequestTimePrefsKey, [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0], self->_prefsDomain);

    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];

    v4 = v8;
    v6 = &unk_2833EB9D8;
  }

  v9 = [(SKARateLimiter *)self _requestResetTimeSeconds];
  v10 = +[SKARateLimiter logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = +[SKAEnvironment dateNow];
    v18 = 138413058;
    v19 = v11;
    v20 = 2112;
    v21 = v4;
    v22 = 2048;
    v23 = [v6 integerValue];
    v24 = 2048;
    v25 = v9;
    _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "marking request - currentTime: %@, lastAttempt: %@, countSinceLastAttempt: %ld, requestResetTime: %f", &v18, 0x2Au);
  }

  v12 = +[SKAEnvironment dateNow];
  [v12 timeIntervalSinceDate:v4];
  v14 = fabs(v13);

  if (v14 > v9)
  {
    v15 = +[SKARateLimiter logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "request - resetting timer and setting request count to 0", &v18, 2u);
    }

    CFPreferencesSetAppValue(self->_lastRequestTimePrefsKey, +[SKAEnvironment dateNow], self->_prefsDomain);
    v6 = &unk_2833EB9D8;
  }

  v16 = +[SKARateLimiter logger];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_220099000, v16, OS_LOG_TYPE_DEFAULT, "request - updating request count to count + 1", &v18, 2u);
  }

  CFPreferencesSetAppValue(self->_requestsCountPrefsKey, [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "intValue") + 1}], self->_prefsDomain);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)isUnderRequestLimit
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_0_1(v1);
  OUTLINED_FUNCTION_1_1(&dword_220099000, v3, v4, "User defaults returning incorrect class type - lastAttemptDate type: %@, countSinceLastAttempt type: %@ - resetting values and continuing to request", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

@end