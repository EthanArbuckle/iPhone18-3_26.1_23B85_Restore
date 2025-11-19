@interface PSAirplaneModeSettingsDetail
+ (BOOL)isEnabled;
+ (void)setEnabled:(BOOL)a3;
@end

@implementation PSAirplaneModeSettingsDetail

+ (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E698B6B0]);
  [v4 setAirplaneMode:v3];
}

+ (BOOL)isEnabled
{
  v2 = objc_alloc_init(MEMORY[0x1E698B6B0]);
  v3 = [v2 airplaneMode];

  return v3;
}

@end