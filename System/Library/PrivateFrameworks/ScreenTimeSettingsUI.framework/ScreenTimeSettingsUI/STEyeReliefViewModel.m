@interface STEyeReliefViewModel
- (BOOL)hasAcknowledgedIntroScreens;
- (BOOL)inDemoMode;
- (void)acknowledgeIntroScreens;
@end

@implementation STEyeReliefViewModel

- (BOOL)inDemoMode
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.EyeRelief"];
  v3 = [v2 BOOLForKey:@"OnboardingDemoMode"];

  return v3;
}

- (BOOL)hasAcknowledgedIntroScreens
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"ScreenTimeEyeReliefIntroAcknowledged"];

  return v3;
}

- (void)acknowledgeIntroScreens
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 setBool:1 forKey:@"ScreenTimeEyeReliefIntroAcknowledged"];
}

@end