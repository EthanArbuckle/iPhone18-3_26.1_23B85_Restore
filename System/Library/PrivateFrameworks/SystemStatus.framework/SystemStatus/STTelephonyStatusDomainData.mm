@interface STTelephonyStatusDomainData
- (BOOL)isEqual:(id)a3;
- (STTelephonyStatusDomainData)initWithCoder:(id)a3;
- (STTelephonyStatusDomainSIMInfo)primarySIMInfo;
- (STTelephonyStatusDomainSIMInfo)secondarySIMInfo;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)dataByApplyingDiff:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffFromData:(id)a3;
- (id)initWithData:(void *)a1;
- (id)initWithSIMOneInfo:(void *)a3 SIMTwoInfo:(char)a4 cellularRadioCapabilityEnabled:(char)a5 dualSIMEnabled:(char)a6 radioModuleDead:(char)a7 usingStewieForSOS:(char)a8 inactiveSOSEnabled:(char)a9 usingStewieConnection:(char)a10 usingStewieConnectionOverInternet:;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STTelephonyStatusDomainData

- (STTelephonyStatusDomainSIMInfo)primarySIMInfo
{
  if (!self)
  {
    goto LABEL_27;
  }

  v3 = [(STTelephonyStatusDomainData *)self SIMTwoInfo];
  if ([v3 isSIMPresent] && objc_msgSend(v3, "isPreferredForDataConnections"))
  {
    v4 = v3;
  }

  else
  {
    v5 = [(STTelephonyStatusDomainData *)self SIMOneInfo];
    if ([v5 isSIMPresent])
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  if (v4)
  {
    v6 = v4;
    v7 = v6;
    goto LABEL_30;
  }

  v8 = [(STTelephonyStatusDomainData *)self SIMOneInfo];
  if ([v8 isSIMPresent])
  {
    v9 = v8;
  }

  else
  {
    v10 = [(STTelephonyStatusDomainData *)self SIMTwoInfo];
    if ([v10 isSIMPresent])
    {
      v9 = v10;
    }

    else
    {
      v9 = 0;
    }
  }

  if (!v9)
  {
    v12 = [(STTelephonyStatusDomainData *)self SIMOneInfo];
    if ([v12 serviceState] == 3)
    {
      v13 = v12;
    }

    else
    {
      v14 = [(STTelephonyStatusDomainData *)self SIMTwoInfo];
      if ([v14 serviceState] == 3)
      {
        v13 = v14;
      }

      else
      {
        v13 = 0;
      }
    }

    if (v13)
    {
      v15 = v13;
      v7 = v15;
LABEL_28:

      v11 = 0;
      goto LABEL_29;
    }

LABEL_27:
    v7 = [(STTelephonyStatusDomainData *)self SIMOneInfo];
    v15 = 0;
    goto LABEL_28;
  }

  v11 = v9;
  v7 = v11;
LABEL_29:

  v6 = 0;
LABEL_30:

  return v7;
}

- (STTelephonyStatusDomainSIMInfo)secondarySIMInfo
{
  v2 = self;
  if ([(STTelephonyStatusDomainData *)self isCellularRadioCapabilityEnabled]&& [(STTelephonyStatusDomainData *)v2 isDualSIMEnabled])
  {
    v3 = [(STTelephonyStatusDomainData *)v2 primarySIMInfo];
    v4 = v3;
    if (v2)
    {
      v5 = v3;
      v6 = [(STTelephonyStatusDomainData *)v2 SIMOneInfo];

      if (v6 == v5)
      {
        v7 = [(STTelephonyStatusDomainData *)v2 SIMTwoInfo];
      }

      else
      {
        v7 = v6;
      }

      v2 = v7;
    }

    if (([(STTelephonyStatusDomainData *)v2 isSIMPresent]& 1) != 0 || [(STTelephonyStatusDomainData *)v2 serviceState]== 3)
    {
      v8 = v2;
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

- (id)initWithData:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v3 SIMOneInfo];
    v5 = [v3 SIMTwoInfo];
    v13 = [v3 isCellularRadioCapabilityEnabled];
    v6 = [v3 isDualSIMEnabled];
    v7 = [v3 isRadioModuleDead];
    v8 = [v3 isUsingStewieForSOS];
    v9 = [v3 isInactiveSOSEnabled];
    v10 = [v3 isUsingStewieConnection];
    v11 = [v3 isUsingStewieConnectionOverInternet];

    v2 = [(STTelephonyStatusDomainData *)v2 initWithSIMOneInfo:v4 SIMTwoInfo:v5 cellularRadioCapabilityEnabled:v13 dualSIMEnabled:v6 radioModuleDead:v7 usingStewieForSOS:v8 inactiveSOSEnabled:v9 usingStewieConnection:v10 usingStewieConnectionOverInternet:v11];
  }

  return v2;
}

- (id)initWithSIMOneInfo:(void *)a3 SIMTwoInfo:(char)a4 cellularRadioCapabilityEnabled:(char)a5 dualSIMEnabled:(char)a6 radioModuleDead:(char)a7 usingStewieForSOS:(char)a8 inactiveSOSEnabled:(char)a9 usingStewieConnection:(char)a10 usingStewieConnectionOverInternet:
{
  v17 = a2;
  v18 = a3;
  if (a1)
  {
    v28.receiver = a1;
    v28.super_class = STTelephonyStatusDomainData;
    a1 = objc_msgSendSuper2(&v28, sel_init);
    if (a1)
    {
      v19 = [v17 copy];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = objc_alloc_init(STTelephonyStatusDomainSIMInfo);
      }

      v22 = *(a1 + 1);
      *(a1 + 1) = v21;

      v23 = [v18 copy];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = objc_alloc_init(STTelephonyStatusDomainSIMInfo);
      }

      v26 = *(a1 + 2);
      *(a1 + 2) = v25;

      *(a1 + 24) = a4;
      *(a1 + 25) = a5;
      *(a1 + 26) = a6;
      *(a1 + 27) = a7;
      *(a1 + 28) = a8;
      *(a1 + 29) = a9;
      *(a1 + 30) = a10;
    }
  }

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STTelephonyStatusDomainData *)self SIMOneInfo];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke;
  v50[3] = &unk_1E85DE0B0;
  v7 = v4;
  v51 = v7;
  v8 = [v5 appendObject:v6 counterpart:v50];

  v9 = [(STTelephonyStatusDomainData *)self SIMTwoInfo];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke_2;
  v48[3] = &unk_1E85DE0B0;
  v10 = v7;
  v49 = v10;
  v11 = [v5 appendObject:v9 counterpart:v48];

  v12 = [(STTelephonyStatusDomainData *)self isCellularRadioCapabilityEnabled];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke_3;
  v46[3] = &unk_1E85DDD50;
  v13 = v10;
  v47 = v13;
  v14 = [v5 appendBool:v12 counterpart:v46];
  v15 = [(STTelephonyStatusDomainData *)self isDualSIMEnabled];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke_4;
  v44[3] = &unk_1E85DDD50;
  v16 = v13;
  v45 = v16;
  v17 = [v5 appendBool:v15 counterpart:v44];
  v18 = [(STTelephonyStatusDomainData *)self isRadioModuleDead];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke_5;
  v42[3] = &unk_1E85DDD50;
  v19 = v16;
  v43 = v19;
  v20 = [v5 appendBool:v18 counterpart:v42];
  v21 = [(STTelephonyStatusDomainData *)self isUsingStewieForSOS];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke_6;
  v40[3] = &unk_1E85DDD50;
  v22 = v19;
  v41 = v22;
  v23 = [v5 appendBool:v21 counterpart:v40];
  v24 = [(STTelephonyStatusDomainData *)self isInactiveSOSEnabled];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke_7;
  v38[3] = &unk_1E85DDD50;
  v25 = v22;
  v39 = v25;
  v26 = [v5 appendBool:v24 counterpart:v38];
  v27 = [(STTelephonyStatusDomainData *)self isUsingStewieConnection];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke_8;
  v36[3] = &unk_1E85DDD50;
  v28 = v25;
  v37 = v28;
  v29 = [v5 appendBool:v27 counterpart:v36];
  v30 = [(STTelephonyStatusDomainData *)self isUsingStewieConnectionOverInternet];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke_9;
  v34[3] = &unk_1E85DDD50;
  v35 = v28;
  v31 = v28;
  v32 = [v5 appendBool:v30 counterpart:v34];
  LOBYTE(v28) = [v5 isEqual];

  return v28;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STTelephonyStatusDomainData *)self SIMOneInfo];
  v5 = [v3 appendObject:v4];

  v6 = [(STTelephonyStatusDomainData *)self SIMTwoInfo];
  v7 = [v3 appendObject:v6];

  v8 = [v3 appendBool:{-[STTelephonyStatusDomainData isCellularRadioCapabilityEnabled](self, "isCellularRadioCapabilityEnabled")}];
  v9 = [v3 appendBool:{-[STTelephonyStatusDomainData isDualSIMEnabled](self, "isDualSIMEnabled")}];
  v10 = [v3 appendBool:{-[STTelephonyStatusDomainData isRadioModuleDead](self, "isRadioModuleDead")}];
  v11 = [v3 appendBool:{-[STTelephonyStatusDomainData isUsingStewieForSOS](self, "isUsingStewieForSOS")}];
  v12 = [v3 appendBool:{-[STTelephonyStatusDomainData isInactiveSOSEnabled](self, "isInactiveSOSEnabled")}];
  v13 = [v3 appendBool:{-[STTelephonyStatusDomainData isUsingStewieConnection](self, "isUsingStewieConnection")}];
  v14 = [v3 appendBool:{-[STTelephonyStatusDomainData isUsingStewieConnectionOverInternet](self, "isUsingStewieConnectionOverInternet")}];
  v15 = [v3 hash];

  return v15;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableTelephonyStatusDomainData allocWithZone:a3];

  return [(STTelephonyStatusDomainData *)v4 initWithData:?];
}

- (id)succinctDescription
{
  v2 = [(STTelephonyStatusDomainData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STTelephonyStatusDomainData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STTelephonyStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v10[2] = __79__STTelephonyStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

id __79__STTelephonyStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) SIMOneInfo];
  v4 = [v2 appendObject:v3 withName:@"SIMOneInfo"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) SIMTwoInfo];
  v7 = [v5 appendObject:v6 withName:@"SIMTwoInfo"];

  v8 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isCellularRadioCapabilityEnabled"), @"cellularRadioCapabilityEnabled"}];
  v9 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isDualSIMEnabled"), @"dualSIMEnabled"}];
  v10 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isRadioModuleDead"), @"radioModuleDead"}];
  v11 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isUsingStewieForSOS"), @"usingStewieForSOS"}];
  v12 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isInactiveSOSEnabled"), @"inactiveSOSEnabled"}];
  v13 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isUsingStewieConnection"), @"usingStewieConnection"}];
  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isUsingStewieConnectionOverInternet"), @"usingStewieConnectionOverInternet"}];
}

- (id)diffFromData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STTelephonyStatusDomainDataDiff diffFromData:v4 toData:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataByApplyingDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 isEmpty])
    {
      v5 = [(STTelephonyStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STTelephonyStatusDomainData *)self mutableCopy];
      [v4 applyToMutableData:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(STTelephonyStatusDomainData *)self SIMOneInfo];
  [v6 encodeObject:v4 forKey:@"SIMOneInfo"];

  v5 = [(STTelephonyStatusDomainData *)self SIMTwoInfo];
  [v6 encodeObject:v5 forKey:@"SIMTwoInfo"];

  [v6 encodeBool:-[STTelephonyStatusDomainData isCellularRadioCapabilityEnabled](self forKey:{"isCellularRadioCapabilityEnabled"), @"cellularRadioCapabilityEnabled"}];
  [v6 encodeBool:-[STTelephonyStatusDomainData isDualSIMEnabled](self forKey:{"isDualSIMEnabled"), @"dualSIMEnabled"}];
  [v6 encodeBool:-[STTelephonyStatusDomainData isRadioModuleDead](self forKey:{"isRadioModuleDead"), @"radioModuleDead"}];
  [v6 encodeBool:-[STTelephonyStatusDomainData isUsingStewieForSOS](self forKey:{"isUsingStewieForSOS"), @"usingStewieForSOS"}];
  [v6 encodeBool:-[STTelephonyStatusDomainData isInactiveSOSEnabled](self forKey:{"isInactiveSOSEnabled"), @"inactiveSOSEnabled"}];
  [v6 encodeBool:-[STTelephonyStatusDomainData isUsingStewieConnection](self forKey:{"isUsingStewieConnection"), @"usingStewieConnection"}];
  [v6 encodeBool:-[STTelephonyStatusDomainData isUsingStewieConnectionOverInternet](self forKey:{"isUsingStewieConnectionOverInternet"), @"usingStewieConnectionOverInternet"}];
}

- (STTelephonyStatusDomainData)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SIMOneInfo"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SIMTwoInfo"];
  v6 = [v3 decodeBoolForKey:@"cellularRadioCapabilityEnabled"];
  v7 = [v3 decodeBoolForKey:@"dualSIMEnabled"];
  v8 = [v3 decodeBoolForKey:@"radioModuleDead"];
  v9 = [v3 decodeBoolForKey:@"usingStewieForSOS"];
  v10 = [v3 decodeBoolForKey:@"inactiveSOSEnabled"];
  v11 = [v3 decodeBoolForKey:@"usingStewieConnection"];
  v12 = [v3 decodeBoolForKey:@"usingStewieConnectionOverInternet"];

  v13 = [(STTelephonyStatusDomainData *)self initWithSIMOneInfo:v4 SIMTwoInfo:v5 cellularRadioCapabilityEnabled:v6 dualSIMEnabled:v7 radioModuleDead:v8 usingStewieForSOS:v9 inactiveSOSEnabled:v10 usingStewieConnection:v11 usingStewieConnectionOverInternet:v12];
  return v13;
}

@end