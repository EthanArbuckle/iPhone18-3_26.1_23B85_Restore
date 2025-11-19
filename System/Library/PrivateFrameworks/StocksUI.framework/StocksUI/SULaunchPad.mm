@interface SULaunchPad
+ (void)launchSettings;
+ (void)openStocksSettings;
@end

@implementation SULaunchPad

+ (void)launchSettings
{
  v2 = objc_opt_new();
  [v2 openApplication:@"com.apple.Preferences" options:0 withResult:0];
}

+ (void)openStocksSettings
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=STOCKS"];
  [v3 openSensitiveURL:v2 withOptions:0];
}

@end