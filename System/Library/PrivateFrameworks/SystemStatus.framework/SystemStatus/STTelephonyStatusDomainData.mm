@interface STTelephonyStatusDomainData
- (BOOL)isEqual:(id)equal;
- (STTelephonyStatusDomainData)initWithCoder:(id)coder;
- (STTelephonyStatusDomainSIMInfo)primarySIMInfo;
- (STTelephonyStatusDomainSIMInfo)secondarySIMInfo;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)dataByApplyingDiff:(id)diff;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffFromData:(id)data;
- (id)initWithData:(void *)data;
- (id)initWithSIMOneInfo:(void *)info SIMTwoInfo:(char)twoInfo cellularRadioCapabilityEnabled:(char)enabled dualSIMEnabled:(char)mEnabled radioModuleDead:(char)dead usingStewieForSOS:(char)s inactiveSOSEnabled:(char)sEnabled usingStewieConnection:(char)self0 usingStewieConnectionOverInternet:;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STTelephonyStatusDomainData

- (STTelephonyStatusDomainSIMInfo)primarySIMInfo
{
  if (!self)
  {
    goto LABEL_27;
  }

  sIMTwoInfo = [(STTelephonyStatusDomainData *)self SIMTwoInfo];
  if ([sIMTwoInfo isSIMPresent] && objc_msgSend(sIMTwoInfo, "isPreferredForDataConnections"))
  {
    v4 = sIMTwoInfo;
  }

  else
  {
    sIMOneInfo = [(STTelephonyStatusDomainData *)self SIMOneInfo];
    if ([sIMOneInfo isSIMPresent])
    {
      v4 = sIMOneInfo;
    }

    else
    {
      v4 = 0;
    }
  }

  if (v4)
  {
    v6 = v4;
    sIMOneInfo4 = v6;
    goto LABEL_30;
  }

  sIMOneInfo2 = [(STTelephonyStatusDomainData *)self SIMOneInfo];
  if ([sIMOneInfo2 isSIMPresent])
  {
    v9 = sIMOneInfo2;
  }

  else
  {
    sIMTwoInfo2 = [(STTelephonyStatusDomainData *)self SIMTwoInfo];
    if ([sIMTwoInfo2 isSIMPresent])
    {
      v9 = sIMTwoInfo2;
    }

    else
    {
      v9 = 0;
    }
  }

  if (!v9)
  {
    sIMOneInfo3 = [(STTelephonyStatusDomainData *)self SIMOneInfo];
    if ([sIMOneInfo3 serviceState] == 3)
    {
      v13 = sIMOneInfo3;
    }

    else
    {
      sIMTwoInfo3 = [(STTelephonyStatusDomainData *)self SIMTwoInfo];
      if ([sIMTwoInfo3 serviceState] == 3)
      {
        v13 = sIMTwoInfo3;
      }

      else
      {
        v13 = 0;
      }
    }

    if (v13)
    {
      v15 = v13;
      sIMOneInfo4 = v15;
LABEL_28:

      v11 = 0;
      goto LABEL_29;
    }

LABEL_27:
    sIMOneInfo4 = [(STTelephonyStatusDomainData *)self SIMOneInfo];
    v15 = 0;
    goto LABEL_28;
  }

  v11 = v9;
  sIMOneInfo4 = v11;
LABEL_29:

  v6 = 0;
LABEL_30:

  return sIMOneInfo4;
}

- (STTelephonyStatusDomainSIMInfo)secondarySIMInfo
{
  selfCopy = self;
  if ([(STTelephonyStatusDomainData *)self isCellularRadioCapabilityEnabled]&& [(STTelephonyStatusDomainData *)selfCopy isDualSIMEnabled])
  {
    primarySIMInfo = [(STTelephonyStatusDomainData *)selfCopy primarySIMInfo];
    v4 = primarySIMInfo;
    if (selfCopy)
    {
      v5 = primarySIMInfo;
      sIMOneInfo = [(STTelephonyStatusDomainData *)selfCopy SIMOneInfo];

      if (sIMOneInfo == v5)
      {
        sIMTwoInfo = [(STTelephonyStatusDomainData *)selfCopy SIMTwoInfo];
      }

      else
      {
        sIMTwoInfo = sIMOneInfo;
      }

      selfCopy = sIMTwoInfo;
    }

    if (([(STTelephonyStatusDomainData *)selfCopy isSIMPresent]& 1) != 0 || [(STTelephonyStatusDomainData *)selfCopy serviceState]== 3)
    {
      v8 = selfCopy;
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

- (id)initWithData:(void *)data
{
  dataCopy = data;
  if (data)
  {
    v3 = a2;
    sIMOneInfo = [v3 SIMOneInfo];
    sIMTwoInfo = [v3 SIMTwoInfo];
    isCellularRadioCapabilityEnabled = [v3 isCellularRadioCapabilityEnabled];
    isDualSIMEnabled = [v3 isDualSIMEnabled];
    isRadioModuleDead = [v3 isRadioModuleDead];
    isUsingStewieForSOS = [v3 isUsingStewieForSOS];
    isInactiveSOSEnabled = [v3 isInactiveSOSEnabled];
    isUsingStewieConnection = [v3 isUsingStewieConnection];
    isUsingStewieConnectionOverInternet = [v3 isUsingStewieConnectionOverInternet];

    dataCopy = [(STTelephonyStatusDomainData *)dataCopy initWithSIMOneInfo:sIMOneInfo SIMTwoInfo:sIMTwoInfo cellularRadioCapabilityEnabled:isCellularRadioCapabilityEnabled dualSIMEnabled:isDualSIMEnabled radioModuleDead:isRadioModuleDead usingStewieForSOS:isUsingStewieForSOS inactiveSOSEnabled:isInactiveSOSEnabled usingStewieConnection:isUsingStewieConnection usingStewieConnectionOverInternet:isUsingStewieConnectionOverInternet];
  }

  return dataCopy;
}

- (id)initWithSIMOneInfo:(void *)info SIMTwoInfo:(char)twoInfo cellularRadioCapabilityEnabled:(char)enabled dualSIMEnabled:(char)mEnabled radioModuleDead:(char)dead usingStewieForSOS:(char)s inactiveSOSEnabled:(char)sEnabled usingStewieConnection:(char)self0 usingStewieConnectionOverInternet:
{
  v17 = a2;
  infoCopy = info;
  if (self)
  {
    v28.receiver = self;
    v28.super_class = STTelephonyStatusDomainData;
    self = objc_msgSendSuper2(&v28, sel_init);
    if (self)
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

      v22 = *(self + 1);
      *(self + 1) = v21;

      v23 = [infoCopy copy];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = objc_alloc_init(STTelephonyStatusDomainSIMInfo);
      }

      v26 = *(self + 2);
      *(self + 2) = v25;

      *(self + 24) = twoInfo;
      *(self + 25) = enabled;
      *(self + 26) = mEnabled;
      *(self + 27) = dead;
      *(self + 28) = s;
      *(self + 29) = sEnabled;
      *(self + 30) = connection;
    }
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  sIMOneInfo = [(STTelephonyStatusDomainData *)self SIMOneInfo];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke;
  v50[3] = &unk_1E85DE0B0;
  v7 = equalCopy;
  v51 = v7;
  v8 = [v5 appendObject:sIMOneInfo counterpart:v50];

  sIMTwoInfo = [(STTelephonyStatusDomainData *)self SIMTwoInfo];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke_2;
  v48[3] = &unk_1E85DE0B0;
  v10 = v7;
  v49 = v10;
  v11 = [v5 appendObject:sIMTwoInfo counterpart:v48];

  isCellularRadioCapabilityEnabled = [(STTelephonyStatusDomainData *)self isCellularRadioCapabilityEnabled];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke_3;
  v46[3] = &unk_1E85DDD50;
  v13 = v10;
  v47 = v13;
  v14 = [v5 appendBool:isCellularRadioCapabilityEnabled counterpart:v46];
  isDualSIMEnabled = [(STTelephonyStatusDomainData *)self isDualSIMEnabled];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke_4;
  v44[3] = &unk_1E85DDD50;
  v16 = v13;
  v45 = v16;
  v17 = [v5 appendBool:isDualSIMEnabled counterpart:v44];
  isRadioModuleDead = [(STTelephonyStatusDomainData *)self isRadioModuleDead];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke_5;
  v42[3] = &unk_1E85DDD50;
  v19 = v16;
  v43 = v19;
  v20 = [v5 appendBool:isRadioModuleDead counterpart:v42];
  isUsingStewieForSOS = [(STTelephonyStatusDomainData *)self isUsingStewieForSOS];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke_6;
  v40[3] = &unk_1E85DDD50;
  v22 = v19;
  v41 = v22;
  v23 = [v5 appendBool:isUsingStewieForSOS counterpart:v40];
  isInactiveSOSEnabled = [(STTelephonyStatusDomainData *)self isInactiveSOSEnabled];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke_7;
  v38[3] = &unk_1E85DDD50;
  v25 = v22;
  v39 = v25;
  v26 = [v5 appendBool:isInactiveSOSEnabled counterpart:v38];
  isUsingStewieConnection = [(STTelephonyStatusDomainData *)self isUsingStewieConnection];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke_8;
  v36[3] = &unk_1E85DDD50;
  v28 = v25;
  v37 = v28;
  v29 = [v5 appendBool:isUsingStewieConnection counterpart:v36];
  isUsingStewieConnectionOverInternet = [(STTelephonyStatusDomainData *)self isUsingStewieConnectionOverInternet];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __39__STTelephonyStatusDomainData_isEqual___block_invoke_9;
  v34[3] = &unk_1E85DDD50;
  v35 = v28;
  v31 = v28;
  v32 = [v5 appendBool:isUsingStewieConnectionOverInternet counterpart:v34];
  LOBYTE(v28) = [v5 isEqual];

  return v28;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  sIMOneInfo = [(STTelephonyStatusDomainData *)self SIMOneInfo];
  v5 = [builder appendObject:sIMOneInfo];

  sIMTwoInfo = [(STTelephonyStatusDomainData *)self SIMTwoInfo];
  v7 = [builder appendObject:sIMTwoInfo];

  v8 = [builder appendBool:{-[STTelephonyStatusDomainData isCellularRadioCapabilityEnabled](self, "isCellularRadioCapabilityEnabled")}];
  v9 = [builder appendBool:{-[STTelephonyStatusDomainData isDualSIMEnabled](self, "isDualSIMEnabled")}];
  v10 = [builder appendBool:{-[STTelephonyStatusDomainData isRadioModuleDead](self, "isRadioModuleDead")}];
  v11 = [builder appendBool:{-[STTelephonyStatusDomainData isUsingStewieForSOS](self, "isUsingStewieForSOS")}];
  v12 = [builder appendBool:{-[STTelephonyStatusDomainData isInactiveSOSEnabled](self, "isInactiveSOSEnabled")}];
  v13 = [builder appendBool:{-[STTelephonyStatusDomainData isUsingStewieConnection](self, "isUsingStewieConnection")}];
  v14 = [builder appendBool:{-[STTelephonyStatusDomainData isUsingStewieConnectionOverInternet](self, "isUsingStewieConnectionOverInternet")}];
  v15 = [builder hash];

  return v15;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableTelephonyStatusDomainData allocWithZone:zone];

  return [(STTelephonyStatusDomainData *)v4 initWithData:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STTelephonyStatusDomainData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STTelephonyStatusDomainData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STTelephonyStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[2] = __79__STTelephonyStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

- (id)diffFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STTelephonyStatusDomainDataDiff diffFromData:dataCopy toData:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataByApplyingDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([diffCopy isEmpty])
    {
      v5 = [(STTelephonyStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STTelephonyStatusDomainData *)self mutableCopy];
      [diffCopy applyToMutableData:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sIMOneInfo = [(STTelephonyStatusDomainData *)self SIMOneInfo];
  [coderCopy encodeObject:sIMOneInfo forKey:@"SIMOneInfo"];

  sIMTwoInfo = [(STTelephonyStatusDomainData *)self SIMTwoInfo];
  [coderCopy encodeObject:sIMTwoInfo forKey:@"SIMTwoInfo"];

  [coderCopy encodeBool:-[STTelephonyStatusDomainData isCellularRadioCapabilityEnabled](self forKey:{"isCellularRadioCapabilityEnabled"), @"cellularRadioCapabilityEnabled"}];
  [coderCopy encodeBool:-[STTelephonyStatusDomainData isDualSIMEnabled](self forKey:{"isDualSIMEnabled"), @"dualSIMEnabled"}];
  [coderCopy encodeBool:-[STTelephonyStatusDomainData isRadioModuleDead](self forKey:{"isRadioModuleDead"), @"radioModuleDead"}];
  [coderCopy encodeBool:-[STTelephonyStatusDomainData isUsingStewieForSOS](self forKey:{"isUsingStewieForSOS"), @"usingStewieForSOS"}];
  [coderCopy encodeBool:-[STTelephonyStatusDomainData isInactiveSOSEnabled](self forKey:{"isInactiveSOSEnabled"), @"inactiveSOSEnabled"}];
  [coderCopy encodeBool:-[STTelephonyStatusDomainData isUsingStewieConnection](self forKey:{"isUsingStewieConnection"), @"usingStewieConnection"}];
  [coderCopy encodeBool:-[STTelephonyStatusDomainData isUsingStewieConnectionOverInternet](self forKey:{"isUsingStewieConnectionOverInternet"), @"usingStewieConnectionOverInternet"}];
}

- (STTelephonyStatusDomainData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SIMOneInfo"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SIMTwoInfo"];
  v6 = [coderCopy decodeBoolForKey:@"cellularRadioCapabilityEnabled"];
  v7 = [coderCopy decodeBoolForKey:@"dualSIMEnabled"];
  v8 = [coderCopy decodeBoolForKey:@"radioModuleDead"];
  v9 = [coderCopy decodeBoolForKey:@"usingStewieForSOS"];
  v10 = [coderCopy decodeBoolForKey:@"inactiveSOSEnabled"];
  v11 = [coderCopy decodeBoolForKey:@"usingStewieConnection"];
  v12 = [coderCopy decodeBoolForKey:@"usingStewieConnectionOverInternet"];

  v13 = [(STTelephonyStatusDomainData *)self initWithSIMOneInfo:v4 SIMTwoInfo:v5 cellularRadioCapabilityEnabled:v6 dualSIMEnabled:v7 radioModuleDead:v8 usingStewieForSOS:v9 inactiveSOSEnabled:v10 usingStewieConnection:v11 usingStewieConnectionOverInternet:v12];
  return v13;
}

@end