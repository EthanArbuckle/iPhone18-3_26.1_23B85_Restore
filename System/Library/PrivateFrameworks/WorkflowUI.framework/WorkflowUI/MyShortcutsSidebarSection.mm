@interface MyShortcutsSidebarSection
- (void)healthFeatureAvailability:(id)availability sleepOnboardingStatusDidChange:(unint64_t)change;
@end

@implementation MyShortcutsSidebarSection

- (void)healthFeatureAvailability:(id)availability sleepOnboardingStatusDidChange:(unint64_t)change
{
  availabilityCopy = availability;

  MyShortcutsSidebarSection.healthFeatureAvailability(_:sleepOnboardingStatusDidChange:)();
}

@end