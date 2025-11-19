@interface STBatteryStatusDomainData
- (BOOL)isEqual:(id)a3;
- (STBatteryStatusDomainData)initWithCoder:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)dataByApplyingDiff:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffFromData:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)initWithChargingState:(uint64_t)a3 percentCharge:(char)a4 batterySaverModeActive:(void *)a5 chargingDescription:(uint64_t)a6 chargingDescriptionType:;
- (void)initWithData:(void *)a1;
@end

@implementation STBatteryStatusDomainData

- (void)initWithData:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v3 chargingState];
    v5 = [v3 percentCharge];
    v6 = [v3 isBatterySaverModeActive];
    v7 = [v3 chargingDescription];
    v8 = [v3 chargingDescriptionType];

    v2 = [(STBatteryStatusDomainData *)v2 initWithChargingState:v4 percentCharge:v5 batterySaverModeActive:v6 chargingDescription:v7 chargingDescriptionType:v8];
  }

  return v2;
}

- (void)initWithChargingState:(uint64_t)a3 percentCharge:(char)a4 batterySaverModeActive:(void *)a5 chargingDescription:(uint64_t)a6 chargingDescriptionType:
{
  v12 = a5;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = STBatteryStatusDomainData;
    v13 = objc_msgSendSuper2(&v15, sel_init);
    a1 = v13;
    if (v13)
    {
      *(v13 + 1) = a2;
      *(v13 + 2) = a3;
      *(v13 + 24) = a4;
      objc_storeStrong(v13 + 4, a5);
      a1[5] = a6;
    }
  }

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STBatteryStatusDomainData *)self chargingState];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __37__STBatteryStatusDomainData_isEqual___block_invoke;
  v30[3] = &unk_1E85DE2F8;
  v7 = v4;
  v31 = v7;
  v8 = [v5 appendUnsignedInteger:v6 counterpart:v30];
  v9 = [(STBatteryStatusDomainData *)self percentCharge];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __37__STBatteryStatusDomainData_isEqual___block_invoke_2;
  v28[3] = &unk_1E85DE2F8;
  v10 = v7;
  v29 = v10;
  v11 = [v5 appendUnsignedInteger:v9 counterpart:v28];
  v12 = [(STBatteryStatusDomainData *)self isBatterySaverModeActive];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __37__STBatteryStatusDomainData_isEqual___block_invoke_3;
  v26[3] = &unk_1E85DDD50;
  v13 = v10;
  v27 = v13;
  v14 = [v5 appendBool:v12 counterpart:v26];
  v15 = [(STBatteryStatusDomainData *)self chargingDescription];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __37__STBatteryStatusDomainData_isEqual___block_invoke_4;
  v24[3] = &unk_1E85DDD28;
  v16 = v13;
  v25 = v16;
  v17 = [v5 appendString:v15 counterpart:v24];

  v18 = [(STBatteryStatusDomainData *)self chargingDescriptionType];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __37__STBatteryStatusDomainData_isEqual___block_invoke_5;
  v22[3] = &unk_1E85DE2F8;
  v23 = v16;
  v19 = v16;
  v20 = [v5 appendUnsignedInteger:v18 counterpart:v22];
  LOBYTE(v18) = [v5 isEqual];

  return v18;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendUnsignedInteger:{-[STBatteryStatusDomainData chargingState](self, "chargingState")}];
  v5 = [v3 appendUnsignedInteger:{-[STBatteryStatusDomainData percentCharge](self, "percentCharge")}];
  v6 = [v3 appendBool:{-[STBatteryStatusDomainData isBatterySaverModeActive](self, "isBatterySaverModeActive")}];
  v7 = [(STBatteryStatusDomainData *)self chargingDescription];
  v8 = [v3 appendString:v7];

  v9 = [v3 appendUnsignedInteger:{-[STBatteryStatusDomainData chargingDescriptionType](self, "chargingDescriptionType")}];
  v10 = [v3 hash];

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableBatteryStatusDomainData allocWithZone:a3];

  return [(STBatteryStatusDomainData *)v4 initWithData:?];
}

- (id)succinctDescription
{
  v2 = [(STBatteryStatusDomainData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STBatteryStatusDomainData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STBatteryStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:
{
  if (a1)
  {
    v5 = a2;
    v6 = [a1 succinctDescriptionBuilder];
    [v6 setUseDebugDescription:a3];
    [v6 setActiveMultilinePrefix:v5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__STBatteryStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDD00;
    v7 = v6;
    v11 = v7;
    v12 = a1;
    [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __77__STBatteryStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) chargingState];
  if (v3 > 3)
  {
    v4 = @"(unknown)";
  }

  else
  {
    v4 = off_1E85DF138[v3];
  }

  [v2 appendString:v4 withName:@"chargingState"];
  v5 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"percentCharge"), @"percentCharge"}];
  v6 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isBatterySaverModeActive"), @"batterySaverModeActive"}];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) chargingDescription];
  [v7 appendString:v8 withName:@"chargingDescription"];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) chargingDescriptionType];
  if (v10 > 2)
  {
    v11 = @"(unknown)";
  }

  else
  {
    v11 = off_1E85DF158[v10];
  }

  return [v9 appendString:v11 withName:@"chargingDescriptionType"];
}

- (id)diffFromData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STBatteryStatusDomainDataDiff diffFromData:v4 toData:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataByApplyingDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 isEmpty])
    {
      v5 = [(STBatteryStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STBatteryStatusDomainData *)self mutableCopy];
      [v4 applyToMutableData:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[STBatteryStatusDomainData chargingState](self forKey:{"chargingState"), @"chargingState"}];
  [v5 encodeInteger:-[STBatteryStatusDomainData percentCharge](self forKey:{"percentCharge"), @"percentCharge"}];
  [v5 encodeBool:-[STBatteryStatusDomainData isBatterySaverModeActive](self forKey:{"isBatterySaverModeActive"), @"batterySaverModeActive"}];
  v4 = [(STBatteryStatusDomainData *)self chargingDescription];
  [v5 encodeObject:v4 forKey:@"chargingDescription"];

  [v5 encodeInteger:-[STBatteryStatusDomainData chargingDescriptionType](self forKey:{"chargingDescriptionType"), @"chargingDescriptionType"}];
}

- (STBatteryStatusDomainData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"chargingState"];
  v6 = [v4 decodeIntegerForKey:@"percentCharge"];
  v7 = [v4 decodeBoolForKey:@"batterySaverModeActive"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"chargingDescription"];
  v9 = [v4 decodeIntegerForKey:@"chargingDescriptionType"];

  v10 = [(STBatteryStatusDomainData *)self initWithChargingState:v5 percentCharge:v6 batterySaverModeActive:v7 chargingDescription:v8 chargingDescriptionType:v9];
  return v10;
}

@end