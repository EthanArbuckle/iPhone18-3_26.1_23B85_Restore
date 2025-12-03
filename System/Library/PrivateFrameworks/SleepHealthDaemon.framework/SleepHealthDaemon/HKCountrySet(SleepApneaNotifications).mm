@interface HKCountrySet(SleepApneaNotifications)
+ (id)localAvailabilityForSleepApneaNotifications;
@end

@implementation HKCountrySet(SleepApneaNotifications)

+ (id)localAvailabilityForSleepApneaNotifications
{
  v4 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:&unk_287A9AD38 compatibilityVersion:1 contentVersion:9 provenance:3];
  if (!v4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKCountrySet+SleepApneaNotifications.m" lineNumber:40 description:@"Local generated country set should never be nil"];
  }

  return v4;
}

@end