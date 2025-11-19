@interface STDataAccessStatusDomainData
- (BOOL)isEqual:(id)a3;
- (NSArray)dataAccessAttributions;
- (NSSet)attributedEntities;
- (NSSet)executableIdentities;
- (STDataAccessStatusDomainData)_dataWithAttributionFilter:(void *)a1;
- (STDataAccessStatusDomainData)dataWithAccessType:(unint64_t)a3;
- (STDataAccessStatusDomainData)dataWithAttributedEntity:(id)a3;
- (STDataAccessStatusDomainData)dataWithEntitiesThatAreSystemServices:(BOOL)a3;
- (STDataAccessStatusDomainData)dataWithExecutableIdentity:(id)a3;
- (STDataAccessStatusDomainData)init;
- (STDataAccessStatusDomainData)initWithAttributionListData:(id)a3;
- (STDataAccessStatusDomainData)initWithCoder:(id)a3;
- (STDataAccessStatusDomainData)initWithData:(id)a3;
- (id)_allEntities;
- (id)_initWithAttributionListData:(id)a3;
- (id)dataByApplyingDiff:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffFromData:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STDataAccessStatusDomainData

- (STDataAccessStatusDomainData)init
{
  v3 = objc_alloc_init(STListData);
  v4 = [(STDataAccessStatusDomainData *)self initWithAttributionListData:v3];

  return v4;
}

- (NSArray)dataAccessAttributions
{
  v2 = [(STDataAccessStatusDomainData *)self attributionListData];
  v3 = [v2 objects];

  return v3;
}

- (STDataAccessStatusDomainData)initWithData:(id)a3
{
  v4 = [a3 attributionListData];
  v5 = [(STDataAccessStatusDomainData *)self initWithAttributionListData:v4];

  return v5;
}

- (STDataAccessStatusDomainData)initWithAttributionListData:(id)a3
{
  v4 = [a3 copy];
  v5 = [(STDataAccessStatusDomainData *)self _initWithAttributionListData:v4];

  return v5;
}

- (id)_initWithAttributionListData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = STDataAccessStatusDomainData;
  v6 = [(STDataAccessStatusDomainData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributionListData, a3);
  }

  return v7;
}

- (NSSet)attributedEntities
{
  v2 = [(STDataAccessStatusDomainData *)self _allEntities];
  v3 = [MEMORY[0x1E695DFD8] setWithArray:v2];

  return v3;
}

- (id)_allEntities
{
  if (a1)
  {
    v1 = [a1 dataAccessAttributions];
    v2 = [v1 bs_map:&__block_literal_global_29];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSSet)executableIdentities
{
  v2 = [(STDataAccessStatusDomainData *)self _allEntities];
  v3 = [v2 bs_map:&__block_literal_global_21];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  return v4;
}

- (STDataAccessStatusDomainData)_dataWithAttributionFilter:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    v4 = [a1 dataAccessAttributions];
    v5 = [v4 bs_filter:v3];

    v6 = [STDataAccessStatusDomainData alloc];
    if (v6)
    {
      v7 = v5;
      v8 = objc_alloc_init(STMutableListData);
      v9 = [v7 sortedArrayUsingComparator:&__block_literal_global_32];

      [(STMutableListData *)v8 setObjects:v9];
      v6 = [(STDataAccessStatusDomainData *)v6 initWithAttributionListData:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (STDataAccessStatusDomainData)dataWithEntitiesThatAreSystemServices:(BOOL)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__STDataAccessStatusDomainData_dataWithEntitiesThatAreSystemServices___block_invoke;
  v5[3] = &__block_descriptor_33_e33_B16__0__STDataAccessAttribution_8l;
  v6 = a3;
  v3 = [(STDataAccessStatusDomainData *)self _dataWithAttributionFilter:v5];

  return v3;
}

BOOL __70__STDataAccessStatusDomainData_dataWithEntitiesThatAreSystemServices___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 attributedEntity];
  v4 = *(a1 + 32) == [v3 isSystemService];

  return v4;
}

- (STDataAccessStatusDomainData)dataWithAttributedEntity:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__STDataAccessStatusDomainData_dataWithAttributedEntity___block_invoke;
  v8[3] = &unk_1E85DF300;
  v9 = v4;
  v5 = v4;
  v6 = [(STDataAccessStatusDomainData *)self _dataWithAttributionFilter:v8];

  return v6;
}

uint64_t __57__STDataAccessStatusDomainData_dataWithAttributedEntity___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 attributedEntity];
  v4 = [v3 matchesAttributedEntity:*(a1 + 32)];

  return v4;
}

- (STDataAccessStatusDomainData)dataWithExecutableIdentity:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__STDataAccessStatusDomainData_dataWithExecutableIdentity___block_invoke;
  v8[3] = &unk_1E85DF300;
  v9 = v4;
  v5 = v4;
  v6 = [(STDataAccessStatusDomainData *)self _dataWithAttributionFilter:v8];

  return v6;
}

uint64_t __59__STDataAccessStatusDomainData_dataWithExecutableIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 attributedEntity];
  v4 = [v3 executableIdentity];
  v5 = [v4 matchesExecutableIdentity:*(a1 + 32)];

  return v5;
}

- (STDataAccessStatusDomainData)dataWithAccessType:(unint64_t)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__STDataAccessStatusDomainData_dataWithAccessType___block_invoke;
  v5[3] = &__block_descriptor_40_e33_B16__0__STDataAccessAttribution_8l;
  v5[4] = a3;
  v3 = [(STDataAccessStatusDomainData *)self _dataWithAttributionFilter:v5];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STDataAccessStatusDomainData *)self attributionListData];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__STDataAccessStatusDomainData_isEqual___block_invoke;
  v10[3] = &unk_1E85DDCD8;
  v11 = v4;
  v7 = v4;
  v8 = [v5 appendObject:v6 counterpart:v10];

  LOBYTE(v6) = [v5 isEqual];
  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STDataAccessStatusDomainData *)self attributionListData];
  v5 = [v3 appendObject:v4];

  v6 = [v3 hash];
  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableDataAccessStatusDomainData allocWithZone:a3];

  return [(STDataAccessStatusDomainData *)v4 initWithData:self];
}

- (id)succinctDescription
{
  v2 = [(STDataAccessStatusDomainData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STDataAccessStatusDomainData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(STDataAccessStatusDomainData *)self succinctDescriptionBuilder];
  v5 = [(STDataAccessStatusDomainData *)self attributionListData];
  v6 = [v4 appendObject:v5 withName:@"attributions"];

  return v4;
}

- (id)diffFromData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STDataAccessStatusDomainDataDiff diffFromData:v4 toData:self];
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
      v5 = [(STDataAccessStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STDataAccessStatusDomainData *)self mutableCopy];
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
  v5 = [(STDataAccessStatusDomainData *)self attributionListData];
  [v4 encodeObject:v5 forKey:@"attributionListData"];
}

- (STDataAccessStatusDomainData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributionListData"];

  v6 = v5;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__STDataAccessStatusDomainData_initWithCoder___block_invoke_2;
  v11[3] = &unk_1E85DF348;
  v11[4] = &v12;
  [v6 enumerateObjectsUsingBlock:v11];
  if (v13[3])
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  _Block_object_dispose(&v12, 8);

  if (v7)
  {
    self = [(STDataAccessStatusDomainData *)self initWithAttributionListData:v7];
    v8 = self;
  }

  else
  {
    v9 = STSystemStatusLogDataIntegrity();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      _os_log_error_impl(&dword_1DA9C2000, v9, OS_LOG_TYPE_ERROR, "decoded invalid data access domain data", v11, 2u);
    }

    v8 = 0;
  }

  return v8;
}

void __46__STDataAccessStatusDomainData_initWithCoder___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
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

uint64_t __52__STDataAccessStatusDomainData__sortedAttributions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 isRecent];
  v7 = [v5 isRecent];
  if (!v6 || v7)
  {
    if (v6 & 1 | ((v7 & 1) == 0))
    {
      if ((v6 | v7))
      {
        [v5 accessEndTimestamp];
        [v4 accessEndTimestamp];
      }

      else
      {
        [v5 accessStartTimestamp];
        [v4 accessStartTimestamp];
      }

      if (BSFloatLessThanFloat())
      {
        v8 = -1;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end