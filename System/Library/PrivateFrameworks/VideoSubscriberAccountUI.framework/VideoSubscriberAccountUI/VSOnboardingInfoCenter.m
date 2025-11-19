@interface VSOnboardingInfoCenter
- (NSString)localizedButtonTitle;
- (id)tvAppPrivacyButtonViewController;
- (id)tvProviderPrivacyButtonViewController;
- (void)presentDetailsFromViewController:(id)a3;
@end

@implementation VSOnboardingInfoCenter

- (NSString)localizedButtonTitle
{
  v2 = [MEMORY[0x277D37630] bundleWithIdentifier:@"com.apple.onboarding.tvprovider"];
  v3 = [MEMORY[0x277D37668] flowWithBundle:v2];
  v4 = [v3 localizedButtonTitle];
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The privacyTitleOrNil parameter must not be nil."];
  }

  return v4;
}

- (void)presentDetailsFromViewController:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The presentingViewController parameter must not be nil."];
  }

  v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.tvprovider"];
  [v3 setPresentingViewController:v4];
  [v3 present];
}

- (id)tvProviderPrivacyButtonViewController
{
  v2 = [MEMORY[0x277D37670] linkWithBundleIdentifier:@"com.apple.onboarding.tvprovider"];
  if (!v2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The linkController parameter must not be nil."];
  }

  return v2;
}

- (id)tvAppPrivacyButtonViewController
{
  v2 = [MEMORY[0x277D37670] linkWithBundleIdentifier:@"com.apple.onboarding.tvapp"];
  if (!v2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The linkController parameter must not be nil."];
  }

  return v2;
}

@end