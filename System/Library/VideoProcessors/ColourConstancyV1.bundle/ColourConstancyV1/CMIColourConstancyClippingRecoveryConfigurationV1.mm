@interface CMIColourConstancyClippingRecoveryConfigurationV1
- (CMIColourConstancyClippingRecoveryConfigurationV1)init;
@end

@implementation CMIColourConstancyClippingRecoveryConfigurationV1

- (CMIColourConstancyClippingRecoveryConfigurationV1)init
{
  v8.receiver = self;
  v8.super_class = CMIColourConstancyClippingRecoveryConfigurationV1;
  v2 = [(CMIColourConstancyClippingRecoveryConfigurationV1 *)&v8 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_5;
  }

  *(v2 + 1) = 0x10000000003;
  *(v2 + 2) = 0x3F400000000000C0;
  *(v2 + 6) = 5;
  *(v2 + 28) = 0x410000003F800000;
  *(v2 + 36) = 0x4000000000000004;
  *(v2 + 44) = 0x400CCCCD0000000DLL;
  v4 = [[CMIColourConstancyMicroHazeDetectionConfigurationV1 alloc] initWithFusionMapWidth:256 fusionMapHeight:192];
  v5 = v3[7];
  v3[7] = v4;

  if (!v3[7])
  {
    sub_1A0E0();
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = v3;
LABEL_6:

  return v6;
}

@end