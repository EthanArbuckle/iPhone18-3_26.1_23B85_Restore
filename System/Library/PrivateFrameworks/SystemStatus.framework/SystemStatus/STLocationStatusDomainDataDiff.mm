@interface STLocationStatusDomainDataDiff
+ (id)diffFromData:(id)data toData:(id)toData;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOrthogonalToDiff:(id)diff;
- (STLocationStatusDomainDataDiff)init;
- (STLocationStatusDomainDataDiff)initWithChanges:(id)changes locationAttributionListDataDiff:(id)diff;
- (STLocationStatusDomainDataDiff)initWithCoder:(id)coder;
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

    isEmpty = [(STListDataDiff *)locationAttributionListDataDiff isEmpty];
  }

  else
  {
    isEmpty = 0;
  }

  return isEmpty;
}

+ (id)diffFromData:(id)data toData:(id)toData
{
  dataCopy = data;
  toDataCopy = toData;
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  activeDisplayModes = [toDataCopy activeDisplayModes];
  if ([dataCopy activeDisplayModes] != activeDisplayModes)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:activeDisplayModes];
    [v7 setObject:v9 forSetting:0];
  }

  locationAttributionListData = [dataCopy locationAttributionListData];
  locationAttributionListData2 = [toDataCopy locationAttributionListData];
  v12 = [STListDataDiff diffFromListData:locationAttributionListData toListData:locationAttributionListData2];

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

- (STLocationStatusDomainDataDiff)initWithChanges:(id)changes locationAttributionListDataDiff:(id)diff
{
  changesCopy = changes;
  diffCopy = diff;
  v14.receiver = self;
  v14.super_class = STLocationStatusDomainDataDiff;
  v8 = [(STLocationStatusDomainDataDiff *)&v14 init];
  if (v8)
  {
    v9 = [changesCopy copy];
    changes = v8->_changes;
    v8->_changes = v9;

    v11 = [diffCopy copy];
    locationAttributionListDataDiff = v8->_locationAttributionListDataDiff;
    v8->_locationAttributionListDataDiff = v11;
  }

  return v8;
}

- (id)dataByApplyingToData:(id)data
{
  v4 = [data mutableCopy];
  [(STLocationStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)data
{
  dataCopy = data;
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
  v12 = dataCopy;
  v6 = dataCopy;
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
  locationAttributionListData = [v6 locationAttributionListData];
  [(STListDataDiff *)v9 applyToMutableListData:locationAttributionListData];
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

- (BOOL)isOrthogonalToDiff:(id)diff
{
  diffCopy = diff;
  if ([(STLocationStatusDomainDataDiff *)self isEmpty])
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
  v7 = equalCopy;
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
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = builder;
  if (self)
  {
    v5 = [builder appendObject:self->_changes];
    locationAttributionListDataDiff = self->_locationAttributionListDataDiff;
  }

  else
  {
    v10 = [builder appendObject:0];
    locationAttributionListDataDiff = 0;
  }

  v7 = [v4 appendObject:locationAttributionListDataDiff];
  v8 = [v4 hash];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    [coder encodeObject:self->_changes forKey:@"changes"];
    locationAttributionListDataDiff = self->_locationAttributionListDataDiff;
  }

  else
  {
    [coder encodeObject:0 forKey:@"changes"];
    locationAttributionListDataDiff = 0;
  }

  [coder encodeObject:locationAttributionListDataDiff forKey:@"locationAttributionListDataDiff"];
}

- (STLocationStatusDomainDataDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changes"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationAttributionListDataDiff"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(STLocationStatusDomainDataDiff *)self initWithChanges:v5 locationAttributionListDataDiff:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STLocationStatusDomainDataDiff *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STLocationStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STLocationStatusDomainDataDiff *)&self->super.isa _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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

    activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __82__STLocationStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v16 = &unk_1E85DDD00;
    v8 = succinctDescriptionBuilder;
    v17 = v8;
    selfCopy = self;
    [v8 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:&v13];

    v9 = [self[1] objectForSetting:{0, v13, v14, v15, v16}];
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