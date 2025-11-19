@interface HKCountrySet(OxygenSaturationRecording)
+ (id)localAvailabilityForOxygenSaturationRecording;
+ (void)localAvailabilityForOxygenSaturationRecording;
@end

@implementation HKCountrySet(OxygenSaturationRecording)

+ (id)localAvailabilityForOxygenSaturationRecording
{
  v4 = [objc_alloc(MEMORY[0x277CCD260]) initWithCountryBitmasks:&unk_28749C530 compatibilityVersion:1 contentVersion:11 provenance:3];
  if (!v4)
  {
    +[(HKCountrySet(OxygenSaturationRecording) *)a2];
  }

  return v4;
}

+ (void)localAvailabilityForOxygenSaturationRecording
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCountrySet+OxygenSaturationRecording.m" lineNumber:40 description:@"Local generated country set should never be nil"];
}

@end