@interface STCallingStatusDomainDataDiff
+ (id)diffFromData:(id)data toData:(id)toData;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOrthogonalToDiff:(id)diff;
- (STCallingStatusDomainDataDiff)init;
- (STCallingStatusDomainDataDiff)initWithCallDescriptorListDataDiff:(id)diff;
- (STCallingStatusDomainDataDiff)initWithCoder:(id)coder;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)dataByApplyingToData:(id)data;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffByApplyingDiff:(id)diff;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STCallingStatusDomainDataDiff

- (BOOL)isEmpty
{
  if (self)
  {
    self = self->_callDescriptorListDataDiff;
  }

  return [(STCallingStatusDomainDataDiff *)self isEmpty];
}

+ (id)diffFromData:(id)data toData:(id)toData
{
  toDataCopy = toData;
  callDescriptorListData = [data callDescriptorListData];
  callDescriptorListData2 = [toDataCopy callDescriptorListData];

  v8 = [STListDataDiff diffFromListData:callDescriptorListData toListData:callDescriptorListData2];

  v9 = [[STCallingStatusDomainDataDiff alloc] initWithCallDescriptorListDataDiff:v8];

  return v9;
}

- (STCallingStatusDomainDataDiff)init
{
  v3 = objc_alloc_init(STListDataDiff);
  v4 = [(STCallingStatusDomainDataDiff *)self initWithCallDescriptorListDataDiff:v3];

  return v4;
}

- (STCallingStatusDomainDataDiff)initWithCallDescriptorListDataDiff:(id)diff
{
  diffCopy = diff;
  v9.receiver = self;
  v9.super_class = STCallingStatusDomainDataDiff;
  v5 = [(STCallingStatusDomainDataDiff *)&v9 init];
  if (v5)
  {
    v6 = [diffCopy copy];
    callDescriptorListDataDiff = v5->_callDescriptorListDataDiff;
    v5->_callDescriptorListDataDiff = v6;
  }

  return v5;
}

- (id)dataByApplyingToData:(id)data
{
  v4 = [data mutableCopy];
  [(STCallingStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)data
{
  if (self)
  {
    callDescriptorListDataDiff = self->_callDescriptorListDataDiff;
  }

  else
  {
    callDescriptorListDataDiff = 0;
  }

  v5 = callDescriptorListDataDiff;
  callDescriptorListData = [data callDescriptorListData];
  [(STListDataDiff *)v5 applyToMutableListData:callDescriptorListData];
}

- (id)diffByApplyingDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = diffCopy;
    v6 = v5;
    if (self)
    {
      callDescriptorListDataDiff = self->_callDescriptorListDataDiff;
      if (v5)
      {
LABEL_4:
        v8 = v5[1];
LABEL_5:
        v9 = callDescriptorListDataDiff;
        v10 = [(STListDataDiff *)v9 diffByApplyingDiff:v8];

        v11 = [[STCallingStatusDomainDataDiff alloc] initWithCallDescriptorListDataDiff:v10];
        goto LABEL_7;
      }
    }

    else
    {
      callDescriptorListDataDiff = 0;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v8 = 0;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (BOOL)isOrthogonalToDiff:(id)diff
{
  diffCopy = diff;
  if ([(STCallingStatusDomainDataDiff *)self isEmpty])
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
  if (self)
  {
    self = self->_callDescriptorListDataDiff;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__STCallingStatusDomainDataDiff_isEqual___block_invoke;
  v10[3] = &unk_1E85DDCD8;
  v11 = equalCopy;
  v6 = equalCopy;
  v7 = [v5 appendObject:self counterpart:v10];
  v8 = [v5 isEqual];

  return v8;
}

id __41__STCallingStatusDomainDataDiff_isEqual___block_invoke(uint64_t a1)
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

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = builder;
  if (self)
  {
    callDescriptorListDataDiff = self->_callDescriptorListDataDiff;
  }

  else
  {
    callDescriptorListDataDiff = 0;
  }

  v6 = [builder appendObject:callDescriptorListDataDiff];
  v7 = [v4 hash];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    callDescriptorListDataDiff = self->_callDescriptorListDataDiff;
  }

  else
  {
    callDescriptorListDataDiff = 0;
  }

  [coder encodeObject:callDescriptorListDataDiff forKey:@"callDescriptorListDataDiff"];
}

- (STCallingStatusDomainDataDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callDescriptorListDataDiff"];

  if (v5)
  {
    self = [(STCallingStatusDomainDataDiff *)self initWithCallDescriptorListDataDiff:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STCallingStatusDomainDataDiff *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STCallingStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STCallingStatusDomainDataDiff *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[2] = __81__STCallingStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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