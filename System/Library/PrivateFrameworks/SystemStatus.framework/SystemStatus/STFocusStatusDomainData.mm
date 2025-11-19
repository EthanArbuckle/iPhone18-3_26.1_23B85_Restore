@interface STFocusStatusDomainData
- (BOOL)isEqual:(id)a3;
- (STFocusStatusDomainData)initWithCoder:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)dataByApplyingDiff:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffFromData:(id)a3;
- (id)initWithData:(id *)a1;
- (id)initWithModeIdentifier:(void *)a3 modeName:(void *)a4 modeSymbol:;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STFocusStatusDomainData

- (id)initWithData:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v3 modeIdentifier];
    v5 = [v3 modeName];
    v6 = [v3 modeSymbol];

    v2 = [(STFocusStatusDomainData *)v2 initWithModeIdentifier:v4 modeName:v5 modeSymbol:v6];
  }

  return v2;
}

- (id)initWithModeIdentifier:(void *)a3 modeName:(void *)a4 modeSymbol:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = STFocusStatusDomainData;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
    }
  }

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STFocusStatusDomainData *)self modeIdentifier];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __35__STFocusStatusDomainData_isEqual___block_invoke;
  v20[3] = &unk_1E85DDD28;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendString:v6 counterpart:v20];

  v9 = [(STFocusStatusDomainData *)self modeName];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __35__STFocusStatusDomainData_isEqual___block_invoke_2;
  v18[3] = &unk_1E85DDD28;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendString:v9 counterpart:v18];

  v12 = [(STFocusStatusDomainData *)self modeSymbol];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __35__STFocusStatusDomainData_isEqual___block_invoke_3;
  v16[3] = &unk_1E85DDD28;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendString:v12 counterpart:v16];

  LOBYTE(v12) = [v5 isEqual];
  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STFocusStatusDomainData *)self modeIdentifier];
  v5 = [v3 appendString:v4];

  v6 = [(STFocusStatusDomainData *)self modeName];
  v7 = [v3 appendString:v6];

  v8 = [(STFocusStatusDomainData *)self modeSymbol];
  v9 = [v3 appendString:v8];

  v10 = [v3 hash];
  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableFocusStatusDomainData allocWithZone:a3];

  return [(STFocusStatusDomainData *)&v4->super.super.isa initWithData:?];
}

- (id)succinctDescription
{
  v2 = [(STFocusStatusDomainData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STFocusStatusDomainData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STFocusStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v10[2] = __75__STFocusStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

void __75__STFocusStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) modeIdentifier];
  [v2 appendString:v3 withName:@"modeIdentifier"];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) modeName];
  [v4 appendString:v5 withName:@"modeName"];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) modeSymbol];
  [v6 appendString:v7 withName:@"modeSymbol"];
}

- (id)diffFromData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STFocusStatusDomainDataDiff diffFromData:v4 toData:self];
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
      v5 = [(STFocusStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STFocusStatusDomainData *)self mutableCopy];
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
  v5 = [(STFocusStatusDomainData *)self modeIdentifier];
  [v4 encodeObject:v5 forKey:@"modeIdentifier"];

  v6 = [(STFocusStatusDomainData *)self modeName];
  [v4 encodeObject:v6 forKey:@"modeName"];

  v7 = [(STFocusStatusDomainData *)self modeSymbol];
  [v4 encodeObject:v7 forKey:@"modeSymbol"];
}

- (STFocusStatusDomainData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modeIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modeName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modeSymbol"];

  v8 = [(STFocusStatusDomainData *)&self->super.isa initWithModeIdentifier:v5 modeName:v6 modeSymbol:v7];
  return v8;
}

@end