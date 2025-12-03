@interface STWifiStatusDomainDataDiff
+ (id)diffFromData:(id)data toData:(id)toData;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOrthogonalToDiff:(id)diff;
- (STWifiStatusDomainDataDiff)init;
- (STWifiStatusDomainDataDiff)initWithCoder:(id)coder;
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

@implementation STWifiStatusDomainDataDiff

+ (id)diffFromData:(id)data toData:(id)toData
{
  dataCopy = data;
  toDataCopy = toData;
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  isWifiActive = [toDataCopy isWifiActive];
  if (isWifiActive != [dataCopy isWifiActive])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:0];
  }

  signalStrengthBars = [toDataCopy signalStrengthBars];
  if ([dataCopy signalStrengthBars] != signalStrengthBars)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:signalStrengthBars];
    [v7 setObject:v10 forSetting:1];
  }

  isAssociatedToIOSHotspot = [toDataCopy isAssociatedToIOSHotspot];
  if (isAssociatedToIOSHotspot != [dataCopy isAssociatedToIOSHotspot])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:2];
  }

  v12 = [[STWifiStatusDomainDataDiff alloc] initWithChanges:v7];

  return v12;
}

- (void)initWithChanges:(void *)changes
{
  v3 = a2;
  if (changes)
  {
    v7.receiver = changes;
    v7.super_class = STWifiStatusDomainDataDiff;
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

- (STWifiStatusDomainDataDiff)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E768]);
  v4 = [(STWifiStatusDomainDataDiff *)self initWithChanges:v3];

  return v4;
}

- (id)dataByApplyingToData:(id)data
{
  v4 = [data mutableCopy];
  [(STWifiStatusDomainDataDiff *)self applyToMutableData:v4];

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
  v11[2] = __49__STWifiStatusDomainDataDiff_applyToMutableData___block_invoke;
  v11[3] = &unk_1E85DDF78;
  v6 = dataCopy;
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

    v6 = [(BSSettings *)changes mutableCopy];
    v7 = v6;
    if (diffCopy)
    {
      v8 = diffCopy[1];
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

- (BOOL)isOrthogonalToDiff:(id)diff
{
  diffCopy = diff;
  if ([(STWifiStatusDomainDataDiff *)self isEmpty])
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
  v10[2] = __38__STWifiStatusDomainDataDiff_isEqual___block_invoke;
  v10[3] = &unk_1E85DDCD8;
  v11 = equalCopy;
  v6 = equalCopy;
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

- (STWifiStatusDomainDataDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changes"];

  v6 = [(STWifiStatusDomainDataDiff *)self initWithChanges:v5];
  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STWifiStatusDomainDataDiff *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STWifiStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STWifiStatusDomainDataDiff *)&self->super.isa _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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

    v7 = self[1];
    if (([v7 isEmpty] & 1) == 0)
    {
      activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __78__STWifiStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
      v10[3] = &unk_1E85DDD00;
      v11 = succinctDescriptionBuilder;
      v12 = v7;
      [v11 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v10];
    }
  }

  else
  {
    succinctDescriptionBuilder = 0;
  }

  return succinctDescriptionBuilder;
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