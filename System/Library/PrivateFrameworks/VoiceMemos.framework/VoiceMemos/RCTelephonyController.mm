@interface RCTelephonyController
+ (id)sharedTelephonyController;
- (BOOL)isCallPresent;
@end

@implementation RCTelephonyController

+ (id)sharedTelephonyController
{
  v2 = sharedTelephonyController___sharedTelephonyController;
  if (!sharedTelephonyController___sharedTelephonyController)
  {
    v3 = objc_alloc_init(RCTelephonyController);
    v4 = sharedTelephonyController___sharedTelephonyController;
    sharedTelephonyController___sharedTelephonyController = v3;

    v2 = sharedTelephonyController___sharedTelephonyController;
  }

  return v2;
}

- (BOOL)isCallPresent
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [mEMORY[0x277D6EDF8] currentAudioAndVideoCallCount] != 0;

  return v3;
}

@end