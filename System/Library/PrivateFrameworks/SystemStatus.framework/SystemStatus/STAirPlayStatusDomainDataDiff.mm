@interface STAirPlayStatusDomainDataDiff
+ (id)diffFromData:(id)data toData:(id)toData;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOrthogonalToDiff:(id)diff;
- (STAirPlayStatusDomainDataDiff)init;
- (STAirPlayStatusDomainDataDiff)initWithCoder:(id)coder;
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

@implementation STAirPlayStatusDomainDataDiff

+ (id)diffFromData:(id)data toData:(id)toData
{
  dataCopy = data;
  toDataCopy = toData;
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  airPlayState = [toDataCopy airPlayState];
  if ([dataCopy airPlayState] != airPlayState)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:airPlayState];
    [v7 setObject:v9 forSetting:0];
  }

  bundleIdentifier = [toDataCopy bundleIdentifier];
  bundleIdentifier2 = [dataCopy bundleIdentifier];
  if (([bundleIdentifier2 isEqualToString:bundleIdentifier] & 1) == 0)
  {
    if (bundleIdentifier)
    {
      [v7 setObject:bundleIdentifier forSetting:1];
    }

    else if (bundleIdentifier2)
    {
      [v7 setFlag:0 forSetting:1];
    }
  }

  v12 = [[STAirPlayStatusDomainDataDiff alloc] initWithChanges:v7];

  return v12;
}

- (void)initWithChanges:(void *)changes
{
  v3 = a2;
  if (changes)
  {
    v7.receiver = changes;
    v7.super_class = STAirPlayStatusDomainDataDiff;
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

- (STAirPlayStatusDomainDataDiff)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E768]);
  v4 = [(STAirPlayStatusDomainDataDiff *)self initWithChanges:v3];

  return v4;
}

- (id)dataByApplyingToData:(id)data
{
  v4 = [data mutableCopy];
  [(STAirPlayStatusDomainDataDiff *)self applyToMutableData:v4];

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
  v11[2] = __52__STAirPlayStatusDomainDataDiff_applyToMutableData___block_invoke;
  v11[3] = &unk_1E85DDF78;
  v6 = dataCopy;
  v12 = v6;
  v7 = changes;
  [(BSSettings *)v7 enumerateFlagsWithBlock:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__STAirPlayStatusDomainDataDiff_applyToMutableData___block_invoke_2;
  v9[3] = &unk_1E85DDCB0;
  v10 = v6;
  v8 = v6;
  [(BSSettings *)v7 enumerateObjectsWithBlock:v9];
}

uint64_t __52__STAirPlayStatusDomainDataDiff_applyToMutableData___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = result;
    result = BSSettingFlagIsExplicitNo();
    if (result)
    {
      v3 = *(v2 + 32);

      return [v3 setBundleIdentifier:0];
    }
  }

  return result;
}

uint64_t __52__STAirPlayStatusDomainDataDiff_applyToMutableData___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 1)
  {
    v8 = v5;
    v5 = [*(a1 + 32) setBundleIdentifier:v5];
  }

  else
  {
    if (a2)
    {
      goto LABEL_6;
    }

    v8 = v5;
    v5 = [*(a1 + 32) setAirPlayState:{objc_msgSend(v5, "unsignedIntegerValue")}];
  }

  v6 = v8;
LABEL_6:

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (BOOL)isEmpty
{
  if (self)
  {
    self = self->_changes;
  }

  return [(STAirPlayStatusDomainDataDiff *)self isEmpty];
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
    [(STTelephonyStatusDomainSIMInfoDiff *)STAirPlayStatusDomainDataDiff _resolveCombinedChanges:v7 forObjectEntry:0 baseChanges:v6];
    [(STTelephonyStatusDomainSIMInfoDiff *)STAirPlayStatusDomainDataDiff _resolveCombinedChanges:v7 forObjectEntry:1 baseChanges:v6];

    v10 = [[STAirPlayStatusDomainDataDiff alloc] initWithChanges:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isOrthogonalToDiff:(id)diff
{
  diffCopy = diff;
  if ([(STAirPlayStatusDomainDataDiff *)self isEmpty])
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
  v10[2] = __41__STAirPlayStatusDomainDataDiff_isEqual___block_invoke;
  v10[3] = &unk_1E85DDCD8;
  v11 = equalCopy;
  v6 = equalCopy;
  v7 = [v5 appendObject:self counterpart:v10];
  v8 = [v5 isEqual];

  return v8;
}

id __41__STAirPlayStatusDomainDataDiff_isEqual___block_invoke(uint64_t a1)
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

- (STAirPlayStatusDomainDataDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changes"];

  v6 = [(STAirPlayStatusDomainDataDiff *)self initWithChanges:v5];
  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STAirPlayStatusDomainDataDiff *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STAirPlayStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STAirPlayStatusDomainDataDiff *)&self->super.isa _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
      v10[2] = __69__STAirPlayStatusDomainDataDiff__appendChanges_toDescriptionBuilder___block_invoke;
      v10[3] = &unk_1E85DDD00;
      v11 = v7;
      v12 = selfCopy;
      [v12 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v10];
    }
  }

  return selfCopy;
}

void __69__STAirPlayStatusDomainDataDiff__appendChanges_toDescriptionBuilder___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __69__STAirPlayStatusDomainDataDiff__appendChanges_toDescriptionBuilder___block_invoke_2;
  v2[3] = &unk_1E85DDCB0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateObjectsWithBlock:v2];
}

uint64_t __69__STAirPlayStatusDomainDataDiff__appendChanges_toDescriptionBuilder___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 1)
  {
    v10 = v5;
    v5 = [*(a1 + 32) appendString:v5 withName:@"bundleIdentifier"];
  }

  else
  {
    if (a2)
    {
      goto LABEL_6;
    }

    v7 = *(a1 + 32);
    v10 = v5;
    v8 = STAirPlayStatusDomainAirPlayStateDescription([v5 unsignedIntegerValue]);
    [v7 appendString:v8 withName:@"airPlayState"];
  }

  v6 = v10;
LABEL_6:

  return MEMORY[0x1EEE66BB8](v5, v6);
}

@end