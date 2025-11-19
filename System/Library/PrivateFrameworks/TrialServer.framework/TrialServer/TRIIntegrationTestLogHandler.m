@interface TRIIntegrationTestLogHandler
+ (BOOL)shouldUseOverrideLogHandler;
+ (void)addTestLoggerInPlaceOnClient:(id)a3;
- (TRIIntegrationTestLogHandler)init;
- (void)logEvent:(id)a3 subgroupName:(id)a4 queue:(id)a5;
@end

@implementation TRIIntegrationTestLogHandler

- (TRIIntegrationTestLogHandler)init
{
  v31 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = TRIIntegrationTestLogHandler;
  v2 = [(TRIIntegrationTestLogHandler *)&v26 init];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = NSTemporaryDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"integration-test-logs"];
  tempDir = v2->_tempDir;
  v2->_tempDir = v4;

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = v2->_tempDir;
  v25 = 0;
  v8 = [v6 removeItemAtPath:v7 error:&v25];
  v9 = v25;

  v10 = TRILogCategory_Server();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v11)
    {
      v12 = v2->_tempDir;
      *buf = 138412290;
      v28 = v12;
      v13 = "Cleared temp directory %@ during test log handler setup.";
      v14 = v10;
      v15 = 12;
LABEL_7:
      _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_INFO, v13, buf, v15);
    }
  }

  else if (v11)
  {
    v16 = v2->_tempDir;
    *buf = 138412546;
    v28 = v16;
    v29 = 2112;
    v30 = v9;
    v13 = "Couldn't remove directory (it may already be gone, which is fine) %@: %@";
    v14 = v10;
    v15 = 22;
    goto LABEL_7;
  }

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = v2->_tempDir;
  v24 = v9;
  v19 = [v17 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:&v24];
  v20 = v24;

  if ((v19 & 1) == 0)
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v20;
      _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Failed to setup integration test log handler: %@", buf, 0xCu);
    }
  }

LABEL_13:
  v22 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (BOOL)shouldUseOverrideLogHandler
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = +[TRIIntegrationTestingDefaultsOverrides shouldUseIntegrationTestLogger];
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"NO";
    if (v2)
    {
      v6 = @"YES";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_debug_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEBUG, "Should use integration test logger? %@", &v7, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (void)addTestLoggerInPlaceOnClient:(id)a3
{
  v3 = a3;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_debug_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEBUG, "Adding integration test logger to triald loggers", v10, 2u);
  }

  v5 = objc_opt_new();
  v6 = [v3 logger];
  v7 = [v6 logHandlers];
  v8 = [v7 arrayByAddingObject:v5];

  v9 = [[TRILogger alloc] initWithClient:v3 projectId:1 logHandlers:v8];
  [v3 setLogger:v9];
}

- (void)logEvent:(id)a3 subgroupName:(id)a4 queue:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  tempDir = self->_tempDir;
  v8 = objc_opt_new();
  v9 = [v8 UUIDString];
  v10 = [(NSString *)tempDir stringByAppendingPathComponent:v9];

  v11 = [v6 data];
  v21 = 0;
  v12 = [v11 writeToFile:v10 options:1 error:&v21];
  v13 = v21;
  if ((v12 & 1) == 0)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = v10;
      v24 = 2112;
      v25 = v13;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Failed to write event to file %@: %@", buf, 0x16u);
    }
  }

  v15 = TRILogCategory_Server();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v6 logEventId];
    v17 = [v6 denormalizedEvent];
    v18 = [v17 trialSystemTelemetry];
    v19 = [v18 trialdTaskName];
    *buf = 138412802;
    v23 = v16;
    v24 = 2112;
    v25 = v19;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_INFO, "Integration test logger wrote: id %@, task name %@, to: %@", buf, 0x20u);
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end