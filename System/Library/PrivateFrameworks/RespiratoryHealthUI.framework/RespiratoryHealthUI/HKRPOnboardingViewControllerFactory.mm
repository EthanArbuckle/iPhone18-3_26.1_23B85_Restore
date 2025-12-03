@interface HKRPOnboardingViewControllerFactory
+ (id)onboardingViewControllerWithStyle:(int64_t)style settings:(id)settings onboardingManager:(id)manager onboardingDelegate:(id)delegate;
@end

@implementation HKRPOnboardingViewControllerFactory

+ (id)onboardingViewControllerWithStyle:(int64_t)style settings:(id)settings onboardingManager:(id)manager onboardingDelegate:(id)delegate
{
  settingsCopy = settings;
  managerCopy = manager;
  delegateCopy = delegate;
  if (style == 2)
  {
    v14 = [HKRPOnboardingSettingsViewController alloc];
    v15 = 2;
    goto LABEL_7;
  }

  if (style == 1)
  {
    v14 = [HKRPOnboardingSettingsViewController alloc];
    v15 = 1;
LABEL_7:
    v13 = [(HKRPOnboardingSettingsViewController *)v14 initWithStyle:v15 settings:settingsCopy onboardingManager:managerCopy onboardingDelegate:delegateCopy];
    goto LABEL_8;
  }

  if (style)
  {
    goto LABEL_9;
  }

  v13 = [[HKRPOnboardingPairViewController alloc] initWithSettings:settingsCopy onboardingManager:managerCopy];
LABEL_8:
  v6 = v13;
LABEL_9:

  return v6;
}

@end