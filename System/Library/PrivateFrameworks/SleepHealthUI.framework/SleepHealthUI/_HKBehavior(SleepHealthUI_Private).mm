@interface _HKBehavior(SleepHealthUI_Private)
- (uint64_t)hksp_activeCompanionVariant;
@end

@implementation _HKBehavior(SleepHealthUI_Private)

- (uint64_t)hksp_activeCompanionVariant
{
  hksp_systemImageNameForActivePairedDevice = [self hksp_systemImageNameForActivePairedDevice];
  v2 = hksp_systemImageNameForActivePairedDevice;
  if (hksp_systemImageNameForActivePairedDevice)
  {
    if ([hksp_systemImageNameForActivePairedDevice isEqualToString:@"iphone.gen1"])
    {
      v3 = 0;
    }

    else if ([v2 isEqualToString:@"iphone.gen2"])
    {
      v3 = 1;
    }

    else if ([v2 isEqualToString:@"iphone.gen3"])
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 3;
  }

  return v3;
}

@end