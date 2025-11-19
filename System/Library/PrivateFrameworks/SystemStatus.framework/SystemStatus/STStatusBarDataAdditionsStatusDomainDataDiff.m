@interface STStatusBarDataAdditionsStatusDomainDataDiff
+ (id)diffFromData:(id)a3 toData:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOrthogonalToDiff:(id)a3;
- (STStatusBarDataAdditionsStatusDomainDataDiff)init;
- (STStatusBarDataAdditionsStatusDomainDataDiff)initWithCoder:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)dataByApplyingToData:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffByApplyingDiff:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableData:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)initWithChanges:(void *)a3 entryDictionaryDataDiff:;
@end

@implementation STStatusBarDataAdditionsStatusDomainDataDiff

+ (id)diffFromData:(id)a3 toData:(id)a4
{
  v5 = MEMORY[0x1E698E700];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v9 = [v7 entryDictionaryData];

  v10 = [v6 entryDictionaryData];

  v11 = [STDictionaryDataDiff diffFromDictionaryData:v9 toDictionaryData:v10];

  v12 = [[STStatusBarDataAdditionsStatusDomainDataDiff alloc] initWithChanges:v8 entryDictionaryDataDiff:v11];

  return v12;
}

- (void)initWithChanges:(void *)a3 entryDictionaryDataDiff:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = STStatusBarDataAdditionsStatusDomainDataDiff;
    a1 = objc_msgSendSuper2(&v12, sel_init);
    if (a1)
    {
      v7 = [v5 copy];
      v8 = a1[1];
      a1[1] = v7;

      v9 = [v6 copy];
      v10 = a1[2];
      a1[2] = v9;
    }
  }

  return a1;
}

- (STStatusBarDataAdditionsStatusDomainDataDiff)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E768]);
  v4 = objc_alloc_init(STDictionaryDataDiff);
  v5 = [(STStatusBarDataAdditionsStatusDomainDataDiff *)self initWithChanges:v3 entryDictionaryDataDiff:v4];

  return v5;
}

- (id)dataByApplyingToData:(id)a3
{
  v4 = [a3 mutableCopy];
  [(STStatusBarDataAdditionsStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)a3
{
  if (self)
  {
    changes = self->_changes;
  }

  else
  {
    changes = 0;
  }

  v10 = changes;
  v6 = a3;
  [(BSSettings *)v10 isEmpty];
  if (self)
  {
    entryDictionaryDataDiff = self->_entryDictionaryDataDiff;
  }

  else
  {
    entryDictionaryDataDiff = 0;
  }

  v8 = entryDictionaryDataDiff;
  v9 = [v6 entryDictionaryData];

  [(STDictionaryDataDiff *)v8 applyToMutableDictionaryData:v9];
}

- (BOOL)isEmpty
{
  if (self)
  {
    changes = self->_changes;
  }

  else
  {
    changes = 0;
  }

  v4 = changes;
  if ([(BSSettings *)v4 isEmpty])
  {
    if (self)
    {
      entryDictionaryDataDiff = self->_entryDictionaryDataDiff;
    }

    else
    {
      entryDictionaryDataDiff = 0;
    }

    v6 = [(STDictionaryDataDiff *)entryDictionaryDataDiff isEmpty];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)diffByApplyingDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (self)
    {
      changes = self->_changes;
    }

    else
    {
      changes = 0;
    }

    v7 = [(BSSettings *)changes mutableCopy];
    if (v5)
    {
      v8 = v5[1];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [v7 applySettings:v9];
    if (self)
    {
      entryDictionaryDataDiff = self->_entryDictionaryDataDiff;
      if (v5)
      {
LABEL_8:
        v11 = v5[2];
LABEL_9:
        v12 = entryDictionaryDataDiff;
        v13 = [(STDictionaryDataDiff *)v12 diffByApplyingDiff:v11];

        v14 = [[STStatusBarDataAdditionsStatusDomainDataDiff alloc] initWithChanges:v7 entryDictionaryDataDiff:v13];
        goto LABEL_11;
      }
    }

    else
    {
      entryDictionaryDataDiff = 0;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v11 = 0;
    goto LABEL_9;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)isOrthogonalToDiff:(id)a3
{
  v4 = a3;
  if ([(STStatusBarDataAdditionsStatusDomainDataDiff *)self isEmpty])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEmpty];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = v4;
  if (self)
  {
    changes = self->_changes;
  }

  else
  {
    changes = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__STStatusBarDataAdditionsStatusDomainDataDiff_isEqual___block_invoke;
  v19[3] = &unk_1E85DDCD8;
  v8 = v6;
  v20 = v8;
  v9 = [v5 appendObject:changes counterpart:v19];
  if (self)
  {
    self = self->_entryDictionaryDataDiff;
  }

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __56__STStatusBarDataAdditionsStatusDomainDataDiff_isEqual___block_invoke_2;
  v17 = &unk_1E85DDCD8;
  v18 = v8;
  v10 = v8;
  v11 = [v5 appendObject:self counterpart:&v14];
  v12 = [v5 isEqual];

  return v12;
}

id __56__STStatusBarDataAdditionsStatusDomainDataDiff_isEqual___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

id __56__STStatusBarDataAdditionsStatusDomainDataDiff_isEqual___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = v3;
  if (self)
  {
    v5 = [v3 appendObject:self->_changes];
    entryDictionaryDataDiff = self->_entryDictionaryDataDiff;
  }

  else
  {
    v10 = [v3 appendObject:0];
    entryDictionaryDataDiff = 0;
  }

  v7 = [v4 appendObject:entryDictionaryDataDiff];
  v8 = [v4 hash];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    [a3 encodeObject:self->_changes forKey:@"changes"];
    entryDictionaryDataDiff = self->_entryDictionaryDataDiff;
  }

  else
  {
    [a3 encodeObject:0 forKey:@"changes"];
    entryDictionaryDataDiff = 0;
  }

  [a3 encodeObject:entryDictionaryDataDiff forKey:@"entryDictionaryDataDiff"];
}

- (STStatusBarDataAdditionsStatusDomainDataDiff)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changes"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entryDictionaryDataDiff"];

  v7 = [(STStatusBarDataAdditionsStatusDomainDataDiff *)self initWithChanges:v5 entryDictionaryDataDiff:v6];
  return v7;
}

- (id)succinctDescription
{
  v2 = [(STStatusBarDataAdditionsStatusDomainDataDiff *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusBarDataAdditionsStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusBarDataAdditionsStatusDomainDataDiff *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    [v6 setActiveMultilinePrefix:v5];

    v7 = [v6 activeMultilinePrefix];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __96__STStatusBarDataAdditionsStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDD00;
    v8 = v6;
    v11 = v8;
    v12 = v3;
    [v8 appendBodySectionWithName:0 multilinePrefix:v7 block:v10];

    v3 = v8;
  }

  return v3;
}

@end