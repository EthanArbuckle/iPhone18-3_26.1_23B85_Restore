@interface STTelephonyStatusDomainSIMInfoDiff
+ (id)diffFromInfo:(id)info toInfo:(id)toInfo;
+ (void)_resolveCombinedChanges:(uint64_t)changes forObjectEntry:(void *)entry baseChanges:;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOrthogonalToDiff:(id)diff;
- (STTelephonyStatusDomainSIMInfoDiff)init;
- (STTelephonyStatusDomainSIMInfoDiff)initWithCoder:(id)coder;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffByApplyingDiff:(id)diff;
- (id)infoByApplyingToInfo:(id)info;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
- (void)initWithChanges:(void *)changes;
@end

@implementation STTelephonyStatusDomainSIMInfoDiff

+ (id)diffFromInfo:(id)info toInfo:(id)toInfo
{
  infoCopy = info;
  toInfoCopy = toInfo;
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  isSIMPresent = [toInfoCopy isSIMPresent];
  if (isSIMPresent != [infoCopy isSIMPresent])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:0];
  }

  isBootstrap = [toInfoCopy isBootstrap];
  if (isBootstrap != [infoCopy isBootstrap])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:1];
  }

  label = [toInfoCopy label];
  label2 = [infoCopy label];
  if (([label2 isEqualToString:label] & 1) == 0)
  {
    if (label)
    {
      [v7 setObject:label forSetting:2];
    }

    else if (label2)
    {
      [v7 setFlag:0 forSetting:2];
    }
  }

  shortLabel = [toInfoCopy shortLabel];
  shortLabel2 = [infoCopy shortLabel];
  if (([shortLabel2 isEqualToString:shortLabel] & 1) == 0)
  {
    if (shortLabel)
    {
      [v7 setObject:shortLabel forSetting:3];
    }

    else if (shortLabel2)
    {
      [v7 setFlag:0 forSetting:3];
    }
  }

  v37 = label2;
  signalStrengthBars = [toInfoCopy signalStrengthBars];
  if ([infoCopy signalStrengthBars] != signalStrengthBars)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:signalStrengthBars];
    [v7 setObject:v15 forSetting:4];
  }

  maxSignalStrengthBars = [toInfoCopy maxSignalStrengthBars];
  if ([infoCopy maxSignalStrengthBars] != maxSignalStrengthBars)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:maxSignalStrengthBars];
    [v7 setObject:v17 forSetting:5];
  }

  serviceState = [toInfoCopy serviceState];
  if ([infoCopy serviceState] != serviceState)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:serviceState];
    [v7 setObject:v19 forSetting:6];
  }

  cellularServiceState = [toInfoCopy cellularServiceState];
  if ([infoCopy cellularServiceState] != cellularServiceState)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:cellularServiceState];
    [v7 setObject:v21 forSetting:7];
  }

  serviceDescription = [toInfoCopy serviceDescription];
  serviceDescription2 = [infoCopy serviceDescription];
  if (([serviceDescription2 isEqualToString:serviceDescription] & 1) == 0)
  {
    if (serviceDescription)
    {
      [v7 setObject:serviceDescription forSetting:8];
    }

    else if (serviceDescription2)
    {
      [v7 setFlag:0 forSetting:8];
    }
  }

  secondaryServiceDescription = [toInfoCopy secondaryServiceDescription];
  secondaryServiceDescription2 = [infoCopy secondaryServiceDescription];
  if (([secondaryServiceDescription2 isEqualToString:secondaryServiceDescription] & 1) == 0)
  {
    if (secondaryServiceDescription)
    {
      [v7 setObject:secondaryServiceDescription forSetting:9];
    }

    else if (secondaryServiceDescription2)
    {
      [v7 setFlag:0 forSetting:9];
    }
  }

  v35 = label;
  v26 = shortLabel2;
  dataNetworkType = [toInfoCopy dataNetworkType];
  if ([infoCopy dataNetworkType] != dataNetworkType)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:dataNetworkType];
    [v7 setObject:v28 forSetting:10];
  }

  isProvidingDataConnection = [toInfoCopy isProvidingDataConnection];
  if (isProvidingDataConnection != [infoCopy isProvidingDataConnection])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:11];
  }

  isPreferredForDataConnections = [toInfoCopy isPreferredForDataConnections];
  if (isPreferredForDataConnections != [infoCopy isPreferredForDataConnections])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:12];
  }

  isRegisteredWithoutCellular = [toInfoCopy isRegisteredWithoutCellular];
  if (isRegisteredWithoutCellular != [infoCopy isRegisteredWithoutCellular])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:13];
  }

  isCallForwardingEnabled = [toInfoCopy isCallForwardingEnabled];
  if (isCallForwardingEnabled != [infoCopy isCallForwardingEnabled])
  {
    [v7 setFlag:BSSettingFlagForBool() forSetting:14];
  }

  v33 = [[STTelephonyStatusDomainSIMInfoDiff alloc] initWithChanges:v7];

  return v33;
}

- (void)initWithChanges:(void *)changes
{
  v3 = a2;
  if (changes)
  {
    v7.receiver = changes;
    v7.super_class = STTelephonyStatusDomainSIMInfoDiff;
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

- (STTelephonyStatusDomainSIMInfoDiff)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E768]);
  v4 = [(STTelephonyStatusDomainSIMInfoDiff *)self initWithChanges:v3];

  return v4;
}

- (id)infoByApplyingToInfo:(id)info
{
  v4 = [info mutableCopy];
  [(STTelephonyStatusDomainSIMInfoDiff *)self applyToMutableInfo:v4];

  return v4;
}

- (void)applyToMutableInfo:(id)info
{
  infoCopy = info;
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
  v6 = infoCopy;
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

+ (void)_resolveCombinedChanges:(uint64_t)changes forObjectEntry:(void *)entry baseChanges:
{
  v8 = a2;
  entryCopy = entry;
  objc_opt_self();
  if (![v8 flagForSetting:changes])
  {
    v7 = [v8 objectForSetting:changes];

    if (v7)
    {
      if ([entryCopy flagForSetting:changes])
      {
        [v8 setObject:0 forSetting:changes];
      }

      else
      {
        [v8 setFlag:0x7FFFFFFFFFFFFFFFLL forSetting:changes];
      }
    }
  }
}

- (BOOL)isOrthogonalToDiff:(id)diff
{
  diffCopy = diff;
  if ([(STTelephonyStatusDomainSIMInfoDiff *)self isEmpty])
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
  v10[2] = __46__STTelephonyStatusDomainSIMInfoDiff_isEqual___block_invoke;
  v10[3] = &unk_1E85DDCD8;
  v11 = equalCopy;
  v6 = equalCopy;
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

- (STTelephonyStatusDomainSIMInfoDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changes"];

  v6 = [(STTelephonyStatusDomainSIMInfoDiff *)self initWithChanges:v5];
  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STTelephonyStatusDomainSIMInfoDiff *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STTelephonyStatusDomainSIMInfoDiff *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STTelephonyStatusDomainSIMInfoDiff *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __86__STTelephonyStatusDomainSIMInfoDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v11[3] = &unk_1E85DDD00;
    v11[4] = self;
    v7 = succinctDescriptionBuilder;
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