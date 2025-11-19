@interface STCoreAnalyticsReporter
+ (void)reportEvent:(id)a3;
@end

@implementation STCoreAnalyticsReporter

+ (void)reportEvent:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 name];
  v5 = v3;
  v6 = AnalyticsSendEventLazy();

  v7 = +[STLog coreAnalytics];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 description];
      v10 = [v5 payload];
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_1B831F000, v8, OS_LOG_TYPE_DEFAULT, "Sent Core Analytics event: %@ %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(STCoreAnalyticsReporter *)v5 reportEvent:v8];
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)reportEvent:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Failed to send Core Analytics event: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end