@interface ShortcutDetailsViewModel
- (void)healthFeatureAvailability:(id)availability sleepOnboardingStatusDidChange:(unint64_t)change;
@end

@implementation ShortcutDetailsViewModel

- (void)healthFeatureAvailability:(id)availability sleepOnboardingStatusDidChange:(unint64_t)change
{
  availabilityCopy = availability;

  sub_27475E60C();
}

@end