@interface STLocationStatusDomainLocationAttribution
- (BOOL)isEqual:(id)equal;
- (STLocationStatusDomainLocationAttribution)initWithCoder:(id)coder;
- (STLocationStatusDomainLocationAttribution)initWithLocationState:(unint64_t)state activityAttribution:(id)attribution eligibleDisplayModes:(unint64_t)modes;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STLocationStatusDomainLocationAttribution

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendUnsignedInteger:{-[STLocationStatusDomainLocationAttribution locationState](self, "locationState")}];
  activityAttribution = [(STLocationStatusDomainLocationAttribution *)self activityAttribution];
  v6 = [builder appendObject:activityAttribution];

  v7 = [builder appendUnsignedInteger:{-[STLocationStatusDomainLocationAttribution eligibleDisplayModes](self, "eligibleDisplayModes")}];
  v8 = [builder hash];

  return v8;
}

- (STLocationStatusDomainLocationAttribution)initWithLocationState:(unint64_t)state activityAttribution:(id)attribution eligibleDisplayModes:(unint64_t)modes
{
  attributionCopy = attribution;
  v14.receiver = self;
  v14.super_class = STLocationStatusDomainLocationAttribution;
  v9 = [(STLocationStatusDomainLocationAttribution *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_locationState = state;
    v11 = [attributionCopy copy];
    activityAttribution = v10->_activityAttribution;
    v10->_activityAttribution = v11;

    v10->_eligibleDisplayModes = modes;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  locationState = [(STLocationStatusDomainLocationAttribution *)self locationState];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __53__STLocationStatusDomainLocationAttribution_isEqual___block_invoke;
  v20[3] = &unk_1E85DE2F8;
  v7 = equalCopy;
  v21 = v7;
  v8 = [v5 appendUnsignedInteger:locationState counterpart:v20];
  activityAttribution = [(STLocationStatusDomainLocationAttribution *)self activityAttribution];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __53__STLocationStatusDomainLocationAttribution_isEqual___block_invoke_2;
  v18[3] = &unk_1E85DDCD8;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendObject:activityAttribution counterpart:v18];

  eligibleDisplayModes = [(STLocationStatusDomainLocationAttribution *)self eligibleDisplayModes];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__STLocationStatusDomainLocationAttribution_isEqual___block_invoke_3;
  v16[3] = &unk_1E85DE2F8;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendUnsignedInteger:eligibleDisplayModes counterpart:v16];
  LOBYTE(eligibleDisplayModes) = [v5 isEqual];

  return eligibleDisplayModes;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STLocationStatusDomainLocationAttribution *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STLocationStatusDomainLocationAttribution *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STLocationStatusDomainLocationAttribution *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:
{
  selfCopy = self;
  if (self)
  {
    v5 = a2;
    succinctDescriptionBuilder = [selfCopy succinctDescriptionBuilder];
    [succinctDescriptionBuilder setUseDebugDescription:prefix];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __93__STLocationStatusDomainLocationAttribution__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v9[3] = &unk_1E85DDD00;
    v7 = succinctDescriptionBuilder;
    v10 = v7;
    v11 = selfCopy;
    [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v9];

    selfCopy = v7;
  }

  return selfCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[STLocationStatusDomainLocationAttribution locationState](self forKey:{"locationState"), @"locationState"}];
  activityAttribution = [(STLocationStatusDomainLocationAttribution *)self activityAttribution];
  [coderCopy encodeObject:activityAttribution forKey:@"activityAttribution"];

  [coderCopy encodeInteger:-[STLocationStatusDomainLocationAttribution eligibleDisplayModes](self forKey:{"eligibleDisplayModes"), @"eligibleDisplayModes"}];
}

- (STLocationStatusDomainLocationAttribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"locationState"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityAttribution"];
  v7 = [coderCopy decodeIntegerForKey:@"eligibleDisplayModes"];

  if (v6)
  {
    self = [(STLocationStatusDomainLocationAttribution *)self initWithLocationState:v5 activityAttribution:v6 eligibleDisplayModes:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end