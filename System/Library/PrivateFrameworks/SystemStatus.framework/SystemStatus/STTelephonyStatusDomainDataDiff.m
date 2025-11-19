@interface STTelephonyStatusDomainDataDiff
+ (id)diffFromData:(id)a3 toData:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOrthogonalToDiff:(id)a3;
- (STTelephonyStatusDomainDataDiff)init;
- (STTelephonyStatusDomainDataDiff)initWithCoder:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)dataByApplyingToData:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffByApplyingDiff:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableData:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)initWithSIMOneInfoDiff:(void *)a3 SIMTwoInfoDiff:(void *)a4 changes:;
@end

@implementation STTelephonyStatusDomainDataDiff

+ (id)diffFromData:(id)a3 toData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 SIMOneInfo];
  v8 = [v6 SIMOneInfo];
  v9 = [STTelephonyStatusDomainSIMInfoDiff diffFromInfo:v7 toInfo:v8];

  v10 = [v5 SIMTwoInfo];
  v11 = [v6 SIMTwoInfo];
  v12 = [STTelephonyStatusDomainSIMInfoDiff diffFromInfo:v10 toInfo:v11];

  v13 = objc_alloc_init(MEMORY[0x1E698E700]);
  LODWORD(v11) = [v6 isCellularRadioCapabilityEnabled];
  if (v11 != [v5 isCellularRadioCapabilityEnabled])
  {
    [v13 setFlag:BSSettingFlagForBool() forSetting:0];
  }

  v14 = [v6 isDualSIMEnabled];
  if (v14 != [v5 isDualSIMEnabled])
  {
    [v13 setFlag:BSSettingFlagForBool() forSetting:1];
  }

  v15 = [v6 isRadioModuleDead];
  if (v15 != [v5 isRadioModuleDead])
  {
    [v13 setFlag:BSSettingFlagForBool() forSetting:2];
  }

  v16 = [v6 isUsingStewieForSOS];
  if (v16 != [v5 isUsingStewieForSOS])
  {
    [v13 setFlag:BSSettingFlagForBool() forSetting:3];
  }

  v17 = [v6 isInactiveSOSEnabled];
  if (v17 != [v5 isInactiveSOSEnabled])
  {
    [v13 setFlag:BSSettingFlagForBool() forSetting:4];
  }

  v18 = [v6 isUsingStewieConnection];
  if (v18 != [v5 isUsingStewieConnection])
  {
    [v13 setFlag:BSSettingFlagForBool() forSetting:5];
  }

  v19 = [v6 isUsingStewieConnectionOverInternet];
  if (v19 != [v5 isUsingStewieConnectionOverInternet])
  {
    [v13 setFlag:BSSettingFlagForBool() forSetting:6];
  }

  v20 = [[STTelephonyStatusDomainDataDiff alloc] initWithSIMOneInfoDiff:v9 SIMTwoInfoDiff:v12 changes:v13];

  return v20;
}

- (void)initWithSIMOneInfoDiff:(void *)a3 SIMTwoInfoDiff:(void *)a4 changes:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = STTelephonyStatusDomainDataDiff;
    a1 = objc_msgSendSuper2(&v17, sel_init);
    if (a1)
    {
      v10 = [v7 copy];
      v11 = a1[1];
      a1[1] = v10;

      v12 = [v8 copy];
      v13 = a1[2];
      a1[2] = v12;

      v14 = [v9 copy];
      v15 = a1[3];
      a1[3] = v14;
    }
  }

  return a1;
}

- (STTelephonyStatusDomainDataDiff)init
{
  v3 = objc_alloc_init(STTelephonyStatusDomainSIMInfoDiff);
  v4 = objc_alloc_init(MEMORY[0x1E698E768]);
  v5 = [(STTelephonyStatusDomainDataDiff *)self initWithSIMOneInfoDiff:v3 SIMTwoInfoDiff:v3 changes:v4];

  return v5;
}

- (id)dataByApplyingToData:(id)a3
{
  v4 = [a3 mutableCopy];
  [(STTelephonyStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)a3
{
  v4 = a3;
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
      [v4 updateSIMOneInfoWithBlock:v15];
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
      [v4 updateSIMTwoInfoWithBlock:v13];
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
  v12 = v4;
  v9 = v4;
  v10 = self;
  [(STTelephonyStatusDomainDataDiff *)v10 enumerateFlagsWithBlock:v11];
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

      v8 = [(BSSettings *)changes isEmpty];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)diffByApplyingDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (BOOL)isOrthogonalToDiff:(id)a3
{
  v4 = a3;
  if ([(STTelephonyStatusDomainDataDiff *)self isEmpty])
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
  v7 = v4;
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = v3;
  if (self)
  {
    v5 = [v3 appendObject:self->_SIMOneInfoDiff];
    SIMTwoInfoDiff = self->_SIMTwoInfoDiff;
  }

  else
  {
    v12 = [v3 appendObject:0];
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

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (self)
  {
    [v5 encodeObject:self->_SIMOneInfoDiff forKey:@"SIMOneInfoDiff"];
    [v5 encodeObject:self->_SIMTwoInfoDiff forKey:@"SIMTwoInfoDiff"];
    changes = self->_changes;
  }

  else
  {
    [v5 encodeObject:0 forKey:@"SIMOneInfoDiff"];
    [v5 encodeObject:0 forKey:@"SIMTwoInfoDiff"];
    changes = 0;
  }

  [v5 encodeObject:changes forKey:@"changes"];
}

- (STTelephonyStatusDomainDataDiff)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SIMOneInfoDiff"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SIMTwoInfoDiff"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changes"];

  v8 = [(STTelephonyStatusDomainDataDiff *)self initWithSIMOneInfoDiff:v5 SIMTwoInfoDiff:v6 changes:v7];
  return v8;
}

- (id)succinctDescription
{
  v2 = [(STTelephonyStatusDomainDataDiff *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STTelephonyStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STTelephonyStatusDomainDataDiff *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__STTelephonyStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDD00;
    v7 = v6;
    v11 = v7;
    v12 = a1;
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