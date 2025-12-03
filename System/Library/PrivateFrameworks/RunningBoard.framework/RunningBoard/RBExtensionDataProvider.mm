@interface RBExtensionDataProvider
- (BOOL)configureLaunchContext:(id)context error:(id *)error;
@end

@implementation RBExtensionDataProvider

- (BOOL)configureLaunchContext:(id)context error:(id *)error
{
  if (MEMORY[0x28220A7A8])
  {
    return _EXConfigureLaunchContext();
  }

  v5 = rbs_process_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_INFO, "Extension launch request made on platform that doesn't support ExtensionKit. Skipping extension launch by host check.", v6, 2u);
  }

  return 0;
}

@end