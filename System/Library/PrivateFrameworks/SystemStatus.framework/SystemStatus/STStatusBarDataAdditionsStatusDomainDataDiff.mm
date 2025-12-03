@interface STStatusBarDataAdditionsStatusDomainDataDiff
+ (id)diffFromData:(id)data toData:(id)toData;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOrthogonalToDiff:(id)diff;
- (STStatusBarDataAdditionsStatusDomainDataDiff)init;
- (STStatusBarDataAdditionsStatusDomainDataDiff)initWithCoder:(id)coder;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)dataByApplyingToData:(id)data;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffByApplyingDiff:(id)diff;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableData:(id)data;
- (void)encodeWithCoder:(id)coder;
- (void)initWithChanges:(void *)changes entryDictionaryDataDiff:;
@end

@implementation STStatusBarDataAdditionsStatusDomainDataDiff

+ (id)diffFromData:(id)data toData:(id)toData
{
  v5 = MEMORY[0x1E698E700];
  toDataCopy = toData;
  dataCopy = data;
  v8 = objc_alloc_init(v5);
  entryDictionaryData = [dataCopy entryDictionaryData];

  entryDictionaryData2 = [toDataCopy entryDictionaryData];

  v11 = [STDictionaryDataDiff diffFromDictionaryData:entryDictionaryData toDictionaryData:entryDictionaryData2];

  v12 = [[STStatusBarDataAdditionsStatusDomainDataDiff alloc] initWithChanges:v8 entryDictionaryDataDiff:v11];

  return v12;
}

- (void)initWithChanges:(void *)changes entryDictionaryDataDiff:
{
  v5 = a2;
  changesCopy = changes;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = STStatusBarDataAdditionsStatusDomainDataDiff;
    self = objc_msgSendSuper2(&v12, sel_init);
    if (self)
    {
      v7 = [v5 copy];
      v8 = self[1];
      self[1] = v7;

      v9 = [changesCopy copy];
      v10 = self[2];
      self[2] = v9;
    }
  }

  return self;
}

- (STStatusBarDataAdditionsStatusDomainDataDiff)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E768]);
  v4 = objc_alloc_init(STDictionaryDataDiff);
  v5 = [(STStatusBarDataAdditionsStatusDomainDataDiff *)self initWithChanges:v3 entryDictionaryDataDiff:v4];

  return v5;
}

- (id)dataByApplyingToData:(id)data
{
  v4 = [data mutableCopy];
  [(STStatusBarDataAdditionsStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)data
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
  dataCopy = data;
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
  entryDictionaryData = [dataCopy entryDictionaryData];

  [(STDictionaryDataDiff *)v8 applyToMutableDictionaryData:entryDictionaryData];
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

    isEmpty = [(STDictionaryDataDiff *)entryDictionaryDataDiff isEmpty];
  }

  else
  {
    isEmpty = 0;
  }

  return isEmpty;
}

- (id)diffByApplyingDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = diffCopy;
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

- (BOOL)isOrthogonalToDiff:(id)diff
{
  diffCopy = diff;
  if ([(STStatusBarDataAdditionsStatusDomainDataDiff *)self isEmpty])
  {
    isEmpty = 1;
  }

  else
  {
    isEmpty = [diffCopy isEmpty];
  }

  return isEmpty;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
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
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = builder;
  if (self)
  {
    v5 = [builder appendObject:self->_changes];
    entryDictionaryDataDiff = self->_entryDictionaryDataDiff;
  }

  else
  {
    v10 = [builder appendObject:0];
    entryDictionaryDataDiff = 0;
  }

  v7 = [v4 appendObject:entryDictionaryDataDiff];
  v8 = [v4 hash];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    [coder encodeObject:self->_changes forKey:@"changes"];
    entryDictionaryDataDiff = self->_entryDictionaryDataDiff;
  }

  else
  {
    [coder encodeObject:0 forKey:@"changes"];
    entryDictionaryDataDiff = 0;
  }

  [coder encodeObject:entryDictionaryDataDiff forKey:@"entryDictionaryDataDiff"];
}

- (STStatusBarDataAdditionsStatusDomainDataDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changes"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entryDictionaryDataDiff"];

  v7 = [(STStatusBarDataAdditionsStatusDomainDataDiff *)self initWithChanges:v5 entryDictionaryDataDiff:v6];
  return v7;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STStatusBarDataAdditionsStatusDomainDataDiff *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusBarDataAdditionsStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusBarDataAdditionsStatusDomainDataDiff *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    [succinctDescriptionBuilder setActiveMultilinePrefix:v5];

    activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __96__STStatusBarDataAdditionsStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDD00;
    v8 = succinctDescriptionBuilder;
    v11 = v8;
    v12 = selfCopy;
    [v8 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v10];

    selfCopy = v8;
  }

  return selfCopy;
}

@end