@interface STStatusBarOverridesStatusDomainData
- (BOOL)isEqual:(id)a3;
- (NSSet)suppressedBackgroundActivityIdentifiers;
- (STStatusBarOverridesStatusDomainData)init;
- (STStatusBarOverridesStatusDomainData)initWithCoder:(id)a3;
- (STStatusBarOverridesStatusDomainData)initWithCustomOverrides:(id)a3;
- (STStatusBarOverridesStatusDomainData)initWithCustomOverrides:(id)a3 suppressedBackgroundActivityIdentifierListData:(id)a4;
- (STStatusBarOverridesStatusDomainData)initWithCustomOverrides:(id)a3 suppressedBackgroundActivityIdentifiers:(id)a4;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)_initWithCustomOverrides:(void *)a3 suppressedBackgroundActivityIdentifierListData:;
- (id)dataByApplyingDiff:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffFromData:(id)a3;
- (id)initWithData:(void *)a1;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarOverridesStatusDomainData

- (STStatusBarOverridesStatusDomainData)init
{
  v3 = objc_opt_new();
  v4 = [(STStatusBarOverridesStatusDomainData *)self initWithCustomOverrides:v3];

  return v4;
}

- (STStatusBarOverridesStatusDomainData)initWithCustomOverrides:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = STStatusBarOverridesStatusDomainData;
  v5 = [(STStatusBarOverridesStatusDomainData *)&v11 init];
  if (v5)
  {
    v6 = [v4 immutableCopy];
    customOverrides = v5->_customOverrides;
    v5->_customOverrides = v6;
  }

  v8 = [MEMORY[0x1E695DFD8] set];
  v9 = [(STStatusBarOverridesStatusDomainData *)v5 initWithCustomOverrides:v4 suppressedBackgroundActivityIdentifiers:v8];

  return v9;
}

- (STStatusBarOverridesStatusDomainData)initWithCustomOverrides:(id)a3 suppressedBackgroundActivityIdentifiers:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [STListData alloc];
  v9 = [v6 allObjects];

  v10 = [(STListData *)v8 initWithObjects:v9];
  v11 = [(STStatusBarOverridesStatusDomainData *)self initWithCustomOverrides:v7 suppressedBackgroundActivityIdentifierListData:v10];

  return v11;
}

- (id)initWithData:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v3 customOverrides];
    v5 = [v3 suppressedBackgroundActivityIdentifierListData];

    v2 = [v2 initWithCustomOverrides:v4 suppressedBackgroundActivityIdentifierListData:v5];
  }

  return v2;
}

- (STStatusBarOverridesStatusDomainData)initWithCustomOverrides:(id)a3 suppressedBackgroundActivityIdentifierListData:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  v8 = [(STStatusBarOverridesStatusDomainData *)&self->super.isa _initWithCustomOverrides:v6 suppressedBackgroundActivityIdentifierListData:v7];

  return v8;
}

- (id)_initWithCustomOverrides:(void *)a3 suppressedBackgroundActivityIdentifierListData:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = STStatusBarOverridesStatusDomainData;
    a1 = objc_msgSendSuper2(&v10, sel_init);
    if (a1)
    {
      v7 = [v5 immutableCopy];
      v8 = a1[2];
      a1[2] = v7;

      objc_storeStrong(a1 + 1, a3);
    }
  }

  return a1;
}

- (NSSet)suppressedBackgroundActivityIdentifiers
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(STListData *)self->_suppressedBackgroundActivityIdentifierListData objects];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = v4;
  v7 = [(STStatusBarOverridesStatusDomainData *)self customOverrides];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __48__STStatusBarOverridesStatusDomainData_isEqual___block_invoke;
  v19[3] = &unk_1E85DEFB0;
  v8 = v6;
  v20 = v8;
  v9 = [v5 appendObject:v7 counterpart:v19];

  v10 = [(STStatusBarOverridesStatusDomainData *)self suppressedBackgroundActivityIdentifierListData];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __48__STStatusBarOverridesStatusDomainData_isEqual___block_invoke_2;
  v17 = &unk_1E85DEFD8;
  v18 = v8;
  v11 = v8;
  v12 = [v5 appendObject:v10 counterpart:&v14];

  LOBYTE(v10) = [v5 isEqual];
  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STStatusBarOverridesStatusDomainData *)self customOverrides];
  v5 = [v3 appendObject:v4];

  v6 = [(STStatusBarOverridesStatusDomainData *)self suppressedBackgroundActivityIdentifierListData];
  v7 = [v3 appendObject:v6];

  v8 = [(STStatusBarOverridesStatusDomainData *)self editedKeys];
  v9 = [v3 appendObject:v8];

  v10 = [(STStatusBarOverridesStatusDomainData *)self editedIdentifiers];
  v11 = [v3 appendObject:v10];

  v12 = [v3 hash];
  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableStatusBarOverridesStatusDomainData allocWithZone:a3];

  return [(STStatusBarOverridesStatusDomainData *)v4 initWithData:?];
}

- (id)succinctDescription
{
  v2 = [(STStatusBarOverridesStatusDomainData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusBarOverridesStatusDomainData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusBarOverridesStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v10[2] = __88__STStatusBarOverridesStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

- (id)diffFromData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STStatusBarOverridesStatusDomainDataDiff diffFromData:v4 toData:self];
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
      v5 = [(STStatusBarOverridesStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STStatusBarOverridesStatusDomainData *)self mutableCopy];
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
  v5 = [(STStatusBarOverridesStatusDomainData *)self customOverrides];
  [v4 encodeObject:v5 forKey:@"customOverrides"];

  v6 = [(STStatusBarOverridesStatusDomainData *)self suppressedBackgroundActivityIdentifierListData];
  [v4 encodeObject:v6 forKey:@"suppressedBackgroundActivityIdentifierListData"];
}

- (STStatusBarOverridesStatusDomainData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customOverrides"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suppressedBackgroundActivityIdentifierListData"];

  v7 = [(STStatusBarOverridesStatusDomainData *)self initWithCustomOverrides:v5 suppressedBackgroundActivityIdentifierListData:v6];
  return v7;
}

@end