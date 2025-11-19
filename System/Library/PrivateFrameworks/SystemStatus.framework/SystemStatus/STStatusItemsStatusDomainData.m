@interface STStatusItemsStatusDomainData
- (BOOL)isEqual:(id)a3;
- (NSArray)attributions;
- (NSSet)activeStatusItems;
- (NSSet)statusItemsWithVisualDescriptors;
- (STStatusItemsStatusDomainData)init;
- (STStatusItemsStatusDomainData)initWithCoder:(id)a3;
- (STStatusItemsStatusDomainData)initWithData:(id)a3;
- (STStatusItemsStatusDomainData)initWithStatusItemsAttributionListData:(id)a3 visualDescriptorsByIdentifierDictionaryData:(id)a4;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)_initWithStatusItemsAttributionListData:(id)a3 visualDescriptorsByIdentifierDictionaryData:(id)a4;
- (id)dataByApplyingDiff:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffFromData:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusItemsStatusDomainData

- (STStatusItemsStatusDomainData)init
{
  v3 = objc_alloc_init(STListData);
  v4 = objc_alloc_init(STDictionaryData);
  v5 = [(STStatusItemsStatusDomainData *)self initWithStatusItemsAttributionListData:v3 visualDescriptorsByIdentifierDictionaryData:v4];

  return v5;
}

- (STStatusItemsStatusDomainData)initWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 statusItemsAttributionListData];
  v6 = [v4 visualDescriptorsByIdentifierDictionaryData];

  v7 = [(STStatusItemsStatusDomainData *)self initWithStatusItemsAttributionListData:v5 visualDescriptorsByIdentifierDictionaryData:v6];
  return v7;
}

- (STStatusItemsStatusDomainData)initWithStatusItemsAttributionListData:(id)a3 visualDescriptorsByIdentifierDictionaryData:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  v8 = [v6 copy];

  v9 = [(STStatusItemsStatusDomainData *)self _initWithStatusItemsAttributionListData:v7 visualDescriptorsByIdentifierDictionaryData:v8];
  return v9;
}

- (id)_initWithStatusItemsAttributionListData:(id)a3 visualDescriptorsByIdentifierDictionaryData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = STStatusItemsStatusDomainData;
  v9 = [(STStatusItemsStatusDomainData *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_statusItemsAttributionListData, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (NSArray)attributions
{
  v2 = [(STStatusItemsStatusDomainData *)self statusItemsAttributionListData];
  v3 = [v2 objects];

  return v3;
}

- (NSSet)activeStatusItems
{
  v2 = [(STStatusItemsStatusDomainData *)self attributions];
  v3 = [v2 bs_map:&__block_literal_global_19];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  return v4;
}

- (NSSet)statusItemsWithVisualDescriptors
{
  v2 = [(STStatusItemsStatusDomainData *)self visualDescriptorsByIdentifierDictionaryData];
  v3 = [v2 allKeys];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = v4;
  v7 = [(STStatusItemsStatusDomainData *)self statusItemsAttributionListData];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __41__STStatusItemsStatusDomainData_isEqual___block_invoke;
  v19[3] = &unk_1E85DDCD8;
  v8 = v6;
  v20 = v8;
  v9 = [v5 appendObject:v7 counterpart:v19];

  v10 = [(STStatusItemsStatusDomainData *)self visualDescriptorsByIdentifierDictionaryData];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __41__STStatusItemsStatusDomainData_isEqual___block_invoke_2;
  v17 = &unk_1E85DDCD8;
  v18 = v8;
  v11 = v8;
  v12 = [v5 appendObject:v10 counterpart:&v14];

  LOBYTE(v10) = [v5 isEqual];
  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STStatusItemsStatusDomainData *)self statusItemsAttributionListData];
  v5 = [v3 appendObject:v4];

  v6 = [(STStatusItemsStatusDomainData *)self visualDescriptorsByIdentifierDictionaryData];
  v7 = [v3 appendObject:v6];

  v8 = [v3 hash];
  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableStatusItemsStatusDomainData allocWithZone:a3];

  return [(STStatusItemsStatusDomainData *)v4 initWithData:self];
}

- (id)succinctDescription
{
  v2 = [(STStatusItemsStatusDomainData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusItemsStatusDomainData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusItemsStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __81__STStatusItemsStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v9[3] = &unk_1E85DDD00;
    v7 = v6;
    v10 = v7;
    v11 = v3;
    [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v9];

    v3 = v7;
  }

  return v3;
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

- (id)diffFromData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STStatusItemsStatusDomainDataDiff diffFromData:v4 toData:self];
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
      v5 = [(STStatusItemsStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STStatusItemsStatusDomainData *)self mutableCopy];
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
  v5 = [(STStatusItemsStatusDomainData *)self statusItemsAttributionListData];
  [v4 encodeObject:v5 forKey:@"statusItemAttributions"];

  v6 = [(STStatusItemsStatusDomainData *)self visualDescriptorsByIdentifierDictionaryData];
  [v4 encodeObject:v6 forKey:@"visualDescriptorsByIdentifier"];
}

- (STStatusItemsStatusDomainData)initWithCoder:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusItemAttributions"];
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

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"visualDescriptorsByIdentifier"];

  v21[0] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v20 = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v10 = [v7 validateObjectsAndKeysWithValidObjectClasses:v8 keyClasses:v9];

  if (((v6 != 0) & v10) == 1)
  {
    self = [(STStatusItemsStatusDomainData *)self initWithStatusItemsAttributionListData:v6 visualDescriptorsByIdentifierDictionaryData:v7];
    v11 = self;
  }

  else
  {
    v12 = STSystemStatusLogDataIntegrity();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15[0]) = 0;
      _os_log_error_impl(&dword_1DA9C2000, v12, OS_LOG_TYPE_ERROR, "decoded invalid status items domain data", v15, 2u);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
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