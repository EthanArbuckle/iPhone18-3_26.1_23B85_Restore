@interface STLocationStatusDomainDataDiff
+ (id)diffFromData:(id)a3 toData:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOrthogonalToDiff:(id)a3;
- (STLocationStatusDomainDataDiff)init;
- (STLocationStatusDomainDataDiff)initWithChanges:(id)a3 locationAttributionListDataDiff:(id)a4;
- (STLocationStatusDomainDataDiff)initWithCoder:(id)a3;
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

@implementation STLocationStatusDomainDataDiff

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
      locationAttributionListDataDiff = self->_locationAttributionListDataDiff;
    }

    else
    {
      locationAttributionListDataDiff = 0;
    }

    v6 = [(STListDataDiff *)locationAttributionListDataDiff isEmpty];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)diffFromData:(id)a3 toData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  v8 = [v6 activeDisplayModes];
  if ([v5 activeDisplayModes] != v8)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
    [v7 setObject:v9 forSetting:0];
  }

  v10 = [v5 locationAttributionListData];
  v11 = [v6 locationAttributionListData];
  v12 = [STListDataDiff diffFromListData:v10 toListData:v11];

  v13 = [[STLocationStatusDomainDataDiff alloc] initWithChanges:v7 locationAttributionListDataDiff:v12];

  return v13;
}

- (STLocationStatusDomainDataDiff)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E768]);
  v4 = objc_alloc_init(STListDataDiff);
  v5 = [(STLocationStatusDomainDataDiff *)self initWithChanges:v3 locationAttributionListDataDiff:v4];

  return v5;
}

- (STLocationStatusDomainDataDiff)initWithChanges:(id)a3 locationAttributionListDataDiff:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = STLocationStatusDomainDataDiff;
  v8 = [(STLocationStatusDomainDataDiff *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    changes = v8->_changes;
    v8->_changes = v9;

    v11 = [v7 copy];
    locationAttributionListDataDiff = v8->_locationAttributionListDataDiff;
    v8->_locationAttributionListDataDiff = v11;
  }

  return v8;
}

- (id)dataByApplyingToData:(id)a3
{
  v4 = [a3 mutableCopy];
  [(STLocationStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)a3
{
  v4 = a3;
  if (self)
  {
    changes = self->_changes;
  }

  else
  {
    changes = 0;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__STLocationStatusDomainDataDiff_applyToMutableData___block_invoke;
  v11[3] = &unk_1E85DDCB0;
  v12 = v4;
  v6 = v4;
  v7 = changes;
  [(BSSettings *)v7 enumerateObjectsWithBlock:v11];
  if (self)
  {
    locationAttributionListDataDiff = self->_locationAttributionListDataDiff;
  }

  else
  {
    locationAttributionListDataDiff = 0;
  }

  v9 = locationAttributionListDataDiff;
  v10 = [v6 locationAttributionListData];
  [(STListDataDiff *)v9 applyToMutableListData:v10];
}

uint64_t __53__STLocationStatusDomainDataDiff_applyToMutableData___block_invoke(uint64_t result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v4 = *(result + 32);
    v5 = [a3 unsignedIntegerValue];

    return [v4 setActiveDisplayModes:v5];
  }

  return result;
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

    v7 = changes;
    v8 = [(BSSettings *)v7 mutableCopy];
    if (v5)
    {
      v9 = v5[1];
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    [v8 applySettings:v10];
    if (self)
    {
      locationAttributionListDataDiff = self->_locationAttributionListDataDiff;
      if (v5)
      {
LABEL_8:
        v12 = v5[2];
LABEL_9:
        v13 = locationAttributionListDataDiff;
        v14 = [(STListDataDiff *)v13 diffByApplyingDiff:v12];

        v15 = [[STLocationStatusDomainDataDiff alloc] initWithChanges:v8 locationAttributionListDataDiff:v14];
        goto LABEL_11;
      }
    }

    else
    {
      locationAttributionListDataDiff = 0;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v12 = 0;
    goto LABEL_9;
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (BOOL)isOrthogonalToDiff:(id)a3
{
  v4 = a3;
  if ([(STLocationStatusDomainDataDiff *)self isEmpty])
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
  if (self)
  {
    changes = self->_changes;
  }

  else
  {
    changes = 0;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __42__STLocationStatusDomainDataDiff_isEqual___block_invoke;
  v18[3] = &unk_1E85DDCD8;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendObject:changes counterpart:v18];
  if (self)
  {
    self = self->_locationAttributionListDataDiff;
  }

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __42__STLocationStatusDomainDataDiff_isEqual___block_invoke_2;
  v16 = &unk_1E85DDCD8;
  v17 = v7;
  v9 = v7;
  v10 = [v5 appendObject:self counterpart:&v13];
  v11 = [v5 isEqual];

  return v11;
}

id __42__STLocationStatusDomainDataDiff_isEqual___block_invoke(uint64_t a1)
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

id __42__STLocationStatusDomainDataDiff_isEqual___block_invoke_2(uint64_t a1)
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
    locationAttributionListDataDiff = self->_locationAttributionListDataDiff;
  }

  else
  {
    v10 = [v3 appendObject:0];
    locationAttributionListDataDiff = 0;
  }

  v7 = [v4 appendObject:locationAttributionListDataDiff];
  v8 = [v4 hash];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    [a3 encodeObject:self->_changes forKey:@"changes"];
    locationAttributionListDataDiff = self->_locationAttributionListDataDiff;
  }

  else
  {
    [a3 encodeObject:0 forKey:@"changes"];
    locationAttributionListDataDiff = 0;
  }

  [a3 encodeObject:locationAttributionListDataDiff forKey:@"locationAttributionListDataDiff"];
}

- (STLocationStatusDomainDataDiff)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changes"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationAttributionListDataDiff"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    self = [(STLocationStatusDomainDataDiff *)self initWithChanges:v5 locationAttributionListDataDiff:v6];
    v8 = self;
  }

  return v8;
}

- (id)succinctDescription
{
  v2 = [(STLocationStatusDomainDataDiff *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STLocationStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STLocationStatusDomainDataDiff *)&self->super.isa _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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

    v7 = [v6 activeMultilinePrefix];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __82__STLocationStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v16 = &unk_1E85DDD00;
    v8 = v6;
    v17 = v8;
    v18 = a1;
    [v8 appendBodySectionWithName:0 multilinePrefix:v7 block:&v13];

    v9 = [a1[1] objectForSetting:{0, v13, v14, v15, v16}];
    if (!v9)
    {
      v10 = STLocationStatusDomainLocationAttributionDisplayModeMaskDescription([0 unsignedIntegerValue]);
      [v8 appendString:v10 withName:@"activeDisplayModes"];
    }

    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end