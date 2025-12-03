@interface STFocusStatusDomainData
- (BOOL)isEqual:(id)equal;
- (STFocusStatusDomainData)initWithCoder:(id)coder;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)dataByApplyingDiff:(id)diff;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffFromData:(id)data;
- (id)initWithData:(id *)data;
- (id)initWithModeIdentifier:(void *)identifier modeName:(void *)name modeSymbol:;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STFocusStatusDomainData

- (id)initWithData:(id *)data
{
  dataCopy = data;
  if (data)
  {
    v3 = a2;
    modeIdentifier = [v3 modeIdentifier];
    modeName = [v3 modeName];
    modeSymbol = [v3 modeSymbol];

    dataCopy = [(STFocusStatusDomainData *)dataCopy initWithModeIdentifier:modeIdentifier modeName:modeName modeSymbol:modeSymbol];
  }

  return dataCopy;
}

- (id)initWithModeIdentifier:(void *)identifier modeName:(void *)name modeSymbol:
{
  v8 = a2;
  identifierCopy = identifier;
  nameCopy = name;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = STFocusStatusDomainData;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(self + 2, identifier);
      objc_storeStrong(self + 3, name);
    }
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  modeIdentifier = [(STFocusStatusDomainData *)self modeIdentifier];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __35__STFocusStatusDomainData_isEqual___block_invoke;
  v20[3] = &unk_1E85DDD28;
  v7 = equalCopy;
  v21 = v7;
  v8 = [v5 appendString:modeIdentifier counterpart:v20];

  modeName = [(STFocusStatusDomainData *)self modeName];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __35__STFocusStatusDomainData_isEqual___block_invoke_2;
  v18[3] = &unk_1E85DDD28;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendString:modeName counterpart:v18];

  modeSymbol = [(STFocusStatusDomainData *)self modeSymbol];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __35__STFocusStatusDomainData_isEqual___block_invoke_3;
  v16[3] = &unk_1E85DDD28;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendString:modeSymbol counterpart:v16];

  LOBYTE(modeSymbol) = [v5 isEqual];
  return modeSymbol;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  modeIdentifier = [(STFocusStatusDomainData *)self modeIdentifier];
  v5 = [builder appendString:modeIdentifier];

  modeName = [(STFocusStatusDomainData *)self modeName];
  v7 = [builder appendString:modeName];

  modeSymbol = [(STFocusStatusDomainData *)self modeSymbol];
  v9 = [builder appendString:modeSymbol];

  v10 = [builder hash];
  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableFocusStatusDomainData allocWithZone:zone];

  return [(STFocusStatusDomainData *)&v4->super.super.isa initWithData:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STFocusStatusDomainData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STFocusStatusDomainData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STFocusStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[2] = __75__STFocusStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

- (id)diffFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STFocusStatusDomainDataDiff diffFromData:dataCopy toData:self];
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
      v5 = [(STFocusStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STFocusStatusDomainData *)self mutableCopy];
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
  modeIdentifier = [(STFocusStatusDomainData *)self modeIdentifier];
  [coderCopy encodeObject:modeIdentifier forKey:@"modeIdentifier"];

  modeName = [(STFocusStatusDomainData *)self modeName];
  [coderCopy encodeObject:modeName forKey:@"modeName"];

  modeSymbol = [(STFocusStatusDomainData *)self modeSymbol];
  [coderCopy encodeObject:modeSymbol forKey:@"modeSymbol"];
}

- (STFocusStatusDomainData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modeIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modeName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modeSymbol"];

  v8 = [(STFocusStatusDomainData *)&self->super.isa initWithModeIdentifier:v5 modeName:v6 modeSymbol:v7];
  return v8;
}

@end