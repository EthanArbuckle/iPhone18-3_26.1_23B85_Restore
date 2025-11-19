@interface STTelephonyMobileEquipmentInfo
- (BOOL)isOnBootstrap;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (void)initWithMobileEquipmentInfo:(void *)a1;
@end

@implementation STTelephonyMobileEquipmentInfo

- (void)initWithMobileEquipmentInfo:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = STTelephonyMobileEquipmentInfo;
    a1 = objc_msgSendSuper2(&v20, sel_init);
    if (a1)
    {
      v4 = [v3 MEID];
      v5 = [v4 copy];
      v6 = a1[1];
      a1[1] = v5;

      v7 = [v3 IMEI];
      v8 = [v7 copy];
      v9 = a1[2];
      a1[2] = v8;

      v10 = [v3 ICCID];
      v11 = [v10 copy];
      v12 = a1[3];
      a1[3] = v11;

      v13 = [v3 CSN];
      v14 = [v13 copy];
      v15 = a1[4];
      a1[4] = v14;

      v16 = [v3 bootstrapICCID];
      v17 = [v16 copy];
      v18 = a1[5];
      a1[5] = v17;
    }
  }

  return a1;
}

- (BOOL)isOnBootstrap
{
  v3 = [(STTelephonyMobileEquipmentInfo *)self ICCID];
  v4 = [(STTelephonyMobileEquipmentInfo *)self bootstrapICCID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableTelephonyMobileEquipmentInfo allocWithZone:a3];

  return [(STTelephonyMobileEquipmentInfo *)v4 initWithMobileEquipmentInfo:?];
}

- (id)succinctDescription
{
  v2 = [(STTelephonyMobileEquipmentInfo *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STTelephonyMobileEquipmentInfo *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(STTelephonyMobileEquipmentInfo *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__STTelephonyMobileEquipmentInfo_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_279D34B18;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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