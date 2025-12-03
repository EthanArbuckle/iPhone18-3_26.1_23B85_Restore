@interface STBackgroundActivitiesStatusDomainDataDiff
+ (id)diffFromData:(id)data toData:(id)toData;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOrthogonalToDiff:(id)diff;
- (STBackgroundActivitiesStatusDomainDataDiff)init;
- (STBackgroundActivitiesStatusDomainDataDiff)initWithChanges:(id)changes backgroundActivitiesAttributionListDataDiff:(id)diff visualDescriptorsByIdentifierDictionaryDataDiff:(id)dataDiff;
- (STBackgroundActivitiesStatusDomainDataDiff)initWithCoder:(id)coder;
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

@implementation STBackgroundActivitiesStatusDomainDataDiff

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
      backgroundActivitiesAttributionListDataDiff = self->_backgroundActivitiesAttributionListDataDiff;
    }

    else
    {
      backgroundActivitiesAttributionListDataDiff = 0;
    }

    isEmpty = [(STListDataDiff *)backgroundActivitiesAttributionListDataDiff isEmpty];
  }

  else
  {
    isEmpty = 0;
  }

  return isEmpty;
}

+ (id)diffFromData:(id)data toData:(id)toData
{
  v5 = MEMORY[0x1E698E700];
  toDataCopy = toData;
  dataCopy = data;
  v8 = objc_alloc_init(v5);
  backgroundActivitiesAttributionListData = [dataCopy backgroundActivitiesAttributionListData];
  backgroundActivitiesAttributionListData2 = [toDataCopy backgroundActivitiesAttributionListData];
  v11 = [STListDataDiff diffFromListData:backgroundActivitiesAttributionListData toListData:backgroundActivitiesAttributionListData2];

  visualDescriptorsByIdentifierDictionaryData = [dataCopy visualDescriptorsByIdentifierDictionaryData];

  visualDescriptorsByIdentifierDictionaryData2 = [toDataCopy visualDescriptorsByIdentifierDictionaryData];

  v14 = [STDictionaryDataDiff diffFromDictionaryData:visualDescriptorsByIdentifierDictionaryData toDictionaryData:visualDescriptorsByIdentifierDictionaryData2];

  v15 = [[STBackgroundActivitiesStatusDomainDataDiff alloc] initWithChanges:v8 backgroundActivitiesAttributionListDataDiff:v11 visualDescriptorsByIdentifierDictionaryDataDiff:v14];

  return v15;
}

- (STBackgroundActivitiesStatusDomainDataDiff)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E768]);
  v4 = objc_alloc_init(STListDataDiff);
  v5 = objc_alloc_init(STDictionaryDataDiff);
  v6 = [(STBackgroundActivitiesStatusDomainDataDiff *)self initWithChanges:v3 backgroundActivitiesAttributionListDataDiff:v4 visualDescriptorsByIdentifierDictionaryDataDiff:v5];

  return v6;
}

- (STBackgroundActivitiesStatusDomainDataDiff)initWithChanges:(id)changes backgroundActivitiesAttributionListDataDiff:(id)diff visualDescriptorsByIdentifierDictionaryDataDiff:(id)dataDiff
{
  changesCopy = changes;
  diffCopy = diff;
  dataDiffCopy = dataDiff;
  v19.receiver = self;
  v19.super_class = STBackgroundActivitiesStatusDomainDataDiff;
  v11 = [(STBackgroundActivitiesStatusDomainDataDiff *)&v19 init];
  if (v11)
  {
    v12 = [changesCopy copy];
    changes = v11->_changes;
    v11->_changes = v12;

    v14 = [diffCopy copy];
    backgroundActivitiesAttributionListDataDiff = v11->_backgroundActivitiesAttributionListDataDiff;
    v11->_backgroundActivitiesAttributionListDataDiff = v14;

    v16 = [dataDiffCopy copy];
    visualDescriptorsByIdentifierDictionaryDataDiff = v11->_visualDescriptorsByIdentifierDictionaryDataDiff;
    v11->_visualDescriptorsByIdentifierDictionaryDataDiff = v16;
  }

  return v11;
}

- (id)dataByApplyingToData:(id)data
{
  v4 = [data mutableCopy];
  [(STBackgroundActivitiesStatusDomainDataDiff *)self applyToMutableData:v4];

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

  v13 = changes;
  dataCopy = data;
  [(BSSettings *)v13 enumerateObjectsWithBlock:&__block_literal_global_1];
  if (self)
  {
    v7 = self->_backgroundActivitiesAttributionListDataDiff;
    backgroundActivitiesAttributionListData = [dataCopy backgroundActivitiesAttributionListData];
    [(STListDataDiff *)v7 applyToMutableListData:backgroundActivitiesAttributionListData];

    visualDescriptorsByIdentifierDictionaryDataDiff = self->_visualDescriptorsByIdentifierDictionaryDataDiff;
  }

  else
  {
    backgroundActivitiesAttributionListData2 = [dataCopy backgroundActivitiesAttributionListData];
    [0 applyToMutableListData:backgroundActivitiesAttributionListData2];

    visualDescriptorsByIdentifierDictionaryDataDiff = 0;
  }

  v10 = visualDescriptorsByIdentifierDictionaryDataDiff;
  visualDescriptorsByIdentifierDictionaryData = [dataCopy visualDescriptorsByIdentifierDictionaryData];

  [(STDictionaryDataDiff *)v10 applyToMutableDictionaryData:visualDescriptorsByIdentifierDictionaryData];
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
      backgroundActivitiesAttributionListDataDiff = self->_backgroundActivitiesAttributionListDataDiff;
      if (v5)
      {
LABEL_8:
        v12 = v5[2];
        goto LABEL_9;
      }
    }

    else
    {
      backgroundActivitiesAttributionListDataDiff = 0;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v12 = 0;
LABEL_9:
    v13 = backgroundActivitiesAttributionListDataDiff;
    v14 = [(STListDataDiff *)v13 diffByApplyingDiff:v12];

    if (self)
    {
      visualDescriptorsByIdentifierDictionaryDataDiff = self->_visualDescriptorsByIdentifierDictionaryDataDiff;
      if (v5)
      {
LABEL_11:
        v16 = v5[3];
LABEL_12:
        v17 = visualDescriptorsByIdentifierDictionaryDataDiff;
        v18 = [(STDictionaryDataDiff *)v17 diffByApplyingDiff:v16];

        v19 = [[STBackgroundActivitiesStatusDomainDataDiff alloc] initWithChanges:v8 backgroundActivitiesAttributionListDataDiff:v14 visualDescriptorsByIdentifierDictionaryDataDiff:v18];
        goto LABEL_14;
      }
    }

    else
    {
      visualDescriptorsByIdentifierDictionaryDataDiff = 0;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    v16 = 0;
    goto LABEL_12;
  }

  v19 = 0;
LABEL_14:

  return v19;
}

- (BOOL)isOrthogonalToDiff:(id)diff
{
  diffCopy = diff;
  if ([(STBackgroundActivitiesStatusDomainDataDiff *)self isEmpty])
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

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __54__STBackgroundActivitiesStatusDomainDataDiff_isEqual___block_invoke;
  v21[3] = &unk_1E85DDCD8;
  v8 = v6;
  v22 = v8;
  v9 = [v5 appendObject:changes counterpart:v21];
  if (self)
  {
    backgroundActivitiesAttributionListDataDiff = self->_backgroundActivitiesAttributionListDataDiff;
  }

  else
  {
    backgroundActivitiesAttributionListDataDiff = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__STBackgroundActivitiesStatusDomainDataDiff_isEqual___block_invoke_2;
  v19[3] = &unk_1E85DDCD8;
  v11 = v8;
  v20 = v11;
  v12 = [v5 appendObject:backgroundActivitiesAttributionListDataDiff counterpart:v19];
  if (self)
  {
    self = self->_visualDescriptorsByIdentifierDictionaryDataDiff;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__STBackgroundActivitiesStatusDomainDataDiff_isEqual___block_invoke_3;
  v17[3] = &unk_1E85DDCD8;
  v18 = v11;
  v13 = v11;
  v14 = [v5 appendObject:self counterpart:v17];
  v15 = [v5 isEqual];

  return v15;
}

id __54__STBackgroundActivitiesStatusDomainDataDiff_isEqual___block_invoke(uint64_t a1)
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

id __54__STBackgroundActivitiesStatusDomainDataDiff_isEqual___block_invoke_2(uint64_t a1)
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

id __54__STBackgroundActivitiesStatusDomainDataDiff_isEqual___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 24);
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
    backgroundActivitiesAttributionListDataDiff = self->_backgroundActivitiesAttributionListDataDiff;
  }

  else
  {
    v12 = [builder appendObject:0];
    backgroundActivitiesAttributionListDataDiff = 0;
  }

  v7 = [v4 appendObject:backgroundActivitiesAttributionListDataDiff];
  if (self)
  {
    visualDescriptorsByIdentifierDictionaryDataDiff = self->_visualDescriptorsByIdentifierDictionaryDataDiff;
  }

  else
  {
    visualDescriptorsByIdentifierDictionaryDataDiff = 0;
  }

  v9 = [v4 appendObject:visualDescriptorsByIdentifierDictionaryDataDiff];
  v10 = [v4 hash];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self)
  {
    [coderCopy encodeObject:self->_changes forKey:@"changes"];
    [coderCopy encodeObject:self->_backgroundActivitiesAttributionListDataDiff forKey:@"backgroundActivitiesAttributionListDataDiff"];
    visualDescriptorsByIdentifierDictionaryDataDiff = self->_visualDescriptorsByIdentifierDictionaryDataDiff;
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"changes"];
    [coderCopy encodeObject:0 forKey:@"backgroundActivitiesAttributionListDataDiff"];
    visualDescriptorsByIdentifierDictionaryDataDiff = 0;
  }

  [coderCopy encodeObject:visualDescriptorsByIdentifierDictionaryDataDiff forKey:@"visualDescriptorsByIdentifierDictionaryDataDiff"];
}

- (STBackgroundActivitiesStatusDomainDataDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changes"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundActivitiesAttributionListDataDiff"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visualDescriptorsByIdentifierDictionaryDataDiff"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(STBackgroundActivitiesStatusDomainDataDiff *)self initWithChanges:v5 backgroundActivitiesAttributionListDataDiff:v6 visualDescriptorsByIdentifierDictionaryDataDiff:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STBackgroundActivitiesStatusDomainDataDiff *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STBackgroundActivitiesStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STBackgroundActivitiesStatusDomainDataDiff *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __94__STBackgroundActivitiesStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v15[3] = &unk_1E85DDD00;
    v8 = succinctDescriptionBuilder;
    v16 = v8;
    v17 = selfCopy;
    [v8 appendBodySectionWithName:@"backgroundActivityAttributions" multilinePrefix:activeMultilinePrefix block:v15];

    activeMultilinePrefix2 = [v8 activeMultilinePrefix];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __94__STBackgroundActivitiesStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke_2;
    v12[3] = &unk_1E85DDD00;
    v10 = v8;
    v13 = v10;
    v14 = selfCopy;
    [v10 appendBodySectionWithName:@"visualDescriptors" multilinePrefix:activeMultilinePrefix2 block:v12];

    selfCopy = v10;
  }

  return selfCopy;
}

@end