@interface STStatusBarOverridesStatusDomainData
- (BOOL)isEqual:(id)equal;
- (NSSet)suppressedBackgroundActivityIdentifiers;
- (STStatusBarOverridesStatusDomainData)init;
- (STStatusBarOverridesStatusDomainData)initWithCoder:(id)coder;
- (STStatusBarOverridesStatusDomainData)initWithCustomOverrides:(id)overrides;
- (STStatusBarOverridesStatusDomainData)initWithCustomOverrides:(id)overrides suppressedBackgroundActivityIdentifierListData:(id)data;
- (STStatusBarOverridesStatusDomainData)initWithCustomOverrides:(id)overrides suppressedBackgroundActivityIdentifiers:(id)identifiers;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)_initWithCustomOverrides:(void *)overrides suppressedBackgroundActivityIdentifierListData:;
- (id)dataByApplyingDiff:(id)diff;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffFromData:(id)data;
- (id)initWithData:(void *)data;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarOverridesStatusDomainData

- (STStatusBarOverridesStatusDomainData)init
{
  v3 = objc_opt_new();
  v4 = [(STStatusBarOverridesStatusDomainData *)self initWithCustomOverrides:v3];

  return v4;
}

- (STStatusBarOverridesStatusDomainData)initWithCustomOverrides:(id)overrides
{
  overridesCopy = overrides;
  v11.receiver = self;
  v11.super_class = STStatusBarOverridesStatusDomainData;
  v5 = [(STStatusBarOverridesStatusDomainData *)&v11 init];
  if (v5)
  {
    immutableCopy = [overridesCopy immutableCopy];
    customOverrides = v5->_customOverrides;
    v5->_customOverrides = immutableCopy;
  }

  v8 = [MEMORY[0x1E695DFD8] set];
  v9 = [(STStatusBarOverridesStatusDomainData *)v5 initWithCustomOverrides:overridesCopy suppressedBackgroundActivityIdentifiers:v8];

  return v9;
}

- (STStatusBarOverridesStatusDomainData)initWithCustomOverrides:(id)overrides suppressedBackgroundActivityIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  overridesCopy = overrides;
  v8 = [STListData alloc];
  allObjects = [identifiersCopy allObjects];

  v10 = [(STListData *)v8 initWithObjects:allObjects];
  v11 = [(STStatusBarOverridesStatusDomainData *)self initWithCustomOverrides:overridesCopy suppressedBackgroundActivityIdentifierListData:v10];

  return v11;
}

- (id)initWithData:(void *)data
{
  dataCopy = data;
  if (data)
  {
    v3 = a2;
    customOverrides = [v3 customOverrides];
    suppressedBackgroundActivityIdentifierListData = [v3 suppressedBackgroundActivityIdentifierListData];

    dataCopy = [dataCopy initWithCustomOverrides:customOverrides suppressedBackgroundActivityIdentifierListData:suppressedBackgroundActivityIdentifierListData];
  }

  return dataCopy;
}

- (STStatusBarOverridesStatusDomainData)initWithCustomOverrides:(id)overrides suppressedBackgroundActivityIdentifierListData:(id)data
{
  overridesCopy = overrides;
  v7 = [data copy];
  v8 = [(STStatusBarOverridesStatusDomainData *)&self->super.isa _initWithCustomOverrides:overridesCopy suppressedBackgroundActivityIdentifierListData:v7];

  return v8;
}

- (id)_initWithCustomOverrides:(void *)overrides suppressedBackgroundActivityIdentifierListData:
{
  v5 = a2;
  overridesCopy = overrides;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = STStatusBarOverridesStatusDomainData;
    self = objc_msgSendSuper2(&v10, sel_init);
    if (self)
    {
      immutableCopy = [v5 immutableCopy];
      v8 = self[2];
      self[2] = immutableCopy;

      objc_storeStrong(self + 1, overrides);
    }
  }

  return self;
}

- (NSSet)suppressedBackgroundActivityIdentifiers
{
  v2 = MEMORY[0x1E695DFD8];
  objects = [(STListData *)self->_suppressedBackgroundActivityIdentifierListData objects];
  v4 = [v2 setWithArray:objects];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
  customOverrides = [(STStatusBarOverridesStatusDomainData *)self customOverrides];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __48__STStatusBarOverridesStatusDomainData_isEqual___block_invoke;
  v19[3] = &unk_1E85DEFB0;
  v8 = v6;
  v20 = v8;
  v9 = [v5 appendObject:customOverrides counterpart:v19];

  suppressedBackgroundActivityIdentifierListData = [(STStatusBarOverridesStatusDomainData *)self suppressedBackgroundActivityIdentifierListData];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __48__STStatusBarOverridesStatusDomainData_isEqual___block_invoke_2;
  v17 = &unk_1E85DEFD8;
  v18 = v8;
  v11 = v8;
  v12 = [v5 appendObject:suppressedBackgroundActivityIdentifierListData counterpart:&v14];

  LOBYTE(suppressedBackgroundActivityIdentifierListData) = [v5 isEqual];
  return suppressedBackgroundActivityIdentifierListData;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  customOverrides = [(STStatusBarOverridesStatusDomainData *)self customOverrides];
  v5 = [builder appendObject:customOverrides];

  suppressedBackgroundActivityIdentifierListData = [(STStatusBarOverridesStatusDomainData *)self suppressedBackgroundActivityIdentifierListData];
  v7 = [builder appendObject:suppressedBackgroundActivityIdentifierListData];

  editedKeys = [(STStatusBarOverridesStatusDomainData *)self editedKeys];
  v9 = [builder appendObject:editedKeys];

  editedIdentifiers = [(STStatusBarOverridesStatusDomainData *)self editedIdentifiers];
  v11 = [builder appendObject:editedIdentifiers];

  v12 = [builder hash];
  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableStatusBarOverridesStatusDomainData allocWithZone:zone];

  return [(STStatusBarOverridesStatusDomainData *)v4 initWithData:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STStatusBarOverridesStatusDomainData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusBarOverridesStatusDomainData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusBarOverridesStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[2] = __88__STStatusBarOverridesStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

void __88__STStatusBarOverridesStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) customOverrides];
  v4 = [v2 appendObject:v3 withName:@"customOverrides" skipIfNil:1];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) editedKeys];
  v7 = [v5 appendObject:v6 withName:@"editedKeys" skipIfNil:1];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) editedIdentifiers];
  v10 = [v8 appendObject:v9 withName:@"editedIdentifiers" skipIfNil:1];

  v11 = *(a1 + 32);
  v14 = [*(a1 + 40) suppressedBackgroundActivityIdentifierListData];
  v12 = [v14 objects];
  v13 = [*(a1 + 32) activeMultilinePrefix];
  [v11 appendArraySection:v12 withName:@"suppressedBackgroundActivityIdentifiers" multilinePrefix:v13 skipIfEmpty:1 objectTransformer:&__block_literal_global_17];
}

- (id)diffFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STStatusBarOverridesStatusDomainDataDiff diffFromData:dataCopy toData:self];
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
      v5 = [(STStatusBarOverridesStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STStatusBarOverridesStatusDomainData *)self mutableCopy];
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
  customOverrides = [(STStatusBarOverridesStatusDomainData *)self customOverrides];
  [coderCopy encodeObject:customOverrides forKey:@"customOverrides"];

  suppressedBackgroundActivityIdentifierListData = [(STStatusBarOverridesStatusDomainData *)self suppressedBackgroundActivityIdentifierListData];
  [coderCopy encodeObject:suppressedBackgroundActivityIdentifierListData forKey:@"suppressedBackgroundActivityIdentifierListData"];
}

- (STStatusBarOverridesStatusDomainData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customOverrides"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suppressedBackgroundActivityIdentifierListData"];

  v7 = [(STStatusBarOverridesStatusDomainData *)self initWithCustomOverrides:v5 suppressedBackgroundActivityIdentifierListData:v6];
  return v7;
}

@end