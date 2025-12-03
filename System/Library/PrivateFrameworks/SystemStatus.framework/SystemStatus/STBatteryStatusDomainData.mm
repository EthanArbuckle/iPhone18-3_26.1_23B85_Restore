@interface STBatteryStatusDomainData
- (BOOL)isEqual:(id)equal;
- (STBatteryStatusDomainData)initWithCoder:(id)coder;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)dataByApplyingDiff:(id)diff;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffFromData:(id)data;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)initWithChargingState:(uint64_t)state percentCharge:(char)charge batterySaverModeActive:(void *)active chargingDescription:(uint64_t)description chargingDescriptionType:;
- (void)initWithData:(void *)data;
@end

@implementation STBatteryStatusDomainData

- (void)initWithData:(void *)data
{
  dataCopy = data;
  if (data)
  {
    v3 = a2;
    chargingState = [v3 chargingState];
    percentCharge = [v3 percentCharge];
    isBatterySaverModeActive = [v3 isBatterySaverModeActive];
    chargingDescription = [v3 chargingDescription];
    chargingDescriptionType = [v3 chargingDescriptionType];

    dataCopy = [(STBatteryStatusDomainData *)dataCopy initWithChargingState:chargingState percentCharge:percentCharge batterySaverModeActive:isBatterySaverModeActive chargingDescription:chargingDescription chargingDescriptionType:chargingDescriptionType];
  }

  return dataCopy;
}

- (void)initWithChargingState:(uint64_t)state percentCharge:(char)charge batterySaverModeActive:(void *)active chargingDescription:(uint64_t)description chargingDescriptionType:
{
  activeCopy = active;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = STBatteryStatusDomainData;
    v13 = objc_msgSendSuper2(&v15, sel_init);
    self = v13;
    if (v13)
    {
      *(v13 + 1) = a2;
      *(v13 + 2) = state;
      *(v13 + 24) = charge;
      objc_storeStrong(v13 + 4, active);
      self[5] = description;
    }
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  chargingState = [(STBatteryStatusDomainData *)self chargingState];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __37__STBatteryStatusDomainData_isEqual___block_invoke;
  v30[3] = &unk_1E85DE2F8;
  v7 = equalCopy;
  v31 = v7;
  v8 = [v5 appendUnsignedInteger:chargingState counterpart:v30];
  percentCharge = [(STBatteryStatusDomainData *)self percentCharge];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __37__STBatteryStatusDomainData_isEqual___block_invoke_2;
  v28[3] = &unk_1E85DE2F8;
  v10 = v7;
  v29 = v10;
  v11 = [v5 appendUnsignedInteger:percentCharge counterpart:v28];
  isBatterySaverModeActive = [(STBatteryStatusDomainData *)self isBatterySaverModeActive];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __37__STBatteryStatusDomainData_isEqual___block_invoke_3;
  v26[3] = &unk_1E85DDD50;
  v13 = v10;
  v27 = v13;
  v14 = [v5 appendBool:isBatterySaverModeActive counterpart:v26];
  chargingDescription = [(STBatteryStatusDomainData *)self chargingDescription];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __37__STBatteryStatusDomainData_isEqual___block_invoke_4;
  v24[3] = &unk_1E85DDD28;
  v16 = v13;
  v25 = v16;
  v17 = [v5 appendString:chargingDescription counterpart:v24];

  chargingDescriptionType = [(STBatteryStatusDomainData *)self chargingDescriptionType];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __37__STBatteryStatusDomainData_isEqual___block_invoke_5;
  v22[3] = &unk_1E85DE2F8;
  v23 = v16;
  v19 = v16;
  v20 = [v5 appendUnsignedInteger:chargingDescriptionType counterpart:v22];
  LOBYTE(chargingDescriptionType) = [v5 isEqual];

  return chargingDescriptionType;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendUnsignedInteger:{-[STBatteryStatusDomainData chargingState](self, "chargingState")}];
  v5 = [builder appendUnsignedInteger:{-[STBatteryStatusDomainData percentCharge](self, "percentCharge")}];
  v6 = [builder appendBool:{-[STBatteryStatusDomainData isBatterySaverModeActive](self, "isBatterySaverModeActive")}];
  chargingDescription = [(STBatteryStatusDomainData *)self chargingDescription];
  v8 = [builder appendString:chargingDescription];

  v9 = [builder appendUnsignedInteger:{-[STBatteryStatusDomainData chargingDescriptionType](self, "chargingDescriptionType")}];
  v10 = [builder hash];

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableBatteryStatusDomainData allocWithZone:zone];

  return [(STBatteryStatusDomainData *)v4 initWithData:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STBatteryStatusDomainData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STBatteryStatusDomainData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STBatteryStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:
{
  if (self)
  {
    v5 = a2;
    succinctDescriptionBuilder = [self succinctDescriptionBuilder];
    [succinctDescriptionBuilder setUseDebugDescription:prefix];
    [succinctDescriptionBuilder setActiveMultilinePrefix:v5];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__STBatteryStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDD00;
    v7 = succinctDescriptionBuilder;
    v11 = v7;
    selfCopy = self;
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

- (id)diffFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STBatteryStatusDomainDataDiff diffFromData:dataCopy toData:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataByApplyingDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([diffCopy isEmpty])
    {
      v5 = [(STBatteryStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STBatteryStatusDomainData *)self mutableCopy];
      [diffCopy applyToMutableData:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[STBatteryStatusDomainData chargingState](self forKey:{"chargingState"), @"chargingState"}];
  [coderCopy encodeInteger:-[STBatteryStatusDomainData percentCharge](self forKey:{"percentCharge"), @"percentCharge"}];
  [coderCopy encodeBool:-[STBatteryStatusDomainData isBatterySaverModeActive](self forKey:{"isBatterySaverModeActive"), @"batterySaverModeActive"}];
  chargingDescription = [(STBatteryStatusDomainData *)self chargingDescription];
  [coderCopy encodeObject:chargingDescription forKey:@"chargingDescription"];

  [coderCopy encodeInteger:-[STBatteryStatusDomainData chargingDescriptionType](self forKey:{"chargingDescriptionType"), @"chargingDescriptionType"}];
}

- (STBatteryStatusDomainData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"chargingState"];
  v6 = [coderCopy decodeIntegerForKey:@"percentCharge"];
  v7 = [coderCopy decodeBoolForKey:@"batterySaverModeActive"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"chargingDescription"];
  v9 = [coderCopy decodeIntegerForKey:@"chargingDescriptionType"];

  v10 = [(STBatteryStatusDomainData *)self initWithChargingState:v5 percentCharge:v6 batterySaverModeActive:v7 chargingDescription:v8 chargingDescriptionType:v9];
  return v10;
}

@end