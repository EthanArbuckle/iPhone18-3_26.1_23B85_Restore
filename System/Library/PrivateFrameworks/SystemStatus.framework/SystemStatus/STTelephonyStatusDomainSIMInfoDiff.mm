@interface STTelephonyStatusDomainSIMInfoDiff
+ (id)diffFromInfo:(id)a3 toInfo:(id)a4;
+ (void)_resolveCombinedChanges:(uint64_t)a3 forObjectEntry:(void *)a4 baseChanges:;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOrthogonalToDiff:(id)a3;
- (STTelephonyStatusDomainSIMInfoDiff)init;
- (STTelephonyStatusDomainSIMInfoDiff)initWithCoder:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffByApplyingDiff:(id)a3;
- (id)infoByApplyingToInfo:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableInfo:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)initWithChanges:(void *)a1;
@end

@implementation STTelephonyStatusDomainSIMInfoDiff

+ (id)diffFromInfo:(id)a3 toInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  v8 = [v6 isSIMPresent];
  if (v8 != [v5 isSIMPresent])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:0];
  }

  v9 = [v6 isBootstrap];
  if (v9 != [v5 isBootstrap])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:1];
  }

  v10 = [v6 label];
  v11 = [v5 label];
  if (([v11 isEqualToString:v10] & 1) == 0)
  {
    if (v10)
    {
      [v7 setObject:v10 forSetting:2];
    }

    else if (v11)
    {
      [v7 setFlag:0 forSetting:2];
    }
  }

  v12 = [v6 shortLabel];
  v13 = [v5 shortLabel];
  if (([v13 isEqualToString:v12] & 1) == 0)
  {
    if (v12)
    {
      [v7 setObject:v12 forSetting:3];
    }

    else if (v13)
    {
      [v7 setFlag:0 forSetting:3];
    }
  }

  v37 = v11;
  v14 = [v6 signalStrengthBars];
  if ([v5 signalStrengthBars] != v14)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
    [v7 setObject:v15 forSetting:4];
  }

  v16 = [v6 maxSignalStrengthBars];
  if ([v5 maxSignalStrengthBars] != v16)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
    [v7 setObject:v17 forSetting:5];
  }

  v18 = [v6 serviceState];
  if ([v5 serviceState] != v18)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18];
    [v7 setObject:v19 forSetting:6];
  }

  v20 = [v6 cellularServiceState];
  if ([v5 cellularServiceState] != v20)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
    [v7 setObject:v21 forSetting:7];
  }

  v22 = [v6 serviceDescription];
  v23 = [v5 serviceDescription];
  if (([v23 isEqualToString:v22] & 1) == 0)
  {
    if (v22)
    {
      [v7 setObject:v22 forSetting:8];
    }

    else if (v23)
    {
      [v7 setFlag:0 forSetting:8];
    }
  }

  v24 = [v6 secondaryServiceDescription];
  v25 = [v5 secondaryServiceDescription];
  if (([v25 isEqualToString:v24] & 1) == 0)
  {
    if (v24)
    {
      [v7 setObject:v24 forSetting:9];
    }

    else if (v25)
    {
      [v7 setFlag:0 forSetting:9];
    }
  }

  v35 = v10;
  v26 = v13;
  v27 = [v6 dataNetworkType];
  if ([v5 dataNetworkType] != v27)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
    [v7 setObject:v28 forSetting:10];
  }

  v29 = [v6 isProvidingDataConnection];
  if (v29 != [v5 isProvidingDataConnection])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:11];
  }

  v30 = [v6 isPreferredForDataConnections];
  if (v30 != [v5 isPreferredForDataConnections])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:12];
  }

  v31 = [v6 isRegisteredWithoutCellular];
  if (v31 != [v5 isRegisteredWithoutCellular])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:13];
  }

  v32 = [v6 isCallForwardingEnabled];
  if (v32 != [v5 isCallForwardingEnabled])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:14];
  }

  v33 = [[STTelephonyStatusDomainSIMInfoDiff alloc] initWithChanges:v7];

  return v33;
}

- (void)initWithChanges:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = STTelephonyStatusDomainSIMInfoDiff;
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

- (STTelephonyStatusDomainSIMInfoDiff)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E768]);
  v4 = [(STTelephonyStatusDomainSIMInfoDiff *)self initWithChanges:v3];

  return v4;
}

- (id)infoByApplyingToInfo:(id)a3
{
  v4 = [a3 mutableCopy];
  [(STTelephonyStatusDomainSIMInfoDiff *)self applyToMutableInfo:v4];

  return v4;
}

- (void)applyToMutableInfo:(id)a3
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
  v11[2] = __57__STTelephonyStatusDomainSIMInfoDiff_applyToMutableInfo___block_invoke;
  v11[3] = &unk_1E85DDF78;
  v6 = v4;
  v12 = v6;
  v7 = changes;
  [(BSSettings *)v7 enumerateFlagsWithBlock:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__STTelephonyStatusDomainSIMInfoDiff_applyToMutableInfo___block_invoke_2;
  v9[3] = &unk_1E85DDCB0;
  v10 = v6;
  v8 = v6;
  [(BSSettings *)v7 enumerateObjectsWithBlock:v9];
}

uint64_t __57__STTelephonyStatusDomainSIMInfoDiff_applyToMutableInfo___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 > 8)
  {
    if (a2 <= 11)
    {
      if (a2 == 9)
      {
        result = BSSettingFlagIsExplicitNo();
        if (result)
        {
          v12 = *(v2 + 32);

          return [v12 setSecondaryServiceDescription:0];
        }
      }

      else if (a2 == 11)
      {
        v8 = *(result + 32);
        IsYes = BSSettingFlagIsYes();

        return [v8 setProvidingDataConnection:IsYes];
      }
    }

    else
    {
      switch(a2)
      {
        case 12:
          v14 = *(result + 32);
          v15 = BSSettingFlagIsYes();

          return [v14 setPreferredForDataConnections:v15];
        case 13:
          v17 = *(result + 32);
          v18 = BSSettingFlagIsYes();

          return [v17 setRegisteredWithoutCellular:v18];
        case 14:
          v4 = *(result + 32);
          v5 = BSSettingFlagIsYes();

          return [v4 setCallForwardingEnabled:v5];
      }
    }
  }

  else if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v6 = *(result + 32);
        v7 = BSSettingFlagIsYes();

        return [v6 setBootstrap:v7];
      }
    }

    else
    {
      v10 = *(result + 32);
      v11 = BSSettingFlagIsYes();

      return [v10 setSIMPresent:v11];
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        result = BSSettingFlagIsExplicitNo();
        if (result)
        {
          v13 = *(v2 + 32);

          return [v13 setLabel:0];
        }

        break;
      case 3:
        result = BSSettingFlagIsExplicitNo();
        if (result)
        {
          v16 = *(v2 + 32);

          return [v16 setShortLabel:0];
        }

        break;
      case 8:
        result = BSSettingFlagIsExplicitNo();
        if (result)
        {
          v3 = *(v2 + 32);

          return [v3 setServiceDescription:0];
        }

        break;
    }
  }

  return result;
}

uint64_t __57__STTelephonyStatusDomainSIMInfoDiff_applyToMutableInfo___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v8 = v5;
  if (a2 <= 5)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        v5 = [*(a1 + 32) setSignalStrengthBars:{objc_msgSend(v5, "unsignedIntegerValue")}];
      }

      else
      {
        v5 = [*(a1 + 32) setMaxSignalStrengthBars:{objc_msgSend(v5, "unsignedIntegerValue")}];
      }
    }

    else if (a2 == 2)
    {
      v5 = [*(a1 + 32) setLabel:v5];
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_21;
      }

      v5 = [*(a1 + 32) setShortLabel:v5];
    }
  }

  else if (a2 <= 7)
  {
    if (a2 == 6)
    {
      v5 = [*(a1 + 32) setServiceState:{objc_msgSend(v5, "unsignedIntegerValue")}];
    }

    else
    {
      v5 = [*(a1 + 32) setCellularServiceState:{objc_msgSend(v5, "unsignedIntegerValue")}];
    }
  }

  else
  {
    switch(a2)
    {
      case 8:
        v5 = [*(a1 + 32) setServiceDescription:v5];
        break;
      case 9:
        v5 = [*(a1 + 32) setSecondaryServiceDescription:v5];
        break;
      case 10:
        v5 = [*(a1 + 32) setDataNetworkType:{objc_msgSend(v5, "unsignedIntegerValue")}];
        break;
      default:
        goto LABEL_21;
    }
  }

  v6 = v8;
LABEL_21:

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (BOOL)isEmpty
{
  if (self)
  {
    self = self->_changes;
  }

  return [(STTelephonyStatusDomainSIMInfoDiff *)self isEmpty];
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
    [STTelephonyStatusDomainSIMInfoDiff _resolveCombinedChanges:v7 forObjectEntry:2 baseChanges:v6];
    [STTelephonyStatusDomainSIMInfoDiff _resolveCombinedChanges:v7 forObjectEntry:3 baseChanges:v6];
    [STTelephonyStatusDomainSIMInfoDiff _resolveCombinedChanges:v7 forObjectEntry:8 baseChanges:v6];
    [STTelephonyStatusDomainSIMInfoDiff _resolveCombinedChanges:v7 forObjectEntry:9 baseChanges:v6];

    v10 = [[STTelephonyStatusDomainSIMInfoDiff alloc] initWithChanges:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)_resolveCombinedChanges:(uint64_t)a3 forObjectEntry:(void *)a4 baseChanges:
{
  v8 = a2;
  v6 = a4;
  objc_opt_self();
  if (![v8 flagForSetting:a3])
  {
    v7 = [v8 objectForSetting:a3];

    if (v7)
    {
      if ([v6 flagForSetting:a3])
      {
        [v8 setObject:0 forSetting:a3];
      }

      else
      {
        [v8 setFlag:0x7FFFFFFFFFFFFFFFLL forSetting:a3];
      }
    }
  }
}

- (BOOL)isOrthogonalToDiff:(id)a3
{
  v4 = a3;
  if ([(STTelephonyStatusDomainSIMInfoDiff *)self isEmpty])
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
  v10[2] = __46__STTelephonyStatusDomainSIMInfoDiff_isEqual___block_invoke;
  v10[3] = &unk_1E85DDCD8;
  v11 = v4;
  v6 = v4;
  v7 = [v5 appendObject:self counterpart:v10];
  v8 = [v5 isEqual];

  return v8;
}

id __46__STTelephonyStatusDomainSIMInfoDiff_isEqual___block_invoke(uint64_t a1)
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

- (STTelephonyStatusDomainSIMInfoDiff)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changes"];

  v6 = [(STTelephonyStatusDomainSIMInfoDiff *)self initWithChanges:v5];
  return v6;
}

- (id)succinctDescription
{
  v2 = [(STTelephonyStatusDomainSIMInfoDiff *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STTelephonyStatusDomainSIMInfoDiff *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STTelephonyStatusDomainSIMInfoDiff *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __86__STTelephonyStatusDomainSIMInfoDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v11[3] = &unk_1E85DDD00;
    v11[4] = a1;
    v7 = v6;
    v12 = v7;
    [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v11];

    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __86__STTelephonyStatusDomainSIMInfoDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__STTelephonyStatusDomainSIMInfoDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke_2;
  v7[3] = &unk_1E85DDF78;
  v8 = *(a1 + 40);
  v4 = v3;
  [v4 enumerateFlagsWithBlock:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__STTelephonyStatusDomainSIMInfoDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke_3;
  v5[3] = &unk_1E85DDCB0;
  v6 = *(a1 + 40);
  [v4 enumerateObjectsWithBlock:v5];
}

id *__86__STTelephonyStatusDomainSIMInfoDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke_2(id *result, unint64_t a2, uint64_t a3)
{
  if (a2 <= 0xE && ((0x7803u >> a2) & 1) != 0)
  {
    return [result[4] appendFlag:a3 withName:{off_1E85DDF98[a2], v3, v4}];
  }

  return result;
}

uint64_t __86__STTelephonyStatusDomainSIMInfoDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 > 6)
  {
    if (a2 > 8)
    {
      if (a2 == 9)
      {
        v10 = *(a1 + 32);
        v11 = @"secondaryServiceDescription";
        goto LABEL_20;
      }

      if (a2 != 10)
      {
        goto LABEL_22;
      }

      v12 = *(a1 + 32);
      v16 = v5;
      v13 = STDescriptionForDataNetworkType([v5 unsignedIntegerValue]);
      v14 = @"dataNetworkType";
    }

    else
    {
      if (a2 != 7)
      {
        v10 = *(a1 + 32);
        v11 = @"serviceDescription";
LABEL_20:
        v16 = v6;
        v5 = [v10 appendString:v6 withName:v11];
        goto LABEL_21;
      }

      v12 = *(a1 + 32);
      v16 = v5;
      v13 = STDescriptionForServiceState([v5 unsignedIntegerValue]);
      v14 = @"cellServiceState";
    }

LABEL_16:
    [v12 appendString:v13 withName:v14];

    goto LABEL_21;
  }

  if (a2 > 4)
  {
    if (a2 == 5)
    {
      v7 = *(a1 + 32);
      v16 = v5;
      v8 = [v5 unsignedIntegerValue];
      v9 = @"maxignalStrengthBars";
LABEL_18:
      v5 = [v7 appendUnsignedInteger:v8 withName:v9];
      goto LABEL_21;
    }

    v12 = *(a1 + 32);
    v16 = v5;
    v13 = STDescriptionForServiceState([v5 unsignedIntegerValue]);
    v14 = @"serviceState";
    goto LABEL_16;
  }

  if (a2 != 2)
  {
    if (a2 != 4)
    {
      goto LABEL_22;
    }

    v7 = *(a1 + 32);
    v16 = v5;
    v8 = [v5 unsignedIntegerValue];
    v9 = @"signalStrengthBars";
    goto LABEL_18;
  }

  v16 = v5;
  v5 = [*(a1 + 32) appendObject:v5 withName:@"label"];
LABEL_21:
  v6 = v16;
LABEL_22:

  return MEMORY[0x1EEE66BB8](v5, v6);
}

@end