@interface RCBackgroundFetchConfiguration
- (RCBackgroundFetchConfiguration)initWithTaskIdentifier:(id)a3 sessionIdentifier:(id)a4 sharedContainerIdentifier:(id)a5 earliestBeginDate:(id)a6 timeout:(double)a7;
- (double)timeout;
- (void)setTimeout:(double)a3;
@end

@implementation RCBackgroundFetchConfiguration

- (RCBackgroundFetchConfiguration)initWithTaskIdentifier:(id)a3 sessionIdentifier:(id)a4 sharedContainerIdentifier:(id)a5 earliestBeginDate:(id)a6 timeout:(double)a7
{
  v11 = a3;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v31.receiver = self;
  v31.super_class = RCBackgroundFetchConfiguration;
  v17 = [(RCBackgroundFetchConfiguration *)&v31 init];
  if (v17)
  {
    if (!v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RCBackgroundFetchConfiguration initWithTaskIdentifier:sessionIdentifier:sharedContainerIdentifier:earliestBeginDate:timeout:];
      if (v14)
      {
        goto LABEL_7;
      }
    }

    else if (v14)
    {
      goto LABEL_7;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RCBackgroundFetchConfiguration initWithTaskIdentifier:sessionIdentifier:sharedContainerIdentifier:earliestBeginDate:timeout:];
    }

LABEL_7:
    if (!v15 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RCBackgroundFetchConfiguration initWithTaskIdentifier:sessionIdentifier:sharedContainerIdentifier:earliestBeginDate:timeout:];
      if (v16)
      {
        goto LABEL_10;
      }
    }

    else if (v16)
    {
LABEL_10:
      [MEMORY[0x277CBEAA8] date];
      v18 = v29 = v11;
      [v18 dateByAddingTimeInterval:a7];
      v30 = a4;
      v19 = a5;
      v20 = a6;
      v21 = v15;
      v22 = v14;
      v24 = v23 = v13;
      v25 = [v24 rc_isLaterThan:v16];

      v13 = v23;
      v14 = v22;
      v15 = v21;
      a6 = v20;
      a5 = v19;
      a4 = v30;

      v11 = v29;
      if ((v25 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [RCBackgroundFetchConfiguration initWithTaskIdentifier:sessionIdentifier:sharedContainerIdentifier:earliestBeginDate:timeout:];
      }
    }

    objc_storeStrong(&v17->_taskIdentifier, v11);
    objc_storeStrong(&v17->_sessionIdentifier, a4);
    objc_storeStrong(&v17->_sharedContainerIdentifier, a5);
    objc_storeStrong(&v17->_earliestBeginDate, a6);
    v17->_internalTimeout = a7;
    v26 = objc_alloc_init(RCUnfairLock);
    accessLock = v17->_accessLock;
    v17->_accessLock = v26;
  }

  return v17;
}

- (double)timeout
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(RCBackgroundFetchConfiguration *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__RCBackgroundFetchConfiguration_timeout__block_invoke;
  v6[3] = &unk_27822F288;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performWithLockSync:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __41__RCBackgroundFetchConfiguration_timeout__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) internalTimeout];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (void)setTimeout:(double)a3
{
  v5 = [(RCBackgroundFetchConfiguration *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__RCBackgroundFetchConfiguration_setTimeout___block_invoke;
  v6[3] = &unk_27822F238;
  v6[4] = self;
  *&v6[5] = a3;
  [v5 performWithLockSync:v6];
}

- (void)initWithTaskIdentifier:sessionIdentifier:sharedContainerIdentifier:earliestBeginDate:timeout:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "taskIdentifier", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithTaskIdentifier:sessionIdentifier:sharedContainerIdentifier:earliestBeginDate:timeout:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "sessionIdentifier", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithTaskIdentifier:sessionIdentifier:sharedContainerIdentifier:earliestBeginDate:timeout:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "sharedContainerIdentifier", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithTaskIdentifier:sessionIdentifier:sharedContainerIdentifier:earliestBeginDate:timeout:.cold.4()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Background request timeout must take delay for scheduled requests into account."];
  v2 = 136315906;
  v3 = "[RCBackgroundFetchConfiguration initWithTaskIdentifier:sessionIdentifier:sharedContainerIdentifier:earliestBeginDate:timeout:]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/BackgroundURLSessionSupport/RCBackgroundFetchConfiguration.m";
  v6 = 1024;
  v7 = 42;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end