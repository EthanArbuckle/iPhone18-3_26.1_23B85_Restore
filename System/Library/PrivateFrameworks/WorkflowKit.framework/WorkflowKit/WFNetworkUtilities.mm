@interface WFNetworkUtilities
+ (BOOL)isAirplaneModeEnabled;
@end

@implementation WFNetworkUtilities

+ (BOOL)isAirplaneModeEnabled
{
  v2 = softLinkSCPreferencesCreate(*MEMORY[0x1E695E480], @"com.apple.wifikit", @"com.apple.radios.plist");
  Value = softLinkSCPreferencesGetValue(v2, @"AirplaneMode");

  return [Value BOOLValue];
}

@end