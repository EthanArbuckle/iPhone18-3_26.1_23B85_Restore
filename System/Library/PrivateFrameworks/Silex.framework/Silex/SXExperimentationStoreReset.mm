@interface SXExperimentationStoreReset
+ (void)performStoreReset;
@end

@implementation SXExperimentationStoreReset

+ (void)performStoreReset
{
  v2 = SXExperimentationLog;
  if (os_log_type_enabled(SXExperimentationLog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D825C000, v2, OS_LOG_TYPE_DEFAULT, "Reset experimentation store", v4, 2u);
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:SXExperimentationStoreKey];
  [standardUserDefaults synchronize];
}

@end