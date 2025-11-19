@interface STWifiStatusDomainDataDiff
+ (id)diffFromData:(id)a3 toData:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOrthogonalToDiff:(id)a3;
- (STWifiStatusDomainDataDiff)init;
- (STWifiStatusDomainDataDiff)initWithCoder:(id)a3;
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

@implementation STWifiStatusDomainDataDiff

+ (id)diffFromData:(id)a3 toData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  v8 = [v6 isWifiActive];
  if (v8 != [v5 isWifiActive])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:0];
  }

  v9 = [v6 signalStrengthBars];
  if ([v5 signalStrengthBars] != v9)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
    [v7 setObject:v10 forSetting:1];
  }

  v11 = [v6 isAssociatedToIOSHotspot];
  if (v11 != [v5 isAssociatedToIOSHotspot])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:2];
  }

  v12 = [[STWifiStatusDomainDataDiff alloc] initWithChanges:v7];

  return v12;
}

- (void)initWithChanges:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = STWifiStatusDomainDataDiff;
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

- (STWifiStatusDomainDataDiff)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E768]);
  v4 = [(STWifiStatusDomainDataDiff *)self initWithChanges:v3];

  return v4;
}

- (id)dataByApplyingToData:(id)a3
{
  v4 = [a3 mutableCopy];
  [(STWifiStatusDomainDataDiff *)self applyToMutableData:v4];

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
  v11[2] = __49__STWifiStatusDomainDataDiff_applyToMutableData___block_invoke;
  v11[3] = &unk_1E85DDF78;
  v6 = v4;
  v12 = v6;
  v7 = changes;
  [(BSSettings *)v7 enumerateFlagsWithBlock:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__STWifiStatusDomainDataDiff_applyToMutableData___block_invoke_2;
  v9[3] = &unk_1E85DDCB0;
  v10 = v6;
  v8 = v6;
  [(BSSettings *)v7 enumerateObjectsWithBlock:v9];
}

uint64_t __49__STWifiStatusDomainDataDiff_applyToMutableData___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 == 2)
  {
    v4 = *(result + 32);
    IsYes = BSSettingFlagIsYes();

    return [v4 setAssociatedToIOSHotspot:IsYes];
  }

  else if (!a2)
  {
    v2 = *(result + 32);
    v3 = BSSettingFlagIsYes();

    return [v2 setWifiActive:v3];
  }

  return result;
}

uint64_t __49__STWifiStatusDomainDataDiff_applyToMutableData___block_invoke_2(uint64_t result, uint64_t a2, void *a3)
{
  if (a2 == 1)
  {
    v4 = *(result + 32);
    v5 = [a3 unsignedIntegerValue];

    return [v4 setSignalStrengthBars:v5];
  }

  return result;
}

- (BOOL)isEmpty
{
  if (self)
  {
    self = self->_changes;
  }

  return [(STWifiStatusDomainDataDiff *)self isEmpty];
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

    v6 = [(BSSettings *)changes mutableCopy];
    v7 = v6;
    if (v4)
    {
      v8 = v4[1];
    }

    else
    {
      v8 = 0;
    }

    [v6 applySettings:v8];
    v9 = [[STWifiStatusDomainDataDiff alloc] initWithChanges:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isOrthogonalToDiff:(id)a3
{
  v4 = a3;
  if ([(STWifiStatusDomainDataDiff *)self isEmpty])
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
  v10[2] = __38__STWifiStatusDomainDataDiff_isEqual___block_invoke;
  v10[3] = &unk_1E85DDCD8;
  v11 = v4;
  v6 = v4;
  v7 = [v5 appendObject:self counterpart:v10];
  v8 = [v5 isEqual];

  return v8;
}

id __38__STWifiStatusDomainDataDiff_isEqual___block_invoke(uint64_t a1)
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

- (STWifiStatusDomainDataDiff)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changes"];

  v6 = [(STWifiStatusDomainDataDiff *)self initWithChanges:v5];
  return v6;
}

- (id)succinctDescription
{
  v2 = [(STWifiStatusDomainDataDiff *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STWifiStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STWifiStatusDomainDataDiff *)&self->super.isa _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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

    v7 = a1[1];
    if (([v7 isEmpty] & 1) == 0)
    {
      v8 = [v6 activeMultilinePrefix];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __78__STWifiStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
      v10[3] = &unk_1E85DDD00;
      v11 = v6;
      v12 = v7;
      [v11 appendBodySectionWithName:0 multilinePrefix:v8 block:v10];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __78__STWifiStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendFlag:objc_msgSend(*(a1 + 40) withName:"flagForSetting:" skipIfNotSet:{0), @"wifiActive", 1}];
  v3 = [*(a1 + 32) appendFlag:objc_msgSend(*(a1 + 40) withName:"flagForSetting:" skipIfNotSet:{2), @"associatedToIOSHotspot", 1}];
  v4 = [*(a1 + 40) objectForSetting:1];
  if (v4)
  {
    v6 = v4;
    v5 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(v4 withName:{"unsignedIntegerValue"), @"signalStrengthBars"}];
    v4 = v6;
  }
}

@end