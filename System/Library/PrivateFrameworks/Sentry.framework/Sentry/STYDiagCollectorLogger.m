@interface STYDiagCollectorLogger
+ (id)sharedLogger;
@end

@implementation STYDiagCollectorLogger

+ (id)sharedLogger
{
  if (sharedLogger_onceToken != -1)
  {
    +[STYDiagCollectorLogger sharedLogger];
  }

  v3 = logger;

  return v3;
}

void __38__STYDiagCollectorLogger_sharedLogger__block_invoke()
{
  v0 = objc_alloc_init(STYDiagCollectorLogger);
  v1 = logger;
  logger = v0;

  v2 = os_log_create("com.apple.Sentry.Framework", "PerfChecker");
  [logger setLogHandle:v2];
}

@end