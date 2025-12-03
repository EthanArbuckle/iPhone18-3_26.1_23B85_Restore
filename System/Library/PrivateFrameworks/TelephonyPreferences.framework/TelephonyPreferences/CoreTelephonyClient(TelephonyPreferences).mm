@interface CoreTelephonyClient(TelephonyPreferences)
- (id)carrierBundleForSubscription:()TelephonyPreferences error:;
- (id)localizedCarrierBundleStringForKey:()TelephonyPreferences subscription:error:;
@end

@implementation CoreTelephonyClient(TelephonyPreferences)

- (id)carrierBundleForSubscription:()TelephonyPreferences error:
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [self copyCarrierBundleLocation:v6 error:a4];
    if (v7)
    {
      v8 = [MEMORY[0x277CCA8D8] bundleWithPath:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)localizedCarrierBundleStringForKey:()TelephonyPreferences subscription:error:
{
  v8 = a3;
  v9 = [self carrierBundleForSubscription:a4 error:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 localizedStringForKey:v8 value:&stru_282D54710 table:@"carrier"];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end