@interface STAirPlayStatusDomainData
- (BOOL)isEqual:(id)a3;
- (STAirPlayStatusDomainData)initWithCoder:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)dataByApplyingDiff:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffFromData:(id)a3;
- (id)initWithAirPlayState:(void *)a3 bundleIdentifier:;
- (id)initWithData:(id *)a1;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STAirPlayStatusDomainData

- (id)initWithData:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v3 airPlayState];
    v5 = [v3 bundleIdentifier];

    v2 = [(STAirPlayStatusDomainData *)v2 initWithAirPlayState:v4 bundleIdentifier:v5];
  }

  return v2;
}

- (id)initWithAirPlayState:(void *)a3 bundleIdentifier:
{
  v6 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = STAirPlayStatusDomainData;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    a1 = v7;
    if (v7)
    {
      v7[1] = a2;
      objc_storeStrong(v7 + 2, a3);
    }
  }

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STAirPlayStatusDomainData *)self airPlayState];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __37__STAirPlayStatusDomainData_isEqual___block_invoke;
  v18[3] = &unk_1E85DE2F8;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendUnsignedInteger:v6 counterpart:v18];
  v9 = [(STAirPlayStatusDomainData *)self bundleIdentifier];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __37__STAirPlayStatusDomainData_isEqual___block_invoke_2;
  v16 = &unk_1E85DDD28;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendString:v9 counterpart:&v13];

  LOBYTE(v9) = [v5 isEqual];
  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendUnsignedInteger:{-[STAirPlayStatusDomainData airPlayState](self, "airPlayState")}];
  v5 = [(STAirPlayStatusDomainData *)self bundleIdentifier];
  v6 = [v3 appendString:v5];

  v7 = [v3 hash];
  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableAirPlayStatusDomainData allocWithZone:a3];

  return [(STAirPlayStatusDomainData *)&v4->super.super.isa initWithData:?];
}

- (id)succinctDescription
{
  v2 = [(STAirPlayStatusDomainData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STAirPlayStatusDomainData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STAirPlayStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v10[2] = __77__STAirPlayStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

- (id)diffFromData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STAirPlayStatusDomainDataDiff diffFromData:v4 toData:self];
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
      v5 = [(STAirPlayStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STAirPlayStatusDomainData *)self mutableCopy];
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
  v4 = a3;
  [v4 encodeInteger:-[STAirPlayStatusDomainData airPlayState](self forKey:{"airPlayState"), @"airPlayState"}];
  v5 = [(STAirPlayStatusDomainData *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];
}

- (STAirPlayStatusDomainData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"airPlayState"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  v7 = [(STAirPlayStatusDomainData *)&self->super.isa initWithAirPlayState:v5 bundleIdentifier:v6];
  return v7;
}

@end