@interface STTelephonyCarrierBundleInfo
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)initWithCarrierBundleInfo:(id)info;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
@end

@implementation STTelephonyCarrierBundleInfo

- (id)initWithCarrierBundleInfo:(id)info
{
  v3 = a2;
  if (info)
  {
    v17.receiver = info;
    v17.super_class = STTelephonyCarrierBundleInfo;
    info = objc_msgSendSuper2(&v17, sel_init);
    if (info)
    {
      *(info + 8) = [v3 LTEConnectionShows4G];
      *(info + 9) = [v3 suppressSOSOnlyWithLimitedService];
      *(info + 10) = [v3 isReinitiatingActivationDisabled];
      customerServicePhoneNumber = [v3 customerServicePhoneNumber];
      v5 = [customerServicePhoneNumber copy];
      v6 = *(info + 2);
      *(info + 2) = v5;

      disabledApplicationIDs = [v3 disabledApplicationIDs];
      v8 = [disabledApplicationIDs copy];
      v9 = *(info + 3);
      *(info + 3) = v8;

      carrierName = [v3 carrierName];
      v11 = [carrierName copy];
      v12 = *(info + 4);
      *(info + 4) = v11;

      homeCountryCode = [v3 homeCountryCode];
      v14 = [homeCountryCode copy];
      v15 = *(info + 5);
      *(info + 5) = v14;
    }
  }

  return info;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableTelephonyCarrierBundleInfo allocWithZone:zone];

  return [(STTelephonyCarrierBundleInfo *)v4 initWithCarrierBundleInfo:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STTelephonyCarrierBundleInfo *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STTelephonyCarrierBundleInfo *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STTelephonyCarrierBundleInfo *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__STTelephonyCarrierBundleInfo_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279D34B18;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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