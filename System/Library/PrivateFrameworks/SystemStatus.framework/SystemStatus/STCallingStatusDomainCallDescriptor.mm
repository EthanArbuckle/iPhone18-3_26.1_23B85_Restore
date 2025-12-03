@interface STCallingStatusDomainCallDescriptor
+ (id)audioCallDescriptorWithState:(unint64_t)state;
+ (id)copresenceCallDescriptorWithActivityType:(unint64_t)type;
+ (id)videoCallDescriptorWithState:(unint64_t)state;
- (BOOL)isEqual:(id)equal;
- (STCallingStatusDomainCallDescriptor)initWithCallType:(unint64_t)type callState:(unint64_t)state copresenceActivityType:(unint64_t)activityType;
- (STCallingStatusDomainCallDescriptor)initWithCallType:(unint64_t)type callState:(unint64_t)state copresenceActivityType:(unint64_t)activityType callProviderAttribution:(id)attribution;
- (STCallingStatusDomainCallDescriptor)initWithCoder:(id)coder;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STCallingStatusDomainCallDescriptor

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendUnsignedInteger:{-[STCallingStatusDomainCallDescriptor callType](self, "callType")}];
  v5 = [builder appendUnsignedInteger:{-[STCallingStatusDomainCallDescriptor callState](self, "callState")}];
  v6 = [builder appendUnsignedInteger:{-[STCallingStatusDomainCallDescriptor copresenceActivityType](self, "copresenceActivityType")}];
  callProviderAttribution = [(STCallingStatusDomainCallDescriptor *)self callProviderAttribution];
  v8 = [builder appendObject:callProviderAttribution];

  v9 = [builder hash];
  return v9;
}

+ (id)audioCallDescriptorWithState:(unint64_t)state
{
  v3 = [[STCallingStatusDomainCallDescriptor alloc] initWithCallType:0 callState:state copresenceActivityType:0];

  return v3;
}

+ (id)videoCallDescriptorWithState:(unint64_t)state
{
  v3 = [[STCallingStatusDomainCallDescriptor alloc] initWithCallType:1 callState:state copresenceActivityType:0];

  return v3;
}

+ (id)copresenceCallDescriptorWithActivityType:(unint64_t)type
{
  v3 = [[STCallingStatusDomainCallDescriptor alloc] initWithCallType:2 callState:0 copresenceActivityType:type];

  return v3;
}

- (STCallingStatusDomainCallDescriptor)initWithCallType:(unint64_t)type callState:(unint64_t)state copresenceActivityType:(unint64_t)activityType
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = type - 1;
  if (type > 1)
  {
    if (type == 2)
    {
      if (state > 6)
      {
        goto LABEL_17;
      }

      v10 = 1 << state;
      v11 = 92;
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_15;
      }

      if (state > 6)
      {
        goto LABEL_17;
      }

      v10 = 1 << state;
      v11 = 90;
    }

LABEL_14:
    if ((v10 & v11) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (!type)
  {
    if (state != 2)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (type == 1)
  {
    if (state > 6)
    {
      goto LABEL_17;
    }

    v10 = 1 << state;
    v11 = 84;
    goto LABEL_14;
  }

LABEL_15:
  v12 = STSystemStatusLogCallingDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    if (state - 1 > 5)
    {
      v18 = @"active";
    }

    else
    {
      v18 = off_1E85DE378[state - 1];
    }

    if (v9 > 2)
    {
      v19 = @"audio";
    }

    else
    {
      v19 = off_1E85DE360[v9];
    }

    *buf = 138543618;
    v22 = v18;
    v23 = 2114;
    v24 = v19;
    _os_log_error_impl(&dword_1DA9C2000, v12, OS_LOG_TYPE_ERROR, "state %{public}@ is not valid for call type %{public}@, behavior is undefined", buf, 0x16u);
  }

LABEL_17:
  v20.receiver = self;
  v20.super_class = STCallingStatusDomainCallDescriptor;
  v13 = [(STCallingStatusDomainCallDescriptor *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_callType = type;
    v13->_callState = state;
    callProviderAttribution = v13->_callProviderAttribution;
    v13->_copresenceActivityType = activityType;
    v13->_callProviderAttribution = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (STCallingStatusDomainCallDescriptor)initWithCallType:(unint64_t)type callState:(unint64_t)state copresenceActivityType:(unint64_t)activityType callProviderAttribution:(id)attribution
{
  attributionCopy = attribution;
  v11 = [(STCallingStatusDomainCallDescriptor *)self initWithCallType:type callState:state copresenceActivityType:activityType];
  if (v11)
  {
    v12 = [attributionCopy copy];
    callProviderAttribution = v11->_callProviderAttribution;
    v11->_callProviderAttribution = v12;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  callType = [(STCallingStatusDomainCallDescriptor *)self callType];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __47__STCallingStatusDomainCallDescriptor_isEqual___block_invoke;
  v28[3] = &unk_1E85DE2F8;
  v7 = equalCopy;
  v29 = v7;
  v8 = [v5 appendUnsignedInteger:callType counterpart:v28];
  callState = [(STCallingStatusDomainCallDescriptor *)self callState];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __47__STCallingStatusDomainCallDescriptor_isEqual___block_invoke_2;
  v26[3] = &unk_1E85DE2F8;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendUnsignedInteger:callState counterpart:v26];
  copresenceActivityType = [(STCallingStatusDomainCallDescriptor *)self copresenceActivityType];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __47__STCallingStatusDomainCallDescriptor_isEqual___block_invoke_3;
  v24[3] = &unk_1E85DE2F8;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendUnsignedInteger:copresenceActivityType counterpart:v24];
  callProviderAttribution = [(STCallingStatusDomainCallDescriptor *)self callProviderAttribution];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __47__STCallingStatusDomainCallDescriptor_isEqual___block_invoke_4;
  v22 = &unk_1E85DDCD8;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendObject:callProviderAttribution counterpart:&v19];

  LOBYTE(callProviderAttribution) = [v5 isEqual];
  return callProviderAttribution;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STCallingStatusDomainCallDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STCallingStatusDomainCallDescriptor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STCallingStatusDomainCallDescriptor *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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

    v7 = [self callType] - 1;
    if (v7 > 2)
    {
      v8 = @"audio";
    }

    else
    {
      v8 = off_1E85DE360[v7];
    }

    [succinctDescriptionBuilder appendString:v8 withName:@"callType"];
    v9 = [self callState] - 1;
    if (v9 > 5)
    {
      v10 = @"active";
    }

    else
    {
      v10 = off_1E85DE378[v9];
    }

    [succinctDescriptionBuilder appendString:v10 withName:@"callState"];
    v11 = [self copresenceActivityType] - 1;
    if (v11 > 4)
    {
      v12 = @"none";
    }

    else
    {
      v12 = off_1E85DE3A8[v11];
    }

    [succinctDescriptionBuilder appendString:v12 withName:@"copresenceActivityType"];
    callProviderAttribution = [self callProviderAttribution];
    v14 = [callProviderAttribution description];
    [succinctDescriptionBuilder appendString:v14 withName:@"callProviderAttribution"];
  }

  else
  {
    succinctDescriptionBuilder = 0;
  }

  return succinctDescriptionBuilder;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[STCallingStatusDomainCallDescriptor callType](self forKey:{"callType"), @"callType"}];
  [coderCopy encodeInteger:-[STCallingStatusDomainCallDescriptor callState](self forKey:{"callState"), @"callState"}];
  [coderCopy encodeInteger:-[STCallingStatusDomainCallDescriptor copresenceActivityType](self forKey:{"copresenceActivityType"), @"copresenceActivityType"}];
  callProviderAttribution = [(STCallingStatusDomainCallDescriptor *)self callProviderAttribution];
  [coderCopy encodeObject:callProviderAttribution forKey:@"callProviderAttribution"];
}

- (STCallingStatusDomainCallDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"callType"];
  v6 = [coderCopy decodeIntegerForKey:@"callState"];
  v7 = [coderCopy decodeIntegerForKey:@"copresenceActivityType"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callProviderAttribution"];

  v9 = [(STCallingStatusDomainCallDescriptor *)self initWithCallType:v5 callState:v6 copresenceActivityType:v7 callProviderAttribution:v8];
  return v9;
}

@end