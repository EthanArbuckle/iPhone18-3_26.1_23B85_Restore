@interface STStatusItemsStatusDomainData
- (BOOL)isEqual:(id)equal;
- (NSArray)attributions;
- (NSSet)activeStatusItems;
- (NSSet)statusItemsWithVisualDescriptors;
- (STStatusItemsStatusDomainData)init;
- (STStatusItemsStatusDomainData)initWithCoder:(id)coder;
- (STStatusItemsStatusDomainData)initWithData:(id)data;
- (STStatusItemsStatusDomainData)initWithStatusItemsAttributionListData:(id)data visualDescriptorsByIdentifierDictionaryData:(id)dictionaryData;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)_initWithStatusItemsAttributionListData:(id)data visualDescriptorsByIdentifierDictionaryData:(id)dictionaryData;
- (id)dataByApplyingDiff:(id)diff;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffFromData:(id)data;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusItemsStatusDomainData

- (STStatusItemsStatusDomainData)init
{
  v3 = objc_alloc_init(STListData);
  v4 = objc_alloc_init(STDictionaryData);
  v5 = [(STStatusItemsStatusDomainData *)self initWithStatusItemsAttributionListData:v3 visualDescriptorsByIdentifierDictionaryData:v4];

  return v5;
}

- (STStatusItemsStatusDomainData)initWithData:(id)data
{
  dataCopy = data;
  statusItemsAttributionListData = [dataCopy statusItemsAttributionListData];
  visualDescriptorsByIdentifierDictionaryData = [dataCopy visualDescriptorsByIdentifierDictionaryData];

  v7 = [(STStatusItemsStatusDomainData *)self initWithStatusItemsAttributionListData:statusItemsAttributionListData visualDescriptorsByIdentifierDictionaryData:visualDescriptorsByIdentifierDictionaryData];
  return v7;
}

- (STStatusItemsStatusDomainData)initWithStatusItemsAttributionListData:(id)data visualDescriptorsByIdentifierDictionaryData:(id)dictionaryData
{
  dictionaryDataCopy = dictionaryData;
  v7 = [data copy];
  v8 = [dictionaryDataCopy copy];

  v9 = [(STStatusItemsStatusDomainData *)self _initWithStatusItemsAttributionListData:v7 visualDescriptorsByIdentifierDictionaryData:v8];
  return v9;
}

- (id)_initWithStatusItemsAttributionListData:(id)data visualDescriptorsByIdentifierDictionaryData:(id)dictionaryData
{
  dataCopy = data;
  dictionaryDataCopy = dictionaryData;
  v12.receiver = self;
  v12.super_class = STStatusItemsStatusDomainData;
  v9 = [(STStatusItemsStatusDomainData *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_statusItemsAttributionListData, data);
    objc_storeStrong(p_isa + 2, dictionaryData);
  }

  return p_isa;
}

- (NSArray)attributions
{
  statusItemsAttributionListData = [(STStatusItemsStatusDomainData *)self statusItemsAttributionListData];
  objects = [statusItemsAttributionListData objects];

  return objects;
}

- (NSSet)activeStatusItems
{
  attributions = [(STStatusItemsStatusDomainData *)self attributions];
  v3 = [attributions bs_map:&__block_literal_global_19];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  return v4;
}

- (NSSet)statusItemsWithVisualDescriptors
{
  visualDescriptorsByIdentifierDictionaryData = [(STStatusItemsStatusDomainData *)self visualDescriptorsByIdentifierDictionaryData];
  allKeys = [visualDescriptorsByIdentifierDictionaryData allKeys];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:allKeys];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
  statusItemsAttributionListData = [(STStatusItemsStatusDomainData *)self statusItemsAttributionListData];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __41__STStatusItemsStatusDomainData_isEqual___block_invoke;
  v19[3] = &unk_1E85DDCD8;
  v8 = v6;
  v20 = v8;
  v9 = [v5 appendObject:statusItemsAttributionListData counterpart:v19];

  visualDescriptorsByIdentifierDictionaryData = [(STStatusItemsStatusDomainData *)self visualDescriptorsByIdentifierDictionaryData];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __41__STStatusItemsStatusDomainData_isEqual___block_invoke_2;
  v17 = &unk_1E85DDCD8;
  v18 = v8;
  v11 = v8;
  v12 = [v5 appendObject:visualDescriptorsByIdentifierDictionaryData counterpart:&v14];

  LOBYTE(visualDescriptorsByIdentifierDictionaryData) = [v5 isEqual];
  return visualDescriptorsByIdentifierDictionaryData;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  statusItemsAttributionListData = [(STStatusItemsStatusDomainData *)self statusItemsAttributionListData];
  v5 = [builder appendObject:statusItemsAttributionListData];

  visualDescriptorsByIdentifierDictionaryData = [(STStatusItemsStatusDomainData *)self visualDescriptorsByIdentifierDictionaryData];
  v7 = [builder appendObject:visualDescriptorsByIdentifierDictionaryData];

  v8 = [builder hash];
  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableStatusItemsStatusDomainData allocWithZone:zone];

  return [(STStatusItemsStatusDomainData *)v4 initWithData:self];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STStatusItemsStatusDomainData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusItemsStatusDomainData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusItemsStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __81__STStatusItemsStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v9[3] = &unk_1E85DDD00;
    v7 = succinctDescriptionBuilder;
    v10 = v7;
    v11 = selfCopy;
    [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v9];

    selfCopy = v7;
  }

  return selfCopy;
}

void __81__STStatusItemsStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) statusItemsAttributionListData];
  v4 = [v2 appendObject:v3 withName:@"statusItems"];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) visualDescriptorsByIdentifierDictionaryData];
  v6 = [v5 appendObject:v7 withName:@"visualDescriptors"];
}

- (id)diffFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STStatusItemsStatusDomainDataDiff diffFromData:dataCopy toData:self];
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
      v5 = [(STStatusItemsStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STStatusItemsStatusDomainData *)self mutableCopy];
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
  statusItemsAttributionListData = [(STStatusItemsStatusDomainData *)self statusItemsAttributionListData];
  [coderCopy encodeObject:statusItemsAttributionListData forKey:@"statusItemAttributions"];

  visualDescriptorsByIdentifierDictionaryData = [(STStatusItemsStatusDomainData *)self visualDescriptorsByIdentifierDictionaryData];
  [coderCopy encodeObject:visualDescriptorsByIdentifierDictionaryData forKey:@"visualDescriptorsByIdentifier"];
}

- (STStatusItemsStatusDomainData)initWithCoder:(id)coder
{
  v21[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusItemAttributions"];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__STStatusItemsStatusDomainData_initWithCoder___block_invoke_2;
  v15[3] = &unk_1E85DF198;
  v15[4] = &v16;
  [v5 enumerateObjectsUsingBlock:v15];
  if (v17[3])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  _Block_object_dispose(&v16, 8);

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visualDescriptorsByIdentifier"];

  v21[0] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v20 = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v10 = [v7 validateObjectsAndKeysWithValidObjectClasses:v8 keyClasses:v9];

  if (((v6 != 0) & v10) == 1)
  {
    self = [(STStatusItemsStatusDomainData *)self initWithStatusItemsAttributionListData:v6 visualDescriptorsByIdentifierDictionaryData:v7];
    selfCopy = self;
  }

  else
  {
    v12 = STSystemStatusLogDataIntegrity();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15[0]) = 0;
      _os_log_error_impl(&dword_1DA9C2000, v12, OS_LOG_TYPE_ERROR, "decoded invalid status items domain data", v15, 2u);
    }

    selfCopy = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

void __47__STStatusItemsStatusDomainData_initWithCoder___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

@end