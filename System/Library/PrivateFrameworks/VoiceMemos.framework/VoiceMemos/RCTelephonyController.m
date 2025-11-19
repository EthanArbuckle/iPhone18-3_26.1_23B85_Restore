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
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 currentAudioAndVideoCallCount] != 0;

  return v3;
}

@end