@interface PSAirplaneModeSettingsDetail
+ (BOOL)isEnabled;
+ (void)setEnabled:(BOOL)enabled;
@end

@implementation PSAirplaneModeSettingsDetail

+ (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = objc_alloc_init(MEMORY[0x1E698B6B0]);
  [v4 setAirplaneMode:enabledCopy];
}

+ (BOOL)isEnabled
{
  v2 = objc_alloc_init(MEMORY[0x1E698B6B0]);
  airplaneMode = [v2 airplaneMode];

  return airplaneMode;
}

@end