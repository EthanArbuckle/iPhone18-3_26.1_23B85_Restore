@interface STStatusDomainDataChangeRecordDiffEntry
- (BOOL)isEqual:(id)equal;
- (STStatusDomainDataChangeRecordDiffEntry)initWithCoder:(id)coder;
- (STStatusDomainDataChangeRecordDiffEntry)initWithDiff:(id)diff clientKey:(id)key;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusDomainDataChangeRecordDiffEntry

- (STStatusDomainDataChangeRecordDiffEntry)initWithDiff:(id)diff clientKey:(id)key
{
  diffCopy = diff;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = STStatusDomainDataChangeRecordDiffEntry;
  v9 = [(STStatusDomainDataChangeRecordDiffEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_diff, diff);
    objc_storeStrong(&v10->_clientKey, key);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  diff = [(STStatusDomainDataChangeRecordDiffEntry *)self diff];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__STStatusDomainDataChangeRecordDiffEntry_isEqual___block_invoke;
  v18[3] = &unk_1E85DF588;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendObject:diff counterpart:v18];

  clientKey = [(STStatusDomainDataChangeRecordDiffEntry *)self clientKey];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __51__STStatusDomainDataChangeRecordDiffEntry_isEqual___block_invoke_2;
  v16 = &unk_1E85DE0B0;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:clientKey counterpart:&v13];

  LOBYTE(clientKey) = [v5 isEqual];
  return clientKey;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  diff = [(STStatusDomainDataChangeRecordDiffEntry *)self diff];
  v5 = [builder appendObject:diff];

  clientKey = [(STStatusDomainDataChangeRecordDiffEntry *)self clientKey];
  v7 = [builder appendObject:clientKey];

  v8 = [builder hash];
  return v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STStatusDomainDataChangeRecordDiffEntry *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusDomainDataChangeRecordDiffEntry *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusDomainDataChangeRecordDiffEntry *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[2] = __91__STStatusDomainDataChangeRecordDiffEntry__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDD00;
    v8 = succinctDescriptionBuilder;
    v11 = v8;
    v12 = selfCopy;
    [v8 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v10];

    selfCopy = v8;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  diff = [(STStatusDomainDataChangeRecordDiffEntry *)self diff];
  [coderCopy encodeObject:diff forKey:@"diff"];

  clientKey = [(STStatusDomainDataChangeRecordDiffEntry *)self clientKey];
  [coderCopy encodeObject:clientKey forKey:@"clientKey"];
}

- (STStatusDomainDataChangeRecordDiffEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = STValidStatusDomainDiffTypes();
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"diff"];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientKey"];

  selfCopy = 0;
  if (v6 && v7)
  {
    self = [(STStatusDomainDataChangeRecordDiffEntry *)self initWithDiff:v6 clientKey:v7];
    selfCopy = self;
  }

  return selfCopy;
}

@end