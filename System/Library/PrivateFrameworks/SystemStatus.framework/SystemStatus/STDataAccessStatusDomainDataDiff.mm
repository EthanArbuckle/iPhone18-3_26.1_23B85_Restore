@interface STDataAccessStatusDomainDataDiff
+ (id)diffFromData:(id)a3 toData:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOrthogonalToDiff:(id)a3;
- (STDataAccessStatusDomainDataDiff)init;
- (STDataAccessStatusDomainDataDiff)initWithAttributionListDataDiff:(id)a3;
- (STDataAccessStatusDomainDataDiff)initWithCoder:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)dataByApplyingToData:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffByApplyingDiff:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableData:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

+ (id)diffFromData:(id)a3 toData:(id)a4
{
  v5 = a4;
  v6 = [a3 attributionListData];
  v7 = [v5 attributionListData];

  v8 = [STListDataDiff diffFromListData:v6 toListData:v7];

  v9 = [[STDataAccessStatusDomainDataDiff alloc] initWithAttributionListDataDiff:v8];

  return v9;
}

- (STDataAccessStatusDomainDataDiff)init
{
  v3 = objc_alloc_init(STListDataDiff);
  v4 = [(STDataAccessStatusDomainDataDiff *)self initWithAttributionListDataDiff:v3];

  return v4;
}

- (STDataAccessStatusDomainDataDiff)initWithAttributionListDataDiff:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STDataAccessStatusDomainDataDiff;
  v5 = [(STDataAccessStatusDomainDataDiff *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    attributionListDataDiff = v5->_attributionListDataDiff;
    v5->_attributionListDataDiff = v6;
  }

  return v5;
}

- (id)dataByApplyingToData:(id)a3
{
  v4 = [a3 mutableCopy];
  [(STDataAccessStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)a3
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
  v6 = [a3 attributionListData];
  [(STListDataDiff *)v5 applyToMutableListData:v6];
}

- (id)diffByApplyingDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (BOOL)isOrthogonalToDiff:(id)a3
{
  v4 = a3;
  if ([(STDataAccessStatusDomainDataDiff *)self isEmpty])
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = v3;
  if (self)
  {
    attributionListDataDiff = self->_attributionListDataDiff;
  }

  else
  {
    attributionListDataDiff = 0;
  }

  v6 = [v3 appendObject:attributionListDataDiff];
  v7 = [v4 hash];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    attributionListDataDiff = self->_attributionListDataDiff;
  }

  else
  {
    attributionListDataDiff = 0;
  }

  [a3 encodeObject:attributionListDataDiff forKey:@"attributionListDataDiff"];
}

- (STDataAccessStatusDomainDataDiff)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributionListDataDiff"];

  if (v5)
  {
    self = [(STDataAccessStatusDomainDataDiff *)self initWithAttributionListDataDiff:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)succinctDescription
{
  v2 = [(STDataAccessStatusDomainDataDiff *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STDataAccessStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STDataAccessStatusDomainDataDiff *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v10[2] = __84__STDataAccessStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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