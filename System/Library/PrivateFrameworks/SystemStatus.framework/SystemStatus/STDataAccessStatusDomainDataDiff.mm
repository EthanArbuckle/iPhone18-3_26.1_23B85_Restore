@interface STDataAccessStatusDomainDataDiff
+ (id)diffFromData:(id)data toData:(id)toData;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOrthogonalToDiff:(id)diff;
- (STDataAccessStatusDomainDataDiff)init;
- (STDataAccessStatusDomainDataDiff)initWithAttributionListDataDiff:(id)diff;
- (STDataAccessStatusDomainDataDiff)initWithCoder:(id)coder;
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

@implementation STDataAccessStatusDomainDataDiff

- (BOOL)isEmpty
{
  if (self)
  {
    self = self->_attributionListDataDiff;
  }

  return [(STDataAccessStatusDomainDataDiff *)self isEmpty];
}

+ (id)diffFromData:(id)data toData:(id)toData
{
  toDataCopy = toData;
  attributionListData = [data attributionListData];
  attributionListData2 = [toDataCopy attributionListData];

  v8 = [STListDataDiff diffFromListData:attributionListData toListData:attributionListData2];

  v9 = [[STDataAccessStatusDomainDataDiff alloc] initWithAttributionListDataDiff:v8];

  return v9;
}

- (STDataAccessStatusDomainDataDiff)init
{
  v3 = objc_alloc_init(STListDataDiff);
  v4 = [(STDataAccessStatusDomainDataDiff *)self initWithAttributionListDataDiff:v3];

  return v4;
}

- (STDataAccessStatusDomainDataDiff)initWithAttributionListDataDiff:(id)diff
{
  diffCopy = diff;
  v9.receiver = self;
  v9.super_class = STDataAccessStatusDomainDataDiff;
  v5 = [(STDataAccessStatusDomainDataDiff *)&v9 init];
  if (v5)
  {
    v6 = [diffCopy copy];
    attributionListDataDiff = v5->_attributionListDataDiff;
    v5->_attributionListDataDiff = v6;
  }

  return v5;
}

- (id)dataByApplyingToData:(id)data
{
  v4 = [data mutableCopy];
  [(STDataAccessStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)data
{
  if (self)
  {
    attributionListDataDiff = self->_attributionListDataDiff;
  }

  else
  {
    attributionListDataDiff = 0;
  }

  v5 = attributionListDataDiff;
  attributionListData = [data attributionListData];
  [(STListDataDiff *)v5 applyToMutableListData:attributionListData];
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
      attributionListDataDiff = self->_attributionListDataDiff;
      if (v5)
      {
LABEL_4:
        v8 = v5[1];
LABEL_5:
        v9 = attributionListDataDiff;
        v10 = [(STListDataDiff *)v9 diffByApplyingDiff:v8];

        v11 = [[STDataAccessStatusDomainDataDiff alloc] initWithAttributionListDataDiff:v10];
        goto LABEL_7;
      }
    }

    else
    {
      attributionListDataDiff = 0;
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
  if ([(STDataAccessStatusDomainDataDiff *)self isEmpty])
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
  v7 = v6;
  if (self)
  {
    attributionListDataDiff = self->_attributionListDataDiff;
  }

  else
  {
    attributionListDataDiff = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__STDataAccessStatusDomainDataDiff_isEqual___block_invoke;
  v12[3] = &unk_1E85DE778;
  v13 = v6;
  v9 = [v5 appendObject:attributionListDataDiff counterpart:v12];
  v10 = [v5 isEqual];

  return v10;
}

id __44__STDataAccessStatusDomainDataDiff_isEqual___block_invoke(uint64_t a1)
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
    attributionListDataDiff = self->_attributionListDataDiff;
  }

  else
  {
    attributionListDataDiff = 0;
  }

  v6 = [builder appendObject:attributionListDataDiff];
  v7 = [v4 hash];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    attributionListDataDiff = self->_attributionListDataDiff;
  }

  else
  {
    attributionListDataDiff = 0;
  }

  [coder encodeObject:attributionListDataDiff forKey:@"attributionListDataDiff"];
}

- (STDataAccessStatusDomainDataDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributionListDataDiff"];

  if (v5)
  {
    self = [(STDataAccessStatusDomainDataDiff *)self initWithAttributionListDataDiff:v5];
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
  succinctDescriptionBuilder = [(STDataAccessStatusDomainDataDiff *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STDataAccessStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STDataAccessStatusDomainDataDiff *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[2] = __84__STDataAccessStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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