@interface STStatusDomainDataChangeRecordDataEntry
- (BOOL)isEqual:(id)equal;
- (STStatusDomainDataChangeRecordDataEntry)initWithCoder:(id)coder;
- (STStatusDomainDataChangeRecordDataEntry)initWithData:(id)data clientKey:(id)key;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusDomainDataChangeRecordDataEntry

- (STStatusDomainDataChangeRecordDataEntry)initWithData:(id)data clientKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = STStatusDomainDataChangeRecordDataEntry;
  v8 = [(STStatusDomainDataChangeRecordDataEntry *)&v12 init];
  if (v8)
  {
    v9 = [dataCopy copyWithZone:0];
    data = v8->_data;
    v8->_data = v9;

    objc_storeStrong(&v8->_clientKey, key);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  data = [(STStatusDomainDataChangeRecordDataEntry *)self data];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__STStatusDomainDataChangeRecordDataEntry_isEqual___block_invoke;
  v18[3] = &unk_1E85DF560;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendObject:data counterpart:v18];

  clientKey = [(STStatusDomainDataChangeRecordDataEntry *)self clientKey];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __51__STStatusDomainDataChangeRecordDataEntry_isEqual___block_invoke_2;
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
  data = [(STStatusDomainDataChangeRecordDataEntry *)self data];
  v5 = [builder appendObject:data];

  clientKey = [(STStatusDomainDataChangeRecordDataEntry *)self clientKey];
  v7 = [builder appendObject:clientKey];

  v8 = [builder hash];
  return v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STStatusDomainDataChangeRecordDataEntry *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusDomainDataChangeRecordDataEntry *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusDomainDataChangeRecordDataEntry *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[2] = __91__STStatusDomainDataChangeRecordDataEntry__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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
  data = [(STStatusDomainDataChangeRecordDataEntry *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  clientKey = [(STStatusDomainDataChangeRecordDataEntry *)self clientKey];
  [coderCopy encodeObject:clientKey forKey:@"clientKey"];
}

- (STStatusDomainDataChangeRecordDataEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = STValidStatusDomainDataTypes();
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"data"];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientKey"];

  selfCopy = 0;
  if (v6 && v7)
  {
    self = [(STStatusDomainDataChangeRecordDataEntry *)self initWithData:v6 clientKey:v7];
    selfCopy = self;
  }

  return selfCopy;
}

@end