@interface NSUserDefaults
@end

@implementation NSUserDefaults

uint64_t __45__NSUserDefaults_WebUIExtras__webui_defaults__block_invoke()
{
  webui_defaults_userDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WebUI"];

  return MEMORY[0x2821F96F8]();
}

@end