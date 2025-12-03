@interface STAirPlayStatusDomainData
- (BOOL)isEqual:(id)equal;
- (STAirPlayStatusDomainData)initWithCoder:(id)coder;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)dataByApplyingDiff:(id)diff;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffFromData:(id)data;
- (id)initWithAirPlayState:(void *)state bundleIdentifier:;
- (id)initWithData:(id *)data;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STAirPlayStatusDomainData

- (id)initWithData:(id *)data
{
  dataCopy = data;
  if (data)
  {
    v3 = a2;
    airPlayState = [v3 airPlayState];
    bundleIdentifier = [v3 bundleIdentifier];

    dataCopy = [(STAirPlayStatusDomainData *)dataCopy initWithAirPlayState:airPlayState bundleIdentifier:bundleIdentifier];
  }

  return dataCopy;
}

- (id)initWithAirPlayState:(void *)state bundleIdentifier:
{
  stateCopy = state;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = STAirPlayStatusDomainData;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    self = v7;
    if (v7)
    {
      v7[1] = a2;
      objc_storeStrong(v7 + 2, state);
    }
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  airPlayState = [(STAirPlayStatusDomainData *)self airPlayState];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __37__STAirPlayStatusDomainData_isEqual___block_invoke;
  v18[3] = &unk_1E85DE2F8;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendUnsignedInteger:airPlayState counterpart:v18];
  bundleIdentifier = [(STAirPlayStatusDomainData *)self bundleIdentifier];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __37__STAirPlayStatusDomainData_isEqual___block_invoke_2;
  v16 = &unk_1E85DDD28;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendString:bundleIdentifier counterpart:&v13];

  LOBYTE(bundleIdentifier) = [v5 isEqual];
  return bundleIdentifier;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendUnsignedInteger:{-[STAirPlayStatusDomainData airPlayState](self, "airPlayState")}];
  bundleIdentifier = [(STAirPlayStatusDomainData *)self bundleIdentifier];
  v6 = [builder appendString:bundleIdentifier];

  v7 = [builder hash];
  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableAirPlayStatusDomainData allocWithZone:zone];

  return [(STAirPlayStatusDomainData *)&v4->super.super.isa initWithData:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STAirPlayStatusDomainData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STAirPlayStatusDomainData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STAirPlayStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[2] = __77__STAirPlayStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

void __77__STAirPlayStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) airPlayState];
  if (v3 > 2)
  {
    v4 = @"(unknown)";
  }

  else
  {
    v4 = off_1E85DECA0[v3];
  }

  [v2 appendString:v4 withName:@"airPlayState"];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) bundleIdentifier];
  [v5 appendString:v6 withName:@"bundleIdentifier"];
}

- (id)diffFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STAirPlayStatusDomainDataDiff diffFromData:dataCopy toData:self];
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
      v5 = [(STAirPlayStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STAirPlayStatusDomainData *)self mutableCopy];
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
  [coderCopy encodeInteger:-[STAirPlayStatusDomainData airPlayState](self forKey:{"airPlayState"), @"airPlayState"}];
  bundleIdentifier = [(STAirPlayStatusDomainData *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
}

- (STAirPlayStatusDomainData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"airPlayState"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  v7 = [(STAirPlayStatusDomainData *)&self->super.isa initWithAirPlayState:v5 bundleIdentifier:v6];
  return v7;
}

@end