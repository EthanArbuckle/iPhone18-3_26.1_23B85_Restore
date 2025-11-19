@interface _HKBehavior(SleepHealthUI_Private)
- (uint64_t)hksp_activeCompanionVariant;
@end

@implementation _HKBehavior(SleepHealthUI_Private)

- (uint64_t)hksp_activeCompanionVariant
{
  v1 = [a1 hksp_systemImageNameForActivePairedDevice];
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:@"iphone.gen1"])
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