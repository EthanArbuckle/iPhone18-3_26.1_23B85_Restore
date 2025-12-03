@interface STTelephonyMobileEquipmentInfo
- (BOOL)isOnBootstrap;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (void)initWithMobileEquipmentInfo:(void *)info;
@end

@implementation STTelephonyMobileEquipmentInfo

- (void)initWithMobileEquipmentInfo:(void *)info
{
  v3 = a2;
  if (info)
  {
    v20.receiver = info;
    v20.super_class = STTelephonyMobileEquipmentInfo;
    info = objc_msgSendSuper2(&v20, sel_init);
    if (info)
    {
      mEID = [v3 MEID];
      v5 = [mEID copy];
      v6 = info[1];
      info[1] = v5;

      iMEI = [v3 IMEI];
      v8 = [iMEI copy];
      v9 = info[2];
      info[2] = v8;

      iCCID = [v3 ICCID];
      v11 = [iCCID copy];
      v12 = info[3];
      info[3] = v11;

      v13 = [v3 CSN];
      v14 = [v13 copy];
      v15 = info[4];
      info[4] = v14;

      bootstrapICCID = [v3 bootstrapICCID];
      v17 = [bootstrapICCID copy];
      v18 = info[5];
      info[5] = v17;
    }
  }

  return info;
}

- (BOOL)isOnBootstrap
{
  iCCID = [(STTelephonyMobileEquipmentInfo *)self ICCID];
  bootstrapICCID = [(STTelephonyMobileEquipmentInfo *)self bootstrapICCID];
  v5 = [iCCID isEqualToString:bootstrapICCID];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableTelephonyMobileEquipmentInfo allocWithZone:zone];

  return [(STTelephonyMobileEquipmentInfo *)v4 initWithMobileEquipmentInfo:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STTelephonyMobileEquipmentInfo *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STTelephonyMobileEquipmentInfo *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STTelephonyMobileEquipmentInfo *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__STTelephonyMobileEquipmentInfo_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279D34B18;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __72__STTelephonyMobileEquipmentInfo_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) MEID];
  [v2 appendString:v3 withName:@"MEID"];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) IMEI];
  [v4 appendString:v5 withName:@"IMEI"];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) ICCID];
  [v6 appendString:v7 withName:@"ICCID"];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) CSN];
  [v8 appendString:v9 withName:@"CSN"];

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) bootstrapICCID];
  [v10 appendString:v11 withName:@"bootstrapICCID"];
}

@end