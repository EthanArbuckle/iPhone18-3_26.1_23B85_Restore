@interface STStatusDomainDataChangeRecordDiffEntry
- (BOOL)isEqual:(id)a3;
- (STStatusDomainDataChangeRecordDiffEntry)initWithCoder:(id)a3;
- (STStatusDomainDataChangeRecordDiffEntry)initWithDiff:(id)a3 clientKey:(id)a4;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusDomainDataChangeRecordDiffEntry

- (STStatusDomainDataChangeRecordDiffEntry)initWithDiff:(id)a3 clientKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = STStatusDomainDataChangeRecordDiffEntry;
  v9 = [(STStatusDomainDataChangeRecordDiffEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_diff, a3);
    objc_storeStrong(&v10->_clientKey, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STStatusDomainDataChangeRecordDiffEntry *)self diff];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__STStatusDomainDataChangeRecordDiffEntry_isEqual___block_invoke;
  v18[3] = &unk_1E85DF588;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendObject:v6 counterpart:v18];

  v9 = [(STStatusDomainDataChangeRecordDiffEntry *)self clientKey];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __51__STStatusDomainDataChangeRecordDiffEntry_isEqual___block_invoke_2;
  v16 = &unk_1E85DE0B0;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:v9 counterpart:&v13];

  LOBYTE(v9) = [v5 isEqual];
  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STStatusDomainDataChangeRecordDiffEntry *)self diff];
  v5 = [v3 appendObject:v4];

  v6 = [(STStatusDomainDataChangeRecordDiffEntry *)self clientKey];
  v7 = [v3 appendObject:v6];

  v8 = [v3 hash];
  return v8;
}

- (id)succinctDescription
{
  v2 = [(STStatusDomainDataChangeRecordDiffEntry *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusDomainDataChangeRecordDiffEntry *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusDomainDataChangeRecordDiffEntry *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v10[2] = __91__STStatusDomainDataChangeRecordDiffEntry__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDD00;
    v8 = v6;
    v11 = v8;
    v12 = v3;
    [v8 appendBodySectionWithName:0 multilinePrefix:v7 block:v10];

    v3 = v8;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(STStatusDomainDataChangeRecordDiffEntry *)self diff];
  [v4 encodeObject:v5 forKey:@"diff"];

  v6 = [(STStatusDomainDataChangeRecordDiffEntry *)self clientKey];
  [v4 encodeObject:v6 forKey:@"clientKey"];
}

- (STStatusDomainDataChangeRecordDiffEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = STValidStatusDomainDiffTypes();
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"diff"];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientKey"];

  v8 = 0;
  if (v6 && v7)
  {
    self = [(STStatusDomainDataChangeRecordDiffEntry *)self initWithDiff:v6 clientKey:v7];
    v8 = self;
  }

  return v8;
}

@end