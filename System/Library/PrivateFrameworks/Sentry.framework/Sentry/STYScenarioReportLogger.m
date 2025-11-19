@interface STYScenarioReportLogger
+ (id)sharedLogger;
@end

@implementation STYScenarioReportLogger

+ (id)sharedLogger
{
  if (sharedLogger_onceToken_0 != -1)
  {
    +[STYScenarioReportLogger sharedLogger];
  }

  v3 = logger_0;

  return v3;
}

void __39__STYScenarioReportLogger_sharedLogger__block_invoke()
{
  v0 = objc_alloc_init(STYScenarioReportLogger);
  v1 = logger_0;
  logger_0 = v0;

  v2 = os_log_create("com.apple.Sentry.Framework", "STYScenarioReport");
  [logger_0 setLogHandle:v2];
}

@end