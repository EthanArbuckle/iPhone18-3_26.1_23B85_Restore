@interface SiriNLUOverridesLogging
+ (void)SiriNLUOverridesLogInitIfNeeded;
@end

@implementation SiriNLUOverridesLogging

+ (void)SiriNLUOverridesLogInitIfNeeded
{
  if (SiriNLUOverridesLogInitIfNeeded_once[0] != -1)
  {
    dispatch_once(SiriNLUOverridesLogInitIfNeeded_once, &__block_literal_global);
  }
}

uint64_t __58__SiriNLUOverridesLogging_SiriNLUOverridesLogInitIfNeeded__block_invoke()
{
  OverridesLogContext = os_log_create(OverridesLoggingSubsystem, OverridesLoggingCategory);

  return MEMORY[0x2821F96F8]();
}

@end