@interface STBatteryStatusDomainDataDiff
+ (id)diffFromData:(id)data toData:(id)toData;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOrthogonalToDiff:(id)diff;
- (STBatteryStatusDomainDataDiff)init;
- (STBatteryStatusDomainDataDiff)initWithCoder:(id)coder;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)dataByApplyingToData:(id)data;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffByApplyingDiff:(id)diff;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableData:(id)data;
- (void)encodeWithCoder:(id)coder;
- (void)initWithChanges:(void *)changes;
@end

@implementation STBatteryStatusDomainDataDiff

+ (id)diffFromData:(id)data toData:(id)toData
{
  dataCopy = data;
  toDataCopy = toData;
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  chargingState = [toDataCopy chargingState];
  if ([dataCopy chargingState] != chargingState)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:chargingState];
    [v7 setObject:v9 forSetting:0];
  }

  percentCharge = [toDataCopy percentCharge];
  if ([dataCopy percentCharge] != percentCharge)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:percentCharge];
    [v7 setObject:v11 forSetting:1];
  }

  isBatterySaverModeActive = [toDataCopy isBatterySaverModeActive];
  if (isBatterySaverModeActive != [dataCopy isBatterySaverModeActive])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:2];
  }

  chargingDescription = [toDataCopy chargingDescription];
  chargingDescription2 = [dataCopy chargingDescription];
  if (([chargingDescription2 isEqualToString:chargingDescription] & 1) == 0)
  {
    if (chargingDescription)
    {
      [v7 setObject:chargingDescription forSetting:3];
    }

    else if (chargingDescription2)
    {
      [v7 setFlag:0 forSetting:3];
    }
  }

  chargingDescriptionType = [toDataCopy chargingDescriptionType];
  if ([dataCopy chargingDescriptionType] != chargingDescriptionType)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:chargingDescriptionType];
    [v7 setObject:v16 forSetting:4];
  }

  v17 = [[STBatteryStatusDomainDataDiff alloc] initWithChanges:v7];

  return v17;
}

- (void)initWithChanges:(void *)changes
{
  v3 = a2;
  if (changes)
  {
    v7.receiver = changes;
    v7.super_class = STBatteryStatusDomainDataDiff;
    changes = objc_msgSendSuper2(&v7, sel_init);
    if (changes)
    {
      v4 = [v3 copy];
      v5 = changes[1];
      changes[1] = v4;
    }
  }

  return changes;
}

- (STBatteryStatusDomainDataDiff)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E768]);
  v4 = [(STBatteryStatusDomainDataDiff *)self initWithChanges:v3];

  return v4;
}

- (id)dataByApplyingToData:(id)data
{
  v4 = [data mutableCopy];
  [(STBatteryStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)data
{
  dataCopy = data;
  if (self)
  {
    changes = self->_changes;
  }

  else
  {
    changes = 0;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__STBatteryStatusDomainDataDiff_applyToMutableData___block_invoke;
  v11[3] = &unk_1E85DDF78;
  v6 = dataCopy;
  v12 = v6;
  v7 = changes;
  [(BSSettings *)v7 enumerateFlagsWithBlock:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__STBatteryStatusDomainDataDiff_applyToMutableData___block_invoke_2;
  v9[3] = &unk_1E85DDCB0;
  v10 = v6;
  v8 = v6;
  [(BSSettings *)v7 enumerateObjectsWithBlock:v9];
}

uint64_t __52__STBatteryStatusDomainDataDiff_applyToMutableData___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 == 3)
  {
    result = BSSettingFlagIsExplicitNo();
    if (result)
    {
      v5 = *(v2 + 32);

      return [v5 setChargingDescription:0];
    }
  }

  else if (a2 == 2)
  {
    v3 = *(result + 32);
    IsYes = BSSettingFlagIsYes();

    return [v3 setBatterySaverModeActive:IsYes];
  }

  return result;
}

uint64_t __52__STBatteryStatusDomainDataDiff_applyToMutableData___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v8 = v5;
      v5 = [*(a1 + 32) setChargingDescription:v5];
    }

    else
    {
      if (a2 != 4)
      {
        goto LABEL_11;
      }

      v8 = v5;
      v5 = [*(a1 + 32) setChargingDescriptionType:{objc_msgSend(v5, "unsignedIntegerValue")}];
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_11;
    }

    v8 = v5;
    v5 = [*(a1 + 32) setPercentCharge:{objc_msgSend(v5, "unsignedIntegerValue")}];
  }

  else
  {
    v8 = v5;
    v5 = [*(a1 + 32) setChargingState:{objc_msgSend(v5, "unsignedIntegerValue")}];
  }

  v6 = v8;
LABEL_11:

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (BOOL)isEmpty
{
  if (self)
  {
    self = self->_changes;
  }

  return [(STBatteryStatusDomainDataDiff *)self isEmpty];
}

- (id)diffByApplyingDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self)
    {
      changes = self->_changes;
    }

    else
    {
      changes = 0;
    }

    v6 = changes;
    v7 = [(BSSettings *)v6 mutableCopy];
    if (diffCopy)
    {
      v8 = diffCopy[1];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [v7 applySettings:v9];
    v10 = v7;
    v11 = v6;
    objc_opt_self();
    if (![v10 flagForSetting:3])
    {
      v14 = [v10 objectForSetting:3];

      if (v14)
      {
        if ([(BSSettings *)v11 flagForSetting:3])
        {
          [v10 setObject:0 forSetting:3];
        }

        else
        {
          [v10 setFlag:0x7FFFFFFFFFFFFFFFLL forSetting:3];
        }
      }
    }

    v12 = [[STBatteryStatusDomainDataDiff alloc] initWithChanges:v10];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isOrthogonalToDiff:(id)diff
{
  diffCopy = diff;
  if ([(STBatteryStatusDomainDataDiff *)self isEmpty])
  {
    isEmpty = 1;
  }

  else
  {
    isEmpty = [diffCopy isEmpty];
  }

  return isEmpty;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  if (self)
  {
    self = self->_changes;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__STBatteryStatusDomainDataDiff_isEqual___block_invoke;
  v10[3] = &unk_1E85DDCD8;
  v11 = equalCopy;
  v6 = equalCopy;
  v7 = [v5 appendObject:self counterpart:v10];
  v8 = [v5 isEqual];

  return v8;
}

id __41__STBatteryStatusDomainDataDiff_isEqual___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = builder;
  if (self)
  {
    changes = self->_changes;
  }

  else
  {
    changes = 0;
  }

  v6 = [builder appendObject:changes];
  v7 = [v4 hash];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    changes = self->_changes;
  }

  else
  {
    changes = 0;
  }

  [coder encodeObject:changes forKey:@"changes"];
}

- (STBatteryStatusDomainDataDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changes"];

  v6 = [(STBatteryStatusDomainDataDiff *)self initWithChanges:v5];
  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STBatteryStatusDomainDataDiff *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STBatteryStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STBatteryStatusDomainDataDiff *)&self->super.isa _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:
{
  selfCopy = self;
  if (self)
  {
    v5 = a2;
    succinctDescriptionBuilder = [selfCopy succinctDescriptionBuilder];
    [succinctDescriptionBuilder setUseDebugDescription:prefix];
    [succinctDescriptionBuilder setActiveMultilinePrefix:v5];

    v7 = selfCopy[1];
    selfCopy = succinctDescriptionBuilder;
    if (([v7 isEmpty] & 1) == 0)
    {
      activeMultilinePrefix = [selfCopy activeMultilinePrefix];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __69__STBatteryStatusDomainDataDiff__appendChanges_toDescriptionBuilder___block_invoke;
      v10[3] = &unk_1E85DDD00;
      v11 = selfCopy;
      v12 = v7;
      [v11 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v10];
    }
  }

  return selfCopy;
}

void __69__STBatteryStatusDomainDataDiff__appendChanges_toDescriptionBuilder___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendFlag:objc_msgSend(*(a1 + 40) withName:"flagForSetting:" skipIfNotSet:{2), @"batterySaverModeActive", 1}];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__STBatteryStatusDomainDataDiff__appendChanges_toDescriptionBuilder___block_invoke_2;
  v4[3] = &unk_1E85DDCB0;
  v3 = *(a1 + 40);
  v5 = *(a1 + 32);
  [v3 enumerateObjectsWithBlock:v4];
}

uint64_t __69__STBatteryStatusDomainDataDiff__appendChanges_toDescriptionBuilder___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v11 = v5;
      v5 = [*(a1 + 32) appendString:v5 withName:@"chargingDescription"];
      goto LABEL_11;
    }

    if (a2 != 4)
    {
      goto LABEL_12;
    }

    v7 = *(a1 + 32);
    v11 = v5;
    v8 = STBatteryStatusDomainChargingDescriptionTypeDescription([v5 unsignedIntegerValue]);
    v9 = @"chargingDescriptionType";
  }

  else
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_12;
      }

      v11 = v5;
      v5 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(v5 withName:{"unsignedIntegerValue"), @"percentCharge"}];
      goto LABEL_11;
    }

    v7 = *(a1 + 32);
    v11 = v5;
    v8 = STBatteryStatusDomainChargingStateDescription([v5 unsignedIntegerValue]);
    v9 = @"chargingState";
  }

  [v7 appendString:v8 withName:v9];

LABEL_11:
  v6 = v11;
LABEL_12:

  return MEMORY[0x1EEE66BB8](v5, v6);
}

@end