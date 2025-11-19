@interface STBatteryStatusDomainDataDiff
+ (id)diffFromData:(id)a3 toData:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOrthogonalToDiff:(id)a3;
- (STBatteryStatusDomainDataDiff)init;
- (STBatteryStatusDomainDataDiff)initWithCoder:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)dataByApplyingToData:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffByApplyingDiff:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableData:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)initWithChanges:(void *)a1;
@end

@implementation STBatteryStatusDomainDataDiff

+ (id)diffFromData:(id)a3 toData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  v8 = [v6 chargingState];
  if ([v5 chargingState] != v8)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
    [v7 setObject:v9 forSetting:0];
  }

  v10 = [v6 percentCharge];
  if ([v5 percentCharge] != v10)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
    [v7 setObject:v11 forSetting:1];
  }

  v12 = [v6 isBatterySaverModeActive];
  if (v12 != [v5 isBatterySaverModeActive])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:2];
  }

  v13 = [v6 chargingDescription];
  v14 = [v5 chargingDescription];
  if (([v14 isEqualToString:v13] & 1) == 0)
  {
    if (v13)
    {
      [v7 setObject:v13 forSetting:3];
    }

    else if (v14)
    {
      [v7 setFlag:0 forSetting:3];
    }
  }

  v15 = [v6 chargingDescriptionType];
  if ([v5 chargingDescriptionType] != v15)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    [v7 setObject:v16 forSetting:4];
  }

  v17 = [[STBatteryStatusDomainDataDiff alloc] initWithChanges:v7];

  return v17;
}

- (void)initWithChanges:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = STBatteryStatusDomainDataDiff;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

- (STBatteryStatusDomainDataDiff)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E768]);
  v4 = [(STBatteryStatusDomainDataDiff *)self initWithChanges:v3];

  return v4;
}

- (id)dataByApplyingToData:(id)a3
{
  v4 = [a3 mutableCopy];
  [(STBatteryStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)a3
{
  v4 = a3;
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
  v6 = v4;
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

- (id)diffByApplyingDiff:(id)a3
{
  v4 = a3;
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
    if (v4)
    {
      v8 = v4[1];
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

- (BOOL)isOrthogonalToDiff:(id)a3
{
  v4 = a3;
  if ([(STBatteryStatusDomainDataDiff *)self isEmpty])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEmpty];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  if (self)
  {
    self = self->_changes;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__STBatteryStatusDomainDataDiff_isEqual___block_invoke;
  v10[3] = &unk_1E85DDCD8;
  v11 = v4;
  v6 = v4;
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = v3;
  if (self)
  {
    changes = self->_changes;
  }

  else
  {
    changes = 0;
  }

  v6 = [v3 appendObject:changes];
  v7 = [v4 hash];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    changes = self->_changes;
  }

  else
  {
    changes = 0;
  }

  [a3 encodeObject:changes forKey:@"changes"];
}

- (STBatteryStatusDomainDataDiff)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changes"];

  v6 = [(STBatteryStatusDomainDataDiff *)self initWithChanges:v5];
  return v6;
}

- (id)succinctDescription
{
  v2 = [(STBatteryStatusDomainDataDiff *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STBatteryStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STBatteryStatusDomainDataDiff *)&self->super.isa _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:
{
  v3 = a1;
  if (a1)
  {
    v5 = a2;
    v6 = [v3 succinctDescriptionBuilder];
    [v6 setUseDebugDescription:a3];
    [v6 setActiveMultilinePrefix:v5];

    v7 = v3[1];
    v3 = v6;
    if (([v7 isEmpty] & 1) == 0)
    {
      v8 = [v3 activeMultilinePrefix];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __69__STBatteryStatusDomainDataDiff__appendChanges_toDescriptionBuilder___block_invoke;
      v10[3] = &unk_1E85DDD00;
      v11 = v3;
      v12 = v7;
      [v11 appendBodySectionWithName:0 multilinePrefix:v8 block:v10];
    }
  }

  return v3;
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