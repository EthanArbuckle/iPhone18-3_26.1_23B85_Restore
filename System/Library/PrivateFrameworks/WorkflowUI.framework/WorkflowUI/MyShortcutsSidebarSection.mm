@interface MyShortcutsSidebarSection
- (void)healthFeatureAvailability:(id)a3 sleepOnboardingStatusDidChange:(unint64_t)a4;
@end

@implementation MyShortcutsSidebarSection

- (void)healthFeatureAvailability:(id)a3 sleepOnboardingStatusDidChange:(unint64_t)a4
{
  v4 = a3;

  MyShortcutsSidebarSection.healthFeatureAvailability(_:sleepOnboardingStatusDidChange:)();
}

@end