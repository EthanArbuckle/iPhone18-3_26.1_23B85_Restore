@interface STTelephonyCarrierBundleInfo
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initWithCarrierBundleInfo:(id)a1;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
@end

@implementation STTelephonyCarrierBundleInfo

- (id)initWithCarrierBundleInfo:(id)a1
{
  v3 = a2;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = STTelephonyCarrierBundleInfo;
    a1 = objc_msgSendSuper2(&v17, sel_init);
    if (a1)
    {
      *(a1 + 8) = [v3 LTEConnectionShows4G];
      *(a1 + 9) = [v3 suppressSOSOnlyWithLimitedService];
      *(a1 + 10) = [v3 isReinitiatingActivationDisabled];
      v4 = [v3 customerServicePhoneNumber];
      v5 = [v4 copy];
      v6 = *(a1 + 2);
      *(a1 + 2) = v5;

      v7 = [v3 disabledApplicationIDs];
      v8 = [v7 copy];
      v9 = *(a1 + 3);
      *(a1 + 3) = v8;

      v10 = [v3 carrierName];
      v11 = [v10 copy];
      v12 = *(a1 + 4);
      *(a1 + 4) = v11;

      v13 = [v3 homeCountryCode];
      v14 = [v13 copy];
      v15 = *(a1 + 5);
      *(a1 + 5) = v14;
    }
  }

  return a1;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableTelephonyCarrierBundleInfo allocWithZone:a3];

  return [(STTelephonyCarrierBundleInfo *)v4 initWithCarrierBundleInfo:?];
}

- (id)succinctDescription
{
  v2 = [(STTelephonyCarrierBundleInfo *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STTelephonyCarrierBundleInfo *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(STTelephonyCarrierBundleInfo *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__STTelephonyCarrierBundleInfo_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279D34B18;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __70__STTelephonyCarrierBundleInfo_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"LTEConnectionShows4G"), @"LTEConnectionShows4G"}];
  v3 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"suppressSOSOnlyWithLimitedService"), @"suppressSOSOnlyWithLimitedService"}];
  v4 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isReinitiatingActivationDisabled"), @"reinitiatingActivationDisabled"}];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) customerServicePhoneNumber];
  [v5 appendString:v6 withName:@"customerServicePhoneNumber"];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) disabledApplicationIDs];
  [v7 appendArraySection:v8 withName:@"disabledApplicationIDs" skipIfEmpty:0];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) carrierName];
  [v9 appendString:v10 withName:@"carrierName"];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) homeCountryCode];
  [v11 appendString:v12 withName:@"homeCountryCode"];
}

@end