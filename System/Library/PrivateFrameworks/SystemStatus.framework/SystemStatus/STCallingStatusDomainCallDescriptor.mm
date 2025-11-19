@interface STCallingStatusDomainCallDescriptor
+ (id)audioCallDescriptorWithState:(unint64_t)a3;
+ (id)copresenceCallDescriptorWithActivityType:(unint64_t)a3;
+ (id)videoCallDescriptorWithState:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (STCallingStatusDomainCallDescriptor)initWithCallType:(unint64_t)a3 callState:(unint64_t)a4 copresenceActivityType:(unint64_t)a5;
- (STCallingStatusDomainCallDescriptor)initWithCallType:(unint64_t)a3 callState:(unint64_t)a4 copresenceActivityType:(unint64_t)a5 callProviderAttribution:(id)a6;
- (STCallingStatusDomainCallDescriptor)initWithCoder:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STCallingStatusDomainCallDescriptor

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendUnsignedInteger:{-[STCallingStatusDomainCallDescriptor callType](self, "callType")}];
  v5 = [v3 appendUnsignedInteger:{-[STCallingStatusDomainCallDescriptor callState](self, "callState")}];
  v6 = [v3 appendUnsignedInteger:{-[STCallingStatusDomainCallDescriptor copresenceActivityType](self, "copresenceActivityType")}];
  v7 = [(STCallingStatusDomainCallDescriptor *)self callProviderAttribution];
  v8 = [v3 appendObject:v7];

  v9 = [v3 hash];
  return v9;
}

+ (id)audioCallDescriptorWithState:(unint64_t)a3
{
  v3 = [[STCallingStatusDomainCallDescriptor alloc] initWithCallType:0 callState:a3 copresenceActivityType:0];

  return v3;
}

+ (id)videoCallDescriptorWithState:(unint64_t)a3
{
  v3 = [[STCallingStatusDomainCallDescriptor alloc] initWithCallType:1 callState:a3 copresenceActivityType:0];

  return v3;
}

+ (id)copresenceCallDescriptorWithActivityType:(unint64_t)a3
{
  v3 = [[STCallingStatusDomainCallDescriptor alloc] initWithCallType:2 callState:0 copresenceActivityType:a3];

  return v3;
}

- (STCallingStatusDomainCallDescriptor)initWithCallType:(unint64_t)a3 callState:(unint64_t)a4 copresenceActivityType:(unint64_t)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a3 - 1;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (a4 > 6)
      {
        goto LABEL_17;
      }

      v10 = 1 << a4;
      v11 = 92;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_15;
      }

      if (a4 > 6)
      {
        goto LABEL_17;
      }

      v10 = 1 << a4;
      v11 = 90;
    }

LABEL_14:
    if ((v10 & v11) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (!a3)
  {
    if (a4 != 2)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (a3 == 1)
  {
    if (a4 > 6)
    {
      goto LABEL_17;
    }

    v10 = 1 << a4;
    v11 = 84;
    goto LABEL_14;
  }

LABEL_15:
  v12 = STSystemStatusLogCallingDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    if (a4 - 1 > 5)
    {
      v18 = @"active";
    }

    else
    {
      v18 = off_1E85DE378[a4 - 1];
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
    v13->_callType = a3;
    v13->_callState = a4;
    callProviderAttribution = v13->_callProviderAttribution;
    v13->_copresenceActivityType = a5;
    v13->_callProviderAttribution = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (STCallingStatusDomainCallDescriptor)initWithCallType:(unint64_t)a3 callState:(unint64_t)a4 copresenceActivityType:(unint64_t)a5 callProviderAttribution:(id)a6
{
  v10 = a6;
  v11 = [(STCallingStatusDomainCallDescriptor *)self initWithCallType:a3 callState:a4 copresenceActivityType:a5];
  if (v11)
  {
    v12 = [v10 copy];
    callProviderAttribution = v11->_callProviderAttribution;
    v11->_callProviderAttribution = v12;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STCallingStatusDomainCallDescriptor *)self callType];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __47__STCallingStatusDomainCallDescriptor_isEqual___block_invoke;
  v28[3] = &unk_1E85DE2F8;
  v7 = v4;
  v29 = v7;
  v8 = [v5 appendUnsignedInteger:v6 counterpart:v28];
  v9 = [(STCallingStatusDomainCallDescriptor *)self callState];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __47__STCallingStatusDomainCallDescriptor_isEqual___block_invoke_2;
  v26[3] = &unk_1E85DE2F8;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendUnsignedInteger:v9 counterpart:v26];
  v12 = [(STCallingStatusDomainCallDescriptor *)self copresenceActivityType];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __47__STCallingStatusDomainCallDescriptor_isEqual___block_invoke_3;
  v24[3] = &unk_1E85DE2F8;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendUnsignedInteger:v12 counterpart:v24];
  v15 = [(STCallingStatusDomainCallDescriptor *)self callProviderAttribution];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __47__STCallingStatusDomainCallDescriptor_isEqual___block_invoke_4;
  v22 = &unk_1E85DDCD8;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendObject:v15 counterpart:&v19];

  LOBYTE(v15) = [v5 isEqual];
  return v15;
}

- (id)succinctDescription
{
  v2 = [(STCallingStatusDomainCallDescriptor *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STCallingStatusDomainCallDescriptor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STCallingStatusDomainCallDescriptor *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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

    v7 = [a1 callType] - 1;
    if (v7 > 2)
    {
      v8 = @"audio";
    }

    else
    {
      v8 = off_1E85DE360[v7];
    }

    [v6 appendString:v8 withName:@"callType"];
    v9 = [a1 callState] - 1;
    if (v9 > 5)
    {
      v10 = @"active";
    }

    else
    {
      v10 = off_1E85DE378[v9];
    }

    [v6 appendString:v10 withName:@"callState"];
    v11 = [a1 copresenceActivityType] - 1;
    if (v11 > 4)
    {
      v12 = @"none";
    }

    else
    {
      v12 = off_1E85DE3A8[v11];
    }

    [v6 appendString:v12 withName:@"copresenceActivityType"];
    v13 = [a1 callProviderAttribution];
    v14 = [v13 description];
    [v6 appendString:v14 withName:@"callProviderAttribution"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[STCallingStatusDomainCallDescriptor callType](self forKey:{"callType"), @"callType"}];
  [v4 encodeInteger:-[STCallingStatusDomainCallDescriptor callState](self forKey:{"callState"), @"callState"}];
  [v4 encodeInteger:-[STCallingStatusDomainCallDescriptor copresenceActivityType](self forKey:{"copresenceActivityType"), @"copresenceActivityType"}];
  v5 = [(STCallingStatusDomainCallDescriptor *)self callProviderAttribution];
  [v4 encodeObject:v5 forKey:@"callProviderAttribution"];
}

- (STCallingStatusDomainCallDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"callType"];
  v6 = [v4 decodeIntegerForKey:@"callState"];
  v7 = [v4 decodeIntegerForKey:@"copresenceActivityType"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callProviderAttribution"];

  v9 = [(STCallingStatusDomainCallDescriptor *)self initWithCallType:v5 callState:v6 copresenceActivityType:v7 callProviderAttribution:v8];
  return v9;
}

@end