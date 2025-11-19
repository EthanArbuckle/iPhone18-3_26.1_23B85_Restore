@interface RMUILog
+ (OS_os_log)configurationInterface;
+ (OS_os_log)pluginViewModelProvider;
+ (OS_os_log)profilesViewModelProvider;
@end

@implementation RMUILog

+ (OS_os_log)configurationInterface
{
  if (configurationInterface_onceToken != -1)
  {
    +[RMUILog(configurationInterface) configurationInterface];
  }

  v3 = configurationInterface_result;

  return v3;
}

uint64_t __57__RMUILog_configurationInterface__configurationInterface__block_invoke()
{
  configurationInterface_result = os_log_create("com.apple.remotemanagementd", "configurationInterface");

  return MEMORY[0x2821F96F8]();
}

+ (OS_os_log)profilesViewModelProvider
{
  if (profilesViewModelProvider_onceToken != -1)
  {
    +[RMUILog(profilesViewModelProvider) profilesViewModelProvider];
  }

  v3 = profilesViewModelProvider_result;

  return v3;
}

uint64_t __63__RMUILog_profilesViewModelProvider__profilesViewModelProvider__block_invoke()
{
  profilesViewModelProvider_result = os_log_create("com.apple.remotemanagementd", "profilesViewModelProvider");

  return MEMORY[0x2821F96F8]();
}

+ (OS_os_log)pluginViewModelProvider
{
  if (pluginViewModelProvider_onceToken != -1)
  {
    +[RMUILog(pluginViewModelProvider) pluginViewModelProvider];
  }

  v3 = pluginViewModelProvider_result;

  return v3;
}

uint64_t __59__RMUILog_pluginViewModelProvider__pluginViewModelProvider__block_invoke()
{
  pluginViewModelProvider_result = os_log_create("com.apple.remotemanagementd", "pluginViewModelProvider");

  return MEMORY[0x2821F96F8]();
}

@end