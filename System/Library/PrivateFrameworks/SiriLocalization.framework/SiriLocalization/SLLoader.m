@interface SLLoader
+ (void)initLogger;
@end

@implementation SLLoader

+ (void)initLogger
{
  if (initLogger_once != -1)
  {
    dispatch_once(&initLogger_once, &__block_literal_global_20);
  }
}

uint64_t __22__SLLoader_initLogger__block_invoke()
{
  SLLogContext = os_log_create("com.apple.siri.localization", kSLLogContext);

  return MEMORY[0x2821F96F8]();
}

@end