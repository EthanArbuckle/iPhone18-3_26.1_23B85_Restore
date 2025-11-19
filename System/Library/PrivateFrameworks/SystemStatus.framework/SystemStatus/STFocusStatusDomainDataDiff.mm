@interface STFocusStatusDomainDataDiff
+ (id)diffFromData:(id)a3 toData:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOrthogonalToDiff:(id)a3;
- (STFocusStatusDomainDataDiff)init;
- (STFocusStatusDomainDataDiff)initWithCoder:(id)a3;
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

@implementation STFocusStatusDomainDataDiff

+ (id)diffFromData:(id)a3 toData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  v8 = [v6 modeIdentifier];
  v9 = [v5 modeIdentifier];
  if (([v9 isEqualToString:v8] & 1) == 0)
  {
    if (v8)
    {
      [v7 setObject:v8 forSetting:0];
    }

    else if (v9)
    {
      [v7 setFlag:0 forSetting:0];
    }
  }

  v10 = [v6 modeName];
  v11 = [v5 modeName];
  if (([v11 isEqualToString:v10] & 1) == 0)
  {
    if (v10)
    {
      [v7 setObject:v10 forSetting:1];
    }

    else if (v11)
    {
      [v7 setFlag:0 forSetting:1];
    }
  }

  v12 = [v6 modeSymbol];
  v13 = [v5 modeSymbol];
  if (([v13 isEqualToString:v12] & 1) == 0)
  {
    if (v12)
    {
      [v7 setObject:v12 forSetting:2];
    }

    else if (v13)
    {
      [v7 setFlag:0 forSetting:2];
    }
  }

  v14 = [[STFocusStatusDomainDataDiff alloc] initWithChanges:v7];

  return v14;
}

- (void)initWithChanges:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = STFocusStatusDomainDataDiff;
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

- (STFocusStatusDomainDataDiff)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E768]);
  v4 = [(STFocusStatusDomainDataDiff *)self initWithChanges:v3];

  return v4;
}

- (id)dataByApplyingToData:(id)a3
{
  v4 = [a3 mutableCopy];
  [(STFocusStatusDomainDataDiff *)self applyToMutableData:v4];

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
  v11[2] = __50__STFocusStatusDomainDataDiff_applyToMutableData___block_invoke;
  v11[3] = &unk_1E85DDF78;
  v6 = v4;
  v12 = v6;
  v7 = changes;
  [(BSSettings *)v7 enumerateFlagsWithBlock:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__STFocusStatusDomainDataDiff_applyToMutableData___block_invoke_2;
  v9[3] = &unk_1E85DDCB0;
  v10 = v6;
  v8 = v6;
  [(BSSettings *)v7 enumerateObjectsWithBlock:v9];
}

uint64_t __50__STFocusStatusDomainDataDiff_applyToMutableData___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  switch(a2)
  {
    case 2:
      result = BSSettingFlagIsExplicitNo();
      if (result)
      {
        v5 = *(v2 + 32);

        return [v5 setModeSymbol:0];
      }

      break;
    case 1:
      result = BSSettingFlagIsExplicitNo();
      if (result)
      {
        v4 = *(v2 + 32);

        return [v4 setModeName:0];
      }

      break;
    case 0:
      result = BSSettingFlagIsExplicitNo();
      if (result)
      {
        v3 = *(v2 + 32);

        return [v3 setModeIdentifier:0];
      }

      break;
  }

  return result;
}

uint64_t __50__STFocusStatusDomainDataDiff_applyToMutableData___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 2)
  {
    v8 = v5;
    v5 = [*(a1 + 32) setModeSymbol:v5];
  }

  else if (a2 == 1)
  {
    v8 = v5;
    v5 = [*(a1 + 32) setModeName:v5];
  }

  else
  {
    if (a2)
    {
      goto LABEL_8;
    }

    v8 = v5;
    v5 = [*(a1 + 32) setModeIdentifier:v5];
  }

  v6 = v8;
LABEL_8:

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (BOOL)isEmpty
{
  if (self)
  {
    self = self->_changes;
  }

  return [(STFocusStatusDomainDataDiff *)self isEmpty];
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
    [(STTelephonyStatusDomainSIMInfoDiff *)STFocusStatusDomainDataDiff _resolveCombinedChanges:v7 forObjectEntry:0 baseChanges:v6];
    [(STTelephonyStatusDomainSIMInfoDiff *)STFocusStatusDomainDataDiff _resolveCombinedChanges:v7 forObjectEntry:1 baseChanges:v6];
    [(STTelephonyStatusDomainSIMInfoDiff *)STFocusStatusDomainDataDiff _resolveCombinedChanges:v7 forObjectEntry:2 baseChanges:v6];

    v10 = [[STFocusStatusDomainDataDiff alloc] initWithChanges:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isOrthogonalToDiff:(id)a3
{
  v4 = a3;
  if ([(STFocusStatusDomainDataDiff *)self isEmpty])
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
  v10[2] = __39__STFocusStatusDomainDataDiff_isEqual___block_invoke;
  v10[3] = &unk_1E85DDCD8;
  v11 = v4;
  v6 = v4;
  v7 = [v5 appendObject:self counterpart:v10];
  v8 = [v5 isEqual];

  return v8;
}

id __39__STFocusStatusDomainDataDiff_isEqual___block_invoke(uint64_t a1)
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

- (STFocusStatusDomainDataDiff)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changes"];

  v6 = [(STFocusStatusDomainDataDiff *)self initWithChanges:v5];
  return v6;
}

- (id)succinctDescription
{
  v2 = [(STFocusStatusDomainDataDiff *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STFocusStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STFocusStatusDomainDataDiff *)&self->super.isa _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
      v10[2] = __67__STFocusStatusDomainDataDiff__appendChanges_toDescriptionBuilder___block_invoke;
      v10[3] = &unk_1E85DDD00;
      v11 = v7;
      v12 = v3;
      [v12 appendBodySectionWithName:0 multilinePrefix:v8 block:v10];
    }
  }

  return v3;
}

void __67__STFocusStatusDomainDataDiff__appendChanges_toDescriptionBuilder___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __67__STFocusStatusDomainDataDiff__appendChanges_toDescriptionBuilder___block_invoke_2;
  v2[3] = &unk_1E85DDCB0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateObjectsWithBlock:v2];
}

uint64_t __67__STFocusStatusDomainDataDiff__appendChanges_toDescriptionBuilder___block_invoke_2(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 <= 2)
  {
    v8 = v5;
    v5 = [*(a1 + 32) appendString:v5 withName:off_1E85DE948[a2]];
    v6 = v8;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

@end