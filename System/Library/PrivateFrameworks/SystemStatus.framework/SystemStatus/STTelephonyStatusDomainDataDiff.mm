@interface STTelephonyStatusDomainDataDiff
+ (id)diffFromData:(id)data toData:(id)toData;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOrthogonalToDiff:(id)diff;
- (STTelephonyStatusDomainDataDiff)init;
- (STTelephonyStatusDomainDataDiff)initWithCoder:(id)coder;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)dataByApplyingToData:(id)data;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffByApplyingDiff:(id)diff;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableData:(id)data;
- (void)encodeWithCoder:(id)coder;
- (void)initWithSIMOneInfoDiff:(void *)diff SIMTwoInfoDiff:(void *)infoDiff changes:;
@end

@implementation STTelephonyStatusDomainDataDiff

+ (id)diffFromData:(id)data toData:(id)toData
{
  dataCopy = data;
  toDataCopy = toData;
  sIMOneInfo = [dataCopy SIMOneInfo];
  sIMOneInfo2 = [toDataCopy SIMOneInfo];
  v9 = [STTelephonyStatusDomainSIMInfoDiff diffFromInfo:sIMOneInfo toInfo:sIMOneInfo2];

  sIMTwoInfo = [dataCopy SIMTwoInfo];
  sIMTwoInfo2 = [toDataCopy SIMTwoInfo];
  v12 = [STTelephonyStatusDomainSIMInfoDiff diffFromInfo:sIMTwoInfo toInfo:sIMTwoInfo2];

  v13 = objc_alloc_init(MEMORY[0x1E698E700]);
  LODWORD(sIMTwoInfo2) = [toDataCopy isCellularRadioCapabilityEnabled];
  if (sIMTwoInfo2 != [dataCopy isCellularRadioCapabilityEnabled])
  {
    [v13 setFlag:BSSettingFlagForBool() forSetting:0];
  }

  isDualSIMEnabled = [toDataCopy isDualSIMEnabled];
  if (isDualSIMEnabled != [dataCopy isDualSIMEnabled])
  {
    [v13 setFlag:BSSettingFlagForBool() forSetting:1];
  }

  isRadioModuleDead = [toDataCopy isRadioModuleDead];
  if (isRadioModuleDead != [dataCopy isRadioModuleDead])
  {
    [v13 setFlag:BSSettingFlagForBool() forSetting:2];
  }

  isUsingStewieForSOS = [toDataCopy isUsingStewieForSOS];
  if (isUsingStewieForSOS != [dataCopy isUsingStewieForSOS])
  {
    [v13 setFlag:BSSettingFlagForBool() forSetting:3];
  }

  isInactiveSOSEnabled = [toDataCopy isInactiveSOSEnabled];
  if (isInactiveSOSEnabled != [dataCopy isInactiveSOSEnabled])
  {
    [v13 setFlag:BSSettingFlagForBool() forSetting:4];
  }

  isUsingStewieConnection = [toDataCopy isUsingStewieConnection];
  if (isUsingStewieConnection != [dataCopy isUsingStewieConnection])
  {
    [v13 setFlag:BSSettingFlagForBool() forSetting:5];
  }

  isUsingStewieConnectionOverInternet = [toDataCopy isUsingStewieConnectionOverInternet];
  if (isUsingStewieConnectionOverInternet != [dataCopy isUsingStewieConnectionOverInternet])
  {
    [v13 setFlag:BSSettingFlagForBool() forSetting:6];
  }

  v20 = [[STTelephonyStatusDomainDataDiff alloc] initWithSIMOneInfoDiff:v9 SIMTwoInfoDiff:v12 changes:v13];

  return v20;
}

- (void)initWithSIMOneInfoDiff:(void *)diff SIMTwoInfoDiff:(void *)infoDiff changes:
{
  v7 = a2;
  diffCopy = diff;
  infoDiffCopy = infoDiff;
  if (self)
  {
    v17.receiver = self;
    v17.super_class = STTelephonyStatusDomainDataDiff;
    self = objc_msgSendSuper2(&v17, sel_init);
    if (self)
    {
      v10 = [v7 copy];
      v11 = self[1];
      self[1] = v10;

      v12 = [diffCopy copy];
      v13 = self[2];
      self[2] = v12;

      v14 = [infoDiffCopy copy];
      v15 = self[3];
      self[3] = v14;
    }
  }

  return self;
}

- (STTelephonyStatusDomainDataDiff)init
{
  v3 = objc_alloc_init(STTelephonyStatusDomainSIMInfoDiff);
  v4 = objc_alloc_init(MEMORY[0x1E698E768]);
  v5 = [(STTelephonyStatusDomainDataDiff *)self initWithSIMOneInfoDiff:v3 SIMTwoInfoDiff:v3 changes:v4];

  return v5;
}

- (id)dataByApplyingToData:(id)data
{
  v4 = [data mutableCopy];
  [(STTelephonyStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)data
{
  dataCopy = data;
  if (self)
  {
    v5 = self->_SIMOneInfoDiff;
    v6 = v5;
    if (v5)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __54__STTelephonyStatusDomainDataDiff_applyToMutableData___block_invoke;
      v15[3] = &unk_1E85DEEE0;
      v16 = v5;
      [dataCopy updateSIMOneInfoWithBlock:v15];
    }

    v7 = self->_SIMTwoInfoDiff;
    v8 = v7;
    if (v7)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __54__STTelephonyStatusDomainDataDiff_applyToMutableData___block_invoke_2;
      v13[3] = &unk_1E85DEEE0;
      v14 = v7;
      [dataCopy updateSIMTwoInfoWithBlock:v13];
    }

    self = self->_changes;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__STTelephonyStatusDomainDataDiff_applyToMutableData___block_invoke_3;
  v11[3] = &unk_1E85DDF78;
  v12 = dataCopy;
  v9 = dataCopy;
  selfCopy = self;
  [(STTelephonyStatusDomainDataDiff *)selfCopy enumerateFlagsWithBlock:v11];
}

uint64_t __54__STTelephonyStatusDomainDataDiff_applyToMutableData___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v14 = *(result + 32);
        IsYes = BSSettingFlagIsYes();

        return [v14 setDualSIMEnabled:IsYes];
      }

      else if (a2 == 2)
      {
        v4 = *(result + 32);
        v5 = BSSettingFlagIsYes();

        return [v4 setRadioModuleDead:v5];
      }
    }

    else
    {
      v8 = *(result + 32);
      v9 = BSSettingFlagIsYes();

      return [v8 setCellularRadioCapabilityEnabled:v9];
    }
  }

  else if (a2 > 4)
  {
    if (a2 == 5)
    {
      v12 = *(result + 32);
      v13 = BSSettingFlagIsYes();

      return [v12 setUsingStewieConnection:v13];
    }

    else if (a2 == 6)
    {
      v6 = *(result + 32);
      v7 = BSSettingFlagIsYes();

      return [v6 setUsingStewieConnectionOverInternet:v7];
    }
  }

  else if (a2 == 3)
  {
    v10 = *(result + 32);
    v11 = BSSettingFlagIsYes();

    return [v10 setUsingStewieForSOS:v11];
  }

  else
  {
    v2 = *(result + 32);
    v3 = BSSettingFlagIsYes();

    return [v2 setInactiveSOSEnabled:v3];
  }

  return result;
}

- (BOOL)isEmpty
{
  if (self)
  {
    SIMOneInfoDiff = self->_SIMOneInfoDiff;
  }

  else
  {
    SIMOneInfoDiff = 0;
  }

  v4 = SIMOneInfoDiff;
  if ([(STTelephonyStatusDomainSIMInfoDiff *)v4 isEmpty])
  {
    if (self)
    {
      SIMTwoInfoDiff = self->_SIMTwoInfoDiff;
    }

    else
    {
      SIMTwoInfoDiff = 0;
    }

    v6 = SIMTwoInfoDiff;
    if ([(STTelephonyStatusDomainSIMInfoDiff *)v6 isEmpty])
    {
      if (self)
      {
        changes = self->_changes;
      }

      else
      {
        changes = 0;
      }

      isEmpty = [(BSSettings *)changes isEmpty];
    }

    else
    {
      isEmpty = 0;
    }
  }

  else
  {
    isEmpty = 0;
  }

  return isEmpty;
}

- (id)diffByApplyingDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = diffCopy;
    v6 = v5;
    if (self)
    {
      SIMOneInfoDiff = self->_SIMOneInfoDiff;
      if (v5)
      {
LABEL_4:
        v8 = v5[1];
        goto LABEL_5;
      }
    }

    else
    {
      SIMOneInfoDiff = 0;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v8 = 0;
LABEL_5:
    v9 = SIMOneInfoDiff;
    v10 = [(STTelephonyStatusDomainSIMInfoDiff *)v9 diffByApplyingDiff:v8];

    if (self)
    {
      SIMTwoInfoDiff = self->_SIMTwoInfoDiff;
      if (v6)
      {
LABEL_7:
        v12 = v6[2];
LABEL_8:
        v13 = SIMTwoInfoDiff;
        v14 = [(STTelephonyStatusDomainSIMInfoDiff *)v13 diffByApplyingDiff:v12];

        if (self)
        {
          changes = self->_changes;
        }

        else
        {
          changes = 0;
        }

        v16 = [(BSSettings *)changes mutableCopy];
        v17 = v16;
        if (v6)
        {
          v18 = v6[3];
        }

        else
        {
          v18 = 0;
        }

        [v16 applySettings:v18];
        v19 = [[STTelephonyStatusDomainDataDiff alloc] initWithSIMOneInfoDiff:v10 SIMTwoInfoDiff:v14 changes:v17];

        goto LABEL_14;
      }
    }

    else
    {
      SIMTwoInfoDiff = 0;
      if (v6)
      {
        goto LABEL_7;
      }
    }

    v12 = 0;
    goto LABEL_8;
  }

  v19 = 0;
LABEL_14:

  return v19;
}

- (BOOL)isOrthogonalToDiff:(id)diff
{
  diffCopy = diff;
  if ([(STTelephonyStatusDomainDataDiff *)self isEmpty])
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
    SIMOneInfoDiff = self->_SIMOneInfoDiff;
  }

  else
  {
    SIMOneInfoDiff = 0;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __43__STTelephonyStatusDomainDataDiff_isEqual___block_invoke;
  v20[3] = &unk_1E85DDCD8;
  v7 = equalCopy;
  v21 = v7;
  v8 = [v5 appendObject:SIMOneInfoDiff counterpart:v20];
  if (self)
  {
    SIMTwoInfoDiff = self->_SIMTwoInfoDiff;
  }

  else
  {
    SIMTwoInfoDiff = 0;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __43__STTelephonyStatusDomainDataDiff_isEqual___block_invoke_2;
  v18[3] = &unk_1E85DDCD8;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendObject:SIMTwoInfoDiff counterpart:v18];
  if (self)
  {
    self = self->_changes;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __43__STTelephonyStatusDomainDataDiff_isEqual___block_invoke_3;
  v16[3] = &unk_1E85DDCD8;
  v17 = v10;
  v12 = v10;
  v13 = [v5 appendObject:self counterpart:v16];
  v14 = [v5 isEqual];

  return v14;
}

id __43__STTelephonyStatusDomainDataDiff_isEqual___block_invoke(uint64_t a1)
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

id __43__STTelephonyStatusDomainDataDiff_isEqual___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

id __43__STTelephonyStatusDomainDataDiff_isEqual___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 24);
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
    v5 = [builder appendObject:self->_SIMOneInfoDiff];
    SIMTwoInfoDiff = self->_SIMTwoInfoDiff;
  }

  else
  {
    v12 = [builder appendObject:0];
    SIMTwoInfoDiff = 0;
  }

  v7 = [v4 appendObject:SIMTwoInfoDiff];
  if (self)
  {
    changes = self->_changes;
  }

  else
  {
    changes = 0;
  }

  v9 = [v4 appendObject:changes];
  v10 = [v4 hash];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self)
  {
    [coderCopy encodeObject:self->_SIMOneInfoDiff forKey:@"SIMOneInfoDiff"];
    [coderCopy encodeObject:self->_SIMTwoInfoDiff forKey:@"SIMTwoInfoDiff"];
    changes = self->_changes;
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"SIMOneInfoDiff"];
    [coderCopy encodeObject:0 forKey:@"SIMTwoInfoDiff"];
    changes = 0;
  }

  [coderCopy encodeObject:changes forKey:@"changes"];
}

- (STTelephonyStatusDomainDataDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SIMOneInfoDiff"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SIMTwoInfoDiff"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changes"];

  v8 = [(STTelephonyStatusDomainDataDiff *)self initWithSIMOneInfoDiff:v5 SIMTwoInfoDiff:v6 changes:v7];
  return v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STTelephonyStatusDomainDataDiff *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STTelephonyStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STTelephonyStatusDomainDataDiff *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[2] = __83__STTelephonyStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

void __83__STTelephonyStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 appendObject:v4 withName:@"simOne" skipIfNil:1];
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) appendObject:v7 withName:@"simTwo" skipIfNil:1];
  v9 = *(a1 + 40);
  if (v9)
  {
    v9 = v9[3];
  }

  v17 = v9;
  v10 = [*(a1 + 32) appendFlag:objc_msgSend(v17 withName:"flagForSetting:" skipIfNotSet:{0), @"cellularRadioCapabilityEnabled", 1}];
  v11 = [*(a1 + 32) appendFlag:objc_msgSend(v17 withName:"flagForSetting:" skipIfNotSet:{1), @"dualSIMEnabled", 1}];
  v12 = [*(a1 + 32) appendFlag:objc_msgSend(v17 withName:"flagForSetting:" skipIfNotSet:{2), @"radioModuleDead", 1}];
  v13 = [*(a1 + 32) appendFlag:objc_msgSend(v17 withName:"flagForSetting:" skipIfNotSet:{3), @"usingStewieForSOS", 1}];
  v14 = [*(a1 + 32) appendFlag:objc_msgSend(v17 withName:"flagForSetting:" skipIfNotSet:{4), @"inactiveSOSEnabled", 1}];
  v15 = [*(a1 + 32) appendFlag:objc_msgSend(v17 withName:"flagForSetting:" skipIfNotSet:{5), @"usingStewieConnection", 1}];
  v16 = [*(a1 + 32) appendFlag:objc_msgSend(v17 withName:"flagForSetting:" skipIfNotSet:{6), @"usingStewieConnectionOverInternet", 1}];
}

@end