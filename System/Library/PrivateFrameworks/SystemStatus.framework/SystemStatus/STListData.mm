@interface STListData
- (BOOL)isEqual:(id)equal;
- (NSArray)objects;
- (STListData)init;
- (STListData)initWithCoder:(id)coder;
- (STListData)initWithObjects:(id)objects;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)dataByApplyingDiff:(id)diff;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffFromData:(id)data;
- (id)initWithListData:(void *)data;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)count;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateObjectsUsingBlock:(id)block;
@end

@implementation STListData

- (NSArray)objects
{
  v2 = [(NSMutableArray *)self->_objects copy];

  return v2;
}

- (STListData)init
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = [(STListData *)self initWithObjects:array];

  return v4;
}

- (unint64_t)count
{
  objects = [(STListData *)self objects];
  v3 = [objects count];

  return v3;
}

uint64_t __35__STListData__encodableObjectTypes__block_invoke()
{
  v18 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  _MergedGlobals_12 = [v18 setWithObjects:{v17, v16, v15, v14, v13, v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (id)initWithListData:(void *)data
{
  dataCopy = data;
  if (data)
  {
    objects = [a2 objects];
    dataCopy = [dataCopy initWithObjects:objects];
  }

  return dataCopy;
}

- (STListData)initWithObjects:(id)objects
{
  objectsCopy = objects;
  v11.receiver = self;
  v11.super_class = STListData;
  v5 = [(STListData *)&v11 init];
  if (v5)
  {
    v6 = [objectsCopy mutableCopy];
    v7 = v6;
    if (v6)
    {
      array = v6;
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    objects = v5->_objects;
    v5->_objects = array;
  }

  return v5;
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    objects = [(STListData *)self objects];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__STListData_enumerateObjectsUsingBlock___block_invoke;
    v6[3] = &unk_1E85DECC0;
    v7 = blockCopy;
    [objects enumerateObjectsUsingBlock:v6];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = objc_alloc(MEMORY[0x1E696AB50]);
  objects = [(STListData *)self objects];
  v8 = [v6 initWithArray:objects];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __22__STListData_isEqual___block_invoke;
  v12[3] = &unk_1E85DECE8;
  v13 = equalCopy;
  v9 = equalCopy;
  v10 = [v5 appendObject:v8 counterpart:v12];

  LOBYTE(objects) = [v5 isEqual];
  return objects;
}

id __22__STListData_isEqual___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AB50]);
  v3 = [*(a1 + 32) objects];
  v4 = [v2 initWithArray:v3];

  return v4;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = objc_alloc(MEMORY[0x1E696AB50]);
  objects = [(STListData *)self objects];
  v6 = [v4 initWithArray:objects];
  v7 = [builder appendObject:v6];

  v8 = [builder hash];
  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableListData allocWithZone:zone];

  return [(STListData *)v4 initWithListData:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STListData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STListData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STListData *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:
{
  if (self)
  {
    v5 = a2;
    succinctDescriptionBuilder = [self succinctDescriptionBuilder];
    [succinctDescriptionBuilder setActiveMultilinePrefix:v5];

    [succinctDescriptionBuilder setUseDebugDescription:prefix];
    objects = [self objects];
    activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
    [succinctDescriptionBuilder appendArraySection:objects withName:0 multilinePrefix:activeMultilinePrefix skipIfEmpty:1];
  }

  else
  {
    succinctDescriptionBuilder = 0;
  }

  return succinctDescriptionBuilder;
}

- (id)diffFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STListDataDiff diffFromListData:dataCopy toListData:self];
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
      v5 = [(STListData *)self copy];
    }

    else
    {
      v5 = [(STListData *)self mutableCopy];
      [diffCopy applyToMutableListData:v5];
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
  objects = [(STListData *)self objects];
  [coderCopy encodeObject:objects forKey:@"objects"];
}

- (STListData)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_self();
  if (qword_1ED7F5D28 != -1)
  {
    dispatch_once(&qword_1ED7F5D28, &__block_literal_global_14);
  }

  v5 = _MergedGlobals_12;
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"objects"];

  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    self = [(STListData *)self initWithObjects:v8];
    selfCopy = self;
  }

  else
  {
    v10 = STSystemStatusLogDataIntegrity();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1DA9C2000, v10, OS_LOG_TYPE_ERROR, "decoded invalid list data", v12, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end