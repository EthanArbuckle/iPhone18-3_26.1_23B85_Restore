@interface PSGMSAvailability
+ (BOOL)eligibleDevice;
@end

@implementation PSGMSAvailability

+ (BOOL)eligibleDevice
{
  v3 = 2;
  getGMAvailabilityWrapperClass();
  if (objc_opt_respondsToSelector())
  {
    return [getGMAvailabilityWrapperClass() shouldBeShownInSettingsReturningAvailabilityStatus:&v3];
  }

  else
  {
    return 0;
  }
}

@end