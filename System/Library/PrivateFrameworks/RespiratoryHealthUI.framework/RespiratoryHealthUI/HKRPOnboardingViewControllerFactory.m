@interface HKRPOnboardingViewControllerFactory
+ (id)onboardingViewControllerWithStyle:(int64_t)a3 settings:(id)a4 onboardingManager:(id)a5 onboardingDelegate:(id)a6;
@end

@implementation HKRPOnboardingViewControllerFactory

+ (id)onboardingViewControllerWithStyle:(int64_t)a3 settings:(id)a4 onboardingManager:(id)a5 onboardingDelegate:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (a3 == 2)
  {
    v14 = [HKRPOnboardingSettingsViewController alloc];
    v15 = 2;
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v14 = [HKRPOnboardingSettingsViewController alloc];
    v15 = 1;
LABEL_7:
    v13 = [(HKRPOnboardingSettingsViewController *)v14 initWithStyle:v15 settings:v10 onboardingManager:v11 onboardingDelegate:v12];
    goto LABEL_8;
  }

  if (a3)
  {
    goto LABEL_9;
  }

  v13 = [[HKRPOnboardingPairViewController alloc] initWithSettings:v10 onboardingManager:v11];
LABEL_8:
  v6 = v13;
LABEL_9:

  return v6;
}

@end