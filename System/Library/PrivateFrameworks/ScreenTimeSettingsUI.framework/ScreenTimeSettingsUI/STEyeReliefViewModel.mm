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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"ScreenTimeEyeReliefIntroAcknowledged"];

  return v3;
}

- (void)acknowledgeIntroScreens
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:1 forKey:@"ScreenTimeEyeReliefIntroAcknowledged"];
}

@end