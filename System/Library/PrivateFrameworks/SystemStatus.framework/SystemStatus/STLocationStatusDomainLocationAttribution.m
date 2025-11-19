@interface STLocationStatusDomainLocationAttribution
- (BOOL)isEqual:(id)a3;
- (STLocationStatusDomainLocationAttribution)initWithCoder:(id)a3;
- (STLocationStatusDomainLocationAttribution)initWithLocationState:(unint64_t)a3 activityAttribution:(id)a4 eligibleDisplayModes:(unint64_t)a5;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STLocationStatusDomainLocationAttribution

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendUnsignedInteger:{-[STLocationStatusDomainLocationAttribution locationState](self, "locationState")}];
  v5 = [(STLocationStatusDomainLocationAttribution *)self activityAttribution];
  v6 = [v3 appendObject:v5];

  v7 = [v3 appendUnsignedInteger:{-[STLocationStatusDomainLocationAttribution eligibleDisplayModes](self, "eligibleDisplayModes")}];
  v8 = [v3 hash];

  return v8;
}

- (STLocationStatusDomainLocationAttribution)initWithLocationState:(unint64_t)a3 activityAttribution:(id)a4 eligibleDisplayModes:(unint64_t)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = STLocationStatusDomainLocationAttribution;
  v9 = [(STLocationStatusDomainLocationAttribution *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_locationState = a3;
    v11 = [v8 copy];
    activityAttribution = v10->_activityAttribution;
    v10->_activityAttribution = v11;

    v10->_eligibleDisplayModes = a5;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STLocationStatusDomainLocationAttribution *)self locationState];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __53__STLocationStatusDomainLocationAttribution_isEqual___block_invoke;
  v20[3] = &unk_1E85DE2F8;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendUnsignedInteger:v6 counterpart:v20];
  v9 = [(STLocationStatusDomainLocationAttribution *)self activityAttribution];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __53__STLocationStatusDomainLocationAttribution_isEqual___block_invoke_2;
  v18[3] = &unk_1E85DDCD8;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendObject:v9 counterpart:v18];

  v12 = [(STLocationStatusDomainLocationAttribution *)self eligibleDisplayModes];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__STLocationStatusDomainLocationAttribution_isEqual___block_invoke_3;
  v16[3] = &unk_1E85DE2F8;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendUnsignedInteger:v12 counterpart:v16];
  LOBYTE(v12) = [v5 isEqual];

  return v12;
}

- (id)succinctDescription
{
  v2 = [(STLocationStatusDomainLocationAttribution *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STLocationStatusDomainLocationAttribution *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STLocationStatusDomainLocationAttribution *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __93__STLocationStatusDomainLocationAttribution__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v9[3] = &unk_1E85DDD00;
    v7 = v6;
    v10 = v7;
    v11 = v3;
    [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v9];

    v3 = v7;
  }

  return v3;
}

void __93__STLocationStatusDomainLocationAttribution__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ([*(a1 + 40) locationState])
  {
    v3 = @"receiving";
  }

  else
  {
    v3 = @"requesting";
  }

  [v2 appendString:v3 withName:@"locationState"];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) activityAttribution];
  v6 = [v4 appendObject:v5 withName:@"activityAttribution"];

  v7 = *(a1 + 32);
  v8 = STLocationStatusDomainLocationAttributionDisplayModeMaskDescription([*(a1 + 40) eligibleDisplayModes]);
  [v7 appendString:v8 withName:@"eligibleDisplayModes"];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[STLocationStatusDomainLocationAttribution locationState](self forKey:{"locationState"), @"locationState"}];
  v4 = [(STLocationStatusDomainLocationAttribution *)self activityAttribution];
  [v5 encodeObject:v4 forKey:@"activityAttribution"];

  [v5 encodeInteger:-[STLocationStatusDomainLocationAttribution eligibleDisplayModes](self forKey:{"eligibleDisplayModes"), @"eligibleDisplayModes"}];
}

- (STLocationStatusDomainLocationAttribution)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"locationState"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityAttribution"];
  v7 = [v4 decodeIntegerForKey:@"eligibleDisplayModes"];

  if (v6)
  {
    self = [(STLocationStatusDomainLocationAttribution *)self initWithLocationState:v5 activityAttribution:v6 eligibleDisplayModes:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end