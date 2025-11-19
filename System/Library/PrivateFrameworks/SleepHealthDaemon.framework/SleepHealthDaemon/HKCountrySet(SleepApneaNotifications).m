@interface HKCountrySet(SleepApneaNotifications)
+ (id)localAvailabilityForSleepApneaNotifications;
@end

@implementation HKCountrySet(SleepApneaNotifications)

+ (id)localAvailabilityForSleepApneaNotifications
{
  v4 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:&unk_287A9AD38 compatibilityVersion:1 contentVersion:9 provenance:3];
  if (!v4)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKCountrySet+SleepApneaNotifications.m" lineNumber:40 description:@"Local generated country set should never be nil"];
  }

  return v4;
}

@end