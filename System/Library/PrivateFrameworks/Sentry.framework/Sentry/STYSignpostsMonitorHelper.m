@interface STYSignpostsMonitorHelper
- (NSString)name;
- (STYSignpostsMonitorHelper)init;
- (SignpostSupportSubsystemCategoryAllowlist)allowList;
- (void)didEndMonitoring;
- (void)name;
- (void)takeTransaction;
- (void)willStartMonitoring;
@end

@implementation STYSignpostsMonitorHelper

- (STYSignpostsMonitorHelper)init
{
  v11 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = STYSignpostsMonitorHelper;
  v2 = [(STYSignpostsMonitorHelper *)&v9 init];
  v3 = v2;
  if (v2)
  {
    ClassName = object_getClassName(v2);
    snprintf(__str, 0x80uLL, "com.apple.sentry.signpostsMonitor.%s", ClassName);
    v5 = dispatch_queue_create(__str, 0);
    processingQueue = v3->_processingQueue;
    v3->_processingQueue = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)takeTransaction
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [(STYSignpostsMonitorHelper *)self osTransaction];

  if (!v3)
  {
    ClassName = object_getClassName(self);
    snprintf(__str, 0x80uLL, "com.apple.sentry.signpostsMonitor.%s", ClassName);
    v5 = os_transaction_create();
    [(STYSignpostsMonitorHelper *)self setOsTransaction:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)willStartMonitoring
{
  [(STYSignpostsMonitorHelper *)self setIsEnabled:1];
  [(STYSignpostsMonitorHelper *)self resetState];

  [(STYSignpostsMonitorHelper *)self takeTransaction];
}

- (void)didEndMonitoring
{
  [(STYSignpostsMonitorHelper *)self setOsTransaction:0];
  [(STYSignpostsMonitorHelper *)self resetState];

  [(STYSignpostsMonitorHelper *)self setIsEnabled:0];
}

- (NSString)name
{
  v3 = +[STYFrameworkHelper sharedHelper];
  v4 = [v3 logHandle];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [(STYSignpostsMonitorHelper *)self name];
  }

  return @"Unnamed signpost monitor helper";
}

- (SignpostSupportSubsystemCategoryAllowlist)allowList
{
  v3 = +[STYFrameworkHelper sharedHelper];
  v4 = [v3 logHandle];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [(STYSignpostsMonitorHelper *)self name];
  }

  return 0;
}

- (void)name
{
  v9 = *MEMORY[0x277D85DE8];
  object_getClassName(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(&dword_2656CE000, v1, v2, "allowList need to be overridden by %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end